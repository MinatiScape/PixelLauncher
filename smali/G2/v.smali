.class public LG2/v;
.super LG2/B;
.source "SourceFile"


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/graphics/Matrix;

.field public final synthetic d:LG2/C;


# direct methods
.method public constructor <init>(LG2/C;Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, LG2/v;->d:LG2/C;

    iput-object p2, p0, LG2/v;->b:Ljava/util/List;

    iput-object p3, p0, LG2/v;->c:Landroid/graphics/Matrix;

    invoke-direct {p0}, LG2/B;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Matrix;LF2/a;ILandroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object p1, p0, LG2/v;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LG2/B;

    .line 2
    iget-object v1, p0, LG2/v;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1, p2, p3, p4}, LG2/B;->b(Landroid/graphics/Matrix;LF2/a;ILandroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    return-void
.end method
