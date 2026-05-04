.class public Lorg/telegram/messenger/AnimatedFileDrawableStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/FileLoadOperationStream;


# instance fields
.field private volatile canceled:Z

.field private countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private currentAccount:I

.field private debugCanceledCount:I

.field private debugReportSend:Z

.field private document:Lorg/telegram/tgnet/TLRPC$Document;

.field private finishedFilePath:Ljava/lang/String;

.field private finishedLoadingFile:Z

.field private lastOffset:J

.field private loadOperation:Lorg/telegram/messenger/FileLoadOperation;

.field private loadingPriority:I

.field private location:Lorg/telegram/messenger/ImageLocation;

.field private parentObject:Ljava/lang/Object;

.field private preview:Z

.field private final sync:Ljava/lang/Object;

.field private waitingForLoad:Z


# direct methods
.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;IZII)V
    .locals 10

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    .line 31
    iput-object p1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 32
    iput-object p2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    .line 33
    iput-object p3, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    .line 34
    iput p4, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    .line 35
    iput-boolean p5, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    move/from16 v8, p6

    .line 36
    iput v8, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadingPriority:I

    .line 37
    invoke-static {p4}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    const-wide/16 v5, 0x0

    iget-boolean v7, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    move-object v1, p0

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZII)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    return-void
.end method

.method private cancelLoadingInternal()V
    .locals 3

    .line 142
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 143
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    if-eqz v0, :cond_0

    .line 144
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v1, v1, Lorg/telegram/messenger/ImageLocation;->location:Lorg/telegram/tgnet/TLRPC$TL_fileLocationToBeDeprecated;

    const-string/jumbo v2, "mp4"

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancel(Z)V

    return-void
.end method

.method public cancel(Z)V
    .locals 5

    .line 117
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v1, 0x0

    .line 123
    iput-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz p1, :cond_1

    .line 124
    iget-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez v1, :cond_1

    .line 125
    iget v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v1, v4, v3, v2}, Lorg/telegram/messenger/FileLoader;->removeLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 128
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    instance-of v4, v1, Lorg/telegram/messenger/MessageObject;

    if-eqz v4, :cond_2

    .line 129
    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 130
    iget v4, v1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/DownloadController;->getInstance(I)Lorg/telegram/messenger/DownloadController;

    move-result-object v4

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/DownloadController;->isDownloading(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move p1, v3

    :cond_2
    if-eqz p1, :cond_3

    .line 135
    invoke-direct {p0}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 137
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 138
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentAccount()I
    .locals 1

    .line 171
    iget v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    return v0
.end method

.method public getDocument()Lorg/telegram/tgnet/TLRPC$Document;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public getFinishedFilePath()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Lorg/telegram/messenger/ImageLocation;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    return-object v0
.end method

.method public getParentObject()Ljava/lang/Object;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    return v0
.end method

.method public isFinishedLoadingFile()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    return v0
.end method

.method public isPreview()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    return v0
.end method

.method public isWaitingForLoad()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    return v0
.end method

.method public newDataAvailable()V
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    return-void
.end method

.method public read(II)I
    .locals 17

    move-object/from16 v1, p0

    move/from16 v9, p1

    move/from16 v10, p2

    .line 49
    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-boolean v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_1

    .line 51
    iget v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugCanceledCount:I

    add-int/2addr v0, v12

    iput v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugCanceledCount:I

    .line 52
    iget-boolean v3, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugReportSend:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc8

    if-le v0, v3, :cond_0

    .line 53
    iput-boolean v12, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->debugReportSend:Z

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "infinity stream reading!!!"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 56
    :cond_0
    :goto_0
    monitor-exit v2

    return v11

    .line 58
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_2

    return v11

    :cond_2
    const-wide/16 v13, 0x0

    move-wide v2, v13

    :goto_1
    cmp-long v0, v2, v13

    if-nez v0, :cond_b

    .line 65
    :try_start_1
    iget-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    int-to-long v5, v9

    int-to-long v7, v10

    invoke-virtual {v0, v5, v6, v7, v8}, Lorg/telegram/messenger/FileLoadOperation;->getDownloadedLengthFromOffset(JJ)[J

    move-result-object v0

    .line 66
    aget-wide v15, v0, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :try_start_2
    iget-boolean v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    if-nez v2, :cond_3

    aget-wide v2, v0, v12

    cmp-long v0, v2, v13

    if-eqz v0, :cond_3

    .line 68
    iput-boolean v12, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedLoadingFile:Z

    .line 69
    iget-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->getCacheFileFinal()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->finishedFilePath:Ljava/lang/String;

    goto :goto_2

    :catch_0
    move-exception v0

    move-wide v2, v15

    goto/16 :goto_6

    :cond_3
    :goto_2
    cmp-long v0, v15, v13

    if-nez v0, :cond_a

    .line 72
    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :try_start_3
    iget-boolean v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v0, :cond_4

    .line 74
    invoke-direct {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 75
    monitor-exit v2

    return v11

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 77
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    :try_start_4
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v12}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 79
    iget-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    invoke-virtual {v0}, Lorg/telegram/messenger/FileLoadOperation;->isPaused()Z

    move-result v0

    if-nez v0, :cond_5

    iget-wide v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-eqz v0, :cond_7

    .line 80
    :cond_5
    iget v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v3, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->location:Lorg/telegram/messenger/ImageLocation;

    iget-object v4, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->parentObject:Ljava/lang/Object;

    iget-boolean v7, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    iget v8, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadingPriority:I

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/messenger/FileLoader;->loadStreamFile(Lorg/telegram/messenger/FileLoadOperationStream;Lorg/telegram/tgnet/TLRPC$Document;Lorg/telegram/messenger/ImageLocation;Ljava/lang/Object;JZI)Lorg/telegram/messenger/FileLoadOperation;

    move-result-object v0

    .line 81
    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    if-eq v2, v0, :cond_6

    .line 82
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/FileLoadOperation;->removeStreamListener(Lorg/telegram/messenger/FileLoadOperationStream;)V

    .line 83
    iput-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->loadOperation:Lorg/telegram/messenger/FileLoadOperation;

    :cond_6
    add-long/2addr v5, v15

    .line 85
    iput-wide v5, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J

    .line 87
    :cond_7
    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 88
    :try_start_5
    iget-boolean v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 89
    iput-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 90
    invoke-direct {v1}, Lorg/telegram/messenger/AnimatedFileDrawableStream;->cancelLoadingInternal()V

    .line 91
    monitor-exit v2

    return v11

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 93
    :cond_8
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 94
    :try_start_6
    iget-boolean v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->preview:Z

    if-nez v0, :cond_9

    .line 95
    iget v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, v2, v11, v12}, Lorg/telegram/messenger/FileLoader;->setLoadingVideo(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 97
    :cond_9
    iget-object v0, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_a

    .line 98
    iput-boolean v12, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 100
    iput-boolean v11, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->waitingForLoad:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    .line 93
    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 77
    :goto_4
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :cond_a
    :goto_5
    move-wide v2, v15

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto :goto_6

    :cond_b
    int-to-long v4, v9

    add-long/2addr v4, v2

    .line 104
    :try_start_b
    iput-wide v4, v1, Lorg/telegram/messenger/AnimatedFileDrawableStream;->lastOffset:J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_7

    .line 106
    :goto_6
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_7
    long-to-int v0, v2

    return v0

    .line 58
    :goto_8
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 149
    iget-object v0, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->sync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 150
    :try_start_0
    iput-boolean v1, p0, Lorg/telegram/messenger/AnimatedFileDrawableStream;->canceled:Z

    .line 151
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
