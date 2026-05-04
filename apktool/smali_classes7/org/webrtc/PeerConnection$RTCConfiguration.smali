.class public Lorg/webrtc/PeerConnection$RTCConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/PeerConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RTCConfiguration"
.end annotation


# instance fields
.field public activeResetSrtpParams:Z

.field public audioJitterBufferFastAccelerate:Z

.field public audioJitterBufferMaxPackets:I

.field public bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

.field public candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

.field public certificate:Lorg/webrtc/RtcCertificatePem;

.field public continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

.field public cryptoOptions:Lorg/webrtc/CryptoOptions;

.field public disableIPv6OnWifi:Z

.field public enableCpuOveruseDetection:Z

.field public enableDscp:Z

.field public enableImplicitRollback:Z

.field public iceBackupCandidatePairPingInterval:I

.field public iceCandidatePoolSize:I

.field public iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

.field public iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

.field public iceCheckMinInterval:Ljava/lang/Integer;

.field public iceConnectionReceivingTimeout:I

.field public iceServers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation
.end field

.field public iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

.field public iceUnwritableMinChecks:Ljava/lang/Integer;

.field public iceUnwritableTimeMs:Ljava/lang/Integer;

.field public keyType:Lorg/webrtc/PeerConnection$KeyType;

.field public maxIPv6Networks:I

.field public networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

.field public offerExtmapAllowMixed:Z

.field public presumeWritableWhenFullyRelayed:Z

.field public pruneTurnPorts:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

.field public screencastMinBitrate:Ljava/lang/Integer;

.field public sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

.field public stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

.field public stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

.field public surfaceIceCandidatesOnIceTransportTypeChanged:Z

.field public suspendBelowMinBitrate:Z

.field public tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

.field public turnCustomizer:Lorg/webrtc/TurnCustomizer;

.field public turnLoggingId:Ljava/lang/String;

.field public turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    sget-object v0, Lorg/webrtc/PeerConnection$IceTransportsType;->ALL:Lorg/webrtc/PeerConnection$IceTransportsType;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

    .line 575
    sget-object v0, Lorg/webrtc/PeerConnection$BundlePolicy;->BALANCED:Lorg/webrtc/PeerConnection$BundlePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

    .line 576
    sget-object v0, Lorg/webrtc/PeerConnection$RtcpMuxPolicy;->REQUIRE:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    .line 577
    sget-object v0, Lorg/webrtc/PeerConnection$TcpCandidatePolicy;->ENABLED:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    .line 578
    sget-object v0, Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;->ALL:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    .line 579
    iput-object p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    const/16 p1, 0x32

    .line 580
    iput p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    const/4 p1, 0x0

    .line 581
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    const/4 v0, -0x1

    .line 582
    iput v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    .line 583
    iput v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    .line 584
    sget-object v0, Lorg/webrtc/PeerConnection$KeyType;->ECDSA:Lorg/webrtc/PeerConnection$KeyType;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/PeerConnection$KeyType;

    .line 585
    sget-object v0, Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;->GATHER_ONCE:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    .line 586
    iput p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    .line 587
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    .line 588
    sget-object v0, Lorg/webrtc/PeerConnection$PortPrunePolicy;->NO_PRUNE:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    .line 589
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    .line 590
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    const/4 v0, 0x0

    .line 591
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    .line 592
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    .line 593
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    .line 594
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    .line 595
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    .line 596
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    .line 597
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    .line 598
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    const/4 v1, 0x5

    .line 599
    iput v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    .line 600
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    const/4 v1, 0x1

    .line 601
    iput-boolean v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    .line 602
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    .line 603
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    .line 604
    sget-object v2, Lorg/webrtc/PeerConnection$AdapterType;->UNKNOWN:Lorg/webrtc/PeerConnection$AdapterType;

    iput-object v2, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

    .line 605
    sget-object v2, Lorg/webrtc/PeerConnection$SdpSemantics;->UNIFIED_PLAN:Lorg/webrtc/PeerConnection$SdpSemantics;

    iput-object v2, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

    .line 606
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    .line 607
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/webrtc/CryptoOptions;

    .line 608
    iput-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    .line 609
    iput-boolean p1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    .line 610
    iput-boolean v1, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    return-void
.end method


# virtual methods
.method getActiveResetSrtpParams()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 795
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->activeResetSrtpParams:Z

    return v0
.end method

.method getAudioJitterBufferFastAccelerate()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 661
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferFastAccelerate:Z

    return v0
.end method

.method getAudioJitterBufferMaxPackets()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 656
    iget v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->audioJitterBufferMaxPackets:I

    return v0
.end method

.method getBundlePolicy()Lorg/webrtc/PeerConnection$BundlePolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 625
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->bundlePolicy:Lorg/webrtc/PeerConnection$BundlePolicy;

    return-object v0
.end method

.method getCandidateNetworkPolicy()Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 651
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->candidateNetworkPolicy:Lorg/webrtc/PeerConnection$CandidateNetworkPolicy;

    return-object v0
.end method

.method getCertificate()Lorg/webrtc/RtcCertificatePem;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 636
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->certificate:Lorg/webrtc/RtcCertificatePem;

    return-object v0
.end method

.method getContinualGatheringPolicy()Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 681
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->continualGatheringPolicy:Lorg/webrtc/PeerConnection$ContinualGatheringPolicy;

    return-object v0
.end method

.method getCryptoOptions()Lorg/webrtc/CryptoOptions;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 801
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->cryptoOptions:Lorg/webrtc/CryptoOptions;

    return-object v0
.end method

.method getDisableIPv6OnWifi()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 748
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->disableIPv6OnWifi:Z

    return v0
.end method

.method getEnableCpuOveruseDetection()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 769
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableCpuOveruseDetection:Z

    return v0
.end method

.method getEnableDscp()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 764
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableDscp:Z

    return v0
.end method

.method getEnableImplicitRollback()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 812
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->enableImplicitRollback:Z

    return v0
.end method

.method getIceBackupCandidatePairPingInterval()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 671
    iget v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceBackupCandidatePairPingInterval:I

    return v0
.end method

.method getIceCandidatePoolSize()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 686
    iget v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCandidatePoolSize:I

    return v0
.end method

.method getIceCheckIntervalStrongConnectivity()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 707
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalStrongConnectivityMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceCheckIntervalWeakConnectivity()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 713
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckIntervalWeakConnectivityMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceCheckMinInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 719
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceCheckMinInterval:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceConnectionReceivingTimeout()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 666
    iget v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceConnectionReceivingTimeout:I

    return v0
.end method

.method getIceServers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/webrtc/PeerConnection$IceServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 620
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceServers:Ljava/util/List;

    return-object v0
.end method

.method getIceTransportsType()Lorg/webrtc/PeerConnection$IceTransportsType;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceTransportsType:Lorg/webrtc/PeerConnection$IceTransportsType;

    return-object v0
.end method

.method getIceUnwritableMinChecks()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 731
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableMinChecks:Ljava/lang/Integer;

    return-object v0
.end method

.method getIceUnwritableTimeout()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 725
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->iceUnwritableTimeMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getKeyType()Lorg/webrtc/PeerConnection$KeyType;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 676
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->keyType:Lorg/webrtc/PeerConnection$KeyType;

    return-object v0
.end method

.method getMaxIPv6Networks()I
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 753
    iget v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->maxIPv6Networks:I

    return v0
.end method

.method getNetworkPreference()Lorg/webrtc/PeerConnection$AdapterType;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 785
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->networkPreference:Lorg/webrtc/PeerConnection$AdapterType;

    return-object v0
.end method

.method getOfferExtmapAllowMixed()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 817
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->offerExtmapAllowMixed:Z

    return v0
.end method

.method getPresumeWritableWhenFullyRelayed()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 696
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->presumeWritableWhenFullyRelayed:Z

    return v0
.end method

.method getPruneTurnPorts()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 691
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->pruneTurnPorts:Z

    return v0
.end method

.method getRtcpMuxPolicy()Lorg/webrtc/PeerConnection$RtcpMuxPolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 641
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->rtcpMuxPolicy:Lorg/webrtc/PeerConnection$RtcpMuxPolicy;

    return-object v0
.end method

.method getScreencastMinBitrate()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 780
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->screencastMinBitrate:Ljava/lang/Integer;

    return-object v0
.end method

.method getSdpSemantics()Lorg/webrtc/PeerConnection$SdpSemantics;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 790
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->sdpSemantics:Lorg/webrtc/PeerConnection$SdpSemantics;

    return-object v0
.end method

.method getStableWritableConnectionPingIntervalMs()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 743
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stableWritableConnectionPingIntervalMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getStunCandidateKeepaliveInterval()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 737
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->stunCandidateKeepaliveIntervalMs:Ljava/lang/Integer;

    return-object v0
.end method

.method getSurfaceIceCandidatesOnIceTransportTypeChanged()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 701
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->surfaceIceCandidatesOnIceTransportTypeChanged:Z

    return v0
.end method

.method getSuspendBelowMinBitrate()Z
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 774
    iget-boolean v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->suspendBelowMinBitrate:Z

    return v0
.end method

.method getTcpCandidatePolicy()Lorg/webrtc/PeerConnection$TcpCandidatePolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 646
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->tcpCandidatePolicy:Lorg/webrtc/PeerConnection$TcpCandidatePolicy;

    return-object v0
.end method

.method getTurnCustomizer()Lorg/webrtc/TurnCustomizer;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 759
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnCustomizer:Lorg/webrtc/TurnCustomizer;

    return-object v0
.end method

.method getTurnLoggingId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 807
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnLoggingId:Ljava/lang/String;

    return-object v0
.end method

.method getTurnPortPrunePolicy()Lorg/webrtc/PeerConnection$PortPrunePolicy;
    .locals 1
    .annotation build Lorg/webrtc/CalledByNative;
        value = "RTCConfiguration"
    .end annotation

    .line 630
    iget-object v0, p0, Lorg/webrtc/PeerConnection$RTCConfiguration;->turnPortPrunePolicy:Lorg/webrtc/PeerConnection$PortPrunePolicy;

    return-object v0
.end method
