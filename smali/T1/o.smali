.class public final synthetic LT1/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:LT1/o;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LT1/o;

    invoke-direct {v0}, LT1/o;-><init>()V

    sput-object v0, LT1/o;->a:LT1/o;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;->f(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
