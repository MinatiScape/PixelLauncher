.class public LQ2/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ2/H0;


# instance fields
.field public a:[LQ2/H0;


# direct methods
.method public varargs constructor <init>([LQ2/H0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LQ2/z0;->a:[LQ2/H0;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)LQ2/G0;
    .locals 4

    .line 1
    iget-object p0, p0, LQ2/z0;->a:[LQ2/H0;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 2
    invoke-interface {v2, p1}, LQ2/H0;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v2, p1}, LQ2/H0;->a(Ljava/lang/Class;)LQ2/G0;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No factory is available for message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Class;)Z
    .locals 4

    .line 1
    iget-object p0, p0, LQ2/z0;->a:[LQ2/H0;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 2
    invoke-interface {v3, p1}, LQ2/H0;->b(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
