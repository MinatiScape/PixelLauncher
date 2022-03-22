.class public Lcom/android/quickstep/TaskIconCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mBgExecutor:Ljava/util/concurrent/Executor;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultIcons:Landroid/util/SparseArray;

.field private final mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

.field private mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

.field private final mIconProvider:Lcom/android/launcher3/icons/IconProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/launcher3/icons/IconProvider;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    .line 3
    iput-object p1, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    .line 5
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 6
    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 8
    sget p3, Lcom/android/launcher3/R$integer;->recentsIconCacheSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 9
    new-instance p3, Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-direct {p3, p2}, Lcom/android/quickstep/util/TaskKeyLruCache;-><init>(I)V

    iput-object p3, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    .line 10
    sget-object p2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/DisplayController;->addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/TaskIconCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->resetFactory()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/quickstep/TaskIconCache;->getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->lambda$invalidateCacheEntries$1(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/TaskIconCache;->lambda$invalidateCacheEntries$0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z

    move-result p0

    return p0
.end method

.method private getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p3}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 3
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 5
    :cond_1
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 7
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, p1

    .line 8
    :goto_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->disableColorExtraction()V

    .line 3
    invoke-virtual {p0, p3}, Lcom/android/launcher3/icons/BaseIconFactory;->setWrapperBackgroundColor(I)V

    .line 4
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/16 p3, 0x1a

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;IZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_0

    .line 6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p1
.end method

.method private getCacheEntry(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskKeyLruCache;->getAndInvalidateIfModified(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 4
    new-instance v2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;-><init>(Lcom/android/quickstep/TaskIconCache$1;)V

    .line 5
    iget v4, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v0, v4}, Lcom/android/systemui/shared/system/TaskDescriptionCompat;->getIcon(Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v4, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 8
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    const/4 v6, 0x0

    .line 9
    invoke-direct {p0, v5, v4, v0, v6}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, v4}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v3

    .line 12
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 13
    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 14
    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    .line 15
    invoke-virtual {v4, v3}, Lcom/android/launcher3/icons/IconProvider;->getIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget v5, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 16
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iget-object v6, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 17
    invoke-virtual {v6}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v6

    .line 18
    invoke-direct {p0, v4, v5, v0, v6}, Lcom/android/quickstep/TaskIconCache;->getBitmapInfo(Landroid/graphics/drawable/Drawable;IIZ)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v0

    .line 19
    iget-object v4, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 20
    :cond_2
    iget v0, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/TaskIconCache;->getDefaultIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v3, :cond_3

    .line 22
    invoke-static {}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/PackageManagerWrapper;

    move-result-object v0

    .line 23
    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/shared/system/PackageManagerWrapper;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    :cond_3
    if-eqz v3, :cond_4

    .line 25
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0, v3, v0, v1}, Lcom/android/quickstep/TaskIconCache;->getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILandroid/app/ActivityManager$TaskDescription;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/quickstep/TaskIconCache$TaskCacheEntry;->contentDescription:Ljava/lang/String;

    .line 26
    :cond_4
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1, v2}, Lcom/android/quickstep/util/TaskKeyLruCache;->put(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    return-object v2
.end method

.method private getDefaultIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/icons/BitmapInfo;

    if-nez v1, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/quickstep/TaskIconCache;->getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 4
    :try_start_1
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/BaseIconFactory;->makeDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V

    .line 6
    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mDefaultIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_0

    .line 7
    :try_start_3
    invoke-virtual {v1}, Lcom/android/launcher3/icons/BaseIconFactory;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0

    .line 8
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method private getIconFactory()Lcom/android/launcher3/icons/BaseIconFactory;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/icons/BaseIconFactory;

    iget-object v1, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    .line 3
    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v2}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->densityDpi:I

    iget-object v3, p0, Lcom/android/quickstep/TaskIconCache;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->taskbar_icon_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/icons/BaseIconFactory;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    return-object p0
.end method

.method private static synthetic lambda$invalidateCacheEntries$0(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    iget p1, p2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$invalidateCacheEntries$1(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    new-instance v0, Lu1/c2;

    invoke-direct {v0, p1, p2}, Lu1/c2;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/util/TaskKeyLruCache;->removeAll(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private resetFactory()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mIconFactory:Lcom/android/launcher3/icons/BaseIconFactory;

    .line 2
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskKeyLruCache;->evictAll()V

    return-void
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lu1/a2;

    invoke-direct {v1, p0}, Lu1/a2;-><init>(Lcom/android/quickstep/TaskIconCache;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public invalidateCacheEntries(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lu1/b2;

    invoke-direct {v1, p0, p1, p2}, Lu1/b2;-><init>(Lcom/android/quickstep/TaskIconCache;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .locals 0

    and-int/lit8 p1, p3, 0x8

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/TaskIconCache;->clearCache()V

    :cond_0
    return-void
.end method

.method public onTaskRemoved(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mIconCache:Lcom/android/quickstep/util/TaskKeyLruCache;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/TaskKeyLruCache;->remove(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V

    return-void
.end method

.method public updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    .line 2
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Lcom/android/quickstep/TaskIconCache$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/quickstep/TaskIconCache$1;-><init>(Lcom/android/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V

    .line 5
    iget-object p0, p0, Lcom/android/quickstep/TaskIconCache;->mBgExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method
