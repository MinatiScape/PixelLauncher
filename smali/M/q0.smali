.class public LM/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LM/q0;


# instance fields
.field public final a:LM/n0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    sget-object v0, LM/m0;->r:LM/q0;

    sput-object v0, LM/q0;->b:LM/q0;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, LM/n0;->b:LM/q0;

    sput-object v0, LM/q0;->b:LM/q0;

    :goto_0
    return-void
.end method

.method public constructor <init>(LM/q0;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p1, LM/q0;->a:LM/n0;

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    instance-of v1, p1, LM/m0;

    if-eqz v1, :cond_0

    .line 12
    new-instance v0, LM/m0;

    move-object v1, p1

    check-cast v1, LM/m0;

    invoke-direct {v0, p0, v1}, LM/m0;-><init>(LM/q0;LM/m0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 13
    instance-of v1, p1, LM/l0;

    if-eqz v1, :cond_1

    .line 14
    new-instance v0, LM/l0;

    move-object v1, p1

    check-cast v1, LM/l0;

    invoke-direct {v0, p0, v1}, LM/l0;-><init>(LM/q0;LM/l0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 15
    instance-of v1, p1, LM/k0;

    if-eqz v1, :cond_2

    .line 16
    new-instance v0, LM/k0;

    move-object v1, p1

    check-cast v1, LM/k0;

    invoke-direct {v0, p0, v1}, LM/k0;-><init>(LM/q0;LM/k0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 17
    instance-of v1, p1, LM/j0;

    if-eqz v1, :cond_3

    .line 18
    new-instance v0, LM/j0;

    move-object v1, p1

    check-cast v1, LM/j0;

    invoke-direct {v0, p0, v1}, LM/j0;-><init>(LM/q0;LM/j0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 19
    instance-of v0, p1, LM/i0;

    if-eqz v0, :cond_4

    .line 20
    new-instance v0, LM/i0;

    move-object v1, p1

    check-cast v1, LM/i0;

    invoke-direct {v0, p0, v1}, LM/i0;-><init>(LM/q0;LM/i0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    .line 21
    :cond_4
    new-instance v0, LM/n0;

    invoke-direct {v0, p0}, LM/n0;-><init>(LM/q0;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    .line 22
    :goto_0
    invoke-virtual {p1, p0}, LM/n0;->e(LM/q0;)V

    goto :goto_1

    .line 23
    :cond_5
    new-instance p1, LM/n0;

    invoke-direct {p1, p0}, LM/n0;-><init>(LM/q0;)V

    iput-object p1, p0, LM/q0;->a:LM/n0;

    :goto_1
    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, LM/m0;

    invoke-direct {v0, p0, p1}, LM/m0;-><init>(LM/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, LM/l0;

    invoke-direct {v0, p0, p1}, LM/l0;-><init>(LM/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_1
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_2

    .line 5
    new-instance v0, LM/k0;

    invoke-direct {v0, p0, p1}, LM/k0;-><init>(LM/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_2
    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 6
    new-instance v0, LM/j0;

    invoke-direct {v0, p0, p1}, LM/j0;-><init>(LM/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    if-lt v0, v1, :cond_4

    .line 7
    new-instance v0, LM/i0;

    invoke-direct {v0, p0, p1}, LM/i0;-><init>(LM/q0;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LM/q0;->a:LM/n0;

    goto :goto_0

    .line 8
    :cond_4
    new-instance p1, LM/n0;

    invoke-direct {p1, p0}, LM/n0;-><init>(LM/q0;)V

    iput-object p1, p0, LM/q0;->a:LM/n0;

    :goto_0
    return-void
.end method

.method public static n(LE/b;IIII)LE/b;
    .locals 5

    .line 1
    iget v0, p0, LE/b;->a:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2
    iget v2, p0, LE/b;->b:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3
    iget v3, p0, LE/b;->c:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 4
    iget v4, p0, LE/b;->d:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-static {v0, v2, v3, v1}, LE/b;->b(IIII)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public static v(Landroid/view/WindowInsets;)LM/q0;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, LM/q0;->w(Landroid/view/WindowInsets;Landroid/view/View;)LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public static w(Landroid/view/WindowInsets;Landroid/view/View;)LM/q0;
    .locals 1

    .line 1
    new-instance v0, LM/q0;

    invoke-static {p0}, LL/g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, LM/q0;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p1}, LM/N;->J(Landroid/view/View;)LM/q0;

    move-result-object p0

    invoke-virtual {v0, p0}, LM/q0;->s(LM/q0;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, LM/q0;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()LM/q0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->a()LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public b()LM/q0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->b()LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public c()LM/q0;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->c()LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->d(Landroid/view/View;)V

    return-void
.end method

.method public e()LM/h;
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->f()LM/h;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1
    :cond_0
    instance-of v0, p1, LM/q0;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_1
    check-cast p1, LM/q0;

    .line 3
    iget-object p0, p0, LM/q0;->a:LM/n0;

    iget-object p1, p1, LM/q0;->a:LM/n0;

    invoke-static {p0, p1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f(I)LE/b;
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->g(I)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public g()LE/b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->h()LE/b;

    move-result-object p0

    return-object p0
.end method

.method public h()LE/b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->i()LE/b;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LM/n0;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public i()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->k()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->d:I

    return p0
.end method

.method public j()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->k()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->a:I

    return p0
.end method

.method public k()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->k()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->c:I

    return p0
.end method

.method public l()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->k()LE/b;

    move-result-object p0

    iget p0, p0, LE/b;->b:I

    return p0
.end method

.method public m(IIII)LM/q0;
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1, p2, p3, p4}, LM/n0;->m(IIII)LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public o()Z
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0}, LM/n0;->n()Z

    move-result p0

    return p0
.end method

.method public p(IIII)LM/q0;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, LM/d0;

    invoke-direct {v0, p0}, LM/d0;-><init>(LM/q0;)V

    .line 2
    invoke-static {p1, p2, p3, p4}, LE/b;->b(IIII)LE/b;

    move-result-object p0

    invoke-virtual {v0, p0}, LM/d0;->c(LE/b;)LM/d0;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, LM/d0;->a()LM/q0;

    move-result-object p0

    return-object p0
.end method

.method public q([LE/b;)V
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->p([LE/b;)V

    return-void
.end method

.method public r(LE/b;)V
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->q(LE/b;)V

    return-void
.end method

.method public s(LM/q0;)V
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->r(LM/q0;)V

    return-void
.end method

.method public t(LE/b;)V
    .locals 0

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    invoke-virtual {p0, p1}, LM/n0;->s(LE/b;)V

    return-void
.end method

.method public u()Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object p0, p0, LM/q0;->a:LM/n0;

    instance-of v0, p0, LM/i0;

    if-eqz v0, :cond_0

    check-cast p0, LM/i0;

    iget-object p0, p0, LM/i0;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
