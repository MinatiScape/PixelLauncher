.class public Lq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq/g;


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field public final synthetic b:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Landroidx/cardview/widget/CardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    iget-object v0, v0, Landroidx/cardview/widget/CardView;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    iget-object v0, p0, Landroidx/cardview/widget/CardView;->f:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v0

    invoke-static {p0, p1, p2, p3, p4}, Landroidx/cardview/widget/CardView;->a(Landroidx/cardview/widget/CardView;IIII)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    return-object p0
.end method

.method public c(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    iget v1, v0, Landroidx/cardview/widget/CardView;->d:I

    if-le p1, v1, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroidx/cardview/widget/CardView;->b(Landroidx/cardview/widget/CardView;I)V

    .line 3
    :cond_0
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    iget p1, p0, Landroidx/cardview/widget/CardView;->e:I

    if-le p2, p1, :cond_1

    .line 4
    invoke-static {p0, p2}, Landroidx/cardview/widget/CardView;->c(Landroidx/cardview/widget/CardView;I)V

    :cond_1
    return-void
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq/a;->a:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->d()Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lq/a;->b:Landroidx/cardview/widget/CardView;

    invoke-virtual {p0}, Landroidx/cardview/widget/CardView;->e()Z

    move-result p0

    return p0
.end method

.method public g()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lq/a;->a:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method
