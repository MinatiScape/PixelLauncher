.class public final synthetic LL0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/dragndrop/AddItemActivity;

.field public final synthetic b:Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LL0/a;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iput-object p2, p0, LL0/a;->b:Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LL0/a;->a:Lcom/android/launcher3/dragndrop/AddItemActivity;

    iget-object p0, p0, LL0/a;->b:Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    invoke-static {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->b(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method
