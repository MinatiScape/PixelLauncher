.class public Landroidx/appcompat/graphics/drawable/m;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field public b:Landroidx/appcompat/graphics/drawable/l;

.field public c:Landroid/graphics/Rect;

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Z

.field public h:I

.field public i:Z

.field public j:Ljava/lang/Runnable;

.field public k:J

.field public l:J

.field public m:Landroidx/appcompat/graphics/drawable/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xff

    .line 2
    iput v0, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    return-void
.end method

.method public static resolveDensity(Landroid/content/res/Resources;I)I
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p1, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    :goto_0
    if-nez p1, :cond_1

    const/16 p1, 0xa0

    :cond_1
    return p1
.end method


# virtual methods
.method public a(Z)V
    .locals 13

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->g:Z

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 3
    iget-object v3, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    const-wide/16 v4, 0xff

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_1

    .line 4
    iget-wide v9, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_2

    cmp-long v11, v9, v1

    if-gtz v11, :cond_0

    .line 5
    iget v9, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    goto :goto_0

    :cond_0
    sub-long/2addr v9, v1

    mul-long/2addr v9, v4

    long-to-int v9, v9

    .line 7
    iget-object v10, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v10, v10, Landroidx/appcompat/graphics/drawable/l;->A:I

    div-int/2addr v9, v10

    rsub-int v9, v9, 0xff

    .line 8
    iget v10, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    mul-int/2addr v9, v10

    div-int/lit16 v9, v9, 0xff

    invoke-virtual {v3, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move v3, v0

    goto :goto_1

    .line 9
    :cond_1
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    :cond_2
    :goto_0
    move v3, v6

    .line 10
    :goto_1
    iget-object v9, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_4

    .line 11
    iget-wide v10, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    cmp-long v12, v10, v7

    if-eqz v12, :cond_5

    cmp-long v12, v10, v1

    if-gtz v12, :cond_3

    .line 12
    invoke-virtual {v9, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    .line 14
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    goto :goto_2

    :cond_3
    sub-long/2addr v10, v1

    mul-long/2addr v10, v4

    long-to-int v3, v10

    .line 15
    iget-object v4, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v4, v4, Landroidx/appcompat/graphics/drawable/l;->B:I

    div-int/2addr v3, v4

    .line 16
    iget v4, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    mul-int/2addr v3, v4

    div-int/lit16 v3, v3, 0xff

    invoke-virtual {v9, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_3

    .line 17
    :cond_4
    iput-wide v7, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 18
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->j:Ljava/lang/Runnable;

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_6
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/l;->b(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public b()Landroidx/appcompat/graphics/drawable/l;
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    return p0
.end method

.method public canApplyTheme()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->canApplyTheme()Z

    move-result p0

    return p0
.end method

.method clearMutated()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->d()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->i:Z

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->m:Landroidx/appcompat/graphics/drawable/k;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/appcompat/graphics/drawable/k;

    invoke-direct {v0}, Landroidx/appcompat/graphics/drawable/k;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->m:Landroidx/appcompat/graphics/drawable/k;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->m:Landroidx/appcompat/graphics/drawable/k;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/graphics/drawable/k;->b(Landroid/graphics/drawable/Drawable$Callback;)Landroidx/appcompat/graphics/drawable/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/l;->A:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->g:Z

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->E:Z

    if-eqz v1, :cond_2

    .line 7
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/l;->D:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->H:Z

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/l;->F:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, LF/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 10
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->I:Z

    if-eqz v1, :cond_4

    .line 11
    iget-object v0, v0, Landroidx/appcompat/graphics/drawable/l;->G:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, LF/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 12
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 13
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v0, v0, Landroidx/appcompat/graphics/drawable/l;->x:Z

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 17
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_5

    .line 18
    invoke-static {p0}, LF/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {p1, v1}, LF/a;->m(Landroid/graphics/drawable/Drawable;I)Z

    :cond_5
    const/16 v1, 0x13

    if-lt v0, v1, :cond_6

    .line 19
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v1, v1, Landroidx/appcompat/graphics/drawable/l;->C:Z

    invoke-static {p1, v1}, LF/a;->j(Landroid/graphics/drawable/Drawable;Z)V

    .line 20
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/m;->c:Landroid/graphics/Rect;

    const/16 v2, 0x15

    if-lt v0, v2, :cond_7

    if-eqz v1, :cond_7

    .line 21
    iget v0, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, v0, v2, v3, v1}, LF/a;->l(Landroid/graphics/drawable/Drawable;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_7
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->m:Landroidx/appcompat/graphics/drawable/k;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->m:Landroidx/appcompat/graphics/drawable/k;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/k;->a()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 23
    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method public final e()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/m;->isAutoMirrored()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, LF/a;->f(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(I)Z
    .locals 9

    .line 1
    iget v0, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/l;->B:I

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    .line 8
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v0, v0, Landroidx/appcompat/graphics/drawable/l;->B:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    goto :goto_0

    .line 9
    :cond_2
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-wide v5, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_4
    :goto_0
    if-ltz p1, :cond_6

    .line 13
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget v1, v0, Landroidx/appcompat/graphics/drawable/l;->h:I

    if-ge p1, v1, :cond_6

    .line 14
    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/l;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 15
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    .line 16
    iput p1, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    if-eqz v0, :cond_7

    .line 17
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget p1, p1, Landroidx/appcompat/graphics/drawable/l;->A:I

    if-lez p1, :cond_5

    int-to-long v7, p1

    add-long/2addr v2, v7

    .line 18
    iput-wide v2, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    .line 19
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/m;->d(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 20
    :cond_6
    iput-object v4, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    const/4 p1, -0x1

    .line 21
    iput p1, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    .line 22
    :cond_7
    :goto_1
    iget-wide v0, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    cmp-long p1, v0, v5

    const/4 v0, 0x1

    if-nez p1, :cond_8

    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_a

    .line 23
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->j:Ljava/lang/Runnable;

    if-nez p1, :cond_9

    .line 24
    new-instance p1, Landroidx/appcompat/graphics/drawable/i;

    invoke-direct {p1, p0}, Landroidx/appcompat/graphics/drawable/i;-><init>(Landroidx/appcompat/graphics/drawable/m;)V

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->j:Ljava/lang/Runnable;

    goto :goto_2

    .line 25
    :cond_9
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 26
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/m;->a(Z)V

    .line 27
    :cond_a
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return v0
.end method

.method public g(Landroidx/appcompat/graphics/drawable/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    .line 2
    iget v0, p0, Landroidx/appcompat/graphics/drawable/m;->h:I

    if-ltz v0, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Landroidx/appcompat/graphics/drawable/l;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/m;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/m;->getChangingConfigurations()I

    move-result v1

    iput v1, v0, Landroidx/appcompat/graphics/drawable/l;->d:I

    .line 3
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getHotspotBounds(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->c:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getHotspotBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->j()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->n()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getMinimumHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->k()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMinimumWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->l()I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/l;->o()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroidx/appcompat/graphics/drawable/j;->b(Landroid/graphics/drawable/Drawable;Landroid/graphics/Outline;)V

    :cond_0
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->m()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    or-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    or-int/2addr v1, v2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/m;->e()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 8
    iget p0, p1, Landroid/graphics/Rect;->left:I

    .line 9
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 10
    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_3
    return v0
.end method

.method public final h(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/l;->z(Landroid/content/res/Resources;)V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->q()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isAutoMirrored()Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean p0, p0, Landroidx/appcompat/graphics/drawable/l;->C:Z

    return p0
.end method

.method public jumpToCurrentState()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6
    iget-boolean v2, p0, Landroidx/appcompat/graphics/drawable/m;->g:Z

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    :cond_1
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 9
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/m;->l:J

    move v0, v1

    .line 10
    :cond_2
    iget-wide v2, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 11
    iput-wide v4, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    goto :goto_1

    :cond_3
    move v1, v0

    :goto_1
    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->i:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/m;->b()Landroidx/appcompat/graphics/drawable/l;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/l;->s()V

    .line 4
    invoke-virtual {p0, v0}, Landroidx/appcompat/graphics/drawable/m;->g(Landroidx/appcompat/graphics/drawable/l;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->i:Z

    :cond_0
    return-object p0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    invoke-virtual {p0}, Landroidx/appcompat/graphics/drawable/m;->c()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroidx/appcompat/graphics/drawable/l;->x(II)Z

    move-result p0

    return p0
.end method

.method public onLevelChange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    if-eq v0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/appcompat/graphics/drawable/m;->g:Z

    .line 3
    iput p1, p0, Landroidx/appcompat/graphics/drawable/m;->f:I

    .line 4
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 5
    iget-wide v1, p0, Landroidx/appcompat/graphics/drawable/m;->k:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroidx/appcompat/graphics/drawable/m;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->C:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/l;->C:Z

    .line 3
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 4
    invoke-static {p0, p1}, LF/a;->j(Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->E:Z

    .line 2
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/l;->D:Landroid/graphics/ColorFilter;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/l;->D:Landroid/graphics/ColorFilter;

    .line 4
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    iget-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->x:Z

    if-eq v1, p1, :cond_0

    .line 2
    iput-boolean p1, v0, Landroidx/appcompat/graphics/drawable/l;->x:Z

    .line 3
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    :cond_0
    return-void
.end method

.method public setHotspot(FF)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0, p1, p2}, LF/a;->k(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method public setHotspotBounds(IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->c:Landroid/graphics/Rect;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, LF/a;->l(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->H:Z

    .line 2
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/l;->F:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/l;->F:Landroid/content/res/ColorStateList;

    .line 4
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, LF/a;->o(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->b:Landroidx/appcompat/graphics/drawable/l;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/appcompat/graphics/drawable/l;->I:Z

    .line 2
    iget-object v1, v0, Landroidx/appcompat/graphics/drawable/l;->G:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, v0, Landroidx/appcompat/graphics/drawable/l;->G:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, LF/a;->p(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 2
    iget-object v1, p0, Landroidx/appcompat/graphics/drawable/m;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 4
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/graphics/drawable/m;->d:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
