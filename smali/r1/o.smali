.class public final synthetic Lr1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntSupplier;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr1/o;->a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    return-void
.end method


# virtual methods
.method public final getAsInt()I
    .locals 0

    iget-object p0, p0, Lr1/o;->a:Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;

    invoke-static {p0}, Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;->a(Lcom/android/launcher3/widget/picker/WidgetsFullSheet$AdapterHolder;)I

    move-result p0

    return p0
.end method
