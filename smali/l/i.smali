.class public Ll/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/J0;


# instance fields
.field public final synthetic b:Ll/k;


# direct methods
.method public constructor <init>(Ll/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/i;->b:Ll/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public l(Ll/q;Landroid/view/MenuItem;)V
    .locals 0

    .line 1
    iget-object p0, p0, Ll/i;->b:Ll/k;

    iget-object p0, p0, Ll/k;->h:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public m(Ll/q;Landroid/view/MenuItem;)V
    .locals 5

    .line 1
    iget-object v0, p0, Ll/i;->b:Ll/k;

    iget-object v0, v0, Ll/k;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Ll/i;->b:Ll/k;

    iget-object v0, v0, Ll/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_1

    .line 3
    iget-object v4, p0, Ll/i;->b:Ll/k;

    iget-object v4, v4, Ll/k;->j:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll/j;

    iget-object v4, v4, Ll/j;->b:Ll/q;

    if-ne p1, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    if-ne v2, v3, :cond_2

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 4
    iget-object v0, p0, Ll/i;->b:Ll/k;

    iget-object v0, v0, Ll/k;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 5
    iget-object v0, p0, Ll/i;->b:Ll/k;

    iget-object v0, v0, Ll/k;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ll/j;

    .line 6
    :cond_3
    new-instance v0, Ll/h;

    invoke-direct {v0, p0, v1, p2, p1}, Ll/h;-><init>(Ll/i;Ll/j;Landroid/view/MenuItem;Ll/q;)V

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    .line 8
    iget-object p0, p0, Ll/i;->b:Ll/k;

    iget-object p0, p0, Ll/k;->h:Landroid/os/Handler;

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
