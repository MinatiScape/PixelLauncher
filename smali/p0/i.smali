.class public Lp0/i;
.super LM/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lp0/p;


# direct methods
.method public constructor <init>(Lp0/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp0/i;->a:Lp0/p;

    invoke-direct {p0}, LM/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lp0/i;->a:Lp0/p;

    iget-object p0, p0, Lp0/p;->f:Lp0/a;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lp0/a;->d()I

    move-result p0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p1, "androidx.viewpager.widget.ViewPager"

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lp0/i;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lp0/i;->a:Lp0/p;

    iget-object p1, p1, Lp0/p;->f:Lp0/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lp0/a;->d()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 6
    iget-object p1, p0, Lp0/i;->a:Lp0/p;

    iget p1, p1, Lp0/p;->g:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7
    iget-object p0, p0, Lp0/i;->a:Lp0/p;

    iget p0, p0, Lp0/p;->g:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/f;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, LM/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LN/f;)V

    const-string p1, "androidx.viewpager.widget.ViewPager"

    .line 2
    invoke-virtual {p2, p1}, LN/f;->X(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lp0/i;->a()Z

    move-result p1

    invoke-virtual {p2, p1}, LN/f;->q0(Z)V

    .line 4
    iget-object p1, p0, Lp0/i;->a:Lp0/p;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lp0/p;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x1000

    .line 5
    invoke-virtual {p2, p1}, LN/f;->a(I)V

    .line 6
    :cond_0
    iget-object p0, p0, Lp0/i;->a:Lp0/p;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lp0/p;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2000

    .line 7
    invoke-virtual {p2, p0}, LN/f;->a(I)V

    :cond_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, LM/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/16 p1, 0x1000

    const/4 v0, 0x0

    if-eq p2, p1, :cond_3

    const/16 p1, 0x2000

    if-eq p2, p1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lp0/i;->a:Lp0/p;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lp0/p;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p0, p0, Lp0/i;->a:Lp0/p;

    iget p1, p0, Lp0/p;->g:I

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lp0/p;->N(I)V

    return p3

    :cond_2
    return v0

    .line 4
    :cond_3
    iget-object p1, p0, Lp0/i;->a:Lp0/p;

    invoke-virtual {p1, p3}, Lp0/p;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5
    iget-object p0, p0, Lp0/i;->a:Lp0/p;

    iget p1, p0, Lp0/p;->g:I

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lp0/p;->N(I)V

    return p3

    :cond_4
    return v0
.end method
