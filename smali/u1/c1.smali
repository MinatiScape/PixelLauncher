.class public final synthetic Lu1/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/RecentsAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/c1;->b:Lcom/android/quickstep/RecentsAnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lu1/c1;->b:Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {p0}, Lcom/android/quickstep/RecentsAnimationController;->e(Lcom/android/quickstep/RecentsAnimationController;)V

    return-void
.end method
