.class public LG2/d;
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
.method public a(LG2/C;FFF)V
    .locals 0

    const p0, 0x0

    throw p0
.end method

.method public b(LG2/C;FFLandroid/graphics/RectF;LG2/c;)V
    .locals 0

    .line 1
    invoke-interface {p5, p4}, LG2/c;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, LG2/d;->a(LG2/C;FFF)V

    return-void
.end method
