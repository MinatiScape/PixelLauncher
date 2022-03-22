.class public Lcom/android/launcher3/taskbar/TaskbarScrimViewController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;


# instance fields
.field public final mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field public final mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

.field public final mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/TaskbarScrimView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/quickstep/AnimatedFloat;

    new-instance v1, Lf1/h0;

    invoke-direct {v1, p0}, Lf1/h0;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    invoke-direct {v0, v1}, Lcom/android/quickstep/AnimatedFloat;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    .line 4
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    .line 5
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getLeftCornerRadius()I

    move-result p0

    int-to-float p0, p0

    .line 6
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getRightCornerRadius()I

    move-result v0

    int-to-float v0, v0

    .line 7
    invoke-virtual {p2, p0, v0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setCornerSizes(FF)V

    .line 8
    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->taskbarSize:I

    int-to-float p0, p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setBackgroundHeight(F)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->lambda$showScrim$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->updateScrimAlpha()V

    return-void
.end method

.method private synthetic lambda$showScrim$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->onClick()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public final onClick()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mActivity:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p0}, Lcom/android/quickstep/SystemUiProxy;->onBackPressed()V

    return-void
.end method

.method public final showScrim(ZFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    if-eqz p1, :cond_0

    new-instance v1, Lf1/g0;

    invoke-direct {v1, p0}, Lf1/g0;-><init>(Lcom/android/launcher3/taskbar/TaskbarScrimViewController;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    if-eqz p1, :cond_2

    .line 4
    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->SCRIM_ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    if-eqz p3, :cond_3

    .line 6
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_3
    return-void
.end method

.method public final updateScrimAlpha()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimView:Lcom/android/launcher3/taskbar/TaskbarScrimView;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mScrimAlpha:Lcom/android/quickstep/AnimatedFloat;

    iget p0, p0, Lcom/android/quickstep/AnimatedFloat;->value:F

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarScrimView;->setScrimAlpha(F)V

    return-void
.end method

.method public updateStateForSysuiFlags(IZ)V
    .locals 4

    and-int/lit16 v0, p1, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/high16 v3, 0x800000

    and-int/2addr p1, v3

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 1
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v3, v3, Lcom/android/launcher3/taskbar/TaskbarControllers;->navbarButtonsViewController:Lcom/android/launcher3/taskbar/NavbarButtonsViewController;

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/NavbarButtonsViewController;->isImeVisible()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 2
    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->isInAppAndNotStashed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-eqz p1, :cond_3

    const p1, 0x3f570a3e    # 0.84000003f

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    const p1, 0x3f19999a    # 0.6f

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    .line 3
    :goto_3
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarScrimViewController;->showScrim(ZFZ)V

    return-void
.end method
