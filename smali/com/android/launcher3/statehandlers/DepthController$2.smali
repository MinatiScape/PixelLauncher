.class public Lcom/android/launcher3/statehandlers/DepthController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/statehandlers/DepthController$2;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController$2;->lambda$onDraw$0(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$onDraw$0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->access$200(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/launcher3/statehandlers/DepthController;->setSurface(Landroid/view/SurfaceControl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$2;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->access$100(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/launcher3/statehandlers/DepthController;->access$300(Lcom/android/launcher3/statehandlers/DepthController;F)Z

    .line 7
    :cond_1
    new-instance v1, Ld1/b;

    invoke-direct {v1, p0, v0}, Ld1/b;-><init>(Lcom/android/launcher3/statehandlers/DepthController$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
