.class public final synthetic LT0/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/e0;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, LT0/e0;->a:Ljava/util/HashMap;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/LoaderResults;->c(Ljava/util/HashMap;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
