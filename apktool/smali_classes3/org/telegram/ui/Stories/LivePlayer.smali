.class public Lorg/telegram/ui/Stories/LivePlayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field public static recording:Lorg/telegram/ui/Stories/LivePlayer;


# instance fields
.field private call:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field private connectionState:I

.field public final context:Landroid/content/Context;

.field public final currentAccount:I

.field private final currentStreamRequestTimestamp:Ljava/util/HashMap;

.field public destroyed:Z

.field public final dialogId:J

.field private displaySink:Lorg/webrtc/VideoSink;

.field private emptyStream:Z

.field private hasAudioFocus:Z

.field public final inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field private instance:Lorg/telegram/messenger/voip/NativeInstance;

.field private instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field private isFront:Z

.field private isMuted:Z

.field public final isRtmpStream:Z

.field private joined:Z

.field private listeningToAudioFocus:Z

.field public messages:Ljava/util/ArrayList;

.field private mySource:I

.field public outgoing:Z

.field private participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

.field private poll2Runnable:Ljava/lang/Runnable;

.field private pollRunnable:Ljava/lang/Runnable;

.field private polling:Z

.field private polling2RequestId:I

.field private pollingRequestId:I

.field private recordingVideoCapturer:J

.field private final srcs:Ljava/util/HashSet;

.field public final storyId:I

.field public storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

.field public topMessages:Ljava/util/ArrayList;

.field private volume:F


# direct methods
.method public static synthetic $r8$lambda$-FOxmsRidFY4v7ocS1xdTht2jdo(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$0QdTLs94jpzgB6pKnkabWZEwEwU(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$21()V

    return-void
.end method

.method public static synthetic $r8$lambda$0dNr4K9nM99v1lC5zibe2NVqWAY(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$14(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$132Ty-K82ewnLvEpbqdfXMkuVFk(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$end$34(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$403aG1FlZXXzWJQivEPbAq9dVIo(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$4jd8vuc-Ek5L-ff7QkPj8Q_wrDs(Lorg/telegram/ui/Stories/LivePlayer;ILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$10(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7DeRdDB_J75XjRnYcsVuYta_bNA(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$setPolling$26()V

    return-void
.end method

.method public static synthetic $r8$lambda$7nJPpMf7f1M2m39VwHamKWy2Q9I(Lorg/telegram/ui/Stories/LivePlayer;JJII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$18(JJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$9xjKR4KqDKANwSbdTMZDv7EJ2Dw(Lorg/telegram/ui/Stories/LivePlayer;JJII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$20(JJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$AtwHtG1vpi37agmofVdT-AO2jNs(Lorg/telegram/ui/Stories/LivePlayer;IJI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$19(IJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$IHv_UkOb7zvAogJJAt-tKRH2Zdo(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$17(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KjcSE3MXPtF8DYGBdqNvYuzXOS4(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$15()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ld03Dg1aCA7cYSxNisIf48OqXcA(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MYy6EjmUtRHByrlh5F72Fb2f6mY(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$N4nqFS_XECxcX0uAp6yuHQ5TuX0(Lorg/telegram/ui/Stories/LivePlayer;JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$22(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$QlgEAYFrsBfEI8I_MIPUX4PEmRg(Lorg/telegram/ui/Stories/LivePlayer;[IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$12([IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TfpBDZ6lZmej21SGljYrUGD8VsY(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4vXXvt5IG2x_FDakSnGMRHyfH8(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WHNGXoexvaQBtUVf26spAPLuRo0(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll2$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YfTFvy1VfLQAkfGXr9rqjBf4Wps(Lorg/telegram/ui/Stories/LivePlayer;J[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$13(J[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zf-53pjibK-njUHxoDqBPPYdZKM([I[F[Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$_uN914DrwE6DZcOxT3-jwfQlZx0(Lorg/telegram/ui/Stories/LivePlayer;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$23(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$aNm8YXD3rKIb5bTiMacRTEn1Q8U(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll$31()V

    return-void
.end method

.method public static synthetic $r8$lambda$bukYYc3ywdM5fKgcAK_FQ7fIPhQ(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fJ19PODBKQW3vWYevM6Te8fVn2I(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll2$27()V

    return-void
.end method

.method public static synthetic $r8$lambda$fY8GBYzQGR6Rrb3JzV80x37M2pA(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$setPolling$25()V

    return-void
.end method

.method public static synthetic $r8$lambda$iE_k93Xg62hcY8rmibrhXg_glYc(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll2$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iQczI35Fq6nc0q6xvAAvbIbnKDc(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$continueStreaming$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pKlFJXH7vedGr8x-jSWCClbHf_g(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;JJJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p13}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$16(Ljava/lang/String;JJJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$peBGsD0SrqD1ePHQZc8wt5A9-PI(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$phALpIFrf5hAAzr9wWEitutUthQ(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sJUzdzvYZWkoBFaypR2ZPMIY5iQ(Lorg/telegram/ui/Stories/LivePlayer;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$1(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tTBJD6rQmewx07WM4MqPIvVS1_c(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$destroy$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$was7hvfdHstp24BvKX4r26WavSA(Lorg/telegram/ui/Stories/LivePlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$init$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$x-HND7nC8MtTdEVls5Poy7KEcdE(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer;->lambda$poll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetemptyStream(Lorg/telegram/ui/Stories/LivePlayer;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputconnectionState(Lorg/telegram/ui/Stories/LivePlayer;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->connectionState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;JIZLorg/telegram/tgnet/TLRPC$InputGroupCall;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 156
    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stories/LivePlayer;-><init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;JIZLorg/telegram/tgnet/TLRPC$InputGroupCall;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILorg/telegram/tgnet/tl/TL_stories$StoryItem;JIZLorg/telegram/tgnet/TLRPC$InputGroupCall;ZZ)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->isMuted:Z

    .line 79
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    .line 132
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    .line 137
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    .line 142
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    .line 603
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 604
    iput v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->volume:F

    const/4 v0, -0x1

    .line 757
    iput v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollingRequestId:I

    .line 758
    iput v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling2RequestId:I

    .line 170
    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->context:Landroid/content/Context;

    .line 171
    iput p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    .line 172
    iput-object p8, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 173
    iput-object p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->storyItem:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 174
    iput-wide p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    .line 175
    iput p6, p0, Lorg/telegram/ui/Stories/LivePlayer;->storyId:I

    .line 176
    iput-boolean p7, p0, Lorg/telegram/ui/Stories/LivePlayer;->isRtmpStream:Z

    .line 177
    iput-boolean p9, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    .line 178
    iput-boolean p10, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    .line 180
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[LivePlayer] setup to call "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p8, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 192
    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyGroupCallUpdated:I

    invoke-virtual {p1, p0, p2}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    if-eqz p9, :cond_0

    .line 195
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-static {p1, p10}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    .line 198
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->configureAudio()V

    .line 199
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->init()V

    return-void
.end method

.method private configureAudio()V
    .locals 4

    const/4 v0, 0x1

    .line 207
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    const/high16 v1, -0x80000000

    .line 208
    invoke-static {v1}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioStreamType(I)V

    .line 211
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->context:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 212
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->isRtmpStream:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 214
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    return-void

    .line 215
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 216
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v2, 0x2

    .line 218
    invoke-virtual {v1, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 219
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->hasAudioFocus:Z

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->listeningToAudioFocus:Z

    .line 221
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 223
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    :cond_2
    return-void
.end method

.method private createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;
    .locals 8

    .line 738
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 741
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 743
    new-instance v4, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;-><init>()V

    aput-object v4, v1, v3

    .line 744
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 745
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->semantics:Ljava/lang/String;

    .line 746
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    move v5, v2

    .line 747
    :goto_1
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 748
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getCallStreamDatacenterId()I
    .locals 3

    .line 730
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    const v1, 0x7fffffff

    if-nez v0, :cond_0

    return v1

    .line 732
    :cond_0
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    .line 733
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    return v0

    :cond_1
    return v1
.end method

.method private init()V
    .locals 13

    .line 233
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "live_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    new-instance v6, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    new-instance v7, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda3;

    invoke-direct {v7}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda3;-><init>()V

    new-instance v8, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    new-instance v9, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda5;

    invoke-direct {v9, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    new-instance v10, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda6;

    invoke-direct {v10, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    new-instance v11, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda7;

    invoke-direct {v11, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    const/4 v12, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 235
    invoke-static/range {v1 .. v12}, Lorg/telegram/messenger/voip/NativeInstance;->makeGroup(Ljava/lang/String;JZZLorg/telegram/messenger/voip/NativeInstance$PayloadCallback;Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;Lorg/telegram/messenger/voip/NativeInstance$VideoSourcesCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestCurrentTimeCallback;Z)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 579
    new-instance v1, Lorg/telegram/ui/Stories/LivePlayer$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Stories/LivePlayer$2;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/messenger/voip/NativeInstance;->resetGroupInstance(ZZ)V

    return-void
.end method

.method private synthetic lambda$continueStreaming$0(Ljava/lang/Boolean;)V
    .locals 5

    .line 107
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    .line 111
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    .line 112
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setPolling(Z)V

    .line 115
    sput-object p0, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    .line 117
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    .line 118
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v1, :cond_2

    .line 119
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-static {v2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v3, v2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 120
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    .line 121
    iput-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 123
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->configureAudio()V

    .line 124
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->init()V

    .line 126
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    iget-object v3, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v3, p1, v0

    invoke-virtual {v1, v2, p1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$destroy$24(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 682
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    .line 683
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$end$34(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    .line 925
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 926
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 927
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 928
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 929
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 931
    const-string p1, "GROUPCALL_ALREADY_DISCARDED"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 932
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$init$1(Ljava/util/ArrayList;)V
    .locals 8

    .line 261
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;

    .line 262
    iget v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->liveStoryMessageUpdate:I

    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v1

    const/4 v6, 0x1

    aput-object v3, v7, v6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v6, 0x2

    aput-object v3, v7, v6

    invoke-virtual {v4, v5, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$10(ILjava/lang/String;)V
    .locals 2

    .line 241
    iput p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->mySource:I

    .line 243
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;-><init>()V

    .line 244
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->muted:Z

    xor-int/lit8 v0, v0, 0x1

    .line 245
    iput-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->video_stopped:Z

    .line 246
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 247
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 248
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 249
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 250
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v0

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 251
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$init$12([IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8

    .line 432
    instance-of p5, p4, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;

    if-eqz p5, :cond_4

    .line 433
    check-cast p4, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;

    .line 434
    iget p5, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p4, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 435
    iget p5, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p5

    iget-object v0, p4, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->chats:Ljava/util/ArrayList;

    invoke-virtual {p5, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 437
    iget-object p5, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez p5, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    iget p5, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p5}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p5

    invoke-virtual {p5}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    .line 441
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 442
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 443
    aget v2, p1, v0

    .line 445
    iget-object v3, p4, Lorg/telegram/tgnet/tl/TL_phone$groupParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :cond_1
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 446
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-ne v7, v2, :cond_1

    .line 447
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    invoke-direct {v3, v6, v2}, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 453
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    new-array p4, v1, [Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    invoke-virtual {p1, p2, p3, p4}, Lorg/telegram/messenger/voip/NativeInstance;->onMediaDescriptionAvailable(J[Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$init$13(J[I)V
    .locals 4

    .line 421
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez v0, :cond_0

    return-void

    .line 425
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;-><init>()V

    .line 426
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 427
    const-string v1, ""

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->offset:Ljava/lang/String;

    const/4 v1, 0x0

    .line 428
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_1

    .line 429
    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupParticipants;->sources:Ljava/util/ArrayList;

    aget v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p3, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/ui/Stories/LivePlayer;[IJ)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$init$14(Ljava/lang/String;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$init$15()V
    .locals 3

    .line 490
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    .line 491
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 492
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 493
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 495
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->init()V

    return-void
.end method

.method private synthetic lambda$init$16(Ljava/lang/String;JJJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v2, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v1, p11

    .line 477
    iget-boolean v4, v0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-nez v4, :cond_9

    iget-object v4, v0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 478
    :cond_0
    new-instance v4, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda27;

    move-object/from16 v5, p1

    invoke-direct {v4, v0, v5}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 480
    const-string/jumbo v4, "}: "

    const-string v5, ", video_quality = "

    const-string v6, ", video_channel = "

    const-string v7, ""

    const-string v10, ", scale = 1"

    const-string v13, "ms getFile{time_ms="

    const-string v14, "[LivePlayer] received in "

    if-eqz p10, :cond_2

    .line 481
    move-object/from16 v1, p10

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 482
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x1f4

    sub-long v11, v16, p2

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v11, p6, v18

    if-nez v11, :cond_1

    move-object v7, v10

    :cond_1
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v4}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 483
    iget-object v4, v0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    move-object v5, v4

    iget-object v4, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v1

    move-object v6, v5

    move v5, v1

    move-object v1, v6

    move-wide/from16 v6, p12

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    return-void

    :cond_2
    const-wide/16 v18, 0x1f4

    .line 485
    const-string v2, "GROUPCALL_INVALID"

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 486
    iget-object v1, v0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-wide/from16 v2, p4

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v6, p12

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    .line 487
    new-instance v1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    move-wide/from16 v2, p4

    move/from16 v8, p8

    move/from16 v9, p9

    .line 488
    const-string v11, "GROUPCALL_JOIN_MISSING"

    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 489
    new-instance v11, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda28;

    invoke-direct {v11, v0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 497
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, p2

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v2, p6, v18

    if-nez v2, :cond_4

    move-object v7, v10

    :cond_4
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => rejoining"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 500
    :cond_5
    const-string v11, "TIME_TOO_BIG"

    iget-object v12, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v12, "FLOOD_WAIT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    :cond_6
    const/4 v11, -0x1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v11, 0x0

    .line 505
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v14, v14, p2

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v13, p6, v18

    if-nez v13, :cond_8

    move-object v7, v10

    :cond_8
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 506
    iget-object v1, v0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v4, 0x0

    move-wide/from16 v6, p12

    move v5, v11

    invoke-virtual/range {v1 .. v9}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    :cond_9
    :goto_2
    return-void
.end method

.method private synthetic lambda$init$17(Ljava/lang/String;I)V
    .locals 1

    .line 510
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$init$18(JJII)V
    .locals 13

    move/from16 v9, p5

    move/from16 v10, p6

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LivePlayer] sending getFile time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1f4

    cmp-long v1, p3, v1

    const-string v2, ""

    if-nez v1, :cond_1

    const-string v3, ", scale = 1"

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", video_channel = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", video_quality = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 461
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    const/high16 v0, 0x20000

    .line 462
    iput v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 463
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;-><init>()V

    .line 464
    iget-object v5, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 465
    iput-wide p1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    const/4 v5, 0x1

    if-nez v1, :cond_2

    .line 467
    iput v5, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    :cond_2
    if-eqz v9, :cond_3

    .line 470
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 471
    iput v9, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    .line 472
    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    .line 474
    :cond_3
    iput-object v0, v11, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v9, :cond_4

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 476
    :goto_2
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v12

    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda13;

    move-object v1, p0

    move-wide v5, p1

    move-wide/from16 v7, p3

    invoke-direct/range {v0 .. v10}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;JJJII)V

    const/4 p1, 0x2

    .line 509
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallStreamDatacenterId()I

    move-result p2

    const/4 v3, 0x2

    move/from16 p5, p1

    move/from16 p6, p2

    move-object/from16 p3, v0

    move/from16 p4, v3

    move-object p2, v11

    move-object p1, v12

    .line 476
    invoke-virtual/range {p1 .. p6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    move-result p1

    .line 510
    new-instance p2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, v2, p1}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Ljava/lang/String;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$init$19(IJI)V
    .locals 1

    if-nez p1, :cond_0

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 516
    :goto_0
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 518
    iget p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 519
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private synthetic lambda$init$2(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 292
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz p2, :cond_0

    .line 293
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$20(JJII)V
    .locals 6

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[LivePlayer] cancelling getFile time_ms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x1f4

    cmp-long p3, p3, v1

    const-string p4, ""

    if-nez p3, :cond_0

    const-string p3, ", scale = 1"

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ", video_channel = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", video_quality = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    :cond_1
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 514
    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda11;

    move-object v1, p0

    move-wide v3, p1

    move v2, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/ui/Stories/LivePlayer;IJI)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$init$21()V
    .locals 1

    const/4 v0, 0x1

    .line 542
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setEmptyStream(Z)V

    return-void
.end method

.method private synthetic lambda$init$22(JLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 8

    const-wide/16 p5, 0x0

    if-nez p4, :cond_4

    .line 533
    iget-object p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p4, :cond_5

    iget-boolean p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz p4, :cond_0

    goto/16 :goto_1

    .line 536
    :cond_0
    check-cast p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;

    .line 537
    iget-object p4, p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_1

    .line 538
    iget-object p4, p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    iget-wide p5, p4, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->last_timestamp_ms:J

    .line 540
    :cond_1
    iget-object p4, p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 541
    new-instance p4, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda26;

    invoke-direct {p4, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 545
    :cond_2
    iget-object p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez p4, :cond_4

    iget-object p4, p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_4

    .line 546
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    iput-object p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 547
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 548
    iget-object p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 549
    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;-><init>()V

    .line 550
    const-string v1, "SIM"

    iput-object v1, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    .line 551
    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    check-cast v2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    .line 552
    iget-object v3, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget v2, v2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->channel:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_3
    iget-object p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    iget-object p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p4, p3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    const-string/jumbo v0, "unified"

    iput-object v0, p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 556
    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 558
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 561
    invoke-direct {p0, p4}, Lorg/telegram/ui/Stories/LivePlayer;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object p3

    invoke-direct {p0, p3}, Lorg/telegram/ui/Stories/LivePlayer;->pushSources([Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-object p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 563
    invoke-static {p3}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v6

    const/4 v2, 0x2

    .line 558
    const-string/jumbo v3, "unified"

    invoke-virtual/range {v1 .. v7}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;J)J

    .line 567
    :cond_4
    iget-object p3, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p3, :cond_5

    .line 568
    invoke-virtual {p3, p1, p2, p5, p6}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_5
    :goto_1
    return-void
.end method

.method private synthetic lambda$init$23(J)V
    .locals 7

    .line 524
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_1

    .line 525
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;-><init>()V

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 527
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez v0, :cond_0

    goto :goto_0

    .line 530
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/ui/Stories/LivePlayer;J)V

    const/4 v5, 0x2

    .line 570
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallStreamDatacenterId()I

    move-result v6

    const/high16 v4, 0x10000

    .line 530
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    return-void

    .line 572
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_2

    .line 573
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$init$3()V
    .locals 1

    const/4 v0, 0x1

    .line 328
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setEmptyStream(Z)V

    return-void
.end method

.method private synthetic lambda$init$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 7

    if-nez p2, :cond_4

    .line 319
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz p2, :cond_0

    goto/16 :goto_1

    .line 322
    :cond_0
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;

    .line 323
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    .line 324
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    iget-wide v0, p2, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->last_timestamp_ms:J

    .line 326
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    new-instance p2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda31;

    invoke-direct {p2, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 331
    :cond_2
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez p2, :cond_4

    .line 332
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipant;-><init>()V

    iput-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 333
    iget p4, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-wide v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object p4

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 334
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    new-instance p4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    invoke-direct {p4}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;-><init>()V

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    .line 335
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;-><init>()V

    .line 336
    const-string p4, "SIM"

    iput-object p4, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    .line 337
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    :goto_0
    if-ge p3, p4, :cond_3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    .line 338
    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    iget v0, v0, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->channel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 340
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    const-string/jumbo p3, "unified"

    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 342
    iput-object p3, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 347
    invoke-direct {p0, p2}, Lorg/telegram/ui/Stories/LivePlayer;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->pushSources([Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 349
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    const/4 v1, 0x2

    .line 344
    const-string/jumbo v2, "unified"

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;J)J

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 1

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setEmptyStream(Z)V

    return-void
.end method

.method private synthetic lambda$init$6(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    .line 359
    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz p2, :cond_4

    .line 360
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 362
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 363
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 365
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz p2, :cond_0

    goto :goto_2

    .line 368
    :cond_0
    :goto_0
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_2

    .line 369
    iget-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p2}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_1

    .line 370
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 375
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p1, :cond_3

    .line 376
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 379
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->pushSources([Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 381
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    const/4 v1, 0x2

    .line 376
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;J)J

    return-void

    .line 384
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda30;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$init$7()V
    .locals 1

    const/4 v0, 0x1

    .line 401
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->setEmptyStream(Z)V

    return-void
.end method

.method private synthetic lambda$init$8()V
    .locals 6

    .line 407
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 408
    invoke-direct {p0, v3}, Lorg/telegram/ui/Stories/LivePlayer;->setPolling(Z)V

    return-void
.end method

.method private synthetic lambda$init$9(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 12

    .line 252
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_e

    .line 253
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 254
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 255
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p2, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 256
    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {p2, v0}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 257
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_0

    .line 259
    :cond_0
    const-class v0, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallMessage;

    invoke-static {p2, v0}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 260
    new-instance v1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Ljava/util/ArrayList;)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 265
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p2, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 267
    :goto_1
    const-class v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    invoke-static {p2, v3}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    :cond_2
    if-ge v5, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 268
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v7, v7, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    move v7, v2

    .line 269
    :goto_2
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 270
    iget-object v8, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 271
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iput-object v6, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 275
    :cond_4
    :goto_3
    iget-object v6, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v6, :cond_2

    .line 280
    :cond_5
    const-class v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    invoke-static {p2, v3}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v2, v3, :cond_6

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 281
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    goto :goto_4

    .line 284
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LivePlayer] joined call "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 286
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->joined:Z

    .line 288
    iget-boolean p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-nez p2, :cond_d

    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez p2, :cond_7

    goto/16 :goto_7

    :cond_7
    if-eqz v4, :cond_8

    .line 300
    iget-object p1, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    const-string/jumbo p2, "{\"stream\":true"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 302
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-object p2, v4, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    goto :goto_5

    .line 305
    :cond_8
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/voip/NativeInstance;->prepareForStream(Z)V

    .line 307
    :goto_5
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz p1, :cond_9

    .line 308
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-boolean p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->isMuted:Z

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 309
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->activateVideoCapturer(J)V

    .line 310
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-wide v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    goto :goto_6

    .line 312
    :cond_9
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez p1, :cond_b

    if-eqz v0, :cond_a

    .line 314
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;-><init>()V

    .line 315
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object p1, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 316
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    const/4 v5, 0x2

    .line 353
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallStreamDatacenterId()I

    move-result v6

    const/high16 v4, 0x10000

    .line 316
    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    goto :goto_6

    .line 355
    :cond_a
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 356
    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/16 p2, 0xa

    .line 357
    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 358
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_6

    .line 391
    :cond_b
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p1, :cond_c

    .line 392
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->endpoint:Ljava/lang/String;

    .line 395
    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/telegram/ui/Stories/LivePlayer;->pushSources([Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 397
    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v5

    const/4 v1, 0x2

    .line 392
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;J)J

    goto :goto_6

    .line 400
    :cond_c
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda23;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 406
    :goto_6
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 289
    :cond_d
    :goto_7
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;-><init>()V

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v0, p2, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 291
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;)V

    invoke-virtual {v0, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_e
    if-eqz p2, :cond_f

    .line 411
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 412
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_f
    return-void
.end method

.method private synthetic lambda$poll$30()V
    .locals 3

    .line 857
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    .line 858
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 859
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 862
    :cond_0
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->init()V

    return-void
.end method

.method private synthetic lambda$poll$31()V
    .locals 0

    .line 871
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->poll()V

    return-void
.end method

.method private synthetic lambda$poll$32(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 833
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 835
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_2

    .line 836
    check-cast p1, Lorg/telegram/tgnet/Vector;

    .line 837
    invoke-virtual {p1}, Lorg/telegram/tgnet/Vector;->toIntArray()Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->mySource:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 838
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p1, :cond_1

    .line 839
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-static {p2}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 840
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    const/4 p1, 0x0

    .line 841
    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 843
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->init()V

    goto :goto_0

    .line 845
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_3

    .line 846
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 847
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 848
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 850
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 852
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_5

    .line 854
    const-string p1, "GROUPCALL_JOIN_MISSING"

    iget-object v0, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 855
    const-string p1, "[LivePlayer] received GROUPCALL_JOIN_MISSING on checkGroupCall => rejoining"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 856
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda33;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 864
    :cond_4
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 865
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 869
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling:Z

    if-eqz p1, :cond_7

    .line 870
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 871
    :cond_6
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_7
    :goto_1
    return-void
.end method

.method private synthetic lambda$poll$33(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 832
    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda32;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$poll2$27()V
    .locals 0

    .line 820
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->poll2()V

    return-void
.end method

.method private synthetic lambda$poll2$28(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 802
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 804
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_1

    .line 805
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 806
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 807
    iget p2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 809
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 811
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-virtual {p1, p2, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 813
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 814
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 818
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling:Z

    if-eqz p1, :cond_4

    .line 819
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 820
    :cond_3
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->pollingGroupCallInterval()I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$poll2$29(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 801
    new-instance v0, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/ui/Stories/LivePlayer;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setPolling$25()V
    .locals 0

    .line 786
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->poll()V

    return-void
.end method

.method private synthetic lambda$setPolling$26()V
    .locals 0

    .line 789
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->poll2()V

    return-void
.end method

.method private poll()V
    .locals 3

    const/4 v0, 0x0

    .line 826
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    .line 827
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 829
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;-><init>()V

    .line 830
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 831
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->sources:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->mySource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private poll2()V
    .locals 3

    const/4 v0, 0x0

    .line 796
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    .line 797
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 799
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 800
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 801
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda18;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private pollingGroupCallInterval()I
    .locals 1

    .line 793
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1388

    return v0

    :cond_0
    const/16 v0, 0x4e20

    return v0
.end method

.method private pushSources([Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-nez p1, :cond_0

    move v2, v0

    goto :goto_1

    .line 622
    :cond_0
    array-length v2, p1

    :goto_1
    if-ge v1, v2, :cond_2

    move v2, v0

    .line 623
    :goto_2
    aget-object v3, p1, v1

    iget-object v3, v3, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 624
    iget-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 627
    :cond_2
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->updateVolumes()V

    return-object p1
.end method

.method private setPolling(Z)V
    .locals 3

    .line 760
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 761
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 763
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling:Z

    if-nez p1, :cond_6

    .line 766
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollingRequestId:I

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 767
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollingRequestId:I

    invoke-virtual {p1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 768
    iput v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollingRequestId:I

    .line 770
    :cond_2
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling2RequestId:I

    if-eq p1, v1, :cond_3

    .line 771
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling2RequestId:I

    invoke-virtual {p1, v2, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 772
    iput v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->polling2RequestId:I

    .line 774
    :cond_3
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 775
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 776
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    .line 778
    :cond_4
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_5

    .line 779
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 780
    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    :cond_5
    :goto_0
    return-void

    .line 785
    :cond_6
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 786
    :cond_7
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda15;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->pollRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 788
    iget-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 789
    :cond_8
    new-instance p1, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda16;

    invoke-direct {p1, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->poll2Runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->pollingGroupCallInterval()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateVolumes()V
    .locals 5

    .line 616
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez v0, :cond_0

    goto :goto_1

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 618
    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    iget v3, p0, Lorg/telegram/ui/Stories/LivePlayer;->volume:F

    float-to-double v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public areMessagesEnabled()Z
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 721
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->messages_enabled:Z

    return v0
.end method

.method public canContinueEmptyStream()Z
    .locals 2

    .line 92
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public commentsDisabled()Z
    .locals 2

    .line 892
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 893
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 894
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->messages_enabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public continueStreaming()V
    .locals 4

    .line 104
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    sget v0, Lorg/telegram/messenger/R$raw;->permission_request_camera:I

    sget v1, Lorg/telegram/messenger/R$string;->PermissionNoCameraMicVideo:I

    const-string v2, "android.permission.CAMERA"

    const-string v3, "android.permission.RECORD_AUDIO"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda9;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-static {v0, v1, v2, v3}, Lorg/telegram/ui/Components/PermissionRequest;->ensureAllPermissions(II[Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    return-void
.end method

.method public destroy()V
    .locals 6

    .line 670
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 671
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    const/4 v1, 0x0

    .line 672
    invoke-direct {p0, v1}, Lorg/telegram/ui/Stories/LivePlayer;->setPolling(Z)V

    .line 674
    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->storyGroupCallUpdated:I

    invoke-virtual {v2, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 676
    const-string v2, "[LivePlayer] destroyed"

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 678
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->joined:Z

    if-eqz v2, :cond_1

    .line 679
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;-><init>()V

    .line 680
    iget-object v3, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 681
    iget v3, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 688
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 689
    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    .line 690
    iget-wide v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    invoke-static {v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 692
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v2, :cond_3

    .line 693
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-static {v4}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v5, v4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 694
    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->srcs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 695
    iput-object v3, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    .line 698
    :cond_3
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->listeningToAudioFocus:Z

    if-eqz v2, :cond_4

    .line 699
    iget-object v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->context:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 700
    invoke-virtual {v2, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 701
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->hasAudioFocus:Z

    .line 702
    iput-boolean v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->listeningToAudioFocus:Z

    .line 704
    :cond_4
    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v2, :cond_5

    .line 705
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v2

    .line 706
    invoke-virtual {v2, v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 709
    :cond_5
    sget-object v2, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    if-ne v2, p0, :cond_6

    .line 710
    sput-object v3, Lorg/telegram/ui/Stories/LivePlayer;->recording:Lorg/telegram/ui/Stories/LivePlayer;

    .line 711
    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 4

    .line 642
    sget p2, Lorg/telegram/messenger/NotificationCenter;->storyGroupCallUpdated:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 643
    aget-object p2, p3, p1

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p2, 0x1

    .line 644
    aget-object p3, p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 645
    iget-wide v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {v0, p3}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 648
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    iget-wide v2, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p3, p2, p1

    invoke-virtual {v0, v1, p2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public end()V
    .locals 3

    .line 921
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    return-void

    .line 922
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;-><init>()V

    .line 923
    iget-object v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 924
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Stories/LivePlayer$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/ui/Stories/LivePlayer;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 936
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->destroy()V

    return-void
.end method

.method public equals(Lorg/telegram/tgnet/TLRPC$InputGroupCall;)Z
    .locals 4

    .line 663
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eq v0, p1, :cond_1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public getCallId()J
    .locals 2

    .line 882
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_0

    .line 883
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    return-wide v0

    .line 885
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->inputCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_1

    .line 886
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDefaultSendAs()Lorg/telegram/tgnet/TLRPC$Peer;
    .locals 1

    .line 940
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 941
    :cond_0
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    return-object v0
.end method

.method public getDisplaySink()Lorg/webrtc/VideoSink;
    .locals 1

    .line 633
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->displaySink:Lorg/webrtc/VideoSink;

    return-object v0
.end method

.method public getSendPaidMessagesStars()J
    .locals 2

    .line 725
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 726
    :cond_0
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->send_paid_messages_stars:J

    return-wide v0
.end method

.method public getWatchersCount()I
    .locals 2

    .line 716
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    :goto_0
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isAdmin()Z
    .locals 1

    const/16 v0, 0xe

    .line 907
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Stories/LivePlayer;->isAdmin(I)Z

    move-result v0

    return v0
.end method

.method public isAdmin(I)Z
    .locals 6

    .line 911
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->isCreator()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 912
    :cond_0
    iget-wide v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 913
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 915
    :cond_2
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    .line 916
    invoke-static {v0, p1}, Lorg/telegram/messenger/ChatObject;->canUserDoAction(Lorg/telegram/tgnet/TLRPC$Chat;I)Z

    move-result p1

    return p1
.end method

.method public isConnected()Z
    .locals 3

    .line 596
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->connectionState:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v2
.end method

.method public isCreator()Z
    .locals 1

    .line 903
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->creator:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEmptyStream()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->isMuted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 229
    :goto_0
    iput-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->hasAudioFocus:Z

    return-void
.end method

.method public sendAsDisabled()Z
    .locals 1

    .line 898
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 899
    :cond_0
    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->messages_enabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setDefaultSendAs(Lorg/telegram/tgnet/TLRPC$Peer;)V
    .locals 4

    .line 945
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_0

    return-void

    .line 946
    :cond_0
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/high16 v3, 0x200000

    invoke-static {v1, v3, v2}, Lorg/telegram/tgnet/TLObject;->setFlag(IIZ)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->flags:I

    .line 947
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->default_send_as:Lorg/telegram/tgnet/TLRPC$Peer;

    return-void
.end method

.method public setDisplaySink(Lorg/webrtc/VideoSink;)V
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->displaySink:Lorg/webrtc/VideoSink;

    if-ne v0, p1, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instanceSink:Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iput-object p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->displaySink:Lorg/webrtc/VideoSink;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setEmptyStream(Z)V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->destroyed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    if-ne v0, p1, :cond_1

    goto :goto_0

    .line 83
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 85
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->emptyStream:Z

    .line 86
    iget p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->liveStoryUpdated:I

    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->getCallId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public setMuted(Z)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->isMuted:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->isMuted:Z

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->instance:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 606
    invoke-static {p1}, Lorg/telegram/messenger/Utilities;->clamp01(F)F

    move-result p1

    .line 607
    invoke-static {p0}, Lorg/telegram/ui/Stories/LiveStoryPipOverlay;->isVisible(Lorg/telegram/ui/Stories/LivePlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 609
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 610
    iget v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->volume:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 611
    :cond_1
    iput p1, p0, Lorg/telegram/ui/Stories/LivePlayer;->volume:F

    .line 612
    invoke-direct {p0}, Lorg/telegram/ui/Stories/LivePlayer;->updateVolumes()V

    return-void
.end method

.method public storyDeleted()V
    .locals 4

    .line 654
    new-instance v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;-><init>()V

    .line 655
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->dialogId:J

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getPeer(J)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 656
    new-instance v1, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_stories$TL_storyItemDeleted;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;->story:Lorg/telegram/tgnet/tl/TL_stories$StoryItem;

    .line 657
    iget v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->storyId:I

    iput v2, v1, Lorg/telegram/tgnet/tl/TL_stories$StoryItem;->id:I

    .line 658
    iget v1, p0, Lorg/telegram/ui/Stories/LivePlayer;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesController;->getStoriesController()Lorg/telegram/ui/Stories/StoriesController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Stories/StoriesController;->processUpdate(Lorg/telegram/tgnet/tl/TL_stories$TL_updateStory;)V

    .line 659
    invoke-virtual {p0}, Lorg/telegram/ui/Stories/LivePlayer;->destroy()V

    return-void
.end method

.method public switchCamera()V
    .locals 3

    .line 877
    iget-boolean v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->outgoing:Z

    if-nez v0, :cond_0

    return-void

    .line 878
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Stories/LivePlayer;->recordingVideoCapturer:J

    iget-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/ui/Stories/LivePlayer;->isFront:Z

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->switchCameraCapturer(JZ)V

    return-void
.end method
