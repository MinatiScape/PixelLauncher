.class public Lcom/android/launcher3/allapps/WorkEduCard;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public mDismissAnim:Landroid/view/animation/Animation;

.field public final mLauncher:Lcom/android/launcher3/Launcher;

.field public mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/allapps/WorkEduCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/WorkEduCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 4
    iput p2, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mLauncher:Lcom/android/launcher3/Launcher;

    const p2, 0x10a0001

    .line 6
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    const-wide/16 p2, 0x1f4

    .line 7
    invoke-virtual {p1, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/WorkEduCard;->removeCard()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "showed_work_profile_edu"

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mDismissAnim:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Landroid/view/animation/Animation;->cancel()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/android/launcher3/R$id;->action_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    sget v0, Lcom/android/launcher3/R$id;->wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4
    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getTabWidth()I

    move-result p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    return-void
.end method

.method public final removeCard()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/AllAppsContainerView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView;->mAH:[Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/launcher3/allapps/AllAppsContainerView$AdapterHolder;->recyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 4
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/X;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/X;->notifyItemRemoved(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;->mPosition:I

    return-void
.end method
