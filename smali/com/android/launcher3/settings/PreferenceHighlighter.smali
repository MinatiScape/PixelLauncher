.class public Lcom/android/launcher3/settings/PreferenceHighlighter;
.super Landroidx/recyclerview/widget/h0;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final END_COLOR:I

.field public static final HIGHLIGHT_COLOR:Landroid/util/Property;


# instance fields
.field public final mDrawRect:Landroid/graphics/RectF;

.field public mHighLightStarted:Z

.field public mHighlightColor:I

.field public final mIndex:I

.field public final mPaint:Landroid/graphics/Paint;

.field public final mPreference:Landroidx/preference/Preference;

.field public final mRv:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/launcher3/settings/PreferenceHighlighter$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "highlightColor"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/settings/PreferenceHighlighter$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    sput v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;ILandroidx/preference/Preference;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/h0;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    .line 5
    sget v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    iput v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    .line 6
    iput-object p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    iput p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    .line 8
    iput-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/settings/PreferenceHighlighter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/settings/PreferenceHighlighter;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    return p1
.end method

.method public static synthetic access$100(Lcom/android/launcher3/settings/PreferenceHighlighter;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/settings/PreferenceHighlighter;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/settings/PreferenceHighlighter;->removeHighlight()V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/B0;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/F0;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/B0;->c()I

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    if-nez p3, :cond_2

    .line 4
    iget-object p3, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/launcher3/util/Themes;->getColorAccent(Landroid/content/Context;)I

    move-result p3

    const/16 v1, 0x42

    invoke-static {p3, v1}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p3

    .line 5
    sget-object v1, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    sget v5, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p3, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p3

    const-wide/16 v5, 0xc8

    .line 6
    invoke-virtual {p3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    invoke-virtual {p3, v2}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, 0x4

    .line 8
    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 9
    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/settings/PreferenceHighlighter$2;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    invoke-virtual {p3, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    invoke-virtual {p3}, Landroid/animation/ObjectAnimator;->start()V

    .line 11
    iput-boolean v4, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighLightStarted:Z

    .line 12
    :cond_2
    iget-object p3, v0, Landroidx/recyclerview/widget/F0;->itemView:Landroid/view/View;

    .line 13
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 15
    iget-object p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    if-eqz v0, :cond_3

    .line 16
    check-cast p2, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;

    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    invoke-interface {p2, p3, v0}, Lcom/android/launcher3/settings/PreferenceHighlighter$HighlightDelegate;->offsetHighlight(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 17
    :cond_3
    iget-object p2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mDrawRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public final removeHighlight()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/launcher3/settings/PreferenceHighlighter;->HIGHLIGHT_COLOR:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mHighlightColor:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/launcher3/settings/PreferenceHighlighter;->END_COLOR:I

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x3a98

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 4
    new-instance v1, Lcom/android/launcher3/settings/PreferenceHighlighter$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/settings/PreferenceHighlighter$3;-><init>(Lcom/android/launcher3/settings/PreferenceHighlighter;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/h0;)V

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mRv:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/android/launcher3/settings/PreferenceHighlighter;->mIndex:I

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
