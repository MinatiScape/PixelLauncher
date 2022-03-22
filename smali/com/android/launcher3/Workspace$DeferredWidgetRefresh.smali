.class public Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field public final mInfos:Ljava/util/ArrayList;

.field public mRefreshPending:Z

.field public final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    .line 3
    iput-object p3, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    .line 4
    iget-object p1, p1, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/statemanager/StatefulActivity;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 6
    invoke-virtual {p3, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->addProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 7
    invoke-static {p1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p0

    .line 8
    const-class p2, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p2, 0x2710

    .line 9
    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->lambda$run$0(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$run$0(Ljava/util/ArrayList;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1

    .line 1
    instance-of v0, p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2
    check-cast p3, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public notifyWidgetProvidersChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->removeProviderChangeListener(Lcom/android/launcher3/widget/LauncherAppWidgetHost$ProviderChangedListener;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mRefreshPending:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    iget-object v1, p0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->this$0:Lcom/android/launcher3/Workspace;

    new-instance v2, Lcom/android/launcher3/m1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/m1;-><init>(Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAppWidgetHostView;

    .line 8
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->reInflate()V

    goto :goto_0

    :cond_1
    return-void
.end method
