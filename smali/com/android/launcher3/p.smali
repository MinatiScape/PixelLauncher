.class public final synthetic Lcom/android/launcher3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/p;->b:Lcom/android/launcher3/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/p;->b:Lcom/android/launcher3/model/ModelWriter;

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter;->commitDelete()V

    return-void
.end method
