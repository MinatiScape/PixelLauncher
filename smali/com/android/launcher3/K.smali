.class public final synthetic Lcom/android/launcher3/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/K;->a:Lcom/android/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/K;->a:Lcom/android/launcher3/Launcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/Launcher;->m(Lcom/android/launcher3/Launcher;I)V

    return-void
.end method
