.class public final synthetic LT0/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/y;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, LT0/y;->a:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->b(Ljava/util/List;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
