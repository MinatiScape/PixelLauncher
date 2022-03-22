.class public Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;
.super Lcom/android/launcher3/widget/LocalColorExtractor;
.source "SourceFile"

# interfaces
.implements Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;


# instance fields
.field public final a:Landroid/app/WallpaperManager;

.field public final b:Ld2/a;

.field public c:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

.field public final d:Landroid/graphics/RectF;

.field public final e:Landroid/graphics/RectF;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const-string v0, "android.theme.customization.color_source"

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/widget/LocalColorExtractor;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    .line 3
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    .line 4
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Landroid/graphics/RectF;

    .line 5
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f:Ljava/util/List;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "theme_customization_overlay_packages"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 9
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "preset"

    .line 11
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocalWallpaperColorsExt"

    const-string v3, "Failed to parse THEME_CUSTOMIZATION_OVERLAY_PACKAGES."

    .line 13
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 14
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a:Landroid/app/WallpaperManager;

    .line 15
    new-instance v0, Ld2/a;

    invoke-direct {v0, p1}, Ld2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b:Ld2/a;

    goto :goto_1

    .line 16
    :cond_1
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a:Landroid/app/WallpaperManager;

    .line 17
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b:Ld2/a;

    :goto_1
    return-void
.end method

.method public static c(FFF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z
    .locals 2

    .line 1
    iget v0, p0, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v1, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->right:F

    iget v1, p1, Landroid/graphics/RectF;->right:F

    .line 2
    invoke-static {v0, v1, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/graphics/RectF;->top:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    .line 3
    invoke-static {v0, v1, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/graphics/RectF;->bottom:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    .line 4
    invoke-static {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c(FFF)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    if-ne p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 3
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 5
    instance-of v1, v0, Lcom/android/launcher3/PagedView;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/PagedView;

    .line 7
    iget v2, p0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/graphics/RectF;->left:F

    .line 8
    iget v2, p0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/PagedView;->getScrollForPage(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    iput v2, p0, Landroid/graphics/RectF;->right:F

    .line 9
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/view/View;I)Landroid/graphics/RectF;
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    .line 2
    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->setEmpty()V

    .line 4
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    return-object p0

    .line 5
    :cond_0
    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 6
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 7
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p3}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    .line 12
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result p3

    div-int/2addr p2, p3

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 14
    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getDisplayInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    .line 16
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    .line 17
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    .line 18
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getNumPagesForWallpaperParallax()I

    move-result p1

    .line 19
    invoke-static {p3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p3

    if-eqz p3, :cond_2

    sub-int p2, p1, p2

    add-int/lit8 p2, p2, -0x1

    :cond_2
    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    div-float p1, p3, p1

    .line 20
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->windowX:I

    int-to-float v6, v5

    add-float/2addr v4, v6

    .line 21
    iget v6, v3, Landroid/graphics/RectF;->top:F

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->windowY:I

    int-to-float v7, v0

    add-float/2addr v6, v7

    .line 22
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v5, v5

    add-float/2addr v7, v5

    .line 23
    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    add-float/2addr v5, v0

    div-float/2addr v4, v2

    int-to-float p2, p2

    add-float/2addr v4, p2

    mul-float/2addr v4, p1

    .line 24
    iput v4, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v7, v2

    add-float/2addr v7, p2

    mul-float/2addr v7, p1

    .line 25
    iput v7, v3, Landroid/graphics/RectF;->right:F

    div-float/2addr v6, v1

    .line 26
    iput v6, v3, Landroid/graphics/RectF;->top:F

    div-float/2addr v5, v1

    .line 27
    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    const/4 p1, 0x0

    cmpg-float p2, v4, p1

    if-ltz p2, :cond_3

    cmpl-float p2, v7, p3

    if-gtz p2, :cond_3

    cmpg-float p1, v6, p1

    if-ltz p1, :cond_3

    cmpl-float p1, v5, p3

    if-lez p1, :cond_4

    .line 28
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    .line 29
    :cond_4
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    return-object p0
.end method

.method public applyColorsOverride(Landroid/content/Context;Landroid/app/WallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1, p0}, Landroid/widget/RemoteViews$ColorResources;->create(Landroid/content/Context;Landroid/util/SparseIntArray;)Landroid/widget/RemoteViews$ColorResources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$ColorResources;->apply(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a:Landroid/app/WallpaperManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$LocalWallpaperColorConsumer;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b:Ld2/a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ld2/a;->b(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public onColorsChanged(Landroid/graphics/RectF;Landroid/app/WallpaperColors;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p0, p2}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->generateColorsOverride(Landroid/app/WallpaperColors;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/android/launcher3/widget/LocalColorExtractor$Listener;->onColorsChanged(Landroid/util/SparseIntArray;)V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/launcher3/widget/LocalColorExtractor$Listener;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->c:Lcom/android/launcher3/widget/LocalColorExtractor$Listener;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f()V

    return-void
.end method

.method public setWorkspaceLocation(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->a(Landroid/graphics/Rect;Landroid/view/View;I)Landroid/graphics/RectF;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Landroid/graphics/RectF;

    const p3, 0x358637bd    # 1.0E-6f

    invoke-static {p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d(Landroid/graphics/RectF;Landroid/graphics/RectF;F)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->e:Landroid/graphics/RectF;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->d:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/widget/LocalWallpaperColorsExtractor;->f()V

    return-void
.end method
