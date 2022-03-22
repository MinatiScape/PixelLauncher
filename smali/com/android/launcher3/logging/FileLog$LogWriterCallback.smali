.class public Lcom/android/launcher3/logging/FileLog$LogWriterCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public mCurrentFileName:Ljava/lang/String;

.field public mCurrentWriter:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/logging/FileLog$1;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final closeWriter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-static {v0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    .line 1
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$100()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    const-string v3, "log-"

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v1, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v5, 0x3

    if-eq v0, v5, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 4
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/util/Pair;

    .line 5
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz p1, :cond_1

    :goto_0
    if-ge v4, v2, :cond_1

    .line 6
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/logging/FileLog;->access$300(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return v1

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    return v1

    .line 9
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    rem-int/2addr v3, v2

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    invoke-virtual {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    .line 13
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    if-nez v3, :cond_6

    .line 14
    iput-object v2, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentFileName:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$100()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xa

    const/16 v7, 0x24

    .line 19
    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 20
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 21
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/32 v8, 0x800000

    cmp-long v0, v6, v8

    if-gez v0, :cond_5

    move v4, v1

    .line 22
    :cond_5
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    .line 23
    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->mCurrentWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 25
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$200()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 26
    invoke-static {}, Lcom/android/launcher3/logging/FileLog;->access$200()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v2, 0x1388

    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "FileLog"

    const-string v2, "Error writing logs to file"

    .line 27
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    invoke-virtual {p0}, Lcom/android/launcher3/logging/FileLog$LogWriterCallback;->closeWriter()V

    :cond_7
    :goto_1
    return v1
.end method
