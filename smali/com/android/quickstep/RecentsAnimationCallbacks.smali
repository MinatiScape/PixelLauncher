.class public Lcom/android/quickstep/RecentsAnimationCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/shared/system/RecentsAnimationListener;


# instance fields
.field private final mAllowMinimizeSplitScreen:Z

.field private mCancelled:Z

.field private mController:Lcom/android/quickstep/RecentsAnimationController;

.field private final mListeners:Ljava/util/Set;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SystemUiProxy;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    .line 3
    iput-object p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    .line 4
    iput-boolean p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$2(Lcom/android/quickstep/RecentsAnimationTargets;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationFinished$5(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$0(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationCanceled$3(Ljava/util/HashMap;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/quickstep/RecentsAnimationCallbacks;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onTasksAppeared$4([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    return-void
.end method

.method public static synthetic g(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->lambda$onAnimationStart$1(I)[Landroid/view/RemoteAnimationTarget;

    move-result-object p0

    return-object p0
.end method

.method private getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    invoke-interface {p0, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    return-object p0
.end method

.method private synthetic lambda$onAnimationCanceled$3(Ljava/util/HashMap;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationCanceled(Ljava/util/HashMap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAnimationFinished$5(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onAnimationStart$0(Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->activityType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onAnimationStart$1(I)[Landroid/view/RemoteAnimationTarget;
    .locals 0

    .line 1
    new-array p0, p0, [Landroid/view/RemoteAnimationTarget;

    return-object p0
.end method

.method private synthetic lambda$onAnimationStart$2(Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    invoke-interface {v3, v4, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onRecentsAnimationStart(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTasksAppeared$4([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->getListeners()[Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 2
    invoke-interface {v2, p1}, Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;->onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final onAnimationFinished(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lu1/T0;

    invoke-direct {v1, p0, p1}, Lu1/T0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public notifyAnimationCanceled()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public final onAnimationCanceled(Ljava/util/HashMap;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lu1/V0;

    invoke-direct {v1, p0, p1}, Lu1/V0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v4, v0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    .line 1
    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/RecentsAnimationCallbacks;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public final onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 8

    .line 2
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lu1/b1;->a:Lu1/b1;

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lu1/Z0;->a:Lu1/Z0;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lu1/a1;->a:Lu1/a1;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/RemoteAnimationTarget;

    .line 6
    iget-object v1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iget-boolean v2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    .line 7
    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/SystemUiProxy;->onGoingToRecentsLegacy(Z[Landroid/view/RemoteAnimationTarget;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v0

    .line 8
    new-instance v7, Lcom/android/quickstep/RecentsAnimationTargets;

    .line 9
    invoke-static {v0}, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->wrap([Landroid/view/RemoteAnimationTarget;)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v4

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/RecentsAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 10
    new-instance p2, Lcom/android/quickstep/RecentsAnimationController;

    iget-boolean p3, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mAllowMinimizeSplitScreen:Z

    new-instance p4, Lu1/Y0;

    invoke-direct {p4, p0}, Lu1/Y0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    invoke-direct {p2, p1, p3, p4}, Lcom/android/quickstep/RecentsAnimationController;-><init>(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;ZLjava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    .line 11
    iget-boolean p1, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mCancelled:Z

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mController:Lcom/android/quickstep/RecentsAnimationController;

    .line 13
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lu1/X0;

    invoke-direct {p2, p0}, Lu1/X0;-><init>(Lcom/android/quickstep/RecentsAnimationController;)V

    .line 14
    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 15
    :cond_0
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lu1/U0;

    invoke-direct {p2, p0, v7}, Lu1/U0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V

    invoke-static {p1, p2}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public onTasksAppeared([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lu1/W0;

    invoke-direct {v1, p0, p1}, Lu1/W0;-><init>(Lcom/android/quickstep/RecentsAnimationCallbacks;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeAllListeners()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public removeListener(Lcom/android/quickstep/RecentsAnimationCallbacks$RecentsAnimationListener;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/RecentsAnimationCallbacks;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
