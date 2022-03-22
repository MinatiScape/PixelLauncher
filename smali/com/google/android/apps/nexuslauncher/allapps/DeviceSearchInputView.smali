.class public Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/search/SearchCallback;
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/Insettable;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field public static final n:Z

.field public static final o:[I


# instance fields
.field public final b:Landroid/animation/ValueAnimator;

.field public final c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field public final d:I

.field public final e:I

.field public f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

.field public g:Landroid/widget/ImageButton;

.field public final h:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

.field public i:Z

.field public j:F

.field public k:I

.field public l:I

.field public m:Landroid/graphics/drawable/Drawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->IME_STICKY_SNACKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 4
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    const/high16 p3, 0x3f800000    # 1.0f

    .line 5
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:F

    .line 6
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/launcher3/R$dimen;->qsb_margin_top_adjusting:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/android/launcher3/R$dimen;->all_apps_search_vertical_offset:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:I

    const-wide/16 v0, 0x12c

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    sget-object p3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 10
    invoke-virtual {p2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance p1, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->hotseat_qsb_preferences:I

    sget v3, Lcom/android/launcher3/R$drawable;->ic_setting:I

    sget-object v4, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->c:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    new-instance v5, LQ1/j;

    invoke-direct {v5, p0}, LQ1/j;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->p(Landroid/view/View;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Landroid/text/Editable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->q(Landroid/text/Editable;)V

    return-void
.end method

.method public static synthetic e(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;ZLandroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k(ZLandroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private synthetic k(ZLandroid/view/View;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p2

    const-string v0, "launcher.search_edu_seen"

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/OnboardingPrefs;->markChecked(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->hideKeyboard()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r()V

    .line 5
    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    const-string v0, "pref_search_show_keyboard"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return p2
.end method

.method private synthetic l(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "search_settings"

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const v0, 0x10008000

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic m()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->clearSearchResult()V

    .line 2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:I

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v2

    .line 6
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v3

    iget v4, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:I

    .line 7
    invoke-virtual {v3, v4}, Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;->setQueryLength(I)Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;

    move-result-object v3

    .line 8
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;->setDeviceSearchResultContainer(Lcom/android/launcher3/logger/LauncherAtomExtensions$DeviceSearchResultContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;

    move-result-object v2

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, LQ2/V;->build()LQ2/a0;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 11
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->r:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    .line 12
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_0
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:I

    return-void
.end method

.method public getBackgroundVisibility()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Z

    return p0
.end method

.method public bridge synthetic getEditText()Lcom/android/launcher3/ExtendedEditText;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p0

    return-object p0
.end method

.method public h()Landroid/widget/ImageButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->b()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p0

    return-object p0
.end method

.method public initializeSearch(Lcom/android/launcher3/allapps/AllAppsContainerView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    new-instance v1, LQ1/f;

    invoke-direct {v1, p1}, LQ1/f;-><init>(Lcom/android/launcher3/allapps/AllAppsContainerView;)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->b(Lcom/android/launcher3/allapps/AllAppsContainerView;Lcom/android/launcher3/search/SearchAlgorithm;Lcom/android/launcher3/search/SearchCallback;)V

    return-void
.end method

.method public final j(Z)Lcom/android/launcher3/views/OptionsPopupView$OptionItem;
    .locals 7

    if-eqz p1, :cond_0

    .line 1
    sget v0, Lcom/android/launcher3/R$drawable;->ic_hide_keyboard:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$drawable;->ic_pin_keyboard:I

    :goto_0
    move v4, v0

    if-eqz p1, :cond_1

    .line 2
    sget v0, Lcom/android/launcher3/R$string;->keyboard_hide:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/launcher3/R$string;->keyboard_show:I

    :goto_1
    move v3, v0

    if-eqz p1, :cond_2

    .line 3
    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->z:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    goto :goto_2

    .line 4
    :cond_2
    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->y:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    :goto_2
    move-object v5, v0

    .line 5
    new-instance v0, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v6, LQ1/k;

    invoke-direct {v6, p0, p1}, LQ1/k;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;Z)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/views/OptionsPopupView$OptionItem;-><init>(Landroid/content/Context;IILcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View$OnLongClickListener;)V

    return-object v0
.end method

.method public final n(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->p:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->G()LQ1/S0;

    move-result-object v0

    invoke-virtual {v0}, LQ1/S0;->r()Z

    move-result v0

    .line 5
    new-instance v1, Landroid/graphics/RectF;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iput p1, v1, Landroid/graphics/RectF;->right:F

    iput p1, v1, Landroid/graphics/RectF;->left:F

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j(Z)Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->h:Lcom/android/launcher3/views/OptionsPopupView$OptionItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const/4 v0, 0x1

    invoke-static {p0, v1, p1, v0}, Lcom/android/launcher3/views/OptionsPopupView;->show(Lcom/android/launcher3/Launcher;Landroid/graphics/RectF;Ljava/util/List;Z)Lcom/android/launcher3/views/OptionsPopupView;

    return-void
.end method

.method public final o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->l:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    .line 4
    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/4 v1, 0x0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:F

    invoke-static {p1, v1, p0}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result p0

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public onAppendSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->onAppendSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    sget v0, Lcom/android/launcher3/R$id;->typeahead_input:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->b()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    new-instance v1, LQ1/g;

    invoke-direct {v1, p0}, LQ1/g;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->b()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    new-instance v1, LQ1/i;

    invoke-direct {v1, p0}, LQ1/i;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->c(Landroid/view/View$OnFocusChangeListener;)V

    .line 5
    sget v0, Lcom/android/launcher3/R$id;->search_wrapper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    new-instance v1, LQ1/m;

    invoke-direct {v1, p0}, LQ1/m;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->c(Ljava/util/function/Consumer;)V

    .line 7
    sget v0, Lcom/android/launcher3/R$id;->action_btn:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    .line 8
    new-instance v1, LQ1/h;

    invoke-direct {v1, p0}, LQ1/h;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s()V

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4
    :goto_1
    iget p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:I

    if-nez p2, :cond_2

    if-lez v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p2

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    .line 6
    invoke-interface {p2, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 7
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->k:I

    .line 8
    :cond_2
    iget p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:I

    if-le p1, p2, :cond_3

    .line 9
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->l:I

    :cond_3
    return-void
.end method

.method public final p(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;

    move-result-object p1

    .line 2
    sget-boolean v0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->n:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0, p1}, LQ1/H;->f(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/util/OnboardingPrefs;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->r()V

    :cond_1
    return-void
.end method

.method public final q(Landroid/text/Editable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->s()V

    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->o:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->setBackgroundVisibility(ZF)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LQ1/l;

    invoke-direct {v1, p0}, LQ1/l;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public resetSearch()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->reset()V

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->clearSearchResult()V

    return-void
.end method

.method public final s()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i()Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_more_vert:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/launcher3/R$string;->search_input_action_show_preferences:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    sget v1, Lcom/android/launcher3/R$drawable;->ic_remove_no_shadow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 7
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->g:Landroid/widget/ImageButton;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/launcher3/R$string;->search_input_action_clear_results:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setBackgroundVisibility(ZF)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Z

    if-ne v0, p1, :cond_1

    .line 2
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:F

    .line 4
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setCurrentFraction(F)V

    .line 5
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V

    :cond_0
    return-void

    .line 6
    :cond_1
    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->i:Z

    .line 7
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->j:F

    if-eqz p1, :cond_2

    .line 8
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    :goto_0
    return-void
.end method

.method public setFocusedResultTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->f:Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/search/TypeAheadSearchInputView;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->d:I

    neg-int v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->e:I

    sub-int/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/DeviceSearchInputView;->c:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
