.class public Landroidx/preference/SeekBarPreference;
.super Landroidx/preference/Preference;
.source "SourceFile"


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Landroid/widget/SeekBar;

.field public h:Landroid/widget/TextView;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field public m:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 13
    sget v0, Ld0/d0;->k:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance v0, Ld0/l0;

    invoke-direct {v0, p0}, Ld0/l0;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3
    new-instance v0, Ld0/m0;

    invoke-direct {v0, p0}, Ld0/m0;-><init>(Landroidx/preference/SeekBarPreference;)V

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->m:Landroid/view/View$OnKeyListener;

    .line 4
    sget-object v0, Ld0/k0;->l3:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Ld0/k0;->o3:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 6
    sget p2, Ld0/k0;->m3:I

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->b(I)V

    .line 7
    sget p2, Ld0/k0;->p3:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Landroidx/preference/SeekBarPreference;->c(I)V

    .line 8
    sget p2, Ld0/k0;->n3:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->i:Z

    .line 9
    sget p2, Ld0/k0;->q3:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->j:Z

    .line 10
    sget p2, Ld0/k0;->r3:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/SeekBarPreference;->k:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-eq p1, v0, :cond_1

    .line 3
    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->e:I

    if-eq p1, v0, :cond_0

    .line 2
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Landroidx/preference/SeekBarPreference;->f(IZ)V

    return-void
.end method

.method public final f(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    if-ge p1, v0, :cond_0

    move p1, v0

    .line 2
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    if-le p1, v0, :cond_1

    move p1, v0

    .line 3
    :cond_1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-eq p1, v0, :cond_2

    .line 4
    iput p1, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 5
    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->h(I)V

    .line 6
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public g(Landroid/widget/SeekBar;)V
    .locals 2

    .line 1
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/2addr v0, v1

    .line 2
    iget v1, p0, Landroidx/preference/SeekBarPreference;->b:I

    if-eq v0, v1, :cond_1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Landroidx/preference/SeekBarPreference;->f(IZ)V

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 6
    iget p1, p0, Landroidx/preference/SeekBarPreference;->b:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->h(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Ld0/c0;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Ld0/c0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/F0;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroidx/preference/SeekBarPreference;->m:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 3
    sget v0, Ld0/g0;->c:I

    invoke-virtual {p1, v0}, Ld0/c0;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    .line 4
    sget v0, Ld0/g0;->d:I

    invoke-virtual {p1, v0}, Ld0/c0;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 5
    iget-boolean v0, p0, Landroidx/preference/SeekBarPreference;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Landroidx/preference/SeekBarPreference;->h:Landroid/widget/TextView;

    .line 9
    :goto_0
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    if-nez p1, :cond_1

    const-string p0, "SeekBarPreference"

    const-string p1, "SeekBar view is null in onBindViewHolder."

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->l:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 12
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 13
    iget p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    if-eqz p1, :cond_2

    .line 14
    iget-object v0, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setKeyProgressIncrement(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getKeyProgressIncrement()I

    move-result p1

    iput p1, p0, Landroidx/preference/SeekBarPreference;->e:I

    .line 16
    :goto_1
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iget v1, p0, Landroidx/preference/SeekBarPreference;->c:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    iget p1, p0, Landroidx/preference/SeekBarPreference;->b:I

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->h(I)V

    .line 18
    iget-object p1, p0, Landroidx/preference/SeekBarPreference;->g:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    .line 1
    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroidx/preference/SeekBarPreference$SavedState;

    .line 4
    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    .line 6
    iget v0, p1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    iput v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    .line 7
    iget p1, p1, Landroidx/preference/SeekBarPreference$SavedState;->d:I

    iput p1, p0, Landroidx/preference/SeekBarPreference;->d:I

    .line 8
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v1, Landroidx/preference/SeekBarPreference$SavedState;

    invoke-direct {v1, v0}, Landroidx/preference/SeekBarPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 4
    iget v0, p0, Landroidx/preference/SeekBarPreference;->b:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->b:I

    .line 5
    iget v0, p0, Landroidx/preference/SeekBarPreference;->c:I

    iput v0, v1, Landroidx/preference/SeekBarPreference$SavedState;->c:I

    .line 6
    iget p0, p0, Landroidx/preference/SeekBarPreference;->d:I

    iput p0, v1, Landroidx/preference/SeekBarPreference$SavedState;->d:I

    return-object v1
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 2
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/SeekBarPreference;->d(I)V

    return-void
.end method
