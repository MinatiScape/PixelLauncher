.class public LQ1/Z0;
.super Lcom/android/launcher3/allapps/DecorationInfo;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LQ1/p0;

.field public final c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/DecorationInfo;-><init>()V

    .line 2
    invoke-static {p2}, LQ1/W0;->g(Landroid/app/search/SearchTarget;)I

    move-result v0

    .line 3
    invoke-static {p2}, LQ1/W0;->f(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_0

    .line 4
    invoke-static {p3}, LQ1/W0;->f(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p3

    .line 5
    invoke-static {p4}, LQ1/W0;->f(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p4

    .line 6
    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/2addr p3, v3

    .line 7
    invoke-static {v1, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p4

    xor-int/2addr p4, v3

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    move p3, v2

    move p4, p3

    move v0, p4

    :goto_0
    if-nez v0, :cond_1

    move p3, v3

    move p4, p3

    .line 8
    :cond_1
    iput-object v1, p0, LQ1/Z0;->a:Ljava/lang/String;

    .line 9
    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v4, "decorate_together"

    .line 10
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    :cond_2
    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object p2

    const-string v1, "thumbnail"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, LQ1/Z0;->c:Z

    .line 12
    new-instance p2, LQ1/p0;

    invoke-direct {p2, p1, v0, p3, p4}, LQ1/p0;-><init>(Landroid/content/Context;IZZ)V

    iput-object p2, p0, LQ1/Z0;->b:LQ1/p0;

    return-void
.end method


# virtual methods
.method public a()LQ1/p0;
    .locals 0

    .line 1
    iget-object p0, p0, LQ1/Z0;->b:LQ1/p0;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, LQ1/Z0;->a:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, LQ1/Z0;->c:Z

    return p0
.end method
