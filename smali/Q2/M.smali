.class public final LQ2/M;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LQ2/J;

.field public static final b:LQ2/J;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LQ2/L;

    invoke-direct {v0}, LQ2/L;-><init>()V

    sput-object v0, LQ2/M;->a:LQ2/J;

    .line 2
    invoke-static {}, LQ2/M;->c()LQ2/J;

    move-result-object v0

    sput-object v0, LQ2/M;->b:LQ2/J;

    return-void
.end method

.method public static a()LQ2/J;
    .locals 2

    .line 1
    sget-object v0, LQ2/M;->b:LQ2/J;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b()LQ2/J;
    .locals 1

    .line 1
    sget-object v0, LQ2/M;->a:LQ2/J;

    return-object v0
.end method

.method public static c()LQ2/J;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ2/J;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
