.class public final synthetic LG1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

.field public final synthetic c:Landroid/os/IBinder;

.field public final synthetic d:Landroid/window/TransitionInfo;

.field public final synthetic e:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG1/d;->b:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iput-object p2, p0, LG1/d;->c:Landroid/os/IBinder;

    iput-object p3, p0, LG1/d;->d:Landroid/window/TransitionInfo;

    iput-object p4, p0, LG1/d;->e:Landroid/view/SurfaceControl$Transaction;

    iput-object p5, p0, LG1/d;->f:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LG1/d;->b:Lcom/android/systemui/shared/system/RemoteTransitionRunner;

    iget-object v1, p0, LG1/d;->c:Landroid/os/IBinder;

    iget-object v2, p0, LG1/d;->d:Landroid/window/TransitionInfo;

    iget-object v3, p0, LG1/d;->e:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, LG1/d;->f:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/systemui/shared/system/RemoteTransitionCompat$1;->c(Lcom/android/systemui/shared/system/RemoteTransitionRunner;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method
