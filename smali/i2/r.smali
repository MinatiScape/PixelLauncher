.class public Li2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li2/r;->f:Z

    .line 3
    iput-boolean v0, p0, Li2/r;->g:Z

    .line 4
    iput-object p1, p0, Li2/r;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Li2/r;->a:Landroid/view/View;

    iget v1, p0, Li2/r;->d:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Li2/r;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, LM/N;->a0(Landroid/view/View;I)V

    .line 2
    iget-object v0, p0, Li2/r;->a:Landroid/view/View;

    iget v1, p0, Li2/r;->e:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget p0, p0, Li2/r;->c:I

    sub-int/2addr v2, p0

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, LM/N;->Z(Landroid/view/View;I)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 1
    iget p0, p0, Li2/r;->b:I

    return p0
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Li2/r;->d:I

    return p0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Li2/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Li2/r;->b:I

    .line 2
    iget-object v0, p0, Li2/r;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Li2/r;->c:I

    return-void
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li2/r;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Li2/r;->e:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Li2/r;->e:I

    .line 3
    invoke-virtual {p0}, Li2/r;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public f(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Li2/r;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Li2/r;->d:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Li2/r;->d:I

    .line 3
    invoke-virtual {p0}, Li2/r;->a()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
