.class public final Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
.super LQ2/a0;
.source "SourceFile"

# interfaces
.implements LQ2/K0;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

.field public static final OVERVIEW_ACTIVITY_RESUMED_FIELD_NUMBER:I = 0x2

.field public static final OVERVIEW_ACTIVITY_STARTED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:LQ2/R0;


# instance fields
.field private bitField0_:I

.field private overviewActivityResumed_:Z

.field private overviewActivityStarted_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-direct {v0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;-><init>()V

    .line 2
    sput-object v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    .line 3
    const-class v1, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {v1, v0}, LQ2/a0;->registerDefaultInstance(Ljava/lang/Class;LQ2/a0;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LQ2/a0;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/android/launcher3/tracing/OverviewComponentObserverProto;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->setOverviewActivityStarted(Z)V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/launcher3/tracing/OverviewComponentObserverProto;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->setOverviewActivityResumed(Z)V

    return-void
.end method

.method public static newBuilder()Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-virtual {v0}, LQ2/a0;->createBuilder()LQ2/V;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    const/4 p2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    return-object p2

    .line 3
    :pswitch_1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->PARSER:LQ2/R0;

    if-nez p0, :cond_1

    .line 5
    const-class p1, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    monitor-enter p1

    .line 6
    :try_start_0
    sget-object p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->PARSER:LQ2/R0;

    if-nez p0, :cond_0

    .line 7
    new-instance p0, LQ2/W;

    sget-object p2, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-direct {p0, p2}, LQ2/W;-><init>(LQ2/a0;)V

    .line 8
    sput-object p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->PARSER:LQ2/R0;

    .line 9
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    .line 10
    :pswitch_3
    sget-object p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    return-object p0

    :pswitch_4
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "bitField0_"

    aput-object p3, p0, p2

    const-string p2, "overviewActivityStarted_"

    aput-object p2, p0, p1

    const/4 p1, 0x2

    const-string p2, "overviewActivityResumed_"

    aput-object p2, p0, p1

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0007\u0000\u0002\u0007\u0001"

    .line 11
    sget-object p2, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->DEFAULT_INSTANCE:Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-static {p2, p1, p0}, LQ2/a0;->newMessageInfo(LQ2/J0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 12
    :pswitch_5
    new-instance p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;

    invoke-direct {p0, p2}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto$Builder;-><init>(Lcom/android/launcher3/tracing/OverviewComponentObserverProto$1;)V

    return-object p0

    .line 13
    :pswitch_6
    new-instance p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;

    invoke-direct {p0}, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setOverviewActivityResumed(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->bitField0_:I

    .line 2
    iput-boolean p1, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->overviewActivityResumed_:Z

    return-void
.end method

.method public final setOverviewActivityStarted(Z)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->bitField0_:I

    .line 2
    iput-boolean p1, p0, Lcom/android/launcher3/tracing/OverviewComponentObserverProto;->overviewActivityStarted_:Z

    return-void
.end method
