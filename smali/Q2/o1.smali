.class public abstract LQ2/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;II)V
.end method

.method public abstract b(Ljava/lang/Object;IJ)V
.end method

.method public abstract c(Ljava/lang/Object;ILjava/lang/Object;)V
.end method

.method public abstract d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V
.end method

.method public abstract e(Ljava/lang/Object;IJ)V
.end method

.method public abstract f(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract g(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract h(Ljava/lang/Object;)I
.end method

.method public abstract i(Ljava/lang/Object;)I
.end method

.method public abstract j(Ljava/lang/Object;)V
.end method

.method public abstract k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final l(Ljava/lang/Object;LQ2/W0;)V
    .locals 2

    .line 1
    :cond_0
    invoke-interface {p2}, LQ2/W0;->u()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 2
    invoke-virtual {p0, p1, p2}, LQ2/o1;->m(Ljava/lang/Object;LQ2/W0;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method public final m(Ljava/lang/Object;LQ2/W0;)Z
    .locals 5

    .line 1
    invoke-interface {p2}, LQ2/W0;->e()I

    move-result v0

    .line 2
    invoke-static {v0}, LQ2/D1;->a(I)I

    move-result v1

    .line 3
    invoke-static {v0}, LQ2/D1;->b(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 4
    invoke-interface {p2}, LQ2/W0;->s()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, LQ2/o1;->a(Ljava/lang/Object;II)V

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->d()Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p0

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0

    .line 6
    :cond_2
    invoke-virtual {p0}, LQ2/o1;->n()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-static {v1, v4}, LQ2/D1;->c(II)I

    move-result v3

    .line 8
    invoke-virtual {p0, v0, p2}, LQ2/o1;->l(Ljava/lang/Object;LQ2/W0;)V

    .line 9
    invoke-interface {p2}, LQ2/W0;->e()I

    move-result p2

    if-ne v3, p2, :cond_3

    .line 10
    invoke-virtual {p0, v0}, LQ2/o1;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, LQ2/o1;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 11
    :cond_3
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    .line 12
    :cond_4
    invoke-interface {p2}, LQ2/W0;->z()Lcom/google/protobuf/ByteString;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, LQ2/o1;->d(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    return v2

    .line 13
    :cond_5
    invoke-interface {p2}, LQ2/W0;->h()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, LQ2/o1;->b(Ljava/lang/Object;IJ)V

    return v2

    .line 14
    :cond_6
    invoke-interface {p2}, LQ2/W0;->L()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, LQ2/o1;->e(Ljava/lang/Object;IJ)V

    return v2
.end method

.method public abstract n()Ljava/lang/Object;
.end method

.method public abstract o(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract p(Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public abstract q(LQ2/W0;)Z
.end method

.method public abstract r(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract s(Ljava/lang/Object;LQ2/E1;)V
.end method

.method public abstract t(Ljava/lang/Object;LQ2/E1;)V
.end method
