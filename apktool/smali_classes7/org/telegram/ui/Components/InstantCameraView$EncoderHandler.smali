.class Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderHandler"
.end annotation


# instance fields
.field private mWeakEncoder:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 1

    .line 2265
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2266
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .line 2328
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 2271
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2274
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->mWeakEncoder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/4 p1, 0x4

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    :goto_0
    return-void

    .line 2308
    :cond_1
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 2309
    const-string p1, "InstantCamera resume encoder"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2311
    :cond_2
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandleResumeRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    return-void

    .line 2301
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 2302
    const-string p1, "InstantCamera pause encoder"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2304
    :cond_4
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandlePauseRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    return-void

    .line 2321
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    invoke-static {v1, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void

    .line 2315
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v2, v0

    const/16 v0, 0x20

    shl-long/2addr v2, v0

    iget v0, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    .line 2316
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 2317
    invoke-static {v1, v2, v3, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandleVideoFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V

    return-void

    .line 2294
    :cond_7
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_8

    .line 2295
    const-string v0, "InstantCamera stop encoder"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 2297
    :cond_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lorg/telegram/ui/Components/InstantCameraView$SendOptions;

    invoke-static {v1, v0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandleStopRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    return-void

    :cond_9
    const/4 v0, 0x0

    .line 2282
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_a

    .line 2283
    const-string v3, "InstantCamera start encoder"

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    .line 2285
    :cond_a
    :goto_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_b

    goto :goto_2

    :cond_b
    move v2, v0

    :goto_2
    invoke-static {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mprepareEncoder(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 2287
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 2288
    invoke-static {v1, v0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->-$$Nest$mhandleStopRecording(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;ILorg/telegram/ui/Components/InstantCameraView$SendOptions;)V

    .line 2289
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void
.end method
