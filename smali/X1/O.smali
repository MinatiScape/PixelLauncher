.class public final synthetic LX1/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LX1/P;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(LX1/P;Landroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/O;->b:LX1/P;

    iput-object p2, p0, LX1/O;->c:Landroid/graphics/Rect;

    iput-object p3, p0, LX1/O;->d:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LX1/O;->b:LX1/P;

    iget-object v1, p0, LX1/O;->c:Landroid/graphics/Rect;

    iget-object p0, p0, LX1/O;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, LX1/P;->b(LX1/P;Landroid/graphics/Rect;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
