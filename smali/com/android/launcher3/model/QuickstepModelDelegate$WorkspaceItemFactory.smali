.class public Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/PersistedItemArray$ItemFactory;


# instance fields
.field public final mAppState:Lcom/android/launcher3/LauncherAppState;

.field public final mMaxCount:I

.field public final mPinnedShortcuts:Ljava/util/Map;

.field public mReadCount:I

.field public final mUMS:Lcom/android/launcher3/model/UserManagerState;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/UserManagerState;Ljava/util/Map;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    .line 3
    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 4
    iput-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    .line 5
    iput-object p3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    .line 6
    iput p4, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    return-void
.end method


# virtual methods
.method public createInfo(ILandroid/os/UserHandle;Landroid/content/Intent;)Lcom/android/launcher3/model/data/ItemInfo;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    iget v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mMaxCount:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    return-object v2

    .line 2
    :cond_1
    invoke-static {p3, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v2

    .line 3
    :cond_2
    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mPinnedShortcuts:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    if-nez p1, :cond_3

    return-object v2

    .line 4
    :cond_3
    new-instance p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object p3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)V

    .line 5
    iget-object p3, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p3}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Lcom/android/launcher3/icons/IconCache;->getShortcutIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/ShortcutInfo;)V

    .line 6
    iget p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    return-object p2

    .line 7
    :cond_4
    iget-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/content/pm/LauncherApps;

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/LauncherApps;->resolveActivity(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p1

    if-nez p1, :cond_5

    return-object v2

    .line 10
    :cond_5
    new-instance p3, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mUMS:Lcom/android/launcher3/model/UserManagerState;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v0

    invoke-direct {p3, p1, p2, v0}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    .line 11
    iget-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mAppState:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/pm/LauncherActivityInfo;Z)V

    .line 12
    iget p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$WorkspaceItemFactory;->mReadCount:I

    .line 13
    invoke-virtual {p3}, Lcom/android/launcher3/model/data/AppInfo;->makeWorkspaceItem()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method
