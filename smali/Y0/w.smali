.class public final synthetic LY0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic e:Landroid/os/Handler;

.field public final synthetic f:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field public final synthetic g:Landroid/os/UserHandle;

.field public final synthetic h:Landroid/content/ComponentName;

.field public final synthetic i:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/w;->b:Ljava/util/List;

    iput-object p2, p0, LY0/w;->c:Landroid/content/Context;

    iput-object p3, p0, LY0/w;->d:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p4, p0, LY0/w;->e:Landroid/os/Handler;

    iput-object p5, p0, LY0/w;->f:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-object p6, p0, LY0/w;->g:Landroid/os/UserHandle;

    iput-object p7, p0, LY0/w;->h:Landroid/content/ComponentName;

    iput-object p8, p0, LY0/w;->i:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, LY0/w;->b:Ljava/util/List;

    iget-object v1, p0, LY0/w;->c:Landroid/content/Context;

    iget-object v2, p0, LY0/w;->d:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, LY0/w;->e:Landroid/os/Handler;

    iget-object v4, p0, LY0/w;->f:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v5, p0, LY0/w;->g:Landroid/os/UserHandle;

    iget-object v6, p0, LY0/w;->h:Landroid/content/ComponentName;

    iget-object v7, p0, LY0/w;->i:Ljava/util/List;

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/popup/PopupPopulator;->b(Ljava/util/List;Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/os/UserHandle;Landroid/content/ComponentName;Ljava/util/List;)V

    return-void
.end method
