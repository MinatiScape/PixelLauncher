.class public LY2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final e:LY2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LY2/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LY2/a;-><init>(LW2/b;)V

    sput-object v0, LY2/b;->e:LY2/a;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const/high16 v0, -0x80000000

    if-eq p3, v0, :cond_0

    .line 2
    iput p1, p0, LY2/b;->b:I

    .line 3
    invoke-static {p1, p2, p3}, LU2/a;->b(III)I

    move-result p1

    iput p1, p0, LY2/b;->c:I

    .line 4
    iput p3, p0, LY2/b;->d:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be greater than Int.MIN_VALUE to avoid overflow on negation."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step must be non-zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, LY2/b;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, LY2/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, LY2/b;

    invoke-virtual {v0}, LY2/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, LY2/b;->b:I

    check-cast p1, LY2/b;

    iget v1, p1, LY2/b;->b:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LY2/b;->c:I

    iget v1, p1, LY2/b;->c:I

    if-ne v0, v1, :cond_2

    iget p0, p0, LY2/b;->d:I

    iget p1, p1, LY2/b;->d:I

    if-ne p0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final h()I
    .locals 0

    .line 1
    iget p0, p0, LY2/b;->b:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, LY2/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget v0, p0, LY2/b;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LY2/b;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LY2/b;->d:I

    add-int/2addr p0, v0

    :goto_0
    return p0
.end method

.method public final i()I
    .locals 0

    .line 1
    iget p0, p0, LY2/b;->c:I

    return p0
.end method

.method public isEmpty()Z
    .locals 3

    .line 1
    iget v0, p0, LY2/b;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, LY2/b;->b:I

    iget p0, p0, LY2/b;->c:I

    if-le v0, p0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, LY2/b;->b:I

    iget p0, p0, LY2/b;->c:I

    if-ge v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0}, LY2/b;->k()Lkotlin/collections/n;

    move-result-object p0

    return-object p0
.end method

.method public final j()I
    .locals 0

    .line 1
    iget p0, p0, LY2/b;->d:I

    return p0
.end method

.method public k()Lkotlin/collections/n;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, LY2/c;

    iget v1, p0, LY2/b;->b:I

    iget v2, p0, LY2/b;->c:I

    iget p0, p0, LY2/b;->d:I

    invoke-direct {v0, v1, v2, p0}, LY2/c;-><init>(III)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, LY2/b;->d:I

    const-string v1, " step "

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LY2/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LY2/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LY2/b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LY2/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downTo "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, LY2/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LY2/b;->d:I

    neg-int p0, p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
