.class public Lf2/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static q:I = -0x1


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Lf2/k;

.field public final c:Landroid/os/Handler;

.field public final d:Lf2/d;

.field public final e:Lf2/d;

.field public final f:Lf2/o;

.field public final g:Lf2/a;

.field public final h:Landroid/content/BroadcastReceiver;

.field public i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field public j:I

.field public k:Z

.field public l:I

.field public m:Lf2/h;

.field public n:Landroid/os/Bundle;

.field public o:Landroid/view/WindowManager$LayoutParams;

.field public p:Lf2/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lf2/k;Lf2/h;Landroid/os/Looper;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf2/d;

    const-string v1, "Client"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lf2/d;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lf2/j;->d:Lf2/d;

    .line 3
    new-instance v0, Lf2/d;

    const-string v1, "Service"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lf2/d;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lf2/j;->e:Lf2/d;

    .line 4
    new-instance v0, Lf2/e;

    invoke-direct {v0, p0}, Lf2/e;-><init>(Lf2/j;)V

    iput-object v0, p0, Lf2/j;->h:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lf2/j;->j:I

    .line 6
    iput-boolean v1, p0, Lf2/j;->k:Z

    .line 7
    iput v1, p0, Lf2/j;->l:I

    .line 8
    iput-object p1, p0, Lf2/j;->a:Landroid/app/Activity;

    .line 9
    iput-object p2, p0, Lf2/j;->b:Lf2/k;

    .line 10
    iput-object p3, p0, Lf2/j;->m:Lf2/h;

    .line 11
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lf2/j;->c:Landroid/os/Handler;

    .line 12
    new-instance p3, Lf2/o;

    iget-object p4, p0, Lf2/j;->m:Lf2/h;

    .line 13
    invoke-static {p4}, Lf2/h;->a(Lf2/h;)Ljava/lang/String;

    move-result-object p4

    const/16 v2, 0x41

    invoke-direct {p3, p1, v2, p2, p4}, Lf2/o;-><init>(Landroid/content/Context;ILandroid/os/Handler;Ljava/lang/String;)V

    iput-object p3, p0, Lf2/j;->f:Lf2/o;

    .line 14
    iget-object p3, p0, Lf2/j;->m:Lf2/h;

    invoke-static {p3}, Lf2/h;->a(Lf2/h;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lf2/a;->i(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lf2/a;

    move-result-object p2

    iput-object p2, p0, Lf2/j;->g:Lf2/a;

    .line 15
    invoke-virtual {p2, p0}, Lf2/a;->l(Lf2/j;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object p2

    iput-object p2, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 16
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "package"

    .line 17
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 18
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x13

    if-lt p3, p4, :cond_0

    .line 19
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v2}, Lf2/h;->a(Lf2/h;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 20
    :cond_0
    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    sget p2, Lf2/j;->q:I

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    .line 22
    invoke-virtual {p0, p1}, Lf2/j;->H(Landroid/content/Context;)V

    .line 23
    :cond_1
    invoke-virtual {p0}, Lf2/j;->v()V

    if-lt p3, p4, :cond_2

    .line 24
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p0}, Lf2/j;->w()V

    :cond_2
    return-void
.end method

.method public static Q(I)I
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0x7ff

    if-gt p0, v0, :cond_0

    shl-int/lit8 p0, p0, 0x2

    or-int/lit8 p0, p0, 0x1

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic a(Lf2/j;)Lf2/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->m:Lf2/h;

    return-object p0
.end method

.method public static synthetic b(Lf2/j;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf2/j;->t(I)V

    return-void
.end method

.method public static synthetic c(Lf2/j;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic d(Lf2/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lf2/j;->l:I

    return p0
.end method

.method public static synthetic e(Lf2/j;)Lf2/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->b:Lf2/k;

    return-object p0
.end method

.method public static synthetic f(Lf2/j;)Lf2/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->e:Lf2/d;

    return-object p0
.end method

.method public static synthetic g(Lf2/j;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf2/j;->u(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic h(Lf2/j;)Lf2/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->f:Lf2/o;

    return-object p0
.end method

.method public static synthetic i(Lf2/j;)Lf2/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->g:Lf2/a;

    return-object p0
.end method

.method public static synthetic j(Lf2/j;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf2/j;->H(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic k(Lf2/j;)I
    .locals 0

    .line 1
    iget p0, p0, Lf2/j;->j:I

    return p0
.end method

.method public static synthetic l(Lf2/j;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2/j;->v()V

    return-void
.end method

.method public static p(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "app://"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0xb

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const/16 v0, 0x14

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cv"

    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lf2/j;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lf2/j;->j:I

    .line 3
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    .line 4
    :try_start_0
    sget v2, Lf2/j;->q:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    iget p0, p0, Lf2/j;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lf2/d;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf2/j;->g:Lf2/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lf2/a;->k(Z)V

    .line 3
    invoke-virtual {p0}, Lf2/j;->v()V

    .line 4
    iget v0, p0, Lf2/j;->j:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lf2/j;->j:I

    .line 5
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    iget p0, p0, Lf2/j;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lf2/d;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public C()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf2/j;->g:Lf2/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf2/a;->k(Z)V

    .line 3
    iget-object v0, p0, Lf2/j;->f:Lf2/o;

    invoke-virtual {v0}, Lf2/o;->g()V

    .line 4
    iget v0, p0, Lf2/j;->j:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lf2/j;->j:I

    .line 5
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    iget p0, p0, Lf2/j;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lf2/d;->d(Ljava/lang/String;I)V

    return-void
.end method

.method public D(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/j;->e:Lf2/d;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Connected"

    invoke-virtual {v0, v3, v2}, Lf2/d;->e(Ljava/lang/String;Z)V

    .line 2
    iput-object p1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lf2/j;->b:Lf2/k;

    invoke-interface {p1, v1, v1}, Lf2/k;->a(ZZ)V

    .line 4
    iput v1, p0, Lf2/j;->l:I

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p0}, Lf2/j;->m()V

    :cond_2
    :goto_1
    return-void
.end method

.method public E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "reattachOverlay"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lf2/j;->F()V

    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    sget v0, Lf2/j;->q:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lf2/j;->m()V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf2/j;->c:Landroid/os/Handler;

    new-instance v1, Lf2/g;

    invoke-direct {v1, p0}, Lf2/g;-><init>(Lf2/j;)V

    invoke-static {v0, v1}, Lf2/o;->e(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final H(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p0, p0, Lf2/j;->m:Lf2/h;

    .line 2
    invoke-static {p0}, Lf2/h;->a(Lf2/h;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lf2/j;->p(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 p1, 0x80

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    .line 4
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "service.api.version"

    .line 5
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lf2/j;->q:I

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    sput p1, Lf2/j;->q:I

    :goto_1
    return-void
.end method

.method public final I(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lf2/j;->a:Landroid/app/Activity;

    iget-object v1, p0, Lf2/j;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lf2/j;->k:Z

    .line 4
    iget-object v0, p0, Lf2/j;->f:Lf2/o;

    invoke-virtual {v0}, Lf2/o;->g()V

    .line 5
    iget-object v0, p0, Lf2/j;->p:Lf2/i;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lf2/i;->a()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lf2/j;->p:Lf2/i;

    .line 8
    :cond_1
    iget-object v0, p0, Lf2/j;->g:Lf2/a;

    invoke-virtual {v0, p0, p1}, Lf2/a;->h(Lf2/j;Z)V

    return-void
.end method

.method public J(Lf2/h;)V
    .locals 3

    const-string v0, "DrawerOverlayClient"

    .line 1
    iget-object v1, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v1}, Lf2/h;->d(Lf2/h;)I

    move-result v1

    invoke-static {p1}, Lf2/h;->d(Lf2/h;)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 2
    iput-object p1, p0, Lf2/j;->m:Lf2/h;

    .line 3
    iget-object p1, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lf2/j;->m()V

    .line 5
    :cond_0
    iget-object p1, p0, Lf2/j;->d:Lf2/d;

    iget-object p0, p0, Lf2/j;->m:Lf2/h;

    invoke-static {p0}, Lf2/h;->d(Lf2/h;)I

    move-result p0

    const/16 v0, 0x1c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "setClientOptions "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lf2/d;->b(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget v1, Lf2/j;->q:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v1}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {p1}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    :try_start_0
    iput-object p1, p0, Lf2/j;->m:Lf2/h;

    .line 9
    iget-object p1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_4

    .line 10
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "partner_overlay_icon"

    .line 11
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v2}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "partner_overlay_product_name"

    .line 12
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    .line 13
    invoke-static {v2}, Lf2/h;->f(Lf2/h;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "google_overlay_is_default"

    .line 15
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v2}, Lf2/h;->b(Lf2/h;)Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v1, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->updateClientOptions(Landroid/os/Bundle;)V

    .line 17
    iget-object p0, p0, Lf2/j;->d:Lf2/d;

    const-string p1, "updateClientOptions"

    invoke-virtual {p0, p1}, Lf2/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string p0, "updateClientOptions not called since the overlay has not yet attached"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "updateClientOptions() to set partner overlay icon failed"

    .line 19
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_0
    return-void
.end method

.method public K(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "setPrivateOptions : "

    if-eqz v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3
    :goto_1
    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lf2/j;->n:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p0}, Lf2/j;->F()V

    return-void
.end method

.method public final L(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0}, Lf2/j;->m()V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p1, :cond_2

    .line 5
    :try_start_0
    iget-object v0, p0, Lf2/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    :cond_2
    :goto_0
    return-void
.end method

.method public M(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "showOverlay"

    invoke-virtual {v0, v1, p1}, Lf2/d;->e(Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public N()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "startMove"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lf2/j;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public O([BLandroid/os/Bundle;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "startSearch"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 2
    sget v0, Lf2/j;->q:I

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_1

    .line 4
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "DrawerOverlayClient"

    const-string p2, "Error starting session for search"

    .line 5
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public P(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "updateMove"

    invoke-virtual {v0, v1, p1}, Lf2/d;->c(Ljava/lang/String;F)V

    .line 2
    invoke-virtual {p0}, Lf2/j;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_6

    .line 2
    :try_start_0
    iget-object v0, p0, Lf2/j;->p:Lf2/i;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lf2/i;

    invoke-direct {v0}, Lf2/i;-><init>()V

    iput-object v0, p0, Lf2/j;->p:Lf2/i;

    .line 4
    :cond_0
    iget-object v0, p0, Lf2/j;->p:Lf2/i;

    invoke-virtual {v0, p0}, Lf2/i;->c(Lf2/j;)V

    .line 5
    sget v0, Lf2/j;->q:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lf2/j;->p:Lf2/i;

    iget-object v3, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v3}, Lf2/h;->d(Lf2/h;)I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    .line 8
    iget-object v2, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    .line 9
    iget-object v2, p0, Lf2/j;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    .line 10
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v2}, Lf2/h;->d(Lf2/h;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    iget-object v1, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v1}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "partner_overlay_icon"

    .line 12
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v2}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "google_overlay_is_default"

    .line 13
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    .line 14
    invoke-static {v2}, Lf2/h;->b(Lf2/h;)Z

    move-result v2

    .line 15
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "partner_overlay_product_name"

    .line 16
    iget-object v2, p0, Lf2/j;->m:Lf2/h;

    .line 17
    invoke-static {v2}, Lf2/h;->f(Lf2/h;)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_2
    iget-object v1, p0, Lf2/j;->n:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 21
    :cond_3
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lf2/j;->p:Lf2/i;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 22
    :goto_0
    sget v0, Lf2/j;->q:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 23
    iget v0, p0, Lf2/j;->j:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    .line 24
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V

    goto :goto_1

    .line 25
    :cond_4
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_1

    .line 26
    :cond_5
    iget-object v0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget p0, p0, Lf2/j;->j:I

    invoke-interface {v0, p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_1
    return-void
.end method

.method public n(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lf2/j;->s()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isConnected: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lf2/j;->f:Lf2/o;

    invoke-virtual {v0}, Lf2/o;->d()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "act.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lf2/j;->g:Lf2/a;

    invoke-virtual {v0}, Lf2/o;->d()Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "app.isBound: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6
    sget v0, Lf2/j;->q:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "serviceVersion: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "clientVersion: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v0}, Lf2/h;->b(Lf2/h;)Z

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isGoogleOverlayDefault: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v0}, Lf2/h;->f(Lf2/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "partnerOverlayProductName: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lf2/j;->m:Lf2/h;

    .line 11
    invoke-static {v0}, Lf2/h;->e(Lf2/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPartnerOverlayIconPresent: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    iget v0, p0, Lf2/j;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mActivityState: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    iget v0, p0, Lf2/j;->l:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mServiceStatus: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v0}, Lf2/h;->d(Lf2/h;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mCurrentServiceConnectionOptions: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    invoke-virtual {v0, p1, p2}, Lf2/d;->f(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 17
    iget-object p0, p0, Lf2/j;->e:Lf2/d;

    invoke-virtual {p0, p1, p2}, Lf2/d;->f(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "endMove"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lf2/j;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {p0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public q(I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lf2/j;->Q(I)I

    move-result v0

    .line 2
    iget-object v1, p0, Lf2/j;->d:Lf2/d;

    const-string v2, "hideOverlay"

    invoke-virtual {v1, v2, p1}, Lf2/d;->d(Ljava/lang/String;I)V

    .line 3
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    .line 4
    :try_start_0
    invoke-interface {p0, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public r(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "hideOverlay"

    invoke-virtual {v0, v1, p1}, Lf2/d;->e(Ljava/lang/String;Z)V

    .line 2
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public final s()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t(I)V
    .locals 6

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1
    :goto_0
    iget v3, p0, Lf2/j;->l:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    if-ne v0, v4, :cond_4

    if-eq v5, v1, :cond_5

    .line 2
    :cond_4
    iget-object v1, p0, Lf2/j;->b:Lf2/k;

    invoke-interface {v1, v0, v5}, Lf2/k;->a(ZZ)V

    .line 3
    :cond_5
    iput p1, p0, Lf2/j;->l:I

    return-void
.end method

.method public final u(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2/j;->b:Lf2/k;

    instance-of v1, v0, Lf2/m;

    if-eqz v1, :cond_3

    .line 2
    check-cast v0, Lf2/m;

    const-string v1, "minus_one_thumbnail_image_960_540"

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "minus_one_product_name"

    .line 4
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Icon;

    .line 6
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-interface {v0, v2, v1}, Lf2/m;->f(Ljava/lang/String;Landroid/graphics/drawable/Icon;)V

    :cond_0
    const-string v1, "overlay_animation_complete"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {v0}, Lf2/m;->e()V

    :cond_1
    const-string v1, "google_overlay_icon"

    .line 10
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 11
    invoke-interface {v0, v1}, Lf2/m;->d(Landroid/graphics/Bitmap;)V

    :cond_2
    const-string v1, "initiate_overlay_switch"

    .line 12
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    invoke-interface {v0}, Lf2/m;->g()V

    :cond_3
    const-string v0, "service_status"

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_4

    .line 15
    invoke-virtual {p0, p1}, Lf2/j;->t(I)V

    .line 16
    :cond_4
    iget-object p0, p0, Lf2/j;->b:Lf2/k;

    instance-of v0, p0, Lf2/l;

    if-eqz v0, :cond_5

    .line 17
    check-cast p0, Lf2/l;

    invoke-interface {p0, p1}, Lf2/l;->b(I)V

    :cond_5
    return-void
.end method

.method public final v()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j;->m:Lf2/h;

    invoke-static {v0}, Lf2/h;->c(Lf2/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lf2/j;->G()V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "attachedToWindow"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lf2/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lf2/j;->L(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2/j;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lf2/j;->I(Z)V

    return-void
.end method

.method public final y()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    const-string v1, "detachedFromWindow"

    invoke-virtual {v0, v1}, Lf2/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lf2/j;->L(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public z()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lf2/j;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lf2/j;->j:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lf2/j;->j:I

    .line 3
    iget-object v1, p0, Lf2/j;->i:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lf2/j;->o:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_2

    .line 4
    :try_start_0
    sget v2, Lf2/j;->q:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    :cond_2
    :goto_0
    iget-object v0, p0, Lf2/j;->d:Lf2/d;

    iget p0, p0, Lf2/j;->j:I

    const-string v1, "stateChanged "

    invoke-virtual {v0, v1, p0}, Lf2/d;->d(Ljava/lang/String;I)V

    return-void
.end method
