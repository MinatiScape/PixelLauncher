.class public final synthetic Lu1/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:Lu1/F0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/F0;

    invoke-direct {v0}, Lu1/F0;-><init>()V

    sput-object v0, Lu1/F0;->a:Lu1/F0;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/android/quickstep/OverviewComponentObserver;->b(Ljava/lang/Boolean;)V

    return-void
.end method
