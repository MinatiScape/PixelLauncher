.class public final synthetic Lt1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic b:Lt1/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lt1/a;

    invoke-direct {v0}, Lt1/a;-><init>()V

    sput-object v0, Lt1/a;->b:Lt1/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1, p2}, Lcom/android/launcher3/widget/util/WidgetsTableUtils;->b(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result p0

    return p0
.end method
