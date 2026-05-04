.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;


# direct methods
.method public static synthetic $r8$lambda$Of_cOZ1OaSHKBfHNphySqEtmmNQ(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->lambda$run$0(D)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0

    .line 2456
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(D)V
    .locals 4

    .line 2507
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v0, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v0

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recordProgressChanged:I

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    iget-object v2, v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView;->-$$Nest$fgetrecordingGuid(Lorg/telegram/ui/Components/InstantCameraView;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    const/4 v2, 0x1

    aput-object p1, p2, v2

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    move-object/from16 v1, p0

    .line 2464
    new-instance v2, Landroid/media/AudioTimestamp;

    invoke-direct {v2}, Landroid/media/AudioTimestamp;-><init>()V

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-wide v7, v3

    move v0, v5

    move v9, v6

    :goto_0
    if-nez v0, :cond_f

    .line 2468
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetrunning(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetpauseRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v10

    if-eq v10, v6, :cond_1

    .line 2470
    :try_start_0
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v0, v6

    .line 2474
    :goto_1
    iget-object v10, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetsendWhenDone(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_c

    :cond_1
    move v10, v0

    .line 2479
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetbuffers(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2481
    :try_start_1
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v11, v0

    goto :goto_3

    .line 2483
    :catch_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 2484
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-direct {v0}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>()V

    goto :goto_2

    .line 2487
    :cond_2
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetbuffers(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    goto :goto_2

    .line 2489
    :goto_3
    iput v5, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    const/16 v12, 0xa

    .line 2490
    iput v12, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    move v13, v5

    :goto_4
    if-ge v13, v12, :cond_9

    cmp-long v0, v7, v3

    const-wide/16 v14, 0x3e8

    if-nez v0, :cond_3

    if-nez v9, :cond_3

    .line 2493
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    div-long/2addr v7, v14

    .line 2496
    :cond_3
    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v13

    .line 2497
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 2498
    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v3

    const/16 v4, 0x800

    invoke-virtual {v3, v0, v4}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result v3

    if-lez v3, :cond_5

    .line 2499
    rem-int/lit8 v4, v13, 0x2

    if-nez v4, :cond_5

    .line 2500
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const-wide/16 v16, 0x0

    move v4, v5

    :goto_5
    move-wide/from16 v18, v14

    .line 2502
    div-int/lit8 v14, v3, 0x2

    if-ge v4, v14, :cond_4

    .line 2503
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v14

    mul-int/2addr v14, v14

    int-to-double v14, v14

    add-double v16, v16, v14

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v14, v18

    goto :goto_5

    :cond_4
    int-to-double v14, v3

    div-double v16, v16, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double v16, v16, v14

    .line 2506
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 2507
    new-instance v4, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v14, v15}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;D)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2508
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_6

    :cond_5
    move-wide/from16 v18, v14

    :goto_6
    if-gtz v3, :cond_6

    .line 2511
    iput v13, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    .line 2512
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetrunning(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2513
    iput-boolean v6, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    goto :goto_8

    :cond_6
    if-eqz v9, :cond_7

    .line 2520
    :try_start_2
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/media/AudioRecord;->getTimestamp(Landroid/media/AudioTimestamp;I)I

    .line 2521
    iget-wide v14, v2, Landroid/media/AudioTimestamp;->nanoTime:J

    div-long v14, v14, v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-wide/from16 v20, v14

    move-wide v14, v7

    move-wide/from16 v7, v20

    goto :goto_7

    :catch_2
    move-exception v0

    .line 2523
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2525
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    div-long v7, v7, v18

    move v9, v5

    :cond_7
    move-wide v14, v7

    .line 2530
    :goto_7
    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    aput-wide v7, v0, v13

    .line 2532
    iget-object v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aput v3, v0, v13

    const v0, 0xf4240

    mul-int/2addr v3, v0

    const v0, 0xbb80

    .line 2533
    div-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-nez v9, :cond_8

    int-to-long v3, v3

    add-long/2addr v14, v3

    :cond_8
    move-wide v7, v14

    add-int/lit8 v13, v13, 0x1

    const-wide/16 v3, -0x1

    goto/16 :goto_4

    .line 2538
    :cond_9
    :goto_8
    iget v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gez v0, :cond_d

    iget-boolean v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    if-eqz v0, :cond_a

    goto :goto_a

    .line 2546
    :cond_a
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetrunning(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v6

    goto :goto_b

    .line 2550
    :cond_b
    :try_start_3
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetbuffers(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :cond_c
    :goto_9
    move v0, v10

    goto :goto_b

    .line 2539
    :cond_d
    :goto_a
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetrunning(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_e

    iget v0, v11, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v0, v12, :cond_e

    move v10, v6

    .line 2542
    :cond_e
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2543
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    :goto_b
    const-wide/16 v3, -0x1

    goto/16 :goto_0

    .line 2558
    :cond_f
    :goto_c
    :try_start_4
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetaudioRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_d

    :catch_4
    move-exception v0

    .line 2560
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2562
    :goto_d
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetpauseRecorder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2563
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 2564
    iget-object v0, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v0

    iget-object v2, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgethandler(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetsendWhenDone(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I

    move-result v3

    iget-object v4, v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;->this$1:Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$fgetsendWhenDoneOptions(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    move-result-object v4

    invoke-virtual {v2, v6, v3, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    return-void
.end method
