.class public Lm0/B;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final a:Landroid/util/Property;

.field public final b:Landroid/graphics/PathMeasure;

.field public final c:F

.field public final d:[F

.field public final e:Landroid/graphics/PointF;

.field public f:F


# direct methods
.method public constructor <init>(Landroid/util/Property;Landroid/graphics/Path;)V
    .locals 2

    .line 1
    const-class v0, Ljava/lang/Float;

    invoke-virtual {p1}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lm0/B;->d:[F

    .line 3
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lm0/B;->e:Landroid/graphics/PointF;

    .line 4
    iput-object p1, p0, Lm0/B;->a:Landroid/util/Property;

    .line 5
    new-instance p1, Landroid/graphics/PathMeasure;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lm0/B;->b:Landroid/graphics/PathMeasure;

    .line 6
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lm0/B;->c:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget p0, p0, Lm0/B;->f:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Float;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lm0/B;->f:F

    .line 2
    iget-object v0, p0, Lm0/B;->b:Landroid/graphics/PathMeasure;

    iget v1, p0, Lm0/B;->c:F

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    mul-float/2addr v1, p2

    iget-object p2, p0, Lm0/B;->d:[F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 3
    iget-object p2, p0, Lm0/B;->e:Landroid/graphics/PointF;

    iget-object v0, p0, Lm0/B;->d:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p2, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x1

    .line 4
    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    .line 5
    iget-object p0, p0, Lm0/B;->a:Landroid/util/Property;

    invoke-virtual {p0, p1, p2}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lm0/B;->a(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lm0/B;->b(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method
