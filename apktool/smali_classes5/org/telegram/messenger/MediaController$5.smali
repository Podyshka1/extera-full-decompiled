.class Lorg/telegram/messenger/MediaController$5;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MediaController;

.field final synthetic val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;


# direct methods
.method public static synthetic $r8$lambda$JrzgFkVbJ1bDtonMTN3B4NSCrKk(Ljava/lang/String;F)V
    .locals 3

    .line 1559
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v1, "media_saved_pos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1560
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$eGTjyf4X0wU0EXtTPd88grFMXxw(Lorg/telegram/messenger/MediaController$5;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController$5;->lambda$run$1(Lorg/telegram/messenger/MessageObject;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V
    .locals 0

    .line 1519
    iput-object p1, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    iput-object p2, p0, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$1(Lorg/telegram/messenger/MessageObject;)V
    .locals 11

    .line 1524
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetisPaused(Lorg/telegram/messenger/MediaController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1530
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    .line 1531
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 1532
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-ltz v0, :cond_7

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    goto/16 :goto_2

    .line 1536
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetvideoPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getBufferedPosition()J

    move-result-wide v2

    long-to-float v0, v2

    long-to-float v2, v4

    div-float/2addr v0, v2

    long-to-float v3, v6

    div-float/2addr v3, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v3, v2

    if-ltz v2, :cond_5

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 1542
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    .line 1543
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/VideoPlayer;->getCurrentPosition()J

    move-result-wide v6

    cmp-long v0, v4, v2

    if-ltz v0, :cond_3

    long-to-float v0, v6

    long-to-float v8, v4

    div-float/2addr v0, v8

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1545
    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v8}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetaudioPlayer(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/VideoPlayer;->getBufferedPosition()J

    move-result-wide v8

    long-to-float v8, v8

    long-to-float v9, v4

    div-float/2addr v8, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v4, v9

    if-eqz v9, :cond_7

    cmp-long v2, v6, v2

    if-ltz v2, :cond_7

    .line 1546
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetseekToProgressPending(Lorg/telegram/messenger/MediaController;)F

    move-result v2

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    move v0, v8

    .line 1550
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2, v6, v7}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputlastProgress(Lorg/telegram/messenger/MediaController;J)V

    const-wide/16 v6, 0x3e8

    .line 1551
    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, p1, Lorg/telegram/messenger/MessageObject;->audioPlayerDuration:I

    .line 1552
    iput v3, p1, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1553
    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetlastProgress(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    div-long/2addr v4, v6

    long-to-int v2, v4

    iput v2, p1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 1554
    iput v0, p1, Lorg/telegram/messenger/MessageObject;->bufferedProgress:F

    cmpl-float v0, v3, v1

    if-ltz v0, :cond_6

    .line 1555
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetshouldSavePositionForCurrentAudio(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetlastSaveTime(Lorg/telegram/messenger/MediaController;)J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v6

    if-ltz v0, :cond_6

    .line 1556
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetshouldSavePositionForCurrentAudio(Lorg/telegram/messenger/MediaController;)Ljava/lang/String;

    move-result-object v0

    .line 1557
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lorg/telegram/messenger/MediaController;->-$$Nest$fputlastSaveTime(Lorg/telegram/messenger/MediaController;J)V

    .line 1558
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/MediaController$5$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v3}, Lorg/telegram/messenger/MediaController$5$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1563
    :cond_6
    iget v0, p1, Lorg/telegram/messenger/MessageObject;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v2, v3, p1

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1565
    :goto_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1522
    iget-object v0, p0, Lorg/telegram/messenger/MediaController$5;->this$0:Lorg/telegram/messenger/MediaController;

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->-$$Nest$fgetsync(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1523
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController$5;->val$currentPlayingMessageObject:Lorg/telegram/messenger/MessageObject;

    new-instance v2, Lorg/telegram/messenger/MediaController$5$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/MediaController$5$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/messenger/MediaController$5;Lorg/telegram/messenger/MessageObject;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1569
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
