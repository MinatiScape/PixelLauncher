.class public Lr2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# static fields
.field public static final b:Landroid/animation/TypeEvaluator;


# instance fields
.field public final a:Lr2/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/e;

    invoke-direct {v0}, Lr2/e;-><init>()V

    sput-object v0, Lr2/e;->b:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lr2/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr2/h;-><init>(Lr2/d;)V

    iput-object v0, p0, Lr2/e;->a:Lr2/h;

    return-void
.end method


# virtual methods
.method public a(FLr2/h;Lr2/h;)Lr2/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lr2/e;->a:Lr2/h;

    iget v1, p2, Lr2/h;->a:F

    iget v2, p3, Lr2/h;->a:F

    .line 2
    invoke-static {v1, v2, p1}, LA2/a;->c(FFF)F

    move-result v1

    iget v2, p2, Lr2/h;->b:F

    iget v3, p3, Lr2/h;->b:F

    .line 3
    invoke-static {v2, v3, p1}, LA2/a;->c(FFF)F

    move-result v2

    iget p2, p2, Lr2/h;->c:F

    iget p3, p3, Lr2/h;->c:F

    .line 4
    invoke-static {p2, p3, p1}, LA2/a;->c(FFF)F

    move-result p1

    .line 5
    invoke-virtual {v0, v1, v2, p1}, Lr2/h;->a(FFF)V

    .line 6
    iget-object p0, p0, Lr2/e;->a:Lr2/h;

    return-object p0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, Lr2/h;

    check-cast p3, Lr2/h;

    invoke-virtual {p0, p1, p2, p3}, Lr2/e;->a(FLr2/h;Lr2/h;)Lr2/h;

    move-result-object p0

    return-object p0
.end method
