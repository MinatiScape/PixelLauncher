.class public final synthetic Lcom/android/launcher3/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/SafeCloseable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/p0;->b:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/p0;->b:Lcom/android/launcher3/util/SafeCloseable;

    invoke-interface {p0}, Lcom/android/launcher3/util/SafeCloseable;->close()V

    return-void
.end method
