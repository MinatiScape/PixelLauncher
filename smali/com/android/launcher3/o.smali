.class public final synthetic Lcom/android/launcher3/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/android/launcher3/DeleteDropTarget;

.field public final synthetic c:Lcom/android/launcher3/util/IntSet;

.field public final synthetic d:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/o;->b:Lcom/android/launcher3/DeleteDropTarget;

    iput-object p2, p0, Lcom/android/launcher3/o;->c:Lcom/android/launcher3/util/IntSet;

    iput-object p3, p0, Lcom/android/launcher3/o;->d:Lcom/android/launcher3/model/ModelWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/o;->b:Lcom/android/launcher3/DeleteDropTarget;

    iget-object v1, p0, Lcom/android/launcher3/o;->c:Lcom/android/launcher3/util/IntSet;

    iget-object p0, p0, Lcom/android/launcher3/o;->d:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/DeleteDropTarget;->b(Lcom/android/launcher3/DeleteDropTarget;Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/model/ModelWriter;)V

    return-void
.end method
