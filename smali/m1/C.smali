.class public final synthetic Lm1/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lm1/C;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lm1/C;

    invoke-direct {v0}, Lm1/C;-><init>()V

    sput-object v0, Lm1/C;->a:Lm1/C;

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

    invoke-static {p1}, Lcom/android/launcher3/util/SettingsCache;->j(Landroid/content/Context;)Lcom/android/launcher3/util/SettingsCache;

    move-result-object p0

    return-object p0
.end method
