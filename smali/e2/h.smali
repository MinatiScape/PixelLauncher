.class public final synthetic Le2/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Le2/h;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le2/h;

    invoke-direct {v0}, Le2/h;-><init>()V

    sput-object v0, Le2/h;->a:Le2/h;

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

    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-static {p1}, Le2/j;->g(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result p0

    return p0
.end method
