.class final Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplayer2/text/TextOutput;
.implements Lcom/google/android/exoplayer2/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplayer2/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplayer2/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplayer2/StreamVolumeManager$Listener;
.implements Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;


# direct methods
.method public static synthetic $r8$lambda$-3vmozDMWNItTa66VvCLeYGKAAA(Ljava/util/List;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2939
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$-kS1vucNZQK7aIMgllLqj3VWCQ0(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onSurfaceTextureAvailable$6(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ZqjH8teb5hUV2HTJRkYSAf2ZeI(Lcom/google/android/exoplayer2/metadata/Metadata;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2961
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8TMR1c1rbmfgZ4RLsL_A_7BvGfY(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onMetadata$4(Lcom/google/android/exoplayer2/Player$Listener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$G1SfFRjSg7pEBQouFtZAtPnjh74(IZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3113
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$OJbj5v29Kon1ai5QFW9cJA_kpZk(Lcom/google/android/exoplayer2/text/CueGroup;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2945
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PfG0gXa1XZlAz7iIXjnivVRaeCc(ZLcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2923
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YEbUg7uIrqeJtiqXCsRnMS4IBBA(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onSurfaceTextureUpdated$9(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fIvnSnfnZlKAOopwv5_8WCVdjEI(Lcom/google/android/exoplayer2/DeviceInfo;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 3105
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplayer2/DeviceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$niZknpe7usDO5XtJl7v6Yq-SAmA(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onSurfaceTextureDestroyed$8(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oa40AwJkhMw5EmkFQNDJW0CwAzo(Lcom/google/android/exoplayer2/video/VideoSize;Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 0

    .line 2838
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rhBLfH4uZran4HtWNjPiHNGmaKI(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->lambda$onSurfaceTextureSizeChanged$7(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V
    .locals 0

    .line 2794
    iput-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/ExoPlayerImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method private synthetic lambda$onMetadata$4(Lcom/google/android/exoplayer2/Player$Listener;)V
    .locals 1

    .line 2959
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetmediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplayer2/MediaMetadata;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureAvailable$6(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 2993
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureAvailableInternal(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureDestroyed$8(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 3030
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureDestroyedInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureSizeChanged$7(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 3009
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureSizeChangedInternal(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureUpdated$9(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 3047
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureUpdatedInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 3

    .line 3082
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 3083
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    .line 3084
    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$smgetPlayWhenReadyChangeReason(ZI)I

    move-result v2

    .line 3083
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mupdatePlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 4

    .line 3091
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mupdatePlayWhenReady(Lcom/google/android/exoplayer2/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 1

    .line 2933
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 2882
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 1

    .line 2905
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 2910
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2911
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputaudioFormat(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)V

    .line 2912
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputaudioDecoderCounters(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 2875
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputaudioDecoderCounters(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2876
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplayer2/audio/AudioRendererEventListener;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1

    .line 2889
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputaudioFormat(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)V

    .line 2890
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 1

    .line 2895
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 1

    .line 2928
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 7

    .line 2900
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplayer2/text/CueGroup;)V
    .locals 2

    .line 2944
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputcurrentCueGroup(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/text/CueGroup;)V

    .line 2945
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/exoplayer2/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2

    .line 2939
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    .line 2831
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public synthetic onExperimentalOffloadedPlayback(Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener$-CC;->$default$onExperimentalOffloadedPlayback(Lcom/google/android/exoplayer2/ExoPlayer$AudioOffloadListener;Z)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    .line 3120
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mupdateWakeAndWifiLock(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 3

    .line 2952
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetstaticAndDynamicMediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    .line 2953
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata;->buildUpon()Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->populateFromMetadata(Lcom/google/android/exoplayer2/metadata/Metadata;)Lcom/google/android/exoplayer2/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/MediaMetadata$Builder;->build()Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputstaticAndDynamicMediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 2954
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mbuildUpdatedMediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v0

    .line 2955
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetmediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2956
    iget-object v1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputmediaMetadata(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/MediaMetadata;)V

    .line 2957
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda4;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2961
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda5;-><init>(Lcom/google/android/exoplayer2/metadata/Metadata;)V

    const/16 p1, 0x1c

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->queueEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    .line 2962
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    .line 2843
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    .line 2844
    iget-object p2, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetvideoOutput(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 2845
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object p1

    new-instance p2, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda10;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda10;-><init>()V

    const/16 p3, 0x1a

    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 2

    .line 2917
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetskipSilenceEnabled(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2920
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputskipSilenceEnabled(Lcom/google/android/exoplayer2/ExoPlayerImpl;Z)V

    .line 2921
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda12;-><init>(Z)V

    const/16 p1, 0x17

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 2

    .line 3101
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetstreamVolumeManager(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$smcreateDeviceInfo(Lcom/google/android/exoplayer2/StreamVolumeManager;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object p1

    .line 3102
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetdeviceInfo(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3103
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputdeviceInfo(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/DeviceInfo;)V

    .line 3104
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda8;-><init>(Lcom/google/android/exoplayer2/DeviceInfo;)V

    const/16 p1, 0x1d

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 2

    .line 3111
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda6;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 2991
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2992
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 2996
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureAvailableInternal(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureAvailableInternal(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 3001
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$msetSurfaceTextureInternal(Lcom/google/android/exoplayer2/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    .line 3002
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mmaybeNotifySurfaceSizeChanged(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 5

    .line 3023
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetvideoListeners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 3024
    invoke-interface {v4, p1}, Lcom/google/android/exoplayer2/video/VideoListener;->onSurfaceDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 3028
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3029
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda9;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3033
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureDestroyedInternal(Landroid/graphics/SurfaceTexture;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureDestroyedInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 3039
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$msetVideoOutputInternal(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 3040
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mmaybeNotifySurfaceSizeChanged(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 3007
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3008
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;II)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 3012
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureSizeChangedInternal(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public onSurfaceTextureSizeChangedInternal(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 3018
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mmaybeNotifySurfaceSizeChanged(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    .line 3045
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3046
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetworkerQueue(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda7;-><init>(Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;Landroid/graphics/SurfaceTexture;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 3050
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->onSurfaceTextureUpdatedInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureUpdatedInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 3055
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetvideoListeners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/google/android/exoplayer2/video/VideoListener;

    .line 3056
    invoke-interface {v3, p1}, Lcom/google/android/exoplayer2/video/VideoListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 1

    .line 2868
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 2818
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 1

    .line 2851
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 2856
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoDisabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2857
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputvideoFormat(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)V

    .line 2858
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputvideoDecoderCounters(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1

    .line 2811
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputvideoDecoderCounters(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 2812
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoEnabled(Lcom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 1

    .line 2863
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplayer2/video/VideoRendererEventListener;Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1

    .line 2825
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputvideoFormat(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/Format;)V

    .line 2826
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetanalyticsCollector(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2

    .line 2836
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fputvideoSize(Lcom/google/android/exoplayer2/ExoPlayerImpl;Lcom/google/android/exoplayer2/video/VideoSize;)V

    .line 2837
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetlisteners(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Lcom/google/android/exoplayer2/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener$$ExternalSyntheticLambda11;-><init>(Lcom/google/android/exoplayer2/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/util/ListenerSet;->sendEvent(ILcom/google/android/exoplayer2/util/ListenerSet$Event;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    .line 3077
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$msendVolumeToRenderers(Lcom/google/android/exoplayer2/ExoPlayerImpl;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2976
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mmaybeNotifySurfaceSizeChanged(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2969
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetsurfaceHolderSurfaceIsVideoOutput(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$msetVideoOutputInternal(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2981
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$fgetsurfaceHolderSurfaceIsVideoOutput(Lcom/google/android/exoplayer2/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2982
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$msetVideoOutputInternal(Lcom/google/android/exoplayer2/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 2984
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplayer2/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplayer2/ExoPlayerImpl;->-$$Nest$mmaybeNotifySurfaceSizeChanged(Lcom/google/android/exoplayer2/ExoPlayerImpl;II)V

    return-void
.end method
