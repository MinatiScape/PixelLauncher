.class public final synthetic Lu1/R1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lu1/R1;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lu1/R1;

    invoke-direct {v0}, Lu1/R1;-><init>()V

    sput-object v0, Lu1/R1;->a:Lu1/R1;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/android/quickstep/SystemUiProxy;

    invoke-direct {p0, p1}, Lcom/android/quickstep/SystemUiProxy;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
