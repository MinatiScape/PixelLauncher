.class public final Lcom/android/launcher3/config/FeatureFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ADAPTIVE_ICON_WINDOW_ANIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_ALL_APPS_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_APP_PREDICTIONS_WHILE_VISIBLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_BACK_SWIPE_HOME_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DATABASE_RESTORE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_ICON_LABEL_AUTO_SCALING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_LAUNCHER_ACTIVITY_THEME_CROSSFADE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_LOCAL_COLOR_POPUPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_LOCAL_RECOMMENDED_WIDGETS_FILTER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERVIEW_GRID:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERVIEW_SELECTIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_OVERVIEW_SHARING_TO_PEOPLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_PEOPLE_TILE_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_PREDICTION_DISMISS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_QUICKSTEP_WIDGET_APP_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_SMARTSPACE_DISMISS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_SPLIT_SELECT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_TASKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_TWO_PANEL_HOME:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_WALLPAPER_SCRIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final ENABLE_WIDGETS_PICKER_AIAI_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final EXPANDED_SMARTSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final FOLDER_NAME_MAJORITY_RANKING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final HOTSEAT_MIGRATE_TO_FOLDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final IME_STICKY_SNACKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final NOTIFY_CRASHES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final QUICK_WALLPAPER_PICKER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final WIDGETS_IN_LAUNCHER_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

.field public static final sDebugFlags:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    const-string v0, "PROMISE_APPS_IN_ALL_APPS"

    const/4 v1, 0x0

    const-string v2, "Add promise icon in all-apps"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "PROMISE_APPS_NEW_INSTALLS"

    const/4 v2, 0x1

    const-string v3, "Adds a promise icon to the home screen for new install sessions."

    .line 3
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_NEW_INSTALLS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_LOCAL_COLOR_POPUPS"

    const-string v3, "Enable local color extraction for popups."

    .line 4
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_COLOR_POPUPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "KEYGUARD_ANIMATION"

    const-string v3, "Enable animation for keyguard going away on wallpaper"

    .line 5
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->KEYGUARD_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ADAPTIVE_ICON_WINDOW_ANIM"

    const-string v3, "Use adaptive icons for window animations."

    .line 6
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ADAPTIVE_ICON_WINDOW_ANIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_QUICKSTEP_LIVE_TILE"

    const-string v3, "Enable live tile in Quickstep overview"

    .line 7
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_QUICKSTEP_WIDGET_APP_START"

    const-string v3, "Enable Quickstep animation when launching activities from an app widget"

    .line 8
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_WIDGET_APP_START:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 9
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_DEVICE_SEARCH"

    const-string v4, "Allows on device search in all apps"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_TWOLINE_ALLAPPS"

    const-string v3, "Enables two line label inside all apps."

    .line 10
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWOLINE_ALLAPPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 11
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING"

    const-string v4, "Allows on device search in all apps logging"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "IME_STICKY_SNACKBAR_EDU"

    const-string v3, "Show sticky IME edu in AllApps"

    .line 12
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->IME_STICKY_SNACKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_PEOPLE_TILE_PREVIEW"

    const-string v3, "Experimental: Shows conversation shortcuts on home screen as search results"

    .line 13
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PEOPLE_TILE_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 14
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "FOLDER_NAME_SUGGEST"

    const-string v4, "Suggests folder names instead of blank text."

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "FOLDER_NAME_MAJORITY_RANKING"

    const-string v3, "Suggests folder names based on majority based ranking."

    .line 15
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_MAJORITY_RANKING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_PREDICTION_DISMISS"

    const-string v3, "Allow option to dimiss apps from predicted list"

    .line 16
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_PREDICTION_DISMISS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ASSISTANT_GIVES_LAUNCHER_FOCUS"

    const-string v3, "Allow Launcher to handle nav bar gestures while Assistant is running over it"

    .line 17
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ASSISTANT_GIVES_LAUNCHER_FOCUS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "HOTSEAT_MIGRATE_TO_FOLDER"

    const-string v3, "Should move hotseat items into a folder"

    .line 18
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->HOTSEAT_MIGRATE_TO_FOLDER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_DEEP_SHORTCUT_ICON_CACHE"

    const-string v3, "R/W deep shortcut in IconCache"

    .line 19
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEEP_SHORTCUT_ICON_CACHE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_THEMED_ICONS"

    const-string v3, "Enable themed icons on workspace"

    .line 20
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_THEMED_ICONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_BULK_WORKSPACE_ICON_LOADING"

    const-string v3, "Enable loading workspace icons in bulk."

    .line 21
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_WORKSPACE_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_BULK_ALL_APPS_ICON_LOADING"

    const-string v3, "Enable loading all apps icons in bulk."

    .line 22
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BULK_ALL_APPS_ICON_LOADING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 23
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_OVERVIEW_SELECTIONS"

    const-string v4, "Show Select Mode button in Overview Actions"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERVIEW_SELECTIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 24
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_WIDGETS_PICKER_AIAI_SEARCH"

    const-string v4, "Enable AiAi search in the widgets picker"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WIDGETS_PICKER_AIAI_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_OVERVIEW_SHARING_TO_PEOPLE"

    const-string v3, "Show indicators for content on Overview to share with top people. "

    .line 25
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERVIEW_SHARING_TO_PEOPLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_DATABASE_RESTORE"

    const-string v3, "Enable database restore when new restore session is created"

    .line 26
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DATABASE_RESTORE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_SMARTSPACE_DISMISS"

    const-string v3, "Adds a menu option to dismiss the current Enhanced Smartspace card."

    .line 27
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SMARTSPACE_DISMISS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS"

    const-string v3, "Always use hardware optimization for folder animations."

    .line 28
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_ALL_APPS_EDU"

    const-string v3, "Shows user a tutorial on how to get to All Apps after X amount of attempts."

    .line 29
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "SEPARATE_RECENTS_ACTIVITY"

    const-string v3, "Uses a separate recents activity instead of using the integrated recents+Launcher UI"

    .line 30
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->SEPARATE_RECENTS_ACTIVITY:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_MINIMAL_DEVICE"

    const-string v3, "Allow user to toggle minimal device mode in launcher."

    .line 31
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 32
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "EXPANDED_SMARTSPACE"

    const-string v4, "Expands smartspace height to two rows. Any apps occupying the first row will be removed from workspace."

    invoke-direct {v0, v3, v1, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->EXPANDED_SMARTSPACE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 33
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_LAUNCHER_ACTIVITY_THEME_CROSSFADE"

    const-string v4, "Enables a crossfade animation when the system these changes."

    invoke-direct {v0, v3, v1, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LAUNCHER_ACTIVITY_THEME_CROSSFADE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 34
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_APP_PREDICTIONS_WHILE_VISIBLE"

    const-string v4, "Allows app predictions to be updated while they are visible to the user."

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_APP_PREDICTIONS_WHILE_VISIBLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_TASKBAR"

    const-string v3, "Allows a system Taskbar to be shown on larger devices."

    .line 35
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_TASKBAR_EDU"

    const-string v3, "Enables showing taskbar education the first time an app is opened."

    .line 36
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_TASKBAR_POPUP_MENU"

    const-string v3, "Enables long pressing taskbar icons to show the popup menu."

    .line 37
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_OVERVIEW_GRID"

    const-string v3, "Uses grid overview layout. Only applicable on large screen devices."

    .line 38
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_OVERVIEW_GRID:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_TWO_PANEL_HOME"

    const-string v3, "Uses two panel on home screen. Only applicable on large screen devices."

    .line 39
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TWO_PANEL_HOME:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_SCRIM_FOR_APP_LAUNCH"

    const-string v3, "Enables scrim during app launch animation."

    .line 40
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SCRIM_FOR_APP_LAUNCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_SPLIT_SELECT"

    const-string v3, "Uses new split screen selection overview UI"

    .line 41
    invoke-static {v0, v2, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SPLIT_SELECT:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 42
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_ENFORCED_ROUNDED_CORNERS"

    const-string v4, "Enforce rounded corners on all App Widgets"

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ENFORCED_ROUNDED_CORNERS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 43
    new-instance v0, Lcom/android/launcher3/uioverrides/DeviceFlag;

    const-string v3, "ENABLE_LOCAL_RECOMMENDED_WIDGETS_FILTER"

    const-string v4, "Enables a local filter for recommended widgets."

    invoke-direct {v0, v3, v2, v4}, Lcom/android/launcher3/uioverrides/DeviceFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LOCAL_RECOMMENDED_WIDGETS_FILTER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "NOTIFY_CRASHES"

    const-string v3, "Sends a notification whenever launcher encounters an uncaught exception."

    .line 44
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->NOTIFY_CRASHES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_WALLPAPER_SCRIM"

    const-string v3, "Enables scrim over wallpaper for text protection."

    .line 45
    invoke-static {v0, v1, v3}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_WALLPAPER_SCRIM:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "WIDGETS_IN_LAUNCHER_PREVIEW"

    const-string v1, "Enables widgets in Launcher preview for the Wallpaper app."

    .line 46
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->WIDGETS_IN_LAUNCHER_PREVIEW:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "QUICK_WALLPAPER_PICKER"

    const-string v1, "Shows quick wallpaper picker in long-press menu"

    .line 47
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->QUICK_WALLPAPER_PICKER:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_BACK_SWIPE_HOME_ANIMATION"

    const-string v1, "Enables home animation to icon when user swipes back."

    .line 48
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_BACK_SWIPE_HOME_ANIMATION:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    const-string v0, "ENABLE_ICON_LABEL_AUTO_SCALING"

    const-string v1, "Enables scaling/spacing for icon labels to make more characters visible"

    .line 49
    invoke-static {v0, v2, v1}, Lcom/android/launcher3/config/FeatureFlags;->getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ICON_LABEL_AUTO_SCALING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/launcher3/config/FeatureFlags;->lambda$initialize$0(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$000()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    return-object v0
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "DeviceFlags:"

    .line 1
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 4
    instance-of v3, v2, Lcom/android/launcher3/uioverrides/DeviceFlag;

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v0, "DebugFlags:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    monitor-enter v1

    .line 9
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 10
    instance-of v3, v2, Lcom/android/launcher3/uioverrides/DeviceFlag;

    if-nez v3, :cond_2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 12
    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 13
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public static getDebugFlag(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Ljava/lang/String;Z)V

    :goto_0
    return-object v0
.end method

.method public static getDebugFlags()Ljava/util/List;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;

    .line 3
    invoke-virtual {v2, p0}, Lcom/android/launcher3/config/FeatureFlags$DebugFlag;->initialize(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p0, Lcom/android/launcher3/config/FeatureFlags;->sDebugFlags:Ljava/util/List;

    sget-object v1, LK0/a;->b:LK0/a;

    invoke-interface {p0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$initialize$0(Lcom/android/launcher3/config/FeatureFlags$DebugFlag;Lcom/android/launcher3/config/FeatureFlags$DebugFlag;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static showFlagTogglerUi(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDevelopersOptionsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
