.class Lorg/telegram/ui/Components/ChatActivityEnterView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .locals 0

    .line 886
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 889
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_8

    .line 892
    :cond_0
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onPreAudioVideoRecord()V

    .line 893
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputcalledRecordRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 894
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordAudioVideoRunnableStarted(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 895
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 896
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    .line 897
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetslideText(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$SlideTextView;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 899
    :cond_1
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputaudioToSendPath(Lorg/telegram/ui/Components/ChatActivityEnterView;Ljava/lang/String;)V

    .line 900
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputaudioToSend(Lorg/telegram/ui/Components/ChatActivityEnterView;Lorg/telegram/tgnet/TLRPC$TL_document;)V

    .line 901
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->isInVideoMode()Z

    move-result v1

    const-string v5, "android.permission.RECORD_AUDIO"

    if-eqz v1, :cond_b

    .line 903
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 904
    :goto_0
    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v4

    const-string v6, "android.permission.CAMERA"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v7, 0x2

    if-eqz v1, :cond_7

    if-nez v4, :cond_4

    goto :goto_3

    .line 919
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/camera/CameraController;->isCameraInitied()Z

    move-result v1

    if-nez v1, :cond_5

    .line 920
    invoke-static {}, Lorg/telegram/messenger/camera/CameraController;->getInstance()Lorg/telegram/messenger/camera/CameraController;

    move-result-object v1

    iget-object v4, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/camera/CameraController;->initCamera(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 922
    :cond_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetonFinishInitCameraRunnable(Lorg/telegram/ui/Components/ChatActivityEnterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 924
    :goto_2
    sget v1, Lcom/exteragram/messenger/ExteraConfig;->videoMessagesCamera:I

    if-eq v1, v7, :cond_12

    .line 925
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 926
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 927
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    .line 928
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 929
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves(ZZ)V

    .line 931
    :cond_6
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 932
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->reset()V

    return-void

    :cond_7
    :goto_3
    if-nez v1, :cond_8

    if-nez v4, :cond_8

    goto :goto_4

    :cond_8
    move v7, v2

    .line 906
    :goto_4
    new-array v7, v7, [Ljava/lang/String;

    if-nez v1, :cond_9

    if-nez v4, :cond_9

    .line 908
    aput-object v5, v7, v3

    .line 909
    aput-object v6, v7, v2

    goto :goto_5

    :cond_9
    if-nez v1, :cond_a

    .line 911
    aput-object v5, v7, v3

    goto :goto_5

    .line 913
    :cond_a
    aput-object v6, v7, v3

    .line 915
    :goto_5
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x96

    invoke-virtual {v1, v7, v2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 937
    :cond_b
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_c

    .line 938
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentActivity(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    return-void

    .line 942
    :cond_c
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->needStartRecordAudio(I)V

    .line 943
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-static {v1, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputstartedDraggingX(Lorg/telegram/ui/Components/ChatActivityEnterView;F)V

    .line 944
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdelegate(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->getReplyToStory()Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    move-result-object v1

    move-object v11, v1

    goto :goto_6

    :cond_d
    move-object v11, v4

    .line 945
    :goto_6
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v5

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetcurrentAccount(Lorg/telegram/ui/Components/ChatActivityEnterView;)I

    move-result v6

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetdialog_id(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v7

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetreplyingMessageObject(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v9

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$mgetThreadMessage(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v10

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    iget v12, v1, Lorg/telegram/ui/Components/ChatActivityEnterView;->recordingGuid:I

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    iget-object v4, v1, Lorg/telegram/ui/ChatActivity;->quickReplyShortcut:Ljava/lang/String;

    :cond_e
    move-object v14, v4

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetparentFragment(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getQuickReplyId()I

    move-result v1

    move v15, v1

    goto :goto_7

    :cond_f
    move v15, v3

    :goto_7
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMonoForumPeerId()J

    move-result-wide v16

    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getSendMessageSuggestionParams()Lorg/telegram/messenger/MessageSuggestionParams;

    move-result-object v18

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v18}, Lorg/telegram/messenger/MediaController;->startRecording(IJLorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/tl/TL_stories$StoryItem;IZLjava/lang/String;IJLorg/telegram/messenger/MessageSuggestionParams;)V

    .line 946
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fputrecordingAudioVideo(Lorg/telegram/ui/Components/ChatActivityEnterView;Z)V

    .line 947
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v1, v3, v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->updateRecordInterface(IZ)V

    .line 948
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 949
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordTimerView(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView$TimerView;->start(J)V

    .line 951
    :cond_10
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordDot(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 952
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordDot(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;->-$$Nest$fputenterAnimation(Lorg/telegram/ui/Components/ChatActivityEnterView$RecordDot;Z)V

    .line 954
    :cond_11
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetaudioVideoButtonContainer(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 955
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 956
    iget-object v1, v0, Lorg/telegram/ui/Components/ChatActivityEnterView$8;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->-$$Nest$fgetrecordCircle(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->showWaves(ZZ)V

    :cond_12
    :goto_8
    return-void
.end method
