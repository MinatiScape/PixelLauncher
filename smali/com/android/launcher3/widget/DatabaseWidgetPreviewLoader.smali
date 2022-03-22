.class public Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMyUser:Landroid/os/UserHandle;

.field public final mPreviewBoxCornerRadius:F

.field public final mUserBadges:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mMyUser:Landroid/os/UserHandle;

    .line 3
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mUserBadges:Landroid/util/ArrayMap;

    .line 4
    iput-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/android/launcher3/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/launcher3/R$dimen;->widget_preview_corner_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mPreviewBoxCornerRadius:F

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateWidgetPreview$1(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$loadPreview$0(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->lambda$generateShortcutPreview$2(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$generateShortcutPreview$2(ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;IILandroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p5, p1, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    .line 2
    iget-object p1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/icons/LauncherIcons;->obtain(Landroid/content/Context;)Lcom/android/launcher3/icons/LauncherIcons;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->getFullResIcon(Lcom/android/launcher3/icons/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 6
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, p2, v0, v1}, Lcom/android/launcher3/icons/BaseIconFactory;->createBadgedIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;I)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    .line 8
    invoke-virtual {p2, p0}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p0

    .line 9
    invoke-virtual {p1}, Lcom/android/launcher3/icons/LauncherIcons;->recycle()V

    add-int/2addr p4, p3

    .line 10
    invoke-virtual {p0, p3, p3, p4, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    invoke-virtual {p0, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private synthetic lambda$generateWidgetPreview$1(ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;FLandroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v13, p10

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 3
    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v1, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 4
    sget-boolean v7, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v7, :cond_1

    .line 5
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v2

    int-to-float v9, v3

    const/4 v10, 0x0

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 6
    sget-object v8, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v8, -0x1

    .line 7
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v8, v0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050008

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 9
    invoke-virtual {v13, v7, v8, v8, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0, v13, v2, v3}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;

    move-result-object v7

    :goto_0
    move-object v15, v7

    .line 11
    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-object v7, v0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher3/R$dimen;->widget_preview_cell_divider_width:I

    .line 13
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 14
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    iget v7, v15, Landroid/graphics/RectF;->left:F

    .line 17
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v8

    int-to-float v9, v4

    div-float v16, v8, v9

    move v12, v14

    :goto_1
    if-ge v12, v4, :cond_2

    add-float v17, v7, v16

    const/4 v9, 0x0

    int-to-float v11, v3

    move-object/from16 v7, p10

    move/from16 v8, v17

    move/from16 v10, v17

    move/from16 v18, v12

    move-object v12, v1

    .line 18
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v18, 0x1

    move/from16 v7, v17

    goto :goto_1

    .line 19
    :cond_2
    iget v4, v15, Landroid/graphics/RectF;->top:F

    .line 20
    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v7

    int-to-float v8, v5

    div-float v16, v7, v8

    :goto_2
    if-ge v14, v5, :cond_3

    add-float v4, v4, v16

    const/4 v8, 0x0

    int-to-float v10, v2

    move-object/from16 v7, p10

    move v9, v4

    move v11, v4

    move-object v12, v1

    .line 21
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 22
    :cond_3
    :try_start_0
    iget-object v1, v0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    iget-object v4, v6, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 23
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget v5, v6, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    move-object/from16 v4, p8

    .line 24
    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    mul-float v4, v4, p9

    .line 25
    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    .line 27
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sub-int v1, v2, v4

    .line 28
    div-int/lit8 v1, v1, 0x2

    sub-int v2, v3, v4

    .line 29
    div-int/lit8 v2, v2, 0x2

    add-int v3, v1, v4

    add-int/2addr v4, v2

    .line 30
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_3
    return-void
.end method

.method private synthetic lambda$loadPreview$0(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final drawBoxWithShadow(Landroid/graphics/Canvas;II)Landroid/graphics/RectF;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;-><init>(I)V

    .line 3
    sget v2, Lcom/android/launcher3/R$dimen;->widget_preview_shadow_blur:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    .line 4
    iget p0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mPreviewBoxCornerRadius:F

    iput p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->radius:F

    .line 5
    sget p0, Lcom/android/launcher3/R$dimen;->widget_preview_key_shadow_distance:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    iput p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 6
    iget-object v0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    iget v2, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->shadowBlur:F

    int-to-float p2, p2

    sub-float/2addr p2, v2

    int-to-float p3, p3

    sub-float/2addr p3, v2

    sub-float/2addr p3, p0

    invoke-virtual {v0, v2, v2, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    invoke-virtual {v1, p1}, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->drawShadow(Landroid/graphics/Canvas;)V

    .line 8
    iget-object p0, v1, Lcom/android/launcher3/icons/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public final generatePreview(Lcom/android/launcher3/model/WidgetItem;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final generateShortcutPreview(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v6, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->widget_preview_shortcut_padding:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v6

    if-lt p3, v0, :cond_0

    if-lt p2, v0, :cond_0

    .line 4
    new-instance p2, Lo1/b;

    move-object v1, p2

    move-object v2, p0

    move v3, v0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lo1/b;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ILcom/android/launcher3/pm/ShortcutConfigActivityInfo;II)V

    invoke-static {v0, v0, p2}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Max size is too small for preview"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public generateWidgetPreview(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I[I)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    const-string v1, "WidgetPreviewLoader"

    if-gez p2, :cond_0

    const v0, 0x7fffffff

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    .line 1
    :goto_0
    iget v0, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    iget-object v0, v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v0, v5}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading widget preview for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v4, :cond_1

    .line 4
    invoke-virtual {v2, v4}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    .line 6
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for provider: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    const/4 v0, 0x1

    if-eqz v4, :cond_3

    move v6, v0

    goto :goto_3

    :cond_3
    move v6, v5

    .line 8
    :goto_3
    iget v7, v9, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    .line 9
    iget v8, v9, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    .line 10
    iget-object v1, v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    if-eqz v6, :cond_4

    .line 11
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_4

    .line 12
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_4

    .line 13
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 14
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    goto :goto_4

    .line 15
    :cond_4
    iget-object v1, v2, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    iget-object v11, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-static {v1, v11, v10, v7, v8}, Lcom/android/launcher3/widget/util/WidgetSizes;->getWidgetPaddedSizePx(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/DeviceProfile;II)Landroid/util/Size;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v11

    .line 17
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    move v15, v11

    move v11, v1

    move v1, v15

    :goto_4
    if-eqz p3, :cond_5

    .line 18
    aput v1, p3, v5

    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    if-le v1, v3, :cond_6

    int-to-float v3, v3

    int-to-float v12, v1

    div-float/2addr v3, v12

    move v12, v3

    goto :goto_5

    :cond_6
    move v12, v5

    :goto_5
    cmpl-float v3, v12, v5

    if-eqz v3, :cond_7

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    .line 19
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v3, v11

    mul-float/2addr v3, v12

    float-to-int v3, v3

    .line 20
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    :cond_7
    move v0, v1

    move v13, v11

    .line 21
    new-instance v14, Lo1/c;

    move-object v1, v14

    move-object/from16 v2, p0

    move v3, v6

    move v5, v0

    move v6, v13

    move-object/from16 v9, p1

    move v11, v12

    invoke-direct/range {v1 .. v11}, Lo1/c;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;ZLandroid/graphics/drawable/Drawable;IIIILcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/DeviceProfile;F)V

    invoke-static {v0, v13, v14}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBadgeForUser(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mMyUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->getUserBadge(Landroid/os/UserHandle;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 3
    new-instance p1, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {p1, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p1
.end method

.method public final getUserBadge(Landroid/os/UserHandle;I)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mUserBadges:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-direct {v1, v5, v5, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4, p1, v1, v5}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    instance-of v3, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 8
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v2, v5}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 10
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 11
    invoke-virtual {v1, v5, v5, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 12
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p2, 0x0

    .line 13
    invoke-virtual {v3, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;->mUserBadges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public loadPreview(Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;Ljava/util/function/Consumer;)Lcom/android/launcher3/icons/cache/HandlerRunnable;
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/android/launcher3/icons/cache/HandlerRunnable;

    new-instance v2, Lo1/e;

    invoke-direct {v2, p0, p1, p2}, Lo1/e;-><init>(Lcom/android/launcher3/widget/DatabaseWidgetPreviewLoader;Lcom/android/launcher3/model/WidgetItem;Landroid/util/Size;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-direct {v1, v0, v2, p0, p3}, Lcom/android/launcher3/icons/cache/HandlerRunnable;-><init>(Landroid/os/Handler;Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 3
    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v1
.end method

.method public final mutateOnMainThread(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    :try_start_0
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lo1/d;

    invoke-direct {v0, p1}, Lo1/d;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
