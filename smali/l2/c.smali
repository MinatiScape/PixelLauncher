.class public Ll2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p2, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->J(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll2/e;

    if-eqz p2, :cond_3

    .line 2
    instance-of p3, p1, Ly2/k;

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    move-object p3, p1

    check-cast p3, Ly2/k;

    .line 4
    iget-object p4, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->K(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Ly2/k;->n(Landroid/graphics/Rect;)V

    .line 5
    iget-object p4, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->K(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 6
    invoke-virtual {p2, p4}, Ll2/e;->U0(I)Z

    .line 7
    invoke-virtual {p3}, Ly2/k;->o()LG2/q;

    move-result-object p5

    invoke-virtual {p5}, LG2/q;->r()LG2/c;

    move-result-object p5

    new-instance p6, Landroid/graphics/RectF;

    iget-object p7, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 8
    invoke-static {p7}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->K(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p5, p6}, LG2/c;->a(Landroid/graphics/RectF;)F

    move-result p5

    .line 9
    invoke-virtual {p2, p5}, Ll2/e;->T0(F)V

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lz/f;

    .line 11
    iget-object p0, p0, Ll2/c;->b:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->L(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    move-result p0

    if-nez p0, :cond_2

    .line 12
    invoke-virtual {p3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, p4

    div-int/lit8 p0, p0, 0x2

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lg2/d;->y:I

    .line 14
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    sub-int/2addr p4, p0

    .line 15
    invoke-static {p2}, Ll2/e;->v0(Ll2/e;)I

    move-result p0

    add-int/2addr p0, p4

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 16
    invoke-static {p2}, Ll2/e;->w0(Ll2/e;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 17
    invoke-static {p2}, Ll2/e;->x0(Ll2/e;)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    invoke-static {p3}, Lz2/C;->d(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 19
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-static {p2}, Ll2/e;->y0(Ll2/e;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 20
    :cond_1
    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {p2}, Ll2/e;->y0(Ll2/e;)I

    move-result p2

    add-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_2
    :goto_0
    return-void

    .line 21
    :cond_3
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
