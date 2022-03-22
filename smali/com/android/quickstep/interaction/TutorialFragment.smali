.class public abstract Lcom/android/quickstep/interaction/TutorialFragment;
.super Landroidx/fragment/app/J;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final KEY_GESTURE_COMPLETE:Ljava/lang/String; = "gesture_complete"

.field public static final KEY_TUTORIAL_TYPE:Ljava/lang/String; = "tutorial_type"

.field private static final LOG_TAG:Ljava/lang/String; = "TutorialFragment"


# instance fields
.field private mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field public mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

.field private mEdgeGestureVideoView:Landroid/widget/ImageView;

.field public mFakePreviousTaskView:Landroid/view/View;

.field public mFingerDotView:Landroid/view/View;

.field private mFragmentStopped:Z

.field private mGestureAnimation:Landroid/animation/Animator;

.field public mGestureComplete:Z

.field private mIntroductionShown:Z

.field private mIsLargeScreen:Z

.field public mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

.field public mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

.field public mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

.field public mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/J;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 4
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    .line 5
    iput-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 6
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/TutorialFragment;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/TutorialFragment;->lambda$onCreateView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/quickstep/interaction/TutorialFragment;)Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method private static getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/quickstep/interaction/TutorialFragment$4;->$SwitchMap$com$android$quickstep$interaction$TutorialController$TutorialType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find an appropriate fragment for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TutorialFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 3
    :pswitch_0
    new-instance p0, Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/SandboxModeTutorialFragment;-><init>()V

    return-object p0

    .line 4
    :pswitch_1
    new-instance p0, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/AssistantGestureTutorialFragment;-><init>()V

    return-object p0

    .line 5
    :pswitch_2
    new-instance p0, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/OverviewGestureTutorialFragment;-><init>()V

    return-object p0

    .line 6
    :pswitch_3
    new-instance p0, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/HomeGestureTutorialFragment;-><init>()V

    return-object p0

    .line 7
    :pswitch_4
    new-instance p0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {p0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>()V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/quickstep/interaction/GestureSandboxActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setInsets(II)V

    return-object p2
.end method

.method public static newInstance(Lcom/android/quickstep/interaction/TutorialController$TutorialType;Z)Lcom/android/quickstep/interaction/TutorialFragment;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getFragmentForTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;

    invoke-direct {v0}, Lcom/android/quickstep/interaction/BackGestureTutorialFragment;-><init>()V

    .line 3
    sget-object p0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;->BACK_NAVIGATION:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 4
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "tutorial_type"

    .line 5
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "gesture_complete"

    .line 6
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {v0, v1}, Landroidx/fragment/app/J;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public changeController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getControllerClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/TutorialController;->setTutorialType(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)V

    .line 3
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lx1/F;

    invoke-direct {v1, v0}, Lx1/F;-><init>(Lcom/android/quickstep/interaction/TutorialController;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/TutorialController;->fadeTaskViewAndRun(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/TutorialFragment;->createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 5
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->transitToController()V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->registerBackGestureAttemptCallback(Lcom/android/quickstep/interaction/EdgeBackGestureHandler$BackGestureAttemptCallback;)V

    .line 7
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->registerNavBarGestureAttemptCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;)V

    .line 8
    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    .line 9
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->initializeFeedbackVideoView()V

    return-void
.end method

.method public closeTutorial()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getActivity()Landroidx/fragment/app/N;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public continueTutorial()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->closeTutorial()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->continueTutorial()V

    return-void
.end method

.method public abstract createController(Lcom/android/quickstep/interaction/TutorialController$TutorialType;)Lcom/android/quickstep/interaction/TutorialController;
.end method

.method public createGestureAnimation()Landroid/animation/Animator;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getControllerClass()Ljava/lang/Class;
.end method

.method public getCurrentStep()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getCurrentStep()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getEdgeAnimation()Landroid/graphics/drawable/AnimatedVectorDrawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    return-object p0
.end method

.method public getEdgeAnimationResId()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getGestureAnimation()Landroid/animation/Animator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    return-object p0
.end method

.method public getNumSteps()I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getGestureSandboxActivity()Lcom/android/quickstep/interaction/GestureSandboxActivity;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/GestureSandboxActivity;->getNumSteps()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object p0
.end method

.method public initializeFeedbackVideoView()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateFeedbackAnimation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->isGestureComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->showSuccessFeedback()V

    goto :goto_0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionTitle()Ljava/lang/Integer;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v1}, Lcom/android/quickstep/interaction/TutorialController;->getIntroductionSubtitle()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 7
    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback(IIZZ)V

    .line 10
    iput-boolean v4, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIntroductionShown:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public isAtFinalStep()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getCurrentStep()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getNumSteps()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGestureComplete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isLargeScreen()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    return p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getRootView()Lcom/android/quickstep/interaction/RootSandboxLayout;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :goto_0
    const-string v0, "tutorial_type"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const/4 v0, 0x0

    const-string v1, "gesture_complete"

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureComplete:Z

    .line 5
    new-instance p1, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    .line 6
    new-instance p1, Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 7
    sget-object p1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile;

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mIsLargeScreen:Z

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/J;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    sget p3, Lcom/android/launcher3/R$layout;->gesture_tutorial_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/interaction/RootSandboxLayout;

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    .line 3
    new-instance p2, Lx1/E;

    invoke-direct {p2, p0}, Lx1/E;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 4
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget p2, Lcom/android/launcher3/R$id;->gesture_tutorial_edge_gesture_video:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    .line 6
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget p2, Lcom/android/launcher3/R$id;->gesture_tutorial_finger_dot:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFingerDotView:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    sget p2, Lcom/android/launcher3/R$id;->gesture_tutorial_fake_previous_task_view:I

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFakePreviousTaskView:Landroid/view/View;

    .line 8
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    return-object p0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/J;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->unregisterBackGestureAttemptCallback()V

    .line 3
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->unregisterNavBarGestureAttemptCallback()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->setViewGroupParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/J;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    .line 3
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->showFeedback()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mRootView:Lcom/android/quickstep/interaction/RootSandboxLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/interaction/TutorialFragment$3;

    invoke-direct {v1, p0}, Lcom/android/quickstep/interaction/TutorialFragment$3;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialType:Lcom/android/quickstep/interaction/TutorialController$TutorialType;

    const-string v1, "tutorial_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/J;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/J;->onStop()V

    .line 2
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->releaseFeedbackAnimation()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mFragmentStopped:Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeBackGestureHandler:Lcom/android/quickstep/interaction/EdgeBackGestureHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/interaction/EdgeBackGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mNavBarGestureHandler:Lcom/android/quickstep/interaction/NavBarGestureHandler;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public releaseFeedbackAnimation()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->isGestureCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mTutorialController:Lcom/android/quickstep/interaction/TutorialController;

    invoke-virtual {v0}, Lcom/android/quickstep/interaction/TutorialController;->cancelQueuedGestureAnimation()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public startSystemNavigationSetting()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.GESTURE_NAVIGATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/J;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public updateEdgeAnimation()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->getEdgeAnimationResId()Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/J;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_1

    .line 4
    new-instance v2, Lcom/android/quickstep/interaction/TutorialFragment$2;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialFragment$2;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeGestureVideoView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mEdgeAnimation:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public updateFeedbackAnimation()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->updateEdgeAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/interaction/TutorialFragment;->createGestureAnimation()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Lcom/android/quickstep/interaction/TutorialFragment$1;

    invoke-direct {v2, p0}, Lcom/android/quickstep/interaction/TutorialFragment$1;-><init>(Lcom/android/quickstep/interaction/TutorialFragment;)V

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/android/quickstep/interaction/TutorialFragment;->mGestureAnimation:Landroid/animation/Animator;

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
