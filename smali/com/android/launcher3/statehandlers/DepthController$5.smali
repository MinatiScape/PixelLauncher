.class public Lcom/android/launcher3/statehandlers/DepthController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/statehandlers/DepthController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/statehandlers/DepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p1}, Lcom/android/launcher3/statehandlers/DepthController;->access$200(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->access$500(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/systemui/shared/system/WallpaperManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v1}, Lcom/android/launcher3/statehandlers/DepthController;->access$100(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/shared/system/WallpaperManagerCompat;->setWallpaperZoomOut(Landroid/os/IBinder;F)V

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DepthController;->access$600(Lcom/android/launcher3/statehandlers/DepthController;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/view/CrossWindowBlurListeners;->getInstance()Landroid/view/CrossWindowBlurListeners;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {v0}, Lcom/android/launcher3/statehandlers/DepthController;->access$700(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/util/function/Consumer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/CrossWindowBlurListeners;->removeListener(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p1}, Lcom/android/launcher3/statehandlers/DepthController;->access$200(Lcom/android/launcher3/statehandlers/DepthController;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/statehandlers/DepthController$5;->this$0:Lcom/android/launcher3/statehandlers/DepthController;

    invoke-static {p0}, Lcom/android/launcher3/statehandlers/DepthController;->access$800(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/launcher3/views/ScrimView;->removeOpaquenessListener(Ljava/lang/Runnable;)V

    return-void
.end method
