.class public final synthetic Lu1/L2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/quickstep/util/ProxyScreenStatusProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/ProxyScreenStatusProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu1/L2;->b:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lu1/L2;->b:Lcom/android/quickstep/util/ProxyScreenStatusProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/util/ProxyScreenStatusProvider;->onScreenTurnedOn()V

    return-void
.end method
