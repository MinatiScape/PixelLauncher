.class public LB0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LB0/K;


# static fields
.field public static final a:LB0/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LB0/f;

    invoke-direct {v0}, LB0/f;-><init>()V

    sput-object v0, LB0/f;->a:LB0/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(LC0/a;F)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LB0/f;->b(LC0/a;F)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(LC0/a;F)Ljava/lang/Integer;
    .locals 8

    .line 1
    invoke-virtual {p1}, LC0/a;->w()Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    move-result-object p0

    sget-object p2, Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Token;

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p1}, LC0/a;->k()V

    .line 3
    :cond_1
    invoke-virtual {p1}, LC0/a;->r()D

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, LC0/a;->r()D

    move-result-wide v2

    .line 5
    invoke-virtual {p1}, LC0/a;->r()D

    move-result-wide v4

    .line 6
    invoke-virtual {p1}, LC0/a;->r()D

    move-result-wide v6

    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p1}, LC0/a;->m()V

    :cond_2
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    cmpg-double p2, v0, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v2, p0

    if-gtz p2, :cond_3

    cmpg-double p2, v4, p0

    if-gtz p2, :cond_3

    cmpg-double p0, v6, p0

    if-gtz p0, :cond_3

    const-wide p0, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, p0

    mul-double/2addr v2, p0

    mul-double/2addr v4, p0

    mul-double/2addr v6, p0

    :cond_3
    double-to-int p0, v6

    double-to-int p1, v0

    double-to-int p2, v2

    double-to-int v0, v4

    .line 8
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
