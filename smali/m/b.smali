.class public Lm/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {}, Lm/c;->d()Lm/c;

    move-result-object p0

    invoke-virtual {p0, p1}, Lm/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
