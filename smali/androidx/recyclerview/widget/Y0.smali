.class public Landroidx/recyclerview/widget/Y0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mLayoutHolderMap:Landroidx/collection/n;

.field public final mOldChangedHolders:Landroidx/collection/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/collection/n;

    invoke-direct {v0}, Landroidx/collection/n;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    .line 3
    new-instance v0, Landroidx/collection/l;

    invoke-direct {v0}, Landroidx/collection/l;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/W0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/recyclerview/widget/W0;->b()Landroidx/recyclerview/widget/W0;

    move-result-object v0

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    .line 5
    iput-object p2, v0, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    return-void
.end method

.method public b(Landroidx/recyclerview/widget/F0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/W0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/recyclerview/widget/W0;->b()Landroidx/recyclerview/widget/W0;

    move-result-object v0

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    return-void
.end method

.method public c(JLandroidx/recyclerview/widget/F0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/l;->j(JLjava/lang/Object;)V

    return-void
.end method

.method public d(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/W0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/recyclerview/widget/W0;->b()Landroidx/recyclerview/widget/W0;

    move-result-object v0

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    .line 5
    iget p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    return-void
.end method

.method public e(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/W0;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Landroidx/recyclerview/widget/W0;->b()Landroidx/recyclerview/widget/W0;

    move-result-object v0

    .line 3
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1, v0}, Landroidx/collection/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    .line 5
    iget p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/W0;->a:I

    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0}, Landroidx/collection/n;->clear()V

    .line 2
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {p0}, Landroidx/collection/l;->b()V

    return-void
.end method

.method public g(J)Landroidx/recyclerview/widget/F0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/l;->f(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/F0;

    return-object p0
.end method

.method public h(Landroidx/recyclerview/widget/F0;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/W0;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Landroidx/recyclerview/widget/W0;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public i(Landroidx/recyclerview/widget/F0;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/W0;

    if-eqz p0, :cond_0

    .line 2
    iget p0, p0, Landroidx/recyclerview/widget/W0;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-static {}, Landroidx/recyclerview/widget/W0;->a()V

    return-void
.end method

.method public k(Landroidx/recyclerview/widget/F0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/Y0;->p(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public final l(Landroidx/recyclerview/widget/F0;I)Landroidx/recyclerview/widget/e0;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0, p1}, Landroidx/collection/n;->f(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v1, p1}, Landroidx/collection/n;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/W0;

    if-eqz v1, :cond_4

    .line 3
    iget v2, v1, Landroidx/recyclerview/widget/W0;->a:I

    and-int v3, v2, p2

    if-eqz v3, :cond_4

    not-int v0, p2

    and-int/2addr v0, v2

    .line 4
    iput v0, v1, Landroidx/recyclerview/widget/W0;->a:I

    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    .line 5
    iget-object p2, v1, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 6
    iget-object p2, v1, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    :goto_0
    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 7
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1}, Landroidx/collection/n;->k(I)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/W0;)V

    :cond_2
    return-object p2

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method

.method public m(Landroidx/recyclerview/widget/F0;)Landroidx/recyclerview/widget/e0;
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/Y0;->l(Landroidx/recyclerview/widget/F0;I)Landroidx/recyclerview/widget/e0;

    move-result-object p0

    return-object p0
.end method

.method public n(Landroidx/recyclerview/widget/F0;)Landroidx/recyclerview/widget/e0;
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/Y0;->l(Landroidx/recyclerview/widget/F0;I)Landroidx/recyclerview/widget/e0;

    move-result-object p0

    return-object p0
.end method

.method public o(Landroidx/recyclerview/widget/X0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v0}, Landroidx/collection/n;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v1, v0}, Landroidx/collection/n;->i(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/F0;

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {v2, v0}, Landroidx/collection/n;->k(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/W0;

    .line 4
    iget v3, v2, Landroidx/recyclerview/widget/W0;->a:I

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 5
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/X0;->a(Landroidx/recyclerview/widget/F0;)V

    goto :goto_1

    :cond_0
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    .line 6
    iget-object v3, v2, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    if-nez v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/X0;->a(Landroidx/recyclerview/widget/F0;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, v2, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/X0;->c(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;Landroidx/recyclerview/widget/e0;)V

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v3, 0xe

    const/16 v5, 0xe

    if-ne v4, v5, :cond_3

    .line 9
    iget-object v3, v2, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    iget-object v4, v2, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/X0;->b(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;Landroidx/recyclerview/widget/e0;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v4, v3, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_4

    .line 10
    iget-object v3, v2, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    iget-object v4, v2, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/X0;->d(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;Landroidx/recyclerview/widget/e0;)V

    goto :goto_1

    :cond_4
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_5

    .line 11
    iget-object v3, v2, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/X0;->c(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;Landroidx/recyclerview/widget/e0;)V

    goto :goto_1

    :cond_5
    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 12
    iget-object v3, v2, Landroidx/recyclerview/widget/W0;->b:Landroidx/recyclerview/widget/e0;

    iget-object v4, v2, Landroidx/recyclerview/widget/W0;->c:Landroidx/recyclerview/widget/e0;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/X0;->b(Landroidx/recyclerview/widget/F0;Landroidx/recyclerview/widget/e0;Landroidx/recyclerview/widget/e0;)V

    .line 13
    :cond_6
    :goto_1
    invoke-static {v2}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/W0;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public p(Landroidx/recyclerview/widget/F0;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1}, Landroidx/collection/n;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/W0;

    if-nez p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/W0;->a:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/W0;->a:I

    return-void
.end method

.method public q(Landroidx/recyclerview/widget/F0;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {v0}, Landroidx/collection/l;->m()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {v1, v0}, Landroidx/collection/l;->n(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/recyclerview/widget/Y0;->mOldChangedHolders:Landroidx/collection/l;

    invoke-virtual {v1, v0}, Landroidx/collection/l;->l(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/Y0;->mLayoutHolderMap:Landroidx/collection/n;

    invoke-virtual {p0, p1}, Landroidx/collection/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/W0;

    if-eqz p0, :cond_2

    .line 5
    invoke-static {p0}, Landroidx/recyclerview/widget/W0;->c(Landroidx/recyclerview/widget/W0;)V

    :cond_2
    return-void
.end method
