.class public abstract Lcom/android/launcher3/util/BgObjectWithLooper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/BgObjectWithLooper;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/util/BgObjectWithLooper;->runOnThread()V

    return-void
.end method


# virtual methods
.method public final initializeInBackground(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lm1/a;

    invoke-direct {v1, p0}, Lm1/a;-><init>(Lcom/android/launcher3/util/BgObjectWithLooper;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public abstract onInitialized(Landroid/os/Looper;)V
.end method

.method public final runOnThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/BgObjectWithLooper;->onInitialized(Landroid/os/Looper;)V

    .line 3
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
