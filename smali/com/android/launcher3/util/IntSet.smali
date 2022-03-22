.class public Lcom/android/launcher3/util/IntSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final mArray:Lcom/android/launcher3/util/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-void
.end method

.method public static wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/IntArray;->addAll(Lcom/android/launcher3/util/IntArray;)V

    .line 3
    iget-object p0, v0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->sort([III)V

    return-object v0
.end method

.method public static wrap(Ljava/lang/Iterable;)Lcom/android/launcher3/util/IntSet;
    .locals 2

    .line 5
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 6
    new-instance v1, Lm1/k;

    invoke-direct {v1, v0}, Lm1/k;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static varargs wrap([I)Lcom/android/launcher3/util/IntSet;
    .locals 0

    .line 4
    invoke-static {p0}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget v0, v0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    if-gez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    :cond_0
    return-void
.end method

.method public addAll(Lcom/android/launcher3/util/IntSet;)Lcom/android/launcher3/util/IntSet;
    .locals 1

    .line 1
    new-instance v0, Lm1/k;

    invoke-direct {v0, p0}, Lm1/k;-><init>(Lcom/android/launcher3/util/IntSet;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object p0
.end method

.method public clear()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v0, p0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget p0, p0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/util/IntSet;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/android/launcher3/util/IntSet;

    iget-object p1, p1, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/util/IntArray;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getArray()Lcom/android/launcher3/util/IntArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    iget-object v1, v0, Lcom/android/launcher3/util/IntArray;->mValues:[I

    iget v0, v0, Lcom/android/launcher3/util/IntArray;->mSize:I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/IntArray;->removeIndex(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntSet{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/util/IntSet;->mArray:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntArray;->toConcatString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
