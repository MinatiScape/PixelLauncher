.class public Lu0/q;
.super Lu0/l;
.source "SourceFile"


# instance fields
.field public final i:LE0/d;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lu0/l;-><init>(Ljava/util/List;)V

    .line 2
    new-instance p1, LE0/d;

    invoke-direct {p1}, LE0/d;-><init>()V

    iput-object p1, p0, Lu0/q;->i:LE0/d;

    return-void
.end method


# virtual methods
.method public bridge synthetic i(LE0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lu0/q;->o(LE0/a;F)LE0/d;

    move-result-object p0

    return-object p0
.end method

.method public o(LE0/a;F)LE0/d;
    .locals 10

    .line 1
    iget-object v0, p1, LE0/a;->b:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v1, p1, LE0/a;->c:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, LE0/d;

    .line 3
    check-cast v1, LE0/d;

    .line 4
    iget-object v2, p0, Lu0/g;->e:LE0/c;

    if-eqz v2, :cond_0

    .line 5
    iget v3, p1, LE0/a;->e:F

    iget-object p1, p1, LE0/a;->f:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 6
    invoke-virtual {p0}, Lu0/g;->e()F

    move-result v8

    invoke-virtual {p0}, Lu0/g;->f()F

    move-result v9

    move-object v5, v0

    move-object v6, v1

    move v7, p2

    .line 7
    invoke-virtual/range {v2 .. v9}, LE0/c;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE0/d;

    if-eqz p1, :cond_0

    return-object p1

    .line 8
    :cond_0
    iget-object p1, p0, Lu0/q;->i:LE0/d;

    .line 9
    invoke-virtual {v0}, LE0/d;->b()F

    move-result v2

    invoke-virtual {v1}, LE0/d;->b()F

    move-result v3

    invoke-static {v2, v3, p2}, LD0/g;->j(FFF)F

    move-result v2

    .line 10
    invoke-virtual {v0}, LE0/d;->c()F

    move-result v0

    invoke-virtual {v1}, LE0/d;->c()F

    move-result v1

    invoke-static {v0, v1, p2}, LD0/g;->j(FFF)F

    move-result p2

    .line 11
    invoke-virtual {p1, v2, p2}, LE0/d;->d(FF)V

    .line 12
    iget-object p0, p0, Lu0/q;->i:LE0/d;

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Missing values for keyframe."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
