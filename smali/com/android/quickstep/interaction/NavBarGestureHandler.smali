.class public Lcom/android/quickstep/interaction/NavBarGestureHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NavBarGestureHandler"

.field private static final RETRACT_GESTURE_ANIMATION_DURATION_MS:J = 0x12cL


# instance fields
.field private final mAssistantAngleThreshold:I

.field private mAssistantDistance:F

.field private final mAssistantDragDistThreshold:F

.field private mAssistantDragStartTime:J

.field private final mAssistantFlingDistThreshold:F

.field private mAssistantGestureActive:Z

.field private final mAssistantGestureDetector:Landroid/view/GestureDetector;

.field private mAssistantLastProgress:F

.field private final mAssistantLeftRegion:Landroid/graphics/RectF;

.field private final mAssistantRightRegion:Landroid/graphics/RectF;

.field private final mAssistantSquaredSlop:F

.field private final mAssistantStartDragPos:Landroid/graphics/PointF;

.field private mAssistantTimeFraction:F

.field private final mAssistantTimeThreshold:J

.field private final mBottomGestureHeight:I

.field private final mContext:Landroid/content/Context;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPos:Landroid/graphics/PointF;

.field private mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

.field private final mLastPos:Landroid/graphics/PointF;

.field private mLaunchedAssistant:Z

.field private final mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

.field private mPassedAssistantSlop:Z

.field private final mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

.field private mTouchCameFromAssistantCorner:Z

.field private mTouchCameFromNavBar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 3
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    .line 4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 5
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    .line 6
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    .line 7
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    .line 8
    iput-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v4

    .line 11
    invoke-virtual {v3, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move v3, v4

    .line 12
    :goto_0
    new-instance v10, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    const/4 v6, 0x1

    new-instance v7, Lcom/android/quickstep/util/NavBarPosition;

    sget-object v4, Lcom/android/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/android/quickstep/SysUINavigationMode$Mode;

    invoke-direct {v7, v4, v3}, Lcom/android/quickstep/util/NavBarPosition;-><init>(Lcom/android/quickstep/SysUINavigationMode$Mode;I)V

    const/4 v8, 0x0

    move-object v4, v10

    move-object v5, p1

    move-object v9, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;-><init>(Landroid/content/Context;ZLcom/android/quickstep/util/NavBarPosition;Ljava/lang/Runnable;Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker$OnSwipeUpListener;)V

    iput-object v10, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    .line 13
    new-instance v3, Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-direct {v3, p1}, Lcom/android/quickstep/util/MotionPauseDetector;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_height"

    .line 15
    invoke-static {v4, v3}, Lcom/android/launcher3/ResourceUtils;->getNavbarSize(Ljava/lang/String;Landroid/content/res/Resources;)I

    move-result v4

    iput v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    .line 16
    sget v5, Lcom/android/launcher3/R$dimen;->gestures_assistant_drag_threshold:I

    .line 17
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    .line 18
    sget v5, Lcom/android/launcher3/R$dimen;->gestures_assistant_fling_threshold:I

    .line 19
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    iput v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantFlingDistThreshold:F

    .line 20
    sget v5, Lcom/android/launcher3/R$integer;->assistant_gesture_min_time_threshold:I

    .line 21
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeThreshold:J

    .line 22
    sget v5, Lcom/android/launcher3/R$integer;->assistant_gesture_corner_deg_threshold:I

    .line 23
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantAngleThreshold:I

    .line 24
    new-instance v5, Landroid/view/GestureDetector;

    new-instance v6, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/quickstep/interaction/NavBarGestureHandler$AssistantGestureListener;-><init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;Lcom/android/quickstep/interaction/NavBarGestureHandler$1;)V

    invoke-direct {v5, p1, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureDetector:Landroid/view/GestureDetector;

    .line 25
    sget v5, Lcom/android/launcher3/R$dimen;->gestures_assistant_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v4, v4

    .line 26
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result v5

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 28
    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v6, v5

    iput v6, v2, Landroid/graphics/RectF;->bottom:F

    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v5

    sub-float/2addr v5, v4

    .line 29
    iput v5, v2, Landroid/graphics/RectF;->top:F

    iput v5, v1, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    .line 30
    iput v4, v1, Landroid/graphics/RectF;->left:F

    int-to-float v4, v3

    .line 31
    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 32
    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    iput v1, v2, Landroid/graphics/RectF;->right:F

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 33
    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 34
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p1

    .line 35
    iput p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantSquaredSlop:F

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/interaction/NavBarGestureHandler;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->lambda$onTouch$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromAssistantCorner:Z

    return p0
.end method

.method public static synthetic access$300(Lcom/android/quickstep/interaction/NavBarGestureHandler;FF)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->isValidAssistantGestureAngle(FF)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/android/quickstep/interaction/NavBarGestureHandler;)Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    return p0
.end method

.method public static synthetic access$600(Lcom/android/quickstep/interaction/NavBarGestureHandler;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantFlingDistThreshold:F

    return p0
.end method

.method public static synthetic access$702(Lcom/android/quickstep/interaction/NavBarGestureHandler;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    return p1
.end method

.method public static synthetic access$800(Lcom/android/quickstep/interaction/NavBarGestureHandler;Landroid/graphics/PointF;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->startAssistant(Landroid/graphics/PointF;)V

    return-void
.end method

.method private isValidAssistantGestureAngle(FF)Z
    .locals 2

    float-to-double v0, p2

    float-to-double p1, p1

    .line 1
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    const/high16 v0, 0x43340000    # 180.0f

    sub-float p1, v0, p1

    .line 2
    :cond_0
    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantAngleThreshold:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    cmpg-float p0, p1, p2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onTouch$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    invoke-interface {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setAssistantProgress(F)V

    return-void
.end method

.method private startAssistant(Landroid/graphics/PointF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    invoke-interface {v0, v1, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    .line 3
    :cond_0
    sget-object p1, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_CLICK:Landroid/os/VibrationEffect;

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    return-void
.end method

.method private updateAssistantProgress()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    if-nez v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    div-float/2addr v0, v2

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeFraction:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    .line 4
    iget v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    iget v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragDistThreshold:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    cmpl-float v1, v2, v1

    if-ltz v1, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->startAssistant(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz p0, :cond_1

    .line 7
    invoke-interface {p0, v0}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setAssistantProgress(F)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

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

.method public onMotionPauseChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    invoke-interface {p0, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onMotionPaused(Z)V

    return-void
.end method

.method public onMotionPauseDetected()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/VibratorWrapper;

    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->OVERVIEW_HAPTIC:Landroid/os/VibrationEffect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(Landroid/os/VibrationEffect;)V

    return-void
.end method

.method public onSwipeUp(ZLandroid/graphics/PointF;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 3
    sget-object p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_GESTURE_COMPLETED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    .line 4
    :goto_0
    invoke-interface {v0, p0, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 5
    sget-object p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->OVERVIEW_NOT_STARTED_TOO_FAR_FROM_EDGE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    .line 6
    :goto_1
    invoke-interface {v0, p0, p2}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public onSwipeUpCancelled()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_CANCELLED:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {v0, p0, v1}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->interceptedTouch()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v4, :cond_0

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 4
    iget-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    invoke-static {v3, p1}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result p1

    iget v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantSquaredSlop:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_b

    .line 7
    iput-boolean v2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    .line 8
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v4, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragStartTime:J

    .line 10
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    invoke-direct {p0, v3, p1}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->isValidAssistantGestureAngle(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez p1, :cond_b

    .line 11
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz p1, :cond_b

    .line 12
    sget-object v3, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_BAD_ANGLE:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {p1, v3, v4}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    goto/16 :goto_3

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantStartDragPos:Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v6

    float-to-double v6, v4

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v4, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float p1, v4

    iput p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDistance:F

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_b

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantDragStartTime:J

    sub-long/2addr v3, v5

    long-to-float p1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    .line 15
    iget-wide v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeThreshold:J

    long-to-float v4, v4

    div-float/2addr p1, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantTimeFraction:F

    .line 16
    invoke-direct {p0}, Lcom/android/quickstep/interaction/NavBarGestureHandler;->updateAssistantProgress()V

    goto/16 :goto_3

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 18
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz p1, :cond_4

    if-nez v0, :cond_4

    iget-boolean v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz v5, :cond_4

    .line 19
    sget-object v0, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->HOME_OR_OVERVIEW_NOT_STARTED_WRONG_SWIPE_DIRECTION:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {p1, v0, v3}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    move v0, v2

    goto/16 :goto_3

    .line 20
    :cond_4
    iget-boolean v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    if-nez v5, :cond_5

    if-eqz p1, :cond_5

    .line 21
    sget-object v5, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;->ASSISTANT_NOT_STARTED_SWIPE_TOO_SHORT:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;

    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    invoke-interface {p1, v5, v6}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->onNavBarGestureAttempted(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureResult;Landroid/graphics/PointF;)V

    new-array p1, v4, [F

    .line 22
    iget v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLastProgress:F

    aput v4, p1, v1

    aput v3, p1, v2

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v3, 0x12c

    .line 23
    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 24
    new-instance v3, Lx1/k;

    invoke-direct {v3, p0}, Lx1/k;-><init>(Lcom/android/quickstep/interaction/NavBarGestureHandler;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 25
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    :cond_5
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mPassedAssistantSlop:Z

    goto/16 :goto_3

    .line 28
    :cond_6
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 29
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    invoke-virtual {p1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 30
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantLeftRegion:Landroid/graphics/RectF;

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantRightRegion:Landroid/graphics/RectF;

    .line 32
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_0

    :cond_7
    move p1, v1

    goto :goto_1

    :cond_8
    :goto_0
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromAssistantCorner:Z

    .line 33
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureActive:Z

    if-nez p1, :cond_9

    .line 34
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-ltz p1, :cond_9

    move p1, v2

    goto :goto_2

    :cond_9
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-nez p1, :cond_a

    .line 35
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz p1, :cond_a

    const/4 v3, 0x0

    .line 36
    invoke-interface {p1, v3}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setNavBarGestureProgress(Ljava/lang/Float;)V

    .line 37
    :cond_a
    iput-boolean v1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLaunchedAssistant:Z

    .line 38
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {p1}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->init()V

    .line 39
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1}, Lcom/android/quickstep/util/MotionPauseDetector;->clear()V

    .line 40
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/MotionPauseDetector;->setOnMotionPauseListener(Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;)V

    .line 41
    :cond_b
    :goto_3
    iget-boolean p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mTouchCameFromNavBar:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    if-eqz p1, :cond_c

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDownPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;->setNavBarGestureProgress(Ljava/lang/Float;)V

    .line 43
    :cond_c
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mSwipeUpTouchTracker:Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/TriggerSwipeUpTouchTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 44
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mAssistantGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 45
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    invoke-virtual {p1, p2}, Lcom/android/quickstep/util/MotionPauseDetector;->addPosition(Landroid/view/MotionEvent;)V

    .line 46
    iget-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mMotionPauseDetector:Lcom/android/quickstep/util/MotionPauseDetector;

    iget-object p2, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mLastPos:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    iget p0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mBottomGestureHeight:I

    sub-int/2addr v3, p0

    int-to-float p0, v3

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_d

    move v1, v2

    :cond_d
    invoke-virtual {p1, v1}, Lcom/android/quickstep/util/MotionPauseDetector;->setDisallowPause(Z)V

    return v0
.end method

.method public registerNavBarGestureAttemptCallback(Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    return-void
.end method

.method public unregisterNavBarGestureAttemptCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/quickstep/interaction/NavBarGestureHandler;->mGestureCallback:Lcom/android/quickstep/interaction/NavBarGestureHandler$NavBarGestureAttemptCallback;

    return-void
.end method
