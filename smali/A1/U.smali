.class public final synthetic LA1/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic a:LA1/U;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LA1/U;

    invoke-direct {v0}, LA1/U;-><init>()V

    sput-object v0, LA1/U;->a:LA1/U;

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

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->l(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void
.end method
