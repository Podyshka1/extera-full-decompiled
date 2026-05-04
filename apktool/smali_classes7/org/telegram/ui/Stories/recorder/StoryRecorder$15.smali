.class Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Stories/recorder/StoryRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;


# direct methods
.method public static synthetic $r8$lambda$7qhjn4iyrlPQ-XDEaLUwts0iXM0(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$NXWeXz-y1rbZ8cMgVY_KjQYHYos(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$WToo0cQnPzKmB_WLuwKt3BhhGuo(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$6(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$b4cI8tY5esj1y_1WA820XDxTbME(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$bdGOXzAGTflrJF0yzN5yc85Z9mg(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->takePicture(Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fpm78xHRnf_aM2FVE_mEMEiiQWM(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;ZLjava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$onVideoRecordStart$3(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lcQNaEGqiDIVno4ZIwjkl5NJXp0(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$startRecording$5(Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$nL7DKW1qouU0oOg4wlvx6h7kjzg(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$onVideoRecordEnd$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$vWKOiIDFQ3ueuUqjJoQ2FmSLOm8(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->lambda$takePicture$1(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V
    .locals 0

    .line 3838
    iput-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onVideoRecordEnd$7()V
    .locals 3

    .line 4186
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4187
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 4189
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetstoppingTakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4190
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mshowZoomControls(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4193
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionRecording()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lorg/telegram/messenger/camera/CameraController;->stopVideoRecording(Ljava/lang/Object;ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onVideoRecordStart$3(ZLjava/lang/Runnable;)V
    .locals 0

    .line 4046
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->startRecording(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startRecording$4()V
    .locals 2

    .line 4140
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$startRecording$5(Ljava/lang/String;J)V
    .locals 5

    .line 4062
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4063
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 4065
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4066
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    .line 4068
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 4072
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4073
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputstoppingTakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4074
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4075
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    :cond_3
    const-wide/16 v3, 0x320

    cmp-long v0, p2, v3

    const/4 v3, 0x0

    if-gtz v0, :cond_5

    .line 4080
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateRecording(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4081
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msetAwakeLock(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4082
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoTimerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    .line 4083
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4084
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 4087
    :cond_4
    :try_start_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 4088
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 4090
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    if-eqz p1, :cond_a

    .line 4094
    :try_start_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    .line 4096
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 4102
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mshowVideoTimer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4104
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromVideoShoot(Ljava/io/File;Ljava/lang/String;J)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    .line 4105
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotId(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide p2

    iput-wide p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 4106
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotLang(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 4107
    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMultipleStoriesSelector()V

    .line 4108
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateRecording(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4109
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msetAwakeLock(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4110
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoTimerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p2

    invoke-virtual {p2, v2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    .line 4111
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 4112
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p2

    invoke-virtual {p2, v1}, Lorg/telegram/ui/Stories/recorder/RecordControl;->stopRecordingLoading(Z)V

    .line 4114
    :cond_6
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 4115
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 4116
    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->videoVolume:F

    .line 4117
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 4118
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4119
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4120
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4121
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_7

    if-lez p2, :cond_7

    .line 4123
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iput p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 4124
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 4125
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 4128
    :cond_7
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mupdateActionBarButtons(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    return-void

    .line 4130
    :cond_8
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4131
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4132
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4133
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/camera/CameraView;->getVideoWidth()I

    move-result p1

    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/camera/CameraView;->getVideoHeight()I

    move-result p2

    if-lez p1, :cond_9

    if-lez p2, :cond_9

    .line 4135
    iget-object p3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p3

    iput p1, p3, Lorg/telegram/ui/Stories/recorder/StoryEntry;->width:I

    .line 4136
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    iput p2, p1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->height:I

    .line 4137
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->setupMatrix()V

    .line 4139
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateToPreviewWithPlayerAwait(Ljava/lang/Runnable;J)V

    :cond_a
    :goto_1
    return-void
.end method

.method private synthetic lambda$startRecording$6(Ljava/lang/Runnable;Z)V
    .locals 1

    .line 4144
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4146
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgethintTextView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object p1

    if-eqz p2, :cond_0

    sget p2, Lorg/telegram/messenger/R$string;->StoryHintSwipeToZoom:I

    goto :goto_0

    :cond_0
    sget p2, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    :goto_0
    invoke-static {p2}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    .line 4147
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateRecording(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4148
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msetAwakeLock(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4150
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    .line 4151
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoTimerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object p1

    invoke-virtual {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setRecording(ZZ)V

    .line 4152
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mshowVideoTimer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method

.method private synthetic lambda$takePicture$0()V
    .locals 2

    .line 3971
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private synthetic lambda$takePicture$1(Lorg/telegram/messenger/Utilities$Callback;Ljava/lang/Integer;)V
    .locals 6

    .line 3912
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3914
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetwindowView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryRecorder$WindowView;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3917
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 3918
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3919
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 3921
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    const/4 v0, -0x1

    .line 3926
    :try_start_1
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3927
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3928
    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 3929
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3930
    :try_start_2
    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move v4, v0

    :catch_2
    move v3, v0

    .line 3933
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_3

    move v5, v2

    goto :goto_1

    :cond_3
    const/16 v5, 0x5a

    .line 3934
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_4

    if-le v4, v3, :cond_5

    const/16 v5, 0x10e

    goto :goto_2

    :cond_4
    if-le v3, v4, :cond_5

    if-eqz v5, :cond_5

    move v5, v2

    .line 3941
    :cond_5
    :goto_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 3943
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotId(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide v3

    iput-wide v3, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 3944
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotLang(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 3946
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3947
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 3948
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3949
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3950
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3951
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    if-eqz p1, :cond_8

    .line 3954
    invoke-interface {p1, v3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 3962
    invoke-interface {p1, v3}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 3964
    :cond_8
    :goto_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mupdateActionBarButtons(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_4

    .line 3966
    :cond_9
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3967
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3968
    iget-object p2, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p2, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    if-eqz p1, :cond_a

    .line 3971
    new-instance p2, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-interface {p1, p2}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_4

    .line 3973
    :cond_a
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_4
    return-void
.end method

.method private synthetic lambda$takePicture$2()V
    .locals 2

    .line 4009
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method private startRecording(ZLjava/lang/Runnable;)V
    .locals 9

    .line 4058
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4061
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda3;

    invoke-direct {v5, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    new-instance v6, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda4;

    invoke-direct {v6, p0, p2, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Ljava/lang/Runnable;Z)V

    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v8}, Lorg/telegram/messenger/camera/CameraController;->recordVideo(Ljava/lang/Object;Ljava/io/File;ZLorg/telegram/messenger/camera/CameraController$VideoTakeCallback;Ljava/lang/Runnable;Lorg/telegram/messenger/camera/CameraController$ICameraView;Z)V

    .line 4155
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    .line 4156
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V

    .line 4157
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lorg/telegram/ui/Stories/recorder/CollageLayoutButton$CollageLayoutListView;->setVisible(ZZ)V

    .line 4158
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    if-ne v1, p2, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {p1, v1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mshowVideoTimer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    .line 4159
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmodeSwitcherView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryModeTabs;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryModeTabs;->switchMode(I)V

    .line 4160
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetrecordControl(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/RecordControl;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    if-ne v1, p2, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Lorg/telegram/ui/Stories/recorder/RecordControl;->startAsVideo(Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method private takePicture(Lorg/telegram/messenger/Utilities$Callback;)V
    .locals 6

    .line 3891
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3892
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/camera/CameraView;->startTakePictureAnimation(Z)V

    .line 3894
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isDual()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraSessionWrapper;->getCurrentFlashMode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "off"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3895
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3896
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->pauseAsTakingPicture()V

    .line 3898
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getTextureView()Landroid/view/TextureView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3899
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3900
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3902
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v4, v1

    goto :goto_2

    :catch_0
    move-exception v3

    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception v4

    .line 3899
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v3

    move v4, v2

    .line 3903
    :goto_1
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 3905
    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-nez v4, :cond_6

    .line 3908
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3909
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 3911
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/camera/CameraView;->getCameraSessionObject()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda5;

    invoke-direct {v5, p0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;Lorg/telegram/messenger/Utilities$Callback;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lorg/telegram/messenger/camera/CameraController;->takePicture(Ljava/io/File;ZLjava/lang/Object;Lorg/telegram/messenger/Utilities$Callback;)Z

    move-result p1

    invoke-static {v0, p1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto/16 :goto_5

    .line 3978
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 3979
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3980
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 3982
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->fromPhotoShoot(Ljava/io/File;I)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v0

    .line 3983
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotId(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)J

    move-result-wide v3

    iput-wide v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botId:J

    .line 3984
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetbotLang(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;->botLang:Ljava/lang/String;

    .line 3985
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->hasLayout()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3986
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 3987
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->push(Lorg/telegram/ui/Stories/recorder/StoryEntry;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3988
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v3

    iget-object v5, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v5}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3989
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3990
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    if-eqz p1, :cond_9

    .line 3992
    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    if-eqz p1, :cond_9

    .line 4000
    invoke-interface {p1, v4}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    .line 4002
    :cond_9
    :goto_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {p1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mupdateActionBarButtons(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    goto :goto_5

    .line 4004
    :cond_a
    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4005
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v3, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 4006
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputfromGallery(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    if-eqz p1, :cond_b

    .line 4009
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-interface {p1, v0}, Lorg/telegram/messenger/Utilities$Callback;->run(Ljava/lang/Object;)V

    goto :goto_5

    .line 4011
    :cond_b
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {p1, v1, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    :goto_5
    return-void
.end method


# virtual methods
.method public canRecordAudio()Z
    .locals 1

    .line 3841
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mrequestAudioPermission(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    return v0
.end method

.method public getMaxVideoDuration()J
    .locals 2

    const-wide/32 v0, 0x2b368

    return-wide v0
.end method

.method public synthetic getMaxVisibleVideoDuration()J
    .locals 2

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate$-CC;->$default$getMaxVisibleVideoDuration(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCheckClick()V
    .locals 5

    .line 3875
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v0

    .line 3876
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 3877
    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Stories/recorder/StoryEntry;

    invoke-static {v1, v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    goto :goto_0

    .line 3879
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getLayout()Lorg/telegram/ui/Stories/recorder/CollageLayout;

    move-result-object v1

    iget-object v4, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcollageLayoutView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Stories/recorder/CollageLayoutView2;->getContent()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->asCollage(Lorg/telegram/ui/Stories/recorder/CollageLayout;Ljava/util/ArrayList;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Lorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3881
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/ui/Stories/recorder/StoryEntry;->isVideo:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;I)V

    .line 3882
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmodeSwitcherView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryModeTabs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3883
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmodeSwitcherView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryModeTabs;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetmode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryModeTabs;->switchMode(I)V

    .line 3885
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputEntry(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/StoryEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryPrivacySelector;->applySaved(ILorg/telegram/ui/Stories/recorder/StoryEntry;)V

    .line 3886
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-virtual {v0, v3, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->navigateTo(IZ)V

    return-void
.end method

.method public onFlipClick()V
    .locals 4

    .line 4212
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetawaitingPlayer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 4215
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4216
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4218
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashModes(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashModes(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4219
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashModes(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashMode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4220
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v2, "camera"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 4221
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "flashMode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4223
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->switchCamera()V

    .line 4224
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$msaveCameraFace(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4225
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4226
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    return-void

    .line 4228
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashOut()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onFlipLongClick()V
    .locals 1

    .line 4234
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4235
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/DualCameraView;->toggleDual()V

    :cond_0
    return-void
.end method

.method public onGalleryClick()V
    .locals 2

    .line 4205
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mrequestGalleryPermission(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4206
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$manimateGalleryListView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    :cond_0
    return-void
.end method

.method public onPhotoShoot()V
    .locals 5

    .line 3846
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetawaitingPlayer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3849
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 3850
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3852
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3854
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 3856
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 3857
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 3859
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 3860
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingPhoto(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 3861
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcheckFrontfaceFlashModes(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 3862
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0, v4}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputisDark(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 3863
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashMode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 3864
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcheckIsDark(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 3866
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3867
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flash(Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_0

    .line 3869
    :cond_4
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->takePicture(Lorg/telegram/messenger/Utilities$Callback;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onVideoDuration(J)V
    .locals 2

    .line 4200
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetvideoTimerView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/VideoTimerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/ui/Stories/recorder/VideoTimerView;->setDuration(JZ)V

    return-void
.end method

.method public onVideoRecordEnd(Z)V
    .locals 3

    .line 4181
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetstoppingTakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4184
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputstoppingTakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4185
    new-instance v0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;)V

    if-eqz p1, :cond_1

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x190

    :goto_0
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoRecordLocked()V
    .locals 3

    .line 4166
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgethintTextView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintTextView;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/R$string;->StoryHintPinchToZoom:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Stories/recorder/HintTextView;->setText(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public onVideoRecordStart(ZLjava/lang/Runnable;)V
    .locals 3

    .line 4019
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgettakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetstoppingTakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetawaitingPlayer(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentPage(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->getCameraSession()Lorg/telegram/messenger/camera/CameraSessionWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 4022
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetdualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4023
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetdualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4025
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4026
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetsavedDualHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4028
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraHint(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/HintView2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Stories/recorder/HintView2;->hide()V

    .line 4029
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputtakingVideo(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4030
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4031
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetqrScanner(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/QRScanner;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/QRScanner;->setPaused(Z)V

    .line 4033
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4035
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4037
    :catch_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 4039
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v2

    invoke-static {v2, v1}, Lorg/telegram/ui/Stories/recorder/StoryEntry;->makeCacheFile(IZ)Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputoutputFile(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Ljava/io/File;)V

    .line 4040
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcheckFrontfaceFlashModes(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 4041
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fputisDark(Lorg/telegram/ui/Stories/recorder/StoryRecorder;Z)V

    .line 4042
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetcameraView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/DualCameraView;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/camera/CameraView;->isFrontface()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetfrontfaceFlashMode(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 4043
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mcheckIsDark(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)V

    .line 4045
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$museDisplayFlashlight(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4046
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetflashViews(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Stories/recorder/FlashViews;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Stories/recorder/FlashViews;->flashIn(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4048
    :cond_6
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->startRecording(ZLjava/lang/Runnable;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onZoom(F)V
    .locals 2

    .line 4241
    iget-object v0, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    invoke-static {v0}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$fgetzoomControlView(Lorg/telegram/ui/Stories/recorder/StoryRecorder;)Lorg/telegram/ui/Components/ZoomControlView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/ui/Components/ZoomControlView;->setZoom(FZ)V

    .line 4242
    iget-object p1, p0, Lorg/telegram/ui/Stories/recorder/StoryRecorder$15;->this$0:Lorg/telegram/ui/Stories/recorder/StoryRecorder;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lorg/telegram/ui/Stories/recorder/StoryRecorder;->-$$Nest$mshowZoomControls(Lorg/telegram/ui/Stories/recorder/StoryRecorder;ZZ)V

    return-void
.end method

.method public synthetic showStoriesDrafts()Z
    .locals 1

    .line 0
    invoke-static {p0}, Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate$-CC;->$default$showStoriesDrafts(Lorg/telegram/ui/Stories/recorder/RecordControl$Delegate;)Z

    move-result v0

    return v0
.end method
