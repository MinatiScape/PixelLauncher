.class public final synthetic LY0/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY0/m;->a:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LY0/m;->a:Ljava/util/HashMap;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider;->e(Ljava/util/HashMap;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method
