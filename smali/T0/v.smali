.class public final synthetic LT0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/ItemInfoMatcher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/ItemInfoMatcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT0/v;->a:Lcom/android/launcher3/util/ItemInfoMatcher;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 0

    iget-object p0, p0, LT0/v;->a:Lcom/android/launcher3/util/ItemInfoMatcher;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->h(Lcom/android/launcher3/util/ItemInfoMatcher;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
