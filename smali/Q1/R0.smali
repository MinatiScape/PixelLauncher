.class public LQ1/R0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lg0/l;


# instance fields
.field public final b:Landroid/net/Uri;

.field public final c:Lcom/android/launcher3/Launcher;

.field public final d:Lg0/m;

.field public final e:Ljava/util/ArrayList;

.field public f:Z

.field public g:Z

.field public h:Landroidx/slice/Slice;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Lcom/android/launcher3/Launcher;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, LQ1/R0;->f:Z

    .line 4
    iput-boolean v0, p0, LQ1/R0;->g:Z

    .line 5
    iput-object p1, p0, LQ1/R0;->b:Landroid/net/Uri;

    .line 6
    iput-object p2, p0, LQ1/R0;->c:Lcom/android/launcher3/Launcher;

    .line 7
    invoke-static {p2}, Lg0/m;->b(Landroid/content/Context;)Lg0/m;

    move-result-object p1

    iput-object p1, p0, LQ1/R0;->d:Lg0/m;

    .line 8
    invoke-virtual {p2, p0}, Landroid/app/Activity;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 9
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p2}, LQ1/R0;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0, p2}, LQ1/R0;->onActivityStarted(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic b(LQ1/R0;Landroidx/slice/Slice;)V
    .locals 0

    invoke-direct {p0, p1}, LQ1/R0;->o(Landroidx/slice/Slice;)V

    return-void
.end method

.method public static synthetic c(LQ1/R0;Z)V
    .locals 0

    invoke-direct {p0, p1}, LQ1/R0;->n(Z)V

    return-void
.end method

.method public static synthetic d(Landroidx/slice/Slice;LY/w;)V
    .locals 0

    invoke-static {p0, p1}, LQ1/R0;->m(Landroidx/slice/Slice;LY/w;)V

    return-void
.end method

.method public static synthetic e(LQ1/R0;)V
    .locals 0

    invoke-virtual {p0}, LQ1/R0;->r()V

    return-void
.end method

.method public static synthetic f(LQ1/R0;)Landroidx/slice/Slice;
    .locals 0

    .line 1
    iget-object p0, p0, LQ1/R0;->h:Landroidx/slice/Slice;

    return-object p0
.end method

.method public static synthetic g(LQ1/R0;Landroidx/slice/Slice;)Landroidx/slice/Slice;
    .locals 0

    .line 1
    iput-object p1, p0, LQ1/R0;->h:Landroidx/slice/Slice;

    return-object p1
.end method

.method public static synthetic h(LQ1/R0;LY/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ1/R0;->k(LY/w;)V

    return-void
.end method

.method public static synthetic i(LQ1/R0;LY/w;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ1/R0;->p(LY/w;)V

    return-void
.end method

.method public static synthetic j(LQ1/R0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LQ1/R0;->l()V

    return-void
.end method

.method public static synthetic m(Landroidx/slice/Slice;LY/w;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, LY/w;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic n(Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ1/R0;->s(Z)V

    return-void
.end method

.method private synthetic o(Landroidx/slice/Slice;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LQ1/R0;->a(Landroidx/slice/Slice;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/slice/Slice;)V
    .locals 1

    .line 1
    iget-object p0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    new-instance v0, LQ1/Q0;

    invoke-direct {v0, p1}, LQ1/Q0;-><init>(Landroidx/slice/Slice;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final k(LY/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, LQ1/R0;->q()V

    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    iget-boolean v0, p0, LQ1/R0;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LQ1/R0;->f:Z

    .line 3
    iget-object v0, p0, LQ1/R0;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4
    iget-object p0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LQ1/R0;->l()V

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LQ1/R0;->q()V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, LQ1/R0;->q()V

    return-void
.end method

.method public final p(LY/w;)V
    .locals 1

    .line 1
    iget-object v0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, LQ1/R0;->q()V

    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    iget-boolean v0, p0, LQ1/R0;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, LQ1/R0;->c:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LQ1/R0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LQ1/P0;

    invoke-direct {v2, p0, v1}, LQ1/P0;-><init>(LQ1/R0;Z)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final r()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, LQ1/R0;->d:Lg0/m;

    iget-object v1, p0, LQ1/R0;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lg0/m;->a(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, LQ1/O0;

    invoke-direct {v2, p0, v0}, LQ1/O0;-><init>(LQ1/R0;Landroidx/slice/Slice;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SearchSessionManager"

    const-string v1, "Error fetching slice"

    .line 3
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final s(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, LQ1/R0;->g:Z

    if-eq v0, p1, :cond_1

    .line 2
    iput-boolean p1, p0, LQ1/R0;->g:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, LQ1/R0;->d:Lg0/m;

    iget-object v0, p0, LQ1/R0;->b:Landroid/net/Uri;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1, v0, v1, p0}, Lg0/m;->d(Landroid/net/Uri;Ljava/util/concurrent/Executor;Lg0/l;)V

    .line 4
    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, LQ1/N0;

    invoke-direct {v0, p0}, LQ1/N0;-><init>(LQ1/R0;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, LQ1/R0;->d:Lg0/m;

    iget-object v0, p0, LQ1/R0;->b:Landroid/net/Uri;

    invoke-virtual {p1, v0, p0}, Lg0/m;->f(Landroid/net/Uri;Lg0/l;)V

    :cond_1
    :goto_0
    return-void
.end method
