.class public final synthetic LX1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:LX1/D;

.field public final synthetic b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;


# direct methods
.method public synthetic constructor <init>(LX1/D;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/C;->a:LX1/D;

    iput-object p2, p0, LX1/C;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LX1/C;->a:LX1/D;

    iget-object p0, p0, LX1/C;->b:Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {v0, p0}, LX1/D;->a(LX1/D;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object p0

    return-object p0
.end method
