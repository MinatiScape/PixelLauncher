.class public final synthetic LT0/A1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:LT0/A1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LT0/A1;

    invoke-direct {v0}, LT0/A1;-><init>()V

    sput-object v0, LT0/A1;->a:LT0/A1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-static {p1}, Lcom/android/launcher3/model/WidgetsModel;->a(Lcom/android/launcher3/model/WidgetItem;)Z

    move-result p0

    return p0
.end method
