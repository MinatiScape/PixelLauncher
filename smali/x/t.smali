.class public Lx/t;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:Landroid/view/View;

.field public d:I


# virtual methods
.method public a()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lx/t;->c:Landroid/view/View;

    return-object p0
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lx/t;->c:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lx/f;

    .line 3
    iget-object p0, p0, Lx/t;->c:Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lx/f;

    .line 5
    iget-object v0, p0, Lx/f;->n0:Lv/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lv/g;->x0(I)V

    .line 6
    iget-object v0, p1, Lx/f;->n0:Lv/g;

    iget-object v1, p0, Lx/f;->n0:Lv/g;

    invoke-virtual {v1}, Lv/g;->M()I

    move-result v1

    invoke-virtual {v0, v1}, Lv/g;->y0(I)V

    .line 7
    iget-object p1, p1, Lx/f;->n0:Lv/g;

    iget-object v0, p0, Lx/f;->n0:Lv/g;

    invoke-virtual {v0}, Lv/g;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lv/g;->c0(I)V

    .line 8
    iget-object p0, p0, Lx/f;->n0:Lv/g;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lv/g;->x0(I)V

    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 1
    iget v0, p0, Lx/t;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget v0, p0, Lx/t;->d:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_0
    iget v0, p0, Lx/t;->b:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lx/t;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lx/f;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p1, Lx/f;->b0:Z

    .line 7
    iget-object p1, p0, Lx/t;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xdf

    .line 2
    invoke-virtual {p1, p0, p0, p0}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 3
    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    const/16 v0, 0xff

    const/16 v1, 0xd2

    .line 4
    invoke-virtual {p0, v0, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 5
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 11
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 12
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const-string v4, "?"

    const/4 v5, 0x1

    .line 13
    invoke-virtual {p0, v4, v1, v5, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v1, v5

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v1, v5

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 15
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v3

    add-float/2addr v2, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    .line 16
    invoke-virtual {p1, v4, v1, v2, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
