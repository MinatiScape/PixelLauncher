.class public final synthetic LU0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic a:LU0/l;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LU0/l;

    invoke-direct {v0}, LU0/l;-><init>()V

    sput-object v0, LU0/l;->a:LU0/l;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->t(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
