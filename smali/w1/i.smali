.class public final synthetic Lw1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw1/i;->b:Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lw1/i;->b:Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;

    invoke-static {p0}, Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;->a(Lcom/android/quickstep/inputconsumers/ProgressDelegateInputConsumer;)V

    return-void
.end method
