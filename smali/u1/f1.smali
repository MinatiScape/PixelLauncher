.class public final synthetic Lu1/f1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/RecentsAnimationController;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/f1;->b:Lcom/android/quickstep/RecentsAnimationController;

    iput-wide p2, p0, Lu1/f1;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lu1/f1;->b:Lcom/android/quickstep/RecentsAnimationController;

    iget-wide v1, p0, Lu1/f1;->c:J

    invoke-static {v0, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->c(Lcom/android/quickstep/RecentsAnimationController;J)V

    return-void
.end method
