.class public final synthetic Lu1/W2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# static fields
.field public static final synthetic a:Lu1/W2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/W2;

    invoke-direct {v0}, Lu1/W2;-><init>()V

    sput-object v0, Lu1/W2;->a:Lu1/W2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    invoke-static {}, Lcom/android/quickstep/ViewUtils;->a()Z

    move-result p0

    return p0
.end method
