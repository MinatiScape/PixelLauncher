.class public final synthetic LT0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/model/CacheDataUpdatedTask;

.field public final synthetic b:Lcom/android/launcher3/icons/IconCache;

.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/O;->a:Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iput-object p2, p0, LT0/O;->b:Lcom/android/launcher3/icons/IconCache;

    iput-object p3, p0, LT0/O;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LT0/O;->a:Lcom/android/launcher3/model/CacheDataUpdatedTask;

    iget-object v1, p0, LT0/O;->b:Lcom/android/launcher3/icons/IconCache;

    iget-object p0, p0, LT0/O;->c:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/model/CacheDataUpdatedTask;->j(Lcom/android/launcher3/model/CacheDataUpdatedTask;Lcom/android/launcher3/icons/IconCache;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method
