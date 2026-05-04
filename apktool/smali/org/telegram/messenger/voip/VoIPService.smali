.class public Lorg/telegram/messenger/voip/VoIPService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/messenger/voip/VoIPServiceState;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;,
        Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;,
        Lorg/telegram/messenger/voip/VoIPService$StateListener;,
        Lorg/telegram/messenger/voip/VoIPService$CallConnection;,
        Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;
    }
.end annotation


# static fields
.field public static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final AUDIO_ROUTE_BLUETOOTH:I = 0x2

.field public static final AUDIO_ROUTE_EARPIECE:I = 0x0

.field public static final AUDIO_ROUTE_SPEAKER:I = 0x1

.field public static final CALL_MIN_LAYER:I = 0x41

.field public static final CAPTURE_DEVICE_CAMERA:I = 0x0

.field public static final CAPTURE_DEVICE_SCREEN:I = 0x1

.field public static final DISCARD_REASON_CONVERT:I = 0x5

.field public static final DISCARD_REASON_DISCONNECT:I = 0x2

.field public static final DISCARD_REASON_HANGUP:I = 0x1

.field public static final DISCARD_REASON_LINE_BUSY:I = 0x4

.field public static final DISCARD_REASON_MISSED:I = 0x3

.field private static final ID_INCOMING_CALL_NOTIFICATION:I = 0xca

.field public static final ID_INCOMING_CALL_PRENOTIFICATION:I = 0xcb

.field private static final ID_ONGOING_CALL_NOTIFICATION:I = 0xc9

.field private static final PROXIMITY_SCREEN_OFF_WAKE_LOCK:I = 0x20

.field public static final QUALITY_FULL:I = 0x2

.field public static final QUALITY_MEDIUM:I = 0x1

.field public static final QUALITY_SMALL:I = 0x0

.field public static final STATE_BUSY:I = 0x11

.field public static final STATE_CREATING:I = 0x6

.field public static final STATE_ENDED:I = 0xb

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_EXCHANGING_KEYS:I = 0xc

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_HANGING_UP:I = 0xa

.field public static final STATE_RECONNECTING:I = 0x5

.field public static final STATE_REQUESTING:I = 0xe

.field public static final STATE_RINGING:I = 0x10

.field public static final STATE_WAITING:I = 0xd

.field public static final STATE_WAITING_INCOMING:I = 0xf

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2

.field public static final USE_CONNECTION_SERVICE:Z

.field public static audioLevelsCallback:Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;

.field public static callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

.field private static setModeRunnable:Ljava/lang/Runnable;

.field private static sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

.field private static final sync:Ljava/lang/Object;


# instance fields
.field private a_or_b:[B

.field private afterSoundRunnable:Ljava/lang/Runnable;

.field private audioConfigured:Z

.field private audioDeviceCallback:Landroid/media/AudioDeviceCallback;

.field private audioRouteToSet:I

.field private authKey:[B

.field private bluetoothScoActive:Z

.field private bluetoothScoConnecting:Z

.field private btAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private callDiscardReason:I

.field private callReqId:I

.field private callStartTime:J

.field private captureDevice:[J

.field private chat:Lorg/telegram/tgnet/TLRPC$Chat;

.field private checkRequestId:I

.field private classGuid:I

.field public conference:Lorg/telegram/messenger/voip/ConferenceCall;

.field private connectingSoundRunnable:Ljava/lang/Runnable;

.field public convertingFromCallWithUserId:J

.field private convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

.field private cpuWakelock:Landroid/os/PowerManager$WakeLock;

.field private createGroupCall:Z

.field private currentAccount:I

.field private currentBackgroundEndpointId:[Ljava/lang/String;

.field private currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field public currentBluetoothDeviceName:Ljava/lang/String;

.field public currentGroupModeStreaming:Z

.field private currentState:I

.field private currentStreamRequestTimestamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private delayedStartOutgoingCall:Ljava/lang/Runnable;

.field private destroyCaptureDevice:[Z

.field private final destroyConvertingRunnable:Ljava/lang/Runnable;

.field private didDeleteConnectionServiceContact:Z

.field private endCallAfterRequest:Z

.field fetchingBluetoothDeviceName:Z

.field private forceRating:Z

.field private foregroundId:I

.field private foregroundNotification:Landroid/app/Notification;

.field private foregroundStarted:Z

.field private g_a:[B

.field private g_a_hash:[B

.field private gotMediaProjection:Z

.field public groupCall:Lorg/telegram/messenger/ChatObject$Call;

.field private volatile groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

.field private groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

.field private hasAudioFocus:Z

.field public hasFewPeers:Z

.field private instantAccept:Z

.field private inviteUsers:[J

.field private inviteUsersToConference:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private inviteUsersToConferenceVideo:Z

.field private isBtHeadsetConnected:Z

.field private volatile isCallEnded:Z

.field private isFrontFaceCamera:Z

.field private isHeadsetPlugged:Z

.field private isOutgoing:Z

.field private isPrivateScreencast:Z

.field private isProximityNear:Z

.field public isRtmpStream:Z

.field private isVideoAvailable:Z

.field private joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

.field private joinConferenceCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field private joinHash:Ljava/lang/String;

.field private keyFingerprint:J

.field private lastError:Ljava/lang/String;

.field private lastForegroundType:I

.field private lastGroupCallUpdate:Lorg/telegram/tgnet/TLRPC$GroupCall;

.field private lastLogFilePath:Ljava/lang/String;

.field private lastNetInfo:Landroid/net/NetworkInfo;

.field private lastSensorEvent:Landroid/hardware/SensorEvent;

.field private lastTypingTimeSend:J

.field private localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field private mHasEarpiece:Ljava/lang/Boolean;

.field private micMute:Z

.field public micSwitching:Z

.field private muteOnStart:Ljava/lang/Boolean;

.field private myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

.field private mySource:[I

.field private needPlayEndSound:Z

.field private needRateCall:Z

.field private needSendDebugLog:Z

.field private needSwitchToBluetoothAfterScoActivates:Z

.field private notificationsDisabled:Z

.field private onDestroyRunnable:Ljava/lang/Runnable;

.field private pendingUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;",
            ">;"
        }
    .end annotation
.end field

.field private playedConnectedSound:Z

.field private playingSound:Z

.field private prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

.field private previousAudioOutput:I

.field public privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

.field private proximityWakelock:Landroid/os/PowerManager$WakeLock;

.field private final proxyVideoSinkLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private reconnectScreenCapture:Z

.field private remoteAudioState:I

.field private remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

.field private remoteSinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;",
            ">;"
        }
    .end annotation
.end field

.field private remoteVideoState:I

.field private ringtonePlayer:Landroid/media/MediaPlayer;

.field private scheduleDate:I

.field private serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field public final sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

.field private shortPollRunnable:Ljava/lang/Runnable;

.field private signalBarCount:I

.field private soundPool:Landroid/media/SoundPool;

.field private spAllowTalkId:I

.field private spBusyId:I

.field private spConnectingId:I

.field private spEndId:I

.field private spFailedID:I

.field private spPlayId:I

.field private spRingbackID:I

.field private spStartRecordId:I

.field private spVoiceChatConnecting:I

.field private spVoiceChatEndId:I

.field private spVoiceChatStartId:I

.field private speakerphoneStateToSet:Z

.field private startedRinging:Z

.field private stateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/telegram/messenger/voip/VoIPService$StateListener;",
            ">;"
        }
    .end annotation
.end field

.field private switchingAccount:Z

.field private switchingCamera:Z

.field private switchingStream:Z

.field private switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

.field private systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

.field private tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

.field private timeoutRunnable:Ljava/lang/Runnable;

.field private unmutedByHold:Z

.field private updateNotificationRunnable:Ljava/lang/Runnable;

.field private user:Lorg/telegram/tgnet/TLRPC$User;

.field private vibrator:Landroid/os/Vibrator;

.field public videoCall:Z

.field private videoState:[I

.field private final waitingFrameParticipant:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private wasConnected:Z

.field private wasEstablished:Z


# direct methods
.method public static synthetic $r8$lambda$-LMM4VTggXedA1I93-CbEOkk4oM(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$122()V

    return-void
.end method

.method public static synthetic $r8$lambda$-TGzS3de2y2GXOnJjtWIv6Qfp3s(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$-byv7mZ2Kot_Tc_VtFvu_ZfobvQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$125()V

    return-void
.end method

.method public static synthetic $r8$lambda$-c5BB_eYeJTsYOlmaC4XfUN1L3Y(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acknowledgeCall$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$06YRuYKKM3tlqdIa3vozWSDip78(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$65()V

    return-void
.end method

.method public static synthetic $r8$lambda$1-UBYe_43GELGdc9ogCao9Gm5gQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$setMicMute$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$1ly1jmHlhLuc9kuiLLpLbG8zSJo(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$loadResources$108()V

    return-void
.end method

.method public static synthetic $r8$lambda$27W1KRAozv94PnFOae_9RlTLvGQ(Lorg/telegram/messenger/voip/VoIPService;IJ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$79(IJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$29luzWQvnlZJk_3OHYI50FY9E0M(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$57(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$2T2NcP6lV_shD2UpykOoyD-_UMQ(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$105(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2gxa-WkHDapj3Uwc8609F6-Aoz0(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$50(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3REtvzLrtKUQk5xXlWXZdADrrRo(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$72(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4xpdNSKJx3Kxc-KibUmDtkDxFEE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$22(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5JBRIYmGQmbXzSkfU9FZA9Ri2_g(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onStartCommand$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$6GVqzEJMWq3WiObgCgfMD2HDXrU(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V

    return-void
.end method

.method public static synthetic $r8$lambda$6P4y55lb4CHVSJNpimBSZpuEf1s(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$39(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7S2yJveJT7prIA3NBnGfQRhiWOQ(Lorg/telegram/messenger/voip/VoIPService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$87(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$87ZJl7q4GLseCatNMkNKwv977oM(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$hangUp$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8flR6LY2Un51Ga4nG2urXHgqpcI(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->destroyConverting()V

    return-void
.end method

.method public static synthetic $r8$lambda$9GHNw81Xk6LvUhSQUwiwCoj_Pm4(Lorg/telegram/messenger/voip/VoIPService;JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$43(JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9Jqe34Oi-rU03GhAmkqxkTihwC4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playAllowTalkSound$120()V

    return-void
.end method

.method public static synthetic $r8$lambda$A-yS__D7hvOqjWCAFn0_FYB9LwM(Lorg/telegram/messenger/voip/VoIPService;ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$60(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ANJ0NlBXaBr-a-sqBSfsbJds8h8(Lorg/telegram/messenger/voip/VoIPService;IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$29(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AyTVPfsD5dZmnHuNE58dIC6PWQU(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$84()V

    return-void
.end method

.method public static synthetic $r8$lambda$BTWdBaT0phzcw5DajmHWR108Fwk(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$endConnectionServiceCall$126()V

    return-void
.end method

.method public static synthetic $r8$lambda$CdsTH6ytWYiqx3bxu-IoGuYtNsM(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$111(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D6iMJw_ox5Eogc8CiI_jQgMjtiA()V
    .locals 3

    .line 2276
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DAE0FNhUor_NoQQBBvxJ9pXxnzk(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$45(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuFfJzB4YhcpLlNOVXV8-nozA9Y(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$59(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$E5rDrTp9Td2_AhnvyRtiSASzdL0(Landroid/media/AudioManager;)V
    .locals 2

    .line 4230
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 4231
    :try_start_0
    sget-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    .line 4232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4234
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    .line 4235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 4237
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4239
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 4240
    const-string v0, "Error setting audio more to normal"

    invoke-static {v0, p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 4235
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static synthetic $r8$lambda$Eb1XQeks7UeZC1PpkYM1KvezHig(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$25(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ErHQ4ozuYCQb8dlkkO5Y5wROLuw(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Exg2vDPsIfjuAeEtpXIz_LPKTbQ(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2575
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;

    invoke-direct {p4, p3, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda0;-><init>(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzV2DSw3y93_6YhO3oMErqiB7vM(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GKxMpf0Eq1Q3YX1HRh0kfcvDlYU(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onSignalBarCountChanged$121(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HIX0weVwPpoX9zNFJY-XIS5UHwk(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$38(Lorg/telegram/tgnet/TLRPC$Updates;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$I0BW4PrKezi-ctal1T2tx-gLZeg(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$42(Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IFIcuop7FQaZMOPy_I39ScNq7f4(Lorg/telegram/messenger/voip/VoIPService;IJI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$76(IJI)V

    return-void
.end method

.method public static synthetic $r8$lambda$JY507Z2mOyF1Ul504LfPvBc7T8s(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startScreenCapture$58(Lorg/telegram/tgnet/TLRPC$Updates;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KcZNzNgeE-vihwdYGwW6fSntRxA()V
    .locals 3

    .line 2002
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LEgsqGsxwUoNpD5sCXFNkphK3nE(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$setupCaptureDevice$14()V

    return-void
.end method

.method public static synthetic $r8$lambda$LyeHwxqXJo9WxUQwu2f5NYM_tEw(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MKcNtjRK5UH7zVqEW5hdMniMNXw(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playStartRecordSound$119()V

    return-void
.end method

.method public static synthetic $r8$lambda$MlcvCdr25EFwFXZaNB8l7yzQbsQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onDestroy$99()V

    return-void
.end method

.method public static synthetic $r8$lambda$NErILFI89a3UdFutyC9BL4n66LQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$declineIncomingCall$104()V

    return-void
.end method

.method public static synthetic $r8$lambda$P8XeT5XImmvS6mi6z5zzcp8LAVk(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    .line 2482
    instance-of v0, p0, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_1

    .line 2483
    check-cast p0, Lorg/telegram/tgnet/Vector;

    const/4 v0, 0x0

    .line 2484
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2485
    iget-object v1, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v1, :cond_0

    .line 2486
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2490
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$PMdSfYxBjtSkVPxjvzGjxxMbHqw(Lorg/telegram/messenger/voip/VoIPService;[I[F[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$85([I[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$PaP-BzqvxL3xvJckB30htjhFQH0(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .locals 3

    .line 2576
    instance-of v0, p0, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_1

    .line 2577
    check-cast p0, Lorg/telegram/tgnet/Vector;

    const/4 v0, 0x0

    .line 2578
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2579
    iget-object v1, p0, Lorg/telegram/tgnet/Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/telegram/tgnet/tl/TL_account$requirementToContactPremium;

    if-eqz v1, :cond_0

    .line 2580
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2584
    :cond_1
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static synthetic $r8$lambda$PrtkR3Cutn72ujUfBu2yrl-Mi2Y(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$playConnectedSound$88()V

    return-void
.end method

.method public static synthetic $r8$lambda$PuCZxzce8swtU-pKnTfkdGhCMtI(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$37(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q3cDNlNBUBK592xAlGGazwfbMkI(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$116()V

    return-void
.end method

.method public static synthetic $r8$lambda$R0RWQTd4j2SM8liI7TXJVbAWJ7E(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2481
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda116;

    invoke-direct {p4, p3, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda116;-><init>(Lorg/telegram/tgnet/TLObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$R3gjGblQyvVRBILMM3ra5l1skG4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$123()V

    return-void
.end method

.method public static synthetic $r8$lambda$RUsHnqb518fy1hGjkFXNU8CvzLk(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$34(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJyjMZU4nhpSa8LXneFTqKThVT0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$115()V

    return-void
.end method

.method public static synthetic $r8$lambda$Th4iaD1c4X1DsGtbwwD7IR8H2pA()V
    .locals 2

    .line 4840
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4841
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$Tiqcc5XI9h3XlrC-BWkbWhlt9TQ(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$95(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$U8Yc7OZ1_b2lEjfpsAMio7i0k6Q(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$26(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uidj1P3stPhlo1WRSQ3lEbFj0Vk(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$44(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UuJdQ0YDkgUUoumGVbWpiiGFMVA(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startRingtoneAndVibration$96(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VCq2r4K4Hgj3QFJS-VewPs9UUgw(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$33(Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VRTrTQwre7LAsx1UqmpXaKl7yE4()V
    .locals 3

    .line 4317
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W5h6GgU3i7de6Ngr2ZwjJQb1Fek(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$switchToSpeaker$91(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgcCr_wFZXL2_IjAp7oWQkDW35A(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$hangUp$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XKkPF1dGRKUqZJSuAz7Z2p9Y4vc(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$36(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$XufQx4k_OXvrPNGioYM-1748SsM(Lorg/telegram/messenger/voip/VoIPService;JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p8}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$51(JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xv9Dim96d0f3v8pDpABX3DCWf8A(Lorg/telegram/messenger/voip/VoIPService;IJJII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$75(IJJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y-t9XPVsR3i49ymkh2fmq4QovNo(Lorg/telegram/messenger/voip/VoIPService;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$initiateActualEncryptedCall$86(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y22RmUQBKXm_Togaq8vm-tskQ-c(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YoNN3N6wsYwvfTmw_NCmTkFH56U(Lorg/telegram/messenger/voip/VoIPService;IIZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$80(IIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z16fd4labPVpeU66f9xb5LJc3dQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$convertToConferenceCall$30()V

    return-void
.end method

.method public static synthetic $r8$lambda$ZHRNPE8VXUx_YTUc6WSWfNoIECg(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$stopScreenCapture$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZhwP3P56SiX4nUzlHAQjJCcSbG8(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callFailed$114()V

    return-void
.end method

.method public static synthetic $r8$lambda$b1b4JQ7Bu6x3Ct0HoggGBR07xdc(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$getConnectionAndStartCall$106()V

    return-void
.end method

.method public static synthetic $r8$lambda$b4DlqMVKgr233LhboIWL7iCqnmc(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$103(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bRVI5mHd3plFsVISrxbGUcjMxrg(Lorg/telegram/messenger/voip/VoIPService;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$toggleSpeakerphoneOrShowRouteSheet$93(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bVYKwYl9CZaYuDDNdm6RzN-j1C4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$117()V

    return-void
.end method

.method public static synthetic $r8$lambda$bmGBbHnoBGx3lXj5xBcH53TuSVg(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$102(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c59EoZqSaKuauUww2BxbBhO7qPE(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onConnectionStateChanged$118(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-hpzHbar0wrE5t2DJBpcihOqlU(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;Landroid/content/DialogInterface;)V
    .locals 2

    const/4 p2, 0x0

    .line 3793
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BottomSheet;->getItemViews()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 3794
    sget v0, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextBlack:I

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v1

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 3797
    sget p2, Lorg/telegram/ui/ActionBar/Theme;->key_dialogTextLink:I

    invoke-static {p2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(I)I

    move-result p2

    .line 3798
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p2}, Lorg/telegram/ui/ActionBar/BottomSheet;->setItemColor(III)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$eN-Kh-IeT7JmsCoHCpo43PWKWk4(Lorg/telegram/messenger/voip/VoIPService;[BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$10([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eNhqe29y97b2bEBmhx-iZ0ndLVw(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$47(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$f69uEnJq2c4csRDfAYQao7eLYk0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConnectingSound$89()V

    return-void
.end method

.method public static synthetic $r8$lambda$fZzfGuC9ONaZh0JjhJFNELCM1RI()V
    .locals 3

    .line 1063
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didStartedCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$feY0LVblzovkT7_O03BJwx5nPMg(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$71(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fv1sqAhZ2aUYVg0HRmQOuLqFHl4(Lorg/telegram/messenger/voip/VoIPService;ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acknowledgeCall$13(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gz5oEAgXgL-aizd1CtMBet4pAgM(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hPDB1E04mMX0qn86iuYDNMPDhe0(Lorg/telegram/messenger/voip/VoIPService;IJJII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$77(IJJII)V

    return-void
.end method

.method public static synthetic $r8$lambda$iESHRsor6F1hLqlZoe5bmkSpYYQ(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$83()V

    return-void
.end method

.method public static synthetic $r8$lambda$ihf_TgQlMZ9hVpHd61S65tYUha4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$ingKR-mMCA2HuWFq0wUx1N71Y6Q(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method public static synthetic $r8$lambda$iqEDHjWly5k2UDVwkZYvvNthBqg(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$configureDeviceForCall$110(Landroid/media/AudioManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ir5EBfx5tDQC9-FGS808GiweaYc(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$processAcceptedCall$19(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jHiCYeiotYjgxopRDBic2cf3fJ0(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$56(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jZFehqzaUIesqewFFJiPs9l1GiY(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$editCallMember$90(ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jqdn58WfB0C10sYgHCGkJQkmLw0(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$52(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$kCANyNPK7miaGEPKE1XFGNoxLLE(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$processAcceptedCall$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kv7ys1G-9IeL53MlauHSeLn-Pe0(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$17()V

    return-void
.end method

.method public static synthetic $r8$lambda$ky0Ni3_eN3vaYNjuGuhVV0p6TQM(Landroid/content/SharedPreferences;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-nez p2, :cond_0

    .line 4546
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 4547
    invoke-static {p1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 4548
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p2, "voip_server_config"

    invoke-interface {p0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$lBjBsnAWPGbEFErKrf_eL4LyAE4(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onStartCommand$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$m0f3dcDoangzh_Y1l7FfqObqFRU(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$16()V

    return-void
.end method

.method public static synthetic $r8$lambda$mfaJHHH9FVeIVu3zDcLxJtiKe0o()V
    .locals 3

    .line 4181
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didEndCall:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mi8HrxrwBjm3axO5vTSUpYeEd1w(Lorg/telegram/messenger/voip/VoIPService;IJ[I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$70(IJ[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nPa5udOQVYYVUKhSjbmn4PJZH74(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$callEnded$124()V

    return-void
.end method

.method public static synthetic $r8$lambda$oAUDV6KeNWBEOl-GjOEHsMuncig(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$55(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qN6HCjTTJAV3pwMNo1mQyFRCfdk(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 5388
    sget-boolean p0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p0, :cond_1

    .line 5389
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 5392
    :cond_0
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_1

    .line 5393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$qqAIsdDet-_LNigi29u8llEimts(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$53(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rXckID538pwHsuKPUZps7wFdJCA(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$81(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rYsF6VFmW855vl0SlJRT16dM_y4(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Boolean;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onStartCommand$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s686SG3ThYJ6h4utNwRS1s4uaBk(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$onCallUpdated$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$sFBbVN-B55Q64k4SagsvLNYkdwA(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$switchToSpeaker$92()V

    return-void
.end method

.method public static synthetic $r8$lambda$sWHejkW7LP_rqBkIE2qYvoLg03k(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->lambda$updateConnectionState$82()V

    return-void
.end method

.method public static synthetic $r8$lambda$t5a3VbjYfTUHBFqJYi3QA4lX7fQ(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$74(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPV9733HwegDcXm_LqQG5ezlsQE(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p10}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$73(Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$trjMpOX_YYAAn-3ONat1EUaFojo(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startOutgoingCall$11(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tx8C1bdO84VTtH_Xi4lNv8piiI4(Lorg/telegram/messenger/voip/VoIPService;IZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$54(IZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$txW2W0IbOfDRAb7E4Jq2LhSQWI8(Lorg/telegram/messenger/voip/VoIPService;J[ILjava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$69(J[ILjava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u1aa8110w_z_9PugOju3re3X5zo(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$32(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uIuer4Vp1L9JAdBLZHHvhthmxkE(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$27(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$upqZLW-xDUYpkCk9z7VNVsNyu6E(Landroid/media/AudioManager;)V
    .locals 0

    .line 5028
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public static synthetic $r8$lambda$vU-ja21ssNK4Lh-eXNmu3Z2DoPk(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$61(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wuP5F8kDIisuicXB2OkG0Gjh2Ug(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startConferenceGroupCall$46(Lorg/telegram/tgnet/TLRPC$Updates;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$wv52oH_7rGeIMKqLMYtPNKtd-B8(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$21(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x1-h7GKPOdb9CIPz45j-TbzlaUg(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->lambda$acceptIncomingCall$101(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x31hxO9DKR8ogXII_qhgh9Mv56U(Lorg/telegram/messenger/voip/VoIPService;I[I[F[Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$68(I[I[F[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yC4JEJgzOiuaYpwH4DJ7EpTxX_M(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCheckShortpoll$64(Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ydnD09NTI5JDQa2Iy9Zrlnme1Ig(Lorg/telegram/messenger/voip/VoIPService;I[ZILjava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$66(I[ZILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zh8PENAnLlxMFG_ON5Z72Pc3QJ8(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->lambda$startGroupCall$28(Lorg/telegram/tgnet/TLRPC$TL_error;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zkH3SpyycjE2jFzZrPKfN1FUano(Lorg/telegram/messenger/voip/VoIPService;IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p7}, Lorg/telegram/messenger/voip/VoIPService;->lambda$createGroupInstance$78(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetaudioDeviceCallback(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/AudioDeviceCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetbluetoothScoActive(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetbtAdapter(Lorg/telegram/messenger/voip/VoIPService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetcurrentAccount(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisBtHeadsetConnected(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisHeadsetPlugged(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetneedSwitchToBluetoothAfterScoActivates(Lorg/telegram/messenger/voip/VoIPService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetpreviousAudioOutput(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetproximityWakelock(Lorg/telegram/messenger/voip/VoIPService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetproxyVideoSinkLruCache(Lorg/telegram/messenger/voip/VoIPService;)Landroid/util/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetremoteSinks(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsoundPool(Lorg/telegram/messenger/voip/VoIPService;)Landroid/media/SoundPool;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetspConnectingId(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetspPlayId(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 0
    iget p0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetstateListeners(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettgVoip(Lorg/telegram/messenger/voip/VoIPService;)[Lorg/telegram/messenger/voip/NativeInstance;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetwaitingFrameParticipant(Lorg/telegram/messenger/voip/VoIPService;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbluetoothScoActive(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputbluetoothScoConnecting(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputconnectingSoundRunnable(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdidDeleteConnectionServiceContact(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisHeadsetPlugged(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisProximityNear(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedPlayEndSound(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputneedSwitchToBluetoothAfterScoActivates(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreviousAudioOutput(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputspPlayId(Lorg/telegram/messenger/voip/VoIPService;I)V
    .locals 0

    .line 0
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsystemCallConnection(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/VoIPService$CallConnection;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-void
.end method

.method static bridge synthetic -$$Nest$macceptIncomingCallFromNotification(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckUpdateBluetoothHeadset(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkUpdateBluetoothHeadset()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfetchBluetoothDeviceName(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStatsNetworkType(Lorg/telegram/messenger/voip/VoIPService;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartRinging(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateBluetoothHeadsetState(Lorg/telegram/messenger/voip/VoIPService;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNetworkType(Lorg/telegram/messenger/voip/VoIPService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateNetworkType()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTrafficStats(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsetModeRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsync()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsetModeRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    sput-object p0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 211
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->isDeviceCompatibleWithConnectionServiceAPI()Z

    move-result v0

    sput-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 169
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 213
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v1, 0x0

    .line 219
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v2, 0x1

    .line 230
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 237
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->previousAudioOutput:I

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    .line 292
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v0, 0x2

    .line 295
    new-array v3, v0, [I

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    .line 297
    new-array v3, v0, [Lorg/telegram/messenger/voip/NativeInstance;

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    .line 298
    new-array v3, v0, [J

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    .line 299
    new-array v3, v0, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    .line 300
    filled-new-array {v1, v1}, [I

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    .line 338
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 340
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 352
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->sharedUIParams:Lorg/telegram/messenger/voip/VoIPService$SharedUIParams;

    .line 374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    .line 382
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    .line 385
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    .line 426
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$2;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 454
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$3;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    .line 597
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$4;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/voip/VoIPService$4;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    .line 742
    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 743
    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 744
    new-array v1, v0, [Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    .line 745
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundEndpointId:[Ljava/lang/String;

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    .line 2638
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda90;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyConvertingRunnable:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private acceptIncomingCallFromNotification()V
    .locals 3

    .line 5612
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 5613
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5624
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    .line 5626
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getUIActivityClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "voip"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x2000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 5628
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 5629
    const-string v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5616
    :cond_1
    :goto_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/VoIPPermissionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 5618
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_2

    .line 5619
    const-string v1, "Error starting permission activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private acknowledgeCall(Z)V
    .locals 5

    .line 1176
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez v0, :cond_1

    .line 1177
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 1178
    const-string p1, "Call is null, wtf"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1180
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1183
    :cond_1
    instance-of v0, v0, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;

    if-eqz v0, :cond_3

    .line 1184
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Call "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " was discarded before the service started, stopping"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1187
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1190
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/XiaomiUtilities;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2724

    invoke-static {v0}, Lorg/telegram/messenger/XiaomiUtilities;->isCustomPermissionGranted(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1191
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1192
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 1193
    const-string p1, "MIUI: no permission to show when locked but the screen is locked. \u00af\\_(\u30c4)_/\u00af"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1195
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1199
    :cond_5
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;-><init>()V

    .line 1200
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$receivedCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1201
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1202
    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1203
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda94;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    const/high16 p1, 0x10000

    invoke-virtual {v1, v0, v2, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 5684
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 5685
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    .line 5686
    new-instance v2, Landroid/telecom/PhoneAccountHandle;

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lorg/telegram/messenger/voip/TelegramConnectionService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 5687
    new-instance v3, Landroid/telecom/PhoneAccount$Builder;

    iget-object v4, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v4, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    const/16 v1, 0x800

    .line 5688
    invoke-virtual {v3, v1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/R$drawable;->ic_launcher_dr:I

    .line 5689
    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const v3, -0xd35a20

    .line 5690
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->setHighlightColor(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    const-string/jumbo v3, "sip"

    .line 5691
    invoke-virtual {v1, v3}, Landroid/telecom/PhoneAccount$Builder;->addSupportedUriScheme(Ljava/lang/String;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v1

    .line 5692
    invoke-virtual {v1}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v1

    .line 5693
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->registerPhoneAccount(Landroid/telecom/PhoneAccount;)V

    return-object v2
.end method

.method private broadcastUnknownParticipants(J[I)V
    .locals 9

    .line 2855
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2858
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    .line 2860
    array-length v0, p3

    const/4 v4, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v0, :cond_5

    .line 2861
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsBySources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez v6, :cond_1

    .line 2863
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByVideoSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-nez v6, :cond_1

    .line 2865
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->participantsByPresentationSources:Landroid/util/SparseArray;

    aget v7, p3, v5

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    :cond_1
    if-eqz v6, :cond_4

    .line 2868
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v7, v7, v2

    if-eqz v7, :cond_4

    iget v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez v4, :cond_3

    .line 2872
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2874
    :cond_3
    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    aget v8, p3, v5

    invoke-direct {v7, v6, v8}, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;-><init>(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_7

    .line 2877
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p3, p3, v1

    new-array v0, v1, [Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    invoke-virtual {p3, p1, p2, v0}, Lorg/telegram/messenger/voip/NativeInstance;->onMediaDescriptionAvailable(J[Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;)V

    .line 2879
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p2, v1

    :goto_2
    if-ge p2, p1, :cond_7

    .line 2880
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;

    .line 2881
    iget-object v0, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->participant:Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    if-eqz v2, :cond_6

    .line 2882
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget p3, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p3, v2, v3}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    goto :goto_3

    .line 2884
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    iget p3, p3, Lorg/telegram/messenger/voip/VoIPService$RequestedParticipant;->audioSsrc:I

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v0

    int-to-double v5, v0

    const-wide v7, 0x40c3880000000000L    # 10000.0

    div-double/2addr v5, v7

    invoke-virtual {v2, p3, v5, v6}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    return-void
.end method

.method private callEnded()V
    .locals 6

    .line 5521
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5525
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 5527
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isCallEnded:Z

    .line 5528
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 5529
    :cond_1
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    .line 5531
    :cond_2
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda125;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda125;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5533
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda126;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda126;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 5540
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 5541
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5542
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 5544
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    const/16 v3, 0x2bc

    if-eqz v0, :cond_5

    .line 5545
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 5546
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_4

    .line 5547
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda127;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda127;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 5549
    :cond_4
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda128;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda128;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)Z

    const/16 v3, 0x1f4

    .line 5552
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    int-to-long v4, v3

    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5554
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_6

    .line 5555
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 5556
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 5558
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    if-eqz v0, :cond_7

    int-to-long v0, v3

    goto :goto_1

    :cond_7
    const-wide/16 v0, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 5559
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private callFailed()V
    .locals 2

    .line 5120
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->getLastError()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ERROR_UNKNOWN"

    :goto_0
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void
.end method

.method private callFailed(Ljava/lang/String;)V
    .locals 7

    .line 5374
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_2

    .line 5375
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 5376
    const-string v0, "Discarding failed call"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5378
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V

    .line 5379
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 5380
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v5, v4, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 5381
    iget-wide v4, v4, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 5382
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v3

    div-long/2addr v3, v1

    long-to-int v3, v3

    iput v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->duration:I

    .line 5383
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/NativeInstance;->getPreferredRelayId()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    iput-wide v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->connection_id:J

    .line 5384
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 5385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discardCall "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 5386
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda119;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda119;-><init>()V

    invoke-virtual {v3, v0, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 5399
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " failed with error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 5401
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5403
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    .line 5404
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda120;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda120;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 5405
    const-string v0, "ERROR_LOCALIZED"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_3

    .line 5406
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 5407
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda121;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda121;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 5408
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    invoke-static {p1, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5410
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p1, :cond_4

    .line 5411
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v0}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 5412
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->destroy()V

    const/4 p1, 0x0

    .line 5413
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 5415
    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method private cancelGroupCheckShortPoll()V
    .locals 3

    .line 2829
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aget v1, v0, v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2832
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    if-eqz v0, :cond_1

    .line 2833
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    invoke-virtual {v0, v2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 2834
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 2836
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 2837
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2838
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    :cond_2
    :goto_0
    return-void
.end method

.method private checkIsNear()V
    .locals 3

    .line 4959
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v0, v0, v1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 4960
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    return-void
.end method

.method private checkIsNear(Z)V
    .locals 2

    .line 4965
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eq p1, v0, :cond_2

    .line 4966
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "proximity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4969
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-eqz p1, :cond_1

    .line 4972
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 4974
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->release(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 4977
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private checkUpdateBluetoothHeadset()V
    .locals 7

    .line 4735
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4737
    :try_start_0
    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    .line 4738
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4739
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge v2, v3, :cond_1

    .line 4740
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v4, :cond_0

    goto :goto_0

    :cond_0
    move v6, v5

    .line 4741
    :goto_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 4742
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 4743
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_4

    .line 4746
    :cond_1
    invoke-virtual {v0, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    .line 4747
    const-string v2, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v2}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 4748
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v5

    .line 4749
    :goto_2
    invoke-direct {p0, v6}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V

    .line 4750
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v5, v1, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v5, v5, 0x1

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 4751
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    .line 4754
    :cond_3
    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->updateBluetoothHeadsetState(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4758
    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private configureDeviceForCall()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .line 4824
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configureDeviceForCall, route to set = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4828
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 4829
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioStreamType(I)V

    .line 4831
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->needPlayEndSound:Z

    .line 4832
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4833
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v1, :cond_3

    .line 4834
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda86;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4907
    :cond_3
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    .line 4911
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4914
    :try_start_0
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    const-string/jumbo v3, "telegram-voip-prx"

    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x3

    .line 4915
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4918
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_4

    .line 4919
    const-string v1, "Error initializing proximity sensor"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method private convertDataSavingMode(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return p1

    .line 1892
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->isRoaming()Z

    move-result p1

    return p1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    .line 4582
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 4583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4585
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4586
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4588
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 4589
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createGroupInstance(IZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 2892
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aput v3, v4, v1

    if-nez v1, :cond_0

    .line 2894
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 2897
    :cond_0
    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 2899
    iput-boolean v3, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    goto :goto_0

    .line 2900
    :cond_1
    iget-boolean v4, v0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez v4, :cond_2

    .line 2901
    iput-boolean v2, v0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    return-void

    .line 2905
    :cond_2
    :goto_0
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    if-nez v4, :cond_a

    .line 2908
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const-string v5, ""

    if-eqz v4, :cond_3

    .line 2909
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2910
    :cond_3
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    instance-of v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    if-eqz v6, :cond_4

    .line 2911
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    goto :goto_1

    .line 2912
    :cond_4
    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    if-eqz v4, :cond_5

    .line 2913
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2915
    :cond_5
    const-string v4, "0"

    .line 2917
    :goto_1
    new-array v5, v2, [Z

    aput-boolean p3, v5, v3

    .line 2918
    sget-boolean v6, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "voip_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    move-object v6, v4

    goto :goto_3

    :cond_6
    invoke-static {v4, v3}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 2919
    :goto_3
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v7, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v8, v7, v1

    move-wide v7, v8

    if-ne v1, v2, :cond_7

    move v9, v2

    goto :goto_4

    :cond_7
    move v9, v3

    :goto_4
    if-nez v1, :cond_8

    sget-boolean v10, Lorg/telegram/messenger/SharedConfig;->noiseSupression:Z

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_5

    :cond_8
    move v10, v3

    :goto_5
    new-instance v11, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;

    invoke-direct {v11, v0, v1, v5}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda75;-><init>(Lorg/telegram/messenger/voip/VoIPService;I[Z)V

    new-instance v12, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;

    invoke-direct {v12, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda76;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v13, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;

    invoke-direct {v13, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda77;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v14, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;

    invoke-direct {v14, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda78;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v15, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;

    invoke-direct {v15, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda79;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;

    invoke-direct {v5, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda80;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    move/from16 p2, v2

    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v2, :cond_9

    move/from16 v17, p2

    :goto_6
    move-object/from16 v16, v5

    goto :goto_7

    :cond_9
    move/from16 v17, v3

    goto :goto_6

    :goto_7
    invoke-static/range {v6 .. v17}, Lorg/telegram/messenger/voip/NativeInstance;->makeGroup(Ljava/lang/String;JZZLorg/telegram/messenger/voip/NativeInstance$PayloadCallback;Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;Lorg/telegram/messenger/voip/NativeInstance$VideoSourcesCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestBroadcastPartCallback;Lorg/telegram/messenger/voip/NativeInstance$RequestCurrentTimeCallback;Z)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v2

    aput-object v2, v4, v1

    .line 3056
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda81;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    move/from16 v2, p2

    goto :goto_8

    :cond_a
    move/from16 p2, v2

    move v2, v3

    .line 3061
    :goto_8
    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v1

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2, v3}, Lorg/telegram/messenger/voip/NativeInstance;->resetGroupInstance(ZZ)V

    .line 3062
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lorg/telegram/messenger/voip/ConferenceCall;->getCallId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-eqz v2, :cond_b

    .line 3063
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v1

    iget-object v4, v0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {v4}, Lorg/telegram/messenger/voip/ConferenceCall;->getCallId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/voip/NativeInstance;->setConferenceCallId(J)V

    .line 3065
    :cond_b
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_c

    .line 3066
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v3, v2, v1

    :cond_c
    if-nez v1, :cond_d

    move/from16 v1, p2

    .line 3069
    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    :cond_d
    return-void
.end method

.method private createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;
    .locals 8

    .line 1461
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1464
    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 1466
    new-instance v4, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    invoke-direct {v4}, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;-><init>()V

    aput-object v4, v1, v3

    .line 1467
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 1468
    aget-object v5, v1, v3

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->semantics:Ljava/lang/String;

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->semantics:Ljava/lang/String;

    .line 1469
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    move v5, v2

    .line 1470
    :goto_1
    aget-object v6, v1, v3

    iget-object v6, v6, Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;->ssrcs:[I

    array-length v7, v6

    if-ge v5, v7, :cond_1

    .line 1471
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

.method private destroyConverting()V
    .locals 6

    .line 2640
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyConvertingRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 2641
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2643
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "destroyConverting!!"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    .line 2644
    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    .line 2645
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    rem-int/lit8 v2, v2, 0x5

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 2646
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipPreStop()V

    .line 2647
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->stop()Lorg/telegram/messenger/voip/Instance$FinalState;

    move-result-object v0

    .line 2648
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v2, v0, Lorg/telegram/messenger/voip/Instance$FinalState;->trafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    .line 2649
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V

    .line 2650
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->destroyInstance()V

    const/4 v0, 0x0

    .line 2651
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v0, 0x0

    move v1, v0

    .line 2652
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2653
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 2654
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2656
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    .line 2657
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private dispatchStateChanged(I)V
    .locals 3

    .line 4781
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== Call "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " state changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4784
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 4786
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->destroyConverting()V

    .line 4788
    :cond_1
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_2

    .line 4789
    invoke-virtual {v0}, Landroid/telecom/Connection;->setActive()V

    :cond_2
    const/4 v0, 0x0

    .line 4791
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 4792
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 4793
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private endConnectionServiceCall(J)V
    .locals 3

    .line 5563
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    .line 5564
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda1;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 5588
    invoke-static {v0, p1, p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 5590
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private fetchBluetoothDeviceName()V
    .locals 3

    .line 4925
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4929
    :try_start_0
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4930
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->fetchingBluetoothDeviceName:Z

    .line 4931
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->serviceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v1, p0, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 4933
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .line 5116
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentForegroundType()I
    .locals 1

    .line 5337
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->gotMediaProjection:Z

    invoke-static {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType(Landroid/content/ContextWrapper;Z)I

    move-result v0

    return v0
.end method

.method private static getCurrentForegroundType(Landroid/content/ContextWrapper;Z)I
    .locals 2

    .line 5340
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    const/16 p0, 0xe2

    return p0

    .line 5349
    :cond_0
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x40

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5352
    :goto_0
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2

    or-int/lit16 v0, v0, 0x80

    :cond_2
    if-eqz p1, :cond_3

    or-int/lit8 v0, v0, 0x20

    :cond_3
    or-int/lit8 p0, v0, 0x2

    return p0
.end method

.method private getEmoji()[Ljava/lang/String;
    .locals 4

    .line 3599
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3601
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 3602
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3605
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/EncryptionKeyEmojifier;->emojifyForCall([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkType()I
    .locals 3

    .line 5071
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_3

    .line 5074
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    const/16 v0, 0x9

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    return v0

    :cond_1
    const/4 v0, 0x6

    return v0

    .line 5076
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0xb

    return v0

    :pswitch_1
    const/4 v0, 0x5

    return v0

    :pswitch_2
    const/4 v0, 0x4

    return v0

    :pswitch_3
    const/4 v0, 0x3

    return v0

    :pswitch_4
    const/4 v0, 0x2

    return v0

    :pswitch_5
    return v2

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5126
    :try_start_0
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$User;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "50_50"

    if-eqz v2, :cond_1

    .line 5127
    :try_start_1
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 5128
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 5129
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v1, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 5131
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 5134
    :cond_0
    :try_start_2
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5135
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 5136
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 5138
    :try_start_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 5143
    :cond_1
    move-object v2, p2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_3

    .line 5144
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    if-eqz v4, :cond_3

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_3

    .line 5145
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {v4, v5, v1, v3}, Lorg/telegram/messenger/ImageLoader;->getImageFromMemory(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5147
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 5150
    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 5151
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 5152
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getInstance(I)Lorg/telegram/messenger/FileLoader;

    move-result-object p1

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Chat;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->photo_small:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-virtual {p1, v2, v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 5154
    :try_start_5
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 5160
    :goto_0
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    if-nez v1, :cond_5

    .line 5163
    invoke-static {p0}, Lorg/telegram/ui/ActionBar/Theme;->createDialogsResources(Landroid/content/Context;)V

    .line 5165
    instance-of p0, p2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz p0, :cond_4

    .line 5166
    new-instance p0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_2

    .line 5168
    :cond_4
    new-instance p0, Lorg/telegram/ui/Components/AvatarDrawable;

    check-cast p2, Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/AvatarDrawable;-><init>(Lorg/telegram/tgnet/TLRPC$Chat;)V

    :goto_2
    const/high16 p1, 0x42280000    # 42.0f

    .line 5170
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p2

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5171
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5172
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/AvatarDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 5175
    :cond_5
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 5176
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 5177
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 5178
    invoke-virtual {p1}, Landroid/graphics/Path;->toggleInverseFillType()V

    .line 5179
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 5180
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 5181
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-object v1
.end method

.method public static getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;
    .locals 1

    .line 982
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    return-object v0
.end method

.method public static getSharedState()Lorg/telegram/messenger/voip/VoIPServiceState;
    .locals 2

    .line 969
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_0

    return-object v0

    .line 972
    :cond_0
    sget-object v0, Lorg/telegram/messenger/voip/VoIPGroupNotification;->currentState:Lorg/telegram/messenger/voip/VoIPGroupNotification$State;

    if-eqz v0, :cond_1

    return-object v0

    .line 975
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 976
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPPreNotificationService;->getState()Lorg/telegram/messenger/voip/VoIPPreNotificationService$State;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getStatsNetworkType()I
    .locals 1

    .line 3648
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 3649
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 3650
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4593
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4594
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4595
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 4596
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    return-object v0
.end method

.method private getUIActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 4479
    const-class v0, Lorg/telegram/ui/LaunchActivity;

    return-object v0
.end method

.method public static hasRtmpStream()Z
    .locals 1

    .line 965
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private initializeAccountRelatedThings()V
    .locals 2

    .line 4629
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateServerConfig()V

    .line 4630
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4631
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    return-void
.end method

.method private initiateActualEncryptedCall()V
    .locals 40

    move-object/from16 v1, p0

    .line 3351
    const-string v0, "calls_access_hashes"

    const-string v2, " "

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3352
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3353
    iput-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 3356
    :cond_0
    :try_start_0
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_1

    .line 3357
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InitCall: keyID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_15

    .line 3359
    :cond_1
    :goto_0
    iget v3, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3360
    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3363
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 3365
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 3367
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v7, v7, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3368
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v5

    const/16 v7, 0x14

    const/4 v8, 0x2

    if-le v5, v7, :cond_7

    .line 3371
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide v9, 0x7fffffffffffffffL

    move-object v7, v4

    .line 3372
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3373
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 3374
    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 3375
    array-length v13, v12

    if-ge v13, v8, :cond_5

    .line 3376
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 3379
    :cond_5
    :try_start_1
    aget-object v12, v12, v8

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    cmp-long v14, v12, v9

    if-gez v14, :cond_4

    move-object v7, v11

    move-wide v9, v12

    goto :goto_3

    .line 3385
    :catch_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_3

    .line 3390
    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3393
    :cond_7
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v6}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v0, 0x0

    .line 3397
    :try_start_3
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move v2, v0

    .line 3401
    :goto_4
    :try_start_4
    invoke-static {}, Landroid/media/audiofx/NoiseSuppressor;->isAvailable()Z

    move-result v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move v3, v0

    .line 3405
    :goto_5
    :try_start_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 3408
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    .line 3409
    iget v7, v6, Lorg/telegram/messenger/MessagesController;->callConnectTimeout:I

    int-to-double v9, v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v14, v9, v11

    .line 3410
    iget v6, v6, Lorg/telegram/messenger/MessagesController;->callPacketTimeout:I

    int-to-double v6, v6

    div-double v16, v6, v11

    .line 3411
    const-string v6, "VoipDataSaving"

    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getDataSavingDefault()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-direct {v1, v6}, Lorg/telegram/messenger/voip/VoIPService;->convertDataSavingMode(I)I

    move-result v18

    .line 3412
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getGlobalServerConfig()Lorg/telegram/messenger/voip/Instance$ServerConfig;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v2, :cond_9

    .line 3413
    iget-boolean v2, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemAec:Z

    if-nez v2, :cond_8

    goto :goto_6

    :cond_8
    move/from16 v20, v0

    goto :goto_7

    :cond_9
    :goto_6
    move/from16 v20, v7

    :goto_7
    if-eqz v3, :cond_b

    .line 3414
    iget-boolean v2, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->useSystemNs:Z

    if-nez v2, :cond_a

    goto :goto_8

    :cond_a
    move/from16 v21, v0

    goto :goto_9

    :cond_b
    :goto_8
    move/from16 v21, v7

    .line 3415
    :goto_9
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v3, ""

    if-eqz v2, :cond_c

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "voip"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v9, v9, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    move-object/from16 v25, v2

    goto :goto_b

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v9, v9, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    .line 3416
    :goto_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v9, v9, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v26

    .line 3417
    new-instance v28, Lorg/telegram/messenger/voip/Instance$Config;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-boolean v9, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->p2p_allowed:Z

    iget-boolean v6, v6, Lorg/telegram/messenger/voip/Instance$ServerConfig;->enableStunMarking:Z

    iget-object v10, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;

    iget v10, v10, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    iget-object v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->custom_parameters:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-nez v2, :cond_d

    goto :goto_c

    :cond_d
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    :goto_c
    const/16 v22, 0x1

    const/16 v23, 0x0

    move/from16 v24, v6

    move/from16 v19, v9

    move/from16 v27, v10

    move-object/from16 v13, v28

    move-object/from16 v28, v3

    invoke-direct/range {v13 .. v28}, Lorg/telegram/messenger/voip/Instance$Config;-><init>(DDIZZZZZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v28, v13

    move-object/from16 v2, v25

    .line 3418
    iput-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->lastLogFilePath:Ljava/lang/String;

    .line 3421
    new-instance v2, Ljava/io/File;

    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v6, "voip_persistent_state.json"

    invoke-direct {v2, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    .line 3424
    const-string v2, "dbg_force_tcp_in_calls"

    invoke-interface {v5, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v3, 0x3

    move/from16 v16, v3

    goto :goto_d

    :cond_e
    move/from16 v16, v8

    .line 3426
    :goto_d
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v6, v3, [Lorg/telegram/messenger/voip/Instance$Endpoint;

    .line 3427
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v10, v0

    :goto_e
    if-ge v10, v3, :cond_10

    .line 3429
    iget-object v11, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object v11, v11, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;

    move-object v12, v9

    .line 3430
    new-instance v9, Lorg/telegram/messenger/voip/Instance$Endpoint;

    move v13, v10

    instance-of v10, v11, Lorg/telegram/tgnet/TLRPC$TL_phoneConnectionWebrtc;

    iget-wide v14, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    move/from16 v17, v13

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ip:Ljava/lang/String;

    move-wide/from16 v18, v14

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->ipv6:Ljava/lang/String;

    iget v15, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->port:I

    iget-object v7, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->peer_tag:[B

    move/from16 v24, v8

    iget-boolean v8, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->turn:Z

    iget-boolean v4, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->stun:Z

    move/from16 v26, v0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->username:Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->password:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-boolean v0, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->tcp:Z

    move/from16 v22, v0

    move-object v0, v12

    move-wide/from16 v38, v18

    move/from16 v19, v4

    move/from16 v18, v8

    move/from16 v4, v17

    move-object/from16 v17, v7

    move-object v7, v11

    move-wide/from16 v11, v38

    invoke-direct/range {v9 .. v22}, Lorg/telegram/messenger/voip/Instance$Endpoint;-><init>(ZJLjava/lang/String;Ljava/lang/String;II[BZZLjava/lang/String;Ljava/lang/String;Z)V

    aput-object v9, v6, v4

    .line 3431
    instance-of v8, v7, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    if-eqz v8, :cond_f

    .line 3432
    move-object v11, v7

    check-cast v11, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    iget-wide v7, v11, Lorg/telegram/tgnet/TLRPC$PhoneConnection;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    add-int/lit8 v10, v4, 0x1

    move-object v9, v0

    move/from16 v8, v24

    move/from16 v0, v26

    const/4 v4, 0x0

    const/4 v7, 0x1

    goto :goto_e

    :cond_10
    move/from16 v26, v0

    move/from16 v24, v8

    move-object v0, v9

    .line 3435
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_12

    .line 3436
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3437
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move/from16 v7, v26

    .line 3438
    :goto_f
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 3439
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_11
    move/from16 v0, v26

    :goto_10
    if-ge v0, v3, :cond_12

    .line 3442
    aget-object v7, v6, v0

    iget-wide v8, v7, Lorg/telegram/messenger/voip/Instance$Endpoint;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v8, v9}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v7, Lorg/telegram/messenger/voip/Instance$Endpoint;->reflectorId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_12
    if-eqz v2, :cond_13

    .line 3446
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda2;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3451
    :cond_13
    const-string/jumbo v0, "proxy_enabled"

    move/from16 v2, v26

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "proxy_enabled_calls"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3452
    const-string/jumbo v0, "proxy_ip"

    const/4 v2, 0x0

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3453
    const-string/jumbo v3, "proxy_secret"

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3454
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3455
    new-instance v2, Lorg/telegram/messenger/voip/Instance$Proxy;

    const-string/jumbo v3, "proxy_port"

    const/4 v4, 0x0

    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "proxy_user"

    const/4 v7, 0x0

    invoke-interface {v5, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "proxy_pass"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/telegram/messenger/voip/Instance$Proxy;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v31, v2

    goto :goto_11

    :cond_14
    const/4 v7, 0x0

    move-object/from16 v31, v7

    .line 3460
    :goto_11
    new-instance v0, Lorg/telegram/messenger/voip/Instance$EncryptionKey;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    iget-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/voip/Instance$EncryptionKey;-><init>([BZ)V

    .line 3462
    const-string v2, "2.7.7"

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_15

    const/4 v7, 0x1

    goto :goto_12

    :cond_15
    move v7, v4

    .line 3463
    :goto_12
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v8, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v5, v8, v2

    if-eqz v5, :cond_16

    if-nez v7, :cond_16

    .line 3464
    invoke-static {v8, v9}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 3465
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v2, v5, v4

    .line 3466
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v4, v2, v4

    .line 3468
    :cond_16
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-nez v2, :cond_18

    .line 3469
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v2, :cond_17

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_17

    .line 3470
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/16 v26, 0x0

    aget-object v3, v3, v26

    iget-boolean v4, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v3

    aput-wide v3, v2, v26

    .line 3471
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v24, v2, v26

    goto :goto_13

    .line 3473
    :cond_17
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/16 v26, 0x0

    aput v26, v2, v26

    .line 3477
    :cond_18
    :goto_13
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Ljava/lang/String;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v32

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v34, v3, v4

    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v35, v3, v4

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;

    invoke-direct {v3, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda3;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    move-object/from16 v33, v0

    move-object/from16 v37, v3

    move-object/from16 v30, v6

    invoke-static/range {v27 .. v37}, Lorg/telegram/messenger/voip/Instance;->makeInstance(Ljava/lang/String;Lorg/telegram/messenger/voip/Instance$Config;Ljava/lang/String;[Lorg/telegram/messenger/voip/Instance$Endpoint;Lorg/telegram/messenger/voip/Instance$Proxy;ILorg/telegram/messenger/voip/Instance$EncryptionKey;Lorg/webrtc/VideoSink;JLorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;)Lorg/telegram/messenger/voip/NativeInstance;

    move-result-object v0

    aput-object v0, v2, v4

    .line 3484
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda4;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnStateUpdatedListener;)V

    .line 3485
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda5;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalBarsUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnSignalBarsUpdatedListener;)V

    .line 3486
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda6;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnSignalDataListener(Lorg/telegram/messenger/voip/Instance$OnSignalingDataListener;)V

    .line 3487
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda7;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setOnRemoteMediaStateUpdatedListener(Lorg/telegram/messenger/voip/Instance$OnRemoteMediaStateUpdatedListener;)V

    .line 3497
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v4

    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 3499
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    if-eq v7, v0, :cond_19

    .line 3500
    iput-boolean v7, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    const/4 v2, 0x0

    .line 3501
    :goto_14
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_19

    .line 3502
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3503
    iget-boolean v3, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    invoke-interface {v0, v3}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onVideoAvailableChange(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3506
    :cond_19
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    const/16 v26, 0x0

    aput-boolean v26, v0, v26

    .line 3508
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$8;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$8;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_16

    .line 3518
    :goto_15
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_1a

    .line 3519
    const-string v2, "error starting call"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3521
    :cond_1a
    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    :goto_16
    return-void
.end method

.method public static isAnyKindOfCallActive()Z
    .locals 3

    .line 5664
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5665
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private static isDeviceCompatibleWithConnectionServiceAPI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isFinished()Z
    .locals 2

    .line 5671
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private isRinging()Z
    .locals 2

    .line 1231
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private synthetic lambda$acceptIncomingCall$101(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 1

    if-nez p1, :cond_2

    .line 4375
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 4376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "accept call ok! "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 4378
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 4379
    instance-of p2, p1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;

    if-eqz p2, :cond_1

    .line 4380
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V

    :cond_1
    return-void

    .line 4383
    :cond_2
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_3

    .line 4384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error on phone.acceptCall: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4386
    :cond_3
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$102(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 4373
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda46;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$acceptIncomingCall$103(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    if-nez p3, :cond_7

    .line 4324
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 4325
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 4326
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v0, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v0}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 4327
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_0

    .line 4328
    const-string/jumbo p1, "stopping VoIP service, bad prime"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4330
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 4334
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 4335
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 4336
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 4337
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_2
    const/16 p2, 0x100

    .line 4339
    new-array v0, p2, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_3

    .line 4341
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4343
    :cond_3
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez p3, :cond_5

    .line 4344
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 4345
    const-string p1, "call is null"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4347
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 4350
    :cond_5
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    .line 4351
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 4352
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    const/4 v3, 0x1

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 4353
    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 4354
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->g_a_hash:[B

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    .line 4356
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 4357
    array-length p3, p1

    if-le p3, p2, :cond_6

    .line 4358
    new-array p3, p2, [B

    .line 4359
    invoke-static {p1, v3, p3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 4363
    :cond_6
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;-><init>()V

    .line 4364
    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;->g_b:[B

    .line 4365
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 4366
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v0, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 4367
    iget-wide v0, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 4368
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;-><init>()V

    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    .line 4369
    iput-boolean v3, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v3, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_p2p:Z

    const/16 p3, 0x41

    .line 4370
    iput p3, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->min_layer:I

    .line 4371
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result p3

    iput p3, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    .line 4372
    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$acceptCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/voip/NativeInstance;->getAllVersions()[Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 4373
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda87;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/high16 v0, 0x10000

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 4390
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method private synthetic lambda$acknowledgeCall$12(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V
    .locals 3

    .line 1204
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1207
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receivedCall response = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_3

    .line 1211
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 1212
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "error on receivedCall: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1214
    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1216
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_4

    .line 1217
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, p2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p2}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string/jumbo p1, "telecom"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    .line 1219
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 1220
    const-string v0, "call_type"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 1221
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/telecom/TelecomManager;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    :cond_4
    if-eqz p3, :cond_5

    .line 1224
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startRinging()V

    :cond_5
    :goto_0
    return-void
.end method

.method private synthetic lambda$acknowledgeCall$13(ZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1203
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda19;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$callEnded$122()V
    .locals 1

    const/16 v0, 0xb

    .line 5531
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callEnded$123()V
    .locals 2

    .line 5534
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 5535
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 5536
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$callEnded$124()V
    .locals 7

    .line 5547
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$callEnded$125()V
    .locals 7

    .line 5549
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatEndId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$callFailed$114()V
    .locals 1

    const/4 v0, 0x4

    .line 5404
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$callFailed$115()V
    .locals 7

    .line 5407
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$configureDeviceForCall$110(Landroid/media/AudioManager;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 4852
    invoke-virtual {p1, p0, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    .line 4853
    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    .line 4854
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v2

    .line 4855
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 4856
    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_3

    if-eq v4, v1, :cond_1

    goto :goto_2

    .line 4858
    :cond_1
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v1, :cond_2

    .line 4859
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 4861
    :try_start_0
    invoke-virtual {p1}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 4863
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 4866
    :cond_2
    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4867
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 4875
    :cond_3
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4876
    invoke-virtual {v2, v3}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 4871
    :cond_4
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4872
    invoke-virtual {v2, v0}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_2

    .line 4879
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4880
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_2

    .line 4882
    :cond_6
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 4883
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    if-eqz p1, :cond_7

    .line 4884
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 4886
    :cond_7
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 4888
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastSensorEvent:Landroid/hardware/SensorEvent;

    if-eqz p1, :cond_8

    .line 4890
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 4893
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 4894
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    return-void
.end method

.method private synthetic lambda$configureDeviceForCall$111(Landroid/media/AudioManager;)V
    .locals 1

    .line 4836
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4837
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 4838
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4839
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda98;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 4847
    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4849
    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4851
    :goto_1
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda99;-><init>(Lorg/telegram/messenger/voip/VoIPService;Landroid/media/AudioManager;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$convertToConferenceCall$30()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2102
    invoke-direct {p0, v2, v0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$66(I[ZILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 2921
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2922
    aget-boolean p1, p2, v1

    xor-int/2addr p1, v0

    invoke-direct {p0, v1, p3, p4, p1}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    goto :goto_0

    .line 2924
    :cond_0
    invoke-direct {p0, p3, p4, v0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    .line 2926
    :goto_0
    aput-boolean v1, p2, v1

    return-void

    .line 2928
    :cond_1
    invoke-direct {p0, p3, p4}, Lorg/telegram/messenger/voip/VoIPService;->startScreenCapture(ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$68(I[I[F[Z)V
    .locals 11

    .line 2931
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_2

    .line 2934
    :cond_0
    invoke-virtual {v0, p2, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->processVoiceLevelsUpdate([I[F[Z)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    move v1, p1

    move v2, v1

    .line 2937
    :goto_0
    array-length v3, p2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3

    .line 2938
    aget v3, p2, v1

    if-nez v3, :cond_2

    .line 2939
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v3, :cond_1

    iget-wide v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastTypingTimeSend:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x1388

    sub-long/2addr v7, v9

    cmp-long v3, v5, v7

    if-gez v3, :cond_1

    aget v3, p3, v1

    const v5, 0x3dcccccd    # 0.1f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    aget-boolean v3, p4, v1

    if-eqz v3, :cond_1

    .line 2940
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lorg/telegram/messenger/voip/VoIPService;->lastTypingTimeSend:J

    .line 2941
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;-><init>()V

    .line 2942
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_speakingInGroupCallAction;-><init>()V

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

    .line 2943
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v5}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v5

    iput-object v5, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_setTyping;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2944
    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v5}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v5

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda85;-><init>()V

    invoke-virtual {v5, v3, v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2948
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v5, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    aget v6, p3, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, p1

    invoke-virtual {v3, v5, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_1

    .line 2952
    :cond_2
    aget v2, p3, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    move v2, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2955
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v2, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2956
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->audioLevelsCallback:Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;

    if-eqz p1, :cond_4

    .line 2957
    invoke-interface {p1, p2, p3, p4}, Lorg/telegram/messenger/voip/NativeInstance$AudioLevelsCallback;->run([I[F[Z)V

    :cond_4
    :goto_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$69(J[ILjava/util/ArrayList;)V
    .locals 0

    .line 2965
    sget-object p4, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p4, :cond_1

    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p4, :cond_0

    goto :goto_0

    .line 2968
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->broadcastUnknownParticipants(J[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$70(IJ[I)V
    .locals 1

    .line 2961
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2964
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda122;

    invoke-direct {p1, p0, p2, p3, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda122;-><init>(Lorg/telegram/messenger/voip/VoIPService;J[I)V

    invoke-virtual {v0, p4, p1}, Lorg/telegram/messenger/ChatObject$Call;->processUnknownVideoParticipants([ILorg/telegram/messenger/ChatObject$Call$OnParticipantsLoad;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$createGroupInstance$71(Ljava/lang/String;)V
    .locals 1

    .line 2990
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$createGroupInstance$72(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2999
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$73(Ljava/lang/String;IJIILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p8

    .line 2990
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda47;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2991
    iget-object v3, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v3, v1

    if-nez v4, :cond_0

    return-void

    :cond_0
    if-eqz p7, :cond_1

    .line 2995
    move-object/from16 v1, p7

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    .line 2996
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$upload_File;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v7, v1, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    move-wide/from16 v5, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-wide/from16 v9, p9

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    return-void

    .line 2998
    :cond_1
    const-string v3, "GROUPCALL_JOIN_MISSING"

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2999
    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda48;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 3002
    :cond_2
    const-string v3, "TIME_TOO_BIG"

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, -0x1

    :goto_0
    move v13, v2

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 3007
    :goto_2
    iget-object v2, v0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v9, v2, v1

    const/4 v12, 0x0

    move-wide/from16 v10, p3

    move/from16 v16, p5

    move/from16 v17, p6

    move-wide/from16 v14, p9

    invoke-virtual/range {v9 .. v17}, Lorg/telegram/messenger/voip/NativeInstance;->onStreamPartAvailable(JLjava/nio/ByteBuffer;IJII)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$74(Ljava/lang/String;I)V
    .locals 1

    .line 3011
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$createGroupInstance$75(IJJII)V
    .locals 8

    if-eqz p1, :cond_0

    return-void

    :cond_0
    move-wide v4, p2

    .line 2974
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    const/high16 p3, 0x20000

    .line 2975
    iput p3, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 2976
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;-><init>()V

    .line 2977
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2978
    iput-wide v4, p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->time_ms:J

    const-wide/16 v0, 0x1f4

    cmp-long p4, p4, v0

    const/4 p5, 0x1

    if-nez p4, :cond_1

    .line 2980
    iput p5, p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->scale:I

    :cond_1
    if-eqz p6, :cond_2

    .line 2983
    iget p4, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    or-int/2addr p4, p5

    iput p4, p3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->flags:I

    .line 2984
    iput p6, p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_channel:I

    .line 2985
    iput p7, p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallStream;->video_quality:I

    .line 2987
    :cond_2
    iput-object p3, p2, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 2988
    new-instance p3, Ljava/lang/StringBuilder;

    if-nez p6, :cond_3

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, ""

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v2, p3

    goto :goto_1

    :cond_3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2989
    :goto_1
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;

    move-object v1, p0

    move v3, p1

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda16;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IJII)V

    iget-object p1, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget p6, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    const/high16 p4, 0x10000

    const/4 p5, 0x2

    move-object p1, p3

    move-object p3, v0

    invoke-virtual/range {p1 .. p6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    move-result p1

    .line 3011
    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;

    invoke-direct {p2, p0, v2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda17;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$76(IJI)V
    .locals 1

    if-nez p1, :cond_0

    .line 3017
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

    .line 3018
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_1

    .line 3020
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p4, 0x1

    invoke-virtual {p3, p2, p4}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 3021
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private synthetic lambda$createGroupInstance$77(IJJII)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 3016
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda107;

    move-wide p4, p2

    move p3, p6

    move p6, p7

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda107;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJI)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$createGroupInstance$78(IJLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;J)V
    .locals 1

    const-wide/16 p6, 0x0

    if-nez p5, :cond_1

    .line 3037
    check-cast p4, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;

    .line 3038
    iget-object p5, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_0

    .line 3039
    iget-object p5, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    const/4 p6, 0x0

    invoke-virtual {p5, p6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;

    iget-wide p6, p5, Lorg/telegram/tgnet/tl/TL_phone$TL_groupCallStreamChannel;->last_timestamp_ms:J

    .line 3041
    :cond_0
    iget-object p5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-boolean v0, p5, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    if-nez v0, :cond_1

    .line 3042
    iget-object p4, p4, Lorg/telegram/tgnet/tl/TL_phone$groupCallStreamChannels;->channels:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Lorg/telegram/messenger/ChatObject$Call;->createRtmpStreamParticipant(Ljava/util/List;)V

    .line 3043
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lorg/telegram/messenger/ChatObject$Call;->loadedRtmpStreamParticipant:Z

    .line 3046
    :cond_1
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, p4, p1

    if-eqz p1, :cond_2

    .line 3047
    invoke-virtual {p1, p2, p3, p6, p7}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$createGroupInstance$79(IJ)V
    .locals 7

    .line 3025
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz v0, :cond_2

    .line 3026
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;-><init>()V

    .line 3027
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, v2, Lorg/telegram/tgnet/tl/TL_phone$getGroupCallStreamChannels;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 3028
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3034
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda35;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJ)V

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget v6, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->stream_dc_id:I

    const/high16 v4, 0x10000

    const/4 v5, 0x2

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegateTimestamp;III)I

    return-void

    .line 3029
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    const-wide/16 v0, 0x0

    .line 3030
    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    return-void

    .line 3051
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p1, v0, p1

    if-eqz p1, :cond_3

    .line 3052
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, p2, p3, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->onRequestTimeComplete(JJ)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$createGroupInstance$80(IIZ)V
    .locals 0

    .line 3056
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    return-void
.end method

.method private synthetic lambda$declineIncomingCall$104()V
    .locals 2

    .line 4409
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 4410
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$declineIncomingCall$105(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 4457
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 4458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    return-void

    .line 4461
    :cond_0
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_1

    .line 4462
    move-object p2, p1

    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 4463
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 4465
    :cond_1
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_2

    .line 4466
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$editCallMember$90(ILjava/lang/Runnable;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 3736
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getMessagesController()Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 3738
    const-string p1, "GROUPCALL_VIDEO_TOO_MUCH"

    iget-object p3, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3739
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 3743
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$endConnectionServiceCall$126()V
    .locals 4

    .line 5565
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_6

    .line 5566
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    .line 5580
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 5574
    :cond_0
    new-instance v1, Landroid/telecom/DisconnectCause;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 5577
    :cond_1
    new-instance v1, Landroid/telecom/DisconnectCause;

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    :goto_0
    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 5571
    :cond_3
    new-instance v1, Landroid/telecom/DisconnectCause;

    invoke-direct {v1, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_2

    .line 5568
    :cond_4
    new-instance v1, Landroid/telecom/DisconnectCause;

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x6

    :goto_1
    invoke-direct {v1, v2}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 5583
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->destroy()V

    const/4 v0, 0x0

    .line 5584
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    :cond_6
    return-void
.end method

.method private synthetic lambda$getConnectionAndStartCall$106()V
    .locals 1

    const/4 v0, 0x0

    .line 4492
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 4493
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$hangUp$4(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1036
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 1037
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 1038
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$hangUp$5(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1046
    instance-of p2, p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    if-eqz p2, :cond_0

    .line 1047
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_updates;

    .line 1048
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$84()V
    .locals 2

    .line 3446
    const-string v0, "This call uses TCP which will degrade its quality."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$85([I[F[Z)V
    .locals 4

    .line 3478
    sget-object p1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3481
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->webRtcMicAmplitudeEvent:I

    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-virtual {p1, p3, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 3482
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p3, Lorg/telegram/messenger/NotificationCenter;->webRtcSpeakerAmplitudeEvent:I

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v0

    invoke-virtual {p1, p3, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$86(II)V
    .locals 2

    .line 3488
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    .line 3489
    iput p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    .line 3490
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear()V

    const/4 v0, 0x0

    .line 3492
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3493
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3494
    invoke-interface {v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onMediaStateUpdated(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initiateActualEncryptedCall$87(II)V
    .locals 1

    .line 3487
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda43;-><init>(Lorg/telegram/messenger/voip/VoIPService;II)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$loadResources$108()V
    .locals 3

    .line 4766
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    .line 4767
    sget v1, Lorg/telegram/messenger/R$raw;->voip_connecting:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    .line 4768
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_ringback:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    .line 4769
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_failed:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spFailedID:I

    .line 4770
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_end:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spEndId:I

    .line 4771
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_busy:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    .line 4772
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voicechat_leave:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatEndId:I

    .line 4773
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voicechat_join:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatStartId:I

    .line 4774
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voicechat_connecting:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    .line 4775
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_onallowtalk:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spAllowTalkId:I

    .line 4776
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    sget v1, Lorg/telegram/messenger/R$raw;->voip_recordstart:I

    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spStartRecordId:I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$16()V
    .locals 7

    .line 1713
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spBusyId:I

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$17()V
    .locals 9

    .line 1792
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 1793
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 1795
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spRingbackID:I

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$onCallUpdated$18()V
    .locals 2

    const/4 v0, 0x0

    .line 1802
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x3

    .line 1803
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$116()V
    .locals 2

    .line 5448
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 5449
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 5450
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$117()V
    .locals 9

    .line 5478
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 5479
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 5481
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    goto :goto_0

    :goto_1
    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$onConnectionStateChanged$118(I)V
    .locals 5

    .line 5429
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 5433
    iget-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 5434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 5439
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    :cond_2
    if-ne p1, v0, :cond_6

    .line 5443
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 5444
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 5445
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 5447
    :cond_3
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda20;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 5453
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 5454
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->wasEstablished:Z

    .line 5455
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isProximityNear:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-nez v2, :cond_4

    .line 5457
    :try_start_0
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/ActionBar/BaseFragment;->getFragmentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->performHapticFeedback(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5460
    :catch_0
    :cond_4
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$11;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$11;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 5469
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 5470
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementSentItemsCount(III)V

    goto :goto_0

    .line 5472
    :cond_5
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v0

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v3

    invoke-virtual {v0, v3, v2, v1}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    :cond_6
    :goto_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 5476
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isCallEnded:Z

    if-nez v0, :cond_7

    .line 5477
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda21;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 5484
    :cond_7
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$onDestroy$99()V
    .locals 1

    .line 4257
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 4258
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSignalBarCountChanged$121(I)V
    .locals 2

    .line 5499
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    const/4 v0, 0x0

    .line 5500
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5501
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 5502
    invoke-interface {v1, p1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onSignalBarsCountChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStartCommand$1(Ljava/lang/Boolean;)V
    .locals 1

    .line 885
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    goto :goto_0

    .line 886
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 887
    invoke-virtual {p0, v0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    return-void
.end method

.method private synthetic lambda$onStartCommand$2()V
    .locals 1

    const/4 v0, 0x0

    .line 909
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    .line 910
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startOutgoingCall()V

    return-void
.end method

.method private synthetic lambda$onStartCommand$3()V
    .locals 3

    .line 960
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->voipServiceCreated:I

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$playAllowTalkSound$120()V
    .locals 7

    .line 5493
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spAllowTalkId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$playConnectedSound$88()V
    .locals 7

    .line 3526
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatStartId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$playStartRecordSound$119()V
    .locals 7

    .line 5489
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->spStartRecordId:I

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private synthetic lambda$processAcceptedCall$19(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1880
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1882
    :cond_0
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 1883
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    return-void
.end method

.method private synthetic lambda$processAcceptedCall$20(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1878
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;

    invoke-direct {v0, p0, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda45;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$setMicMute$0()V
    .locals 3

    .line 559
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 562
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 563
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$setupCaptureDevice$14()V
    .locals 1

    const/4 v0, 0x0

    .line 1336
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$31(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    .line 2145
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const-wide/16 v1, 0x320

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 2146
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2147
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->users:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v7}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2148
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->chats:Ljava/util/ArrayList;

    invoke-virtual {p3, v0, v7}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2151
    const-class p3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {p1, p3}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    move-object v8, v4

    move v0, v7

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v0, v0, 0x1

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 2152
    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_0

    :cond_0
    if-nez v8, :cond_1

    goto/16 :goto_5

    .line 2160
    :cond_1
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 2162
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2164
    :goto_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1, p2, v5, v6, v8}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 2165
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1, v3}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 2166
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1, v5, v6, p2}, Lorg/telegram/messenger/MessagesController;->putGroupCall(JLorg/telegram/messenger/ChatObject$Call;)V

    .line 2167
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iput-object p2, p1, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2168
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object p2, p1, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 2169
    iget-wide v0, v8, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    .line 2170
    iget-object p2, p1, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {p2, v8}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2171
    invoke-direct {p0, v7, v7, v4, v7}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    .line 2172
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 2173
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 2174
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    .line 2175
    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/ChatObject$Call;->addInvitedUser(J)V

    goto :goto_2

    .line 2179
    :cond_3
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2180
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->finish()V

    .line 2182
    :cond_4
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    goto/16 :goto_5

    .line 2183
    :cond_5
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_9

    .line 2185
    :try_start_1
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p3, v0

    .line 2187
    invoke-static {p3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2189
    :goto_3
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 2190
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p3, p2, v5, v6, p1}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/tl/TL_phone$groupCall;)V

    .line 2191
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2, v3}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 2192
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2, v5, v6, p3}, Lorg/telegram/messenger/MessagesController;->putGroupCall(JLorg/telegram/messenger/ChatObject$Call;)V

    .line 2193
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iput-object p3, p2, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2194
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object p3, p2, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 2195
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v0, p3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    .line 2196
    iput-object p1, p2, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2197
    invoke-direct {p0, v7, v7, v4, v7}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    .line 2198
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    if-eqz p1, :cond_7

    .line 2199
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 2200
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_6

    .line 2201
    invoke-virtual {v0, p2, p3}, Lorg/telegram/messenger/ChatObject$Call;->addInvitedUser(J)V

    goto :goto_4

    .line 2205
    :cond_7
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 2206
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->finish()V

    .line 2208
    :cond_8
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    :goto_5
    return-void

    .line 2210
    :cond_9
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p3, p3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v7

    aput-object p3, v1, v3

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2211
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$32(Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2144
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p2, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda8;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$33(Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 2257
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2258
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 2259
    iget p4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2260
    iget p4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p4

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p4, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2261
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {p4, v0, v2, v3, p1}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/tl/TL_phone$groupCall;)V

    .line 2262
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput-object p1, p4, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2263
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object p1, p4, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2264
    invoke-direct {p0, v1, p2, p3, v1}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 2266
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 p3, 0x6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    iget-object p4, p4, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    invoke-virtual {p1, p2, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2267
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$34(ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 2256
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda114;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda114;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;ILjava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$36(I)V
    .locals 2

    .line 2333
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$37(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 2

    .line 2353
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$38(Lorg/telegram/tgnet/TLRPC$Updates;J)V
    .locals 4

    .line 2427
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2428
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 2429
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v0, :cond_4

    .line 2430
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    .line 2432
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v1, :cond_1

    .line 2433
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 2434
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    goto :goto_1

    .line 2435
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v0, v2

    .line 2436
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2437
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 2438
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_2

    .line 2439
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 2440
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v3, :cond_3

    .line 2441
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    .line 2444
    :cond_2
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v3, :cond_3

    .line 2445
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move p1, v2

    .line 2450
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 2451
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMessageIds:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->make(I)Lorg/telegram/messenger/ChatObject$Call$InvitedUser;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object v0, v1, p3

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$39(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8

    .line 2472
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2474
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v5}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    const/16 v3, 0x22

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v2, v0

    .line 2475
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setRestrictedUsers(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2476
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$42(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 8

    .line 2460
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;-><init>()V

    .line 2461
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2462
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2463
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2464
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2465
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_0

    .line 2466
    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/ChatObject$Call;->removeInvitedUser(J)V

    .line 2468
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2469
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;->id:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2471
    :cond_1
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda31;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2478
    iget p1, v2, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2479
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2481
    :cond_2
    iget p1, v2, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;

    invoke-direct {p2, v3, v4, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda32;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$43(JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2422
    instance-of v0, p7, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 2423
    check-cast p7, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2424
    iget p8, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p8

    const/4 v0, 0x0

    invoke-virtual {p8, p7, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2425
    new-instance p8, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda105;

    invoke-direct {p8, p0, p7, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda105;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 2455
    const-string p7, "USER_PRIVACY_RESTRICTED"

    iget-object p8, p8, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_1

    .line 2456
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2458
    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-ne p1, p5, :cond_2

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2459
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda106;

    invoke-direct {p1, p0, p3, p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda106;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$44(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 2397
    instance-of v3, v0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    if-eqz v3, :cond_1

    .line 2398
    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;

    .line 2399
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;->link:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2400
    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2402
    new-instance v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;

    invoke-direct {v4}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V

    .line 2403
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 2404
    iget-wide v6, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 2405
    iget-wide v6, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v6, v5, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 2406
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;-><init>()V

    iput-object v2, v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 2407
    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->slug:Ljava/lang/String;

    .line 2408
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    div-long/2addr v2, v5

    long-to-int v2, v2

    iput v2, v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->duration:I

    const-wide/16 v9, 0x0

    .line 2409
    iput-wide v9, v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->connection_id:J

    .line 2410
    iget-boolean v2, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConferenceVideo:Z

    iput-boolean v2, v4, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->video:Z

    .line 2411
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    const/4 v11, 0x0

    invoke-virtual {v2, v4, v11}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2413
    iget-object v7, v0, Lorg/telegram/tgnet/tl/TL_phone$exportedGroupCallInvite;->link:Ljava/lang/String;

    .line 2414
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v6

    .line 2415
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v12, 0x0

    invoke-direct {v5, v12}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2416
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2417
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2418
    new-instance v14, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;

    invoke-direct {v14}, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;-><init>()V

    .line 2419
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v0

    iput-object v0, v14, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    move-object/from16 v15, p3

    .line 2420
    iget-object v0, v15, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v0, v14, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2421
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    move-object/from16 v16, v0

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;

    move/from16 p1, v8

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda66;-><init>(Lorg/telegram/messenger/voip/VoIPService;JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)V

    invoke-virtual {v8, v14, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move/from16 v8, p1

    goto :goto_0

    :cond_0
    move/from16 p1, v8

    .line 2497
    iput-object v11, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 2499
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v12

    aput-object v4, v5, p1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    aput-object v3, v5, v4

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$45(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .line 2396
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda115;

    invoke-direct {p4, p0, p3, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda115;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$46(Lorg/telegram/tgnet/TLRPC$Updates;J)V
    .locals 4

    .line 2521
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->update:Lorg/telegram/tgnet/TLRPC$Update;

    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2522
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 2523
    iget-object p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v0, :cond_4

    .line 2524
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    .line 2526
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v1, :cond_1

    .line 2527
    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .line 2528
    iget p1, v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    goto :goto_1

    .line 2529
    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    move v0, v2

    .line 2530
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 2531
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 2532
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    if-eqz v3, :cond_2

    .line 2533
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .line 2534
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;->message:Lorg/telegram/tgnet/TLRPC$Message;

    if-eqz v1, :cond_3

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v3, :cond_3

    .line 2535
    iget p1, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_1

    .line 2538
    :cond_2
    instance-of v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    if-eqz v3, :cond_3

    .line 2539
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    iget p1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;->id:I

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move p1, v2

    .line 2544
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 2545
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMessageIds:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1}, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->make(I)Lorg/telegram/messenger/ChatObject$Call$InvitedUser;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2546
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object v0, v1, p3

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v0, 0x2

    aput-object p3, v1, v0

    invoke-virtual {p1, p2, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$47(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8

    .line 2566
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 2568
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;

    invoke-virtual {v1}, Lorg/telegram/ui/ActionBar/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    new-instance v5, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;

    invoke-direct {v5}, Lorg/telegram/ui/DarkBlueThemeResourcesProvider;-><init>()V

    const/16 v3, 0x22

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;-><init>(Lorg/telegram/ui/ActionBar/BaseFragment;Landroid/content/Context;IILorg/telegram/ui/ActionBar/Theme$ResourcesProvider;)V

    const/4 v3, 0x0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v2, v0

    .line 2569
    invoke-virtual/range {v2 .. v7}, Lorg/telegram/ui/Components/Premium/LimitReachedBottomSheet;->setRestrictedUsers(Lorg/telegram/tgnet/TLRPC$Chat;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/BottomSheet;->show()V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$50(Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 8

    .line 2554
    new-instance v0, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;-><init>()V

    .line 2555
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2556
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2557
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2558
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 2559
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_0

    .line 2560
    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/ChatObject$Call;->removeInvitedUser(J)V

    .line 2562
    :cond_0
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2563
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_account$getRequirementsToContact;->id:Ljava/util/ArrayList;

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2565
    :cond_1
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda108;

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda108;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 2572
    iget p1, v2, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->isPremium()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2573
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 2575
    :cond_2
    iget p1, v2, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda109;

    invoke-direct {p2, v3, v4, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda109;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, p2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$51(JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2516
    instance-of v0, p7, Lorg/telegram/tgnet/TLRPC$Updates;

    if-eqz v0, :cond_0

    .line 2517
    check-cast p7, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2518
    iget p8, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p8}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p8

    const/4 v0, 0x0

    invoke-virtual {p8, p7, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2519
    new-instance p8, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;

    invoke-direct {p8, p0, p7, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda39;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;J)V

    invoke-static {p8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    .line 2549
    const-string p7, "USER_PRIVACY_RESTRICTED"

    iget-object p8, p8, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p7, p8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_1

    .line 2550
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2552
    :cond_1
    :goto_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    if-ne p1, p5, :cond_2

    invoke-virtual {p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2553
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;

    invoke-direct {p1, p0, p3, p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda40;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/HashSet;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$52(Ljava/util/ArrayList;Z)V
    .locals 19

    move-object/from16 v1, p0

    .line 2370
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2371
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->joined()V

    .line 2372
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v8, 0x0

    move v2, v8

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v2, v0, :cond_1

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;

    .line 2373
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v10, v9}, Lorg/telegram/messenger/voip/ConferenceCall;->applyUpdate(Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;ZLjava/lang/Long;)Z

    goto :goto_0

    .line 2375
    :cond_1
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->forcePoll()V

    .line 2376
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    .line 2377
    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    .line 2378
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, v10

    const-wide/16 v11, 0x0

    cmp-long v0, v2, v11

    if-eqz v0, :cond_2

    .line 2379
    invoke-direct {v1, v10, v8, v10}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    :cond_2
    move v0, v8

    :goto_1
    const/4 v13, 0x2

    if-ge v0, v13, :cond_4

    .line 2382
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 2383
    iget-object v3, v1, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {v3}, Lorg/telegram/messenger/voip/ConferenceCall;->getCallId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setConferenceCallId(J)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2388
    :cond_4
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->destroyConvertingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 2390
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v0, :cond_5

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v2, :cond_5

    .line 2392
    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;-><init>()V

    .line 2393
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCall;-><init>()V

    iput-object v3, v2, Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2394
    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v5, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    .line 2395
    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->access_hash:J

    .line 2396
    iget v3, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda112;

    invoke-direct {v4, v1, v0, v2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda112;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;Lorg/telegram/tgnet/tl/TL_phone$exportGroupCallInvite;)V

    invoke-virtual {v3, v2, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 2503
    :cond_5
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsers:[J

    if-eqz v0, :cond_7

    .line 2504
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    .line 2505
    array-length v6, v0

    .line 2506
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 2507
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2508
    iget-object v14, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsers:[J

    array-length v15, v14

    move v0, v8

    :goto_2
    if-ge v0, v15, :cond_6

    aget-wide v2, v14, v0

    move/from16 v16, v8

    .line 2509
    iget-object v8, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v8, v2, v3}, Lorg/telegram/messenger/ChatObject$Call;->addInvitedUser(J)V

    .line 2511
    new-instance v8, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;

    invoke-direct {v8}, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;-><init>()V

    move/from16 v17, v10

    .line 2512
    iget-object v10, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v10}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v10

    iput-object v10, v8, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2513
    iget v10, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lorg/telegram/messenger/MessagesController;->getInputUser(J)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v10

    iput-object v10, v8, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 2514
    iget-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    iput-boolean v10, v8, Lorg/telegram/tgnet/tl/TL_phone$inviteConferenceCallParticipant;->video:Z

    .line 2515
    iget v10, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    move/from16 v18, v0

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda113;

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda113;-><init>(Lorg/telegram/messenger/voip/VoIPService;JLjava/util/HashSet;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/String;)V

    invoke-virtual {v10, v8, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    add-int/lit8 v0, v18, 0x1

    move/from16 v8, v16

    move/from16 v10, v17

    goto :goto_2

    :cond_6
    move/from16 v16, v8

    move/from16 v17, v10

    .line 2591
    iput-object v9, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsers:[J

    .line 2592
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v16

    aput-object v4, v5, v17

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v5, v13

    invoke-virtual {v0, v2, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_7
    :goto_3
    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$53(Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V
    .locals 4

    .line 2597
    const-string v0, "JOIN_AS_PEER_INVALID"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2598
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 2599
    :cond_0
    const-string v0, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2600
    invoke-direct {p0, v2, v2, p2, v2}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    return-void

    .line 2601
    :cond_1
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string v0, "CONF_WRITE_CHAIN_INVALID"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2602
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 2603
    :cond_2
    const-string p2, "GROUPCALL_INVALID"

    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2604
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->getSafeLastFragment()Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2606
    invoke-static {p1}, Lorg/telegram/ui/Components/BulletinFactory;->of(Lorg/telegram/ui/ActionBar/BaseFragment;)Lorg/telegram/ui/Components/BulletinFactory;

    move-result-object p1

    sget p2, Lorg/telegram/messenger/R$raw;->linkbroken:I

    sget v0, Lorg/telegram/messenger/R$string;->ConferenceClosed:I

    .line 2607
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/telegram/ui/Components/BulletinFactory;->createSimpleBulletin(ILjava/lang/CharSequence;)Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    .line 2608
    invoke-virtual {p1}, Lorg/telegram/ui/Components/Bulletin;->show()Lorg/telegram/ui/Components/Bulletin;

    move-result-object p1

    iput-boolean v2, p1, Lorg/telegram/ui/Components/Bulletin;->hideAfterBottomSheet:Z

    .line 2611
    :cond_3
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 2613
    :cond_4
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p2

    sget v0, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2614
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$54(IZLjava/lang/String;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10

    if-eqz p4, :cond_8

    .line 2333
    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda11;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2334
    check-cast p4, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2335
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 2337
    const-class p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallChainBlocks;

    invoke-static {p4, p1}, Lorg/telegram/messenger/MessagesController;->findUpdatesAndRemove(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    .line 2339
    const-class p3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    invoke-static {p4, p3}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, p5, :cond_2

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 2340
    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2341
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v5, :cond_1

    .line 2342
    iget v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v7, v8, v4}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 2344
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v5, :cond_0

    .line 2345
    iget-object v6, v5, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-static {v6, v4}, Lorg/telegram/messenger/utils/tlutils/TlUtils;->applyGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;Lorg/telegram/tgnet/TLRPC$GroupCall;)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v4

    iput-object v4, v5, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    goto :goto_0

    .line 2349
    :cond_2
    const-class p3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    invoke-static {p4, p3}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    move v3, v2

    :cond_3
    :goto_1
    if-ge v3, p5, :cond_5

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 2350
    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_3

    .line 2351
    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 2352
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v8, v8, v0

    if-nez v8, :cond_4

    .line 2353
    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;

    invoke-direct {v4, p0, v7}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda12;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2354
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v4, :cond_3

    .line 2355
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "join source = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2362
    :cond_5
    const-class p3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    invoke-static {p4, p3}, Lorg/telegram/messenger/MessagesController;->findUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p5

    move v0, v2

    :cond_6
    :goto_3
    if-ge v0, p5, :cond_7

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 2363
    iget-boolean v3, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-nez v3, :cond_6

    .line 2364
    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    goto :goto_3

    .line 2368
    :cond_7
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    invoke-virtual {p3, p4, v2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2369
    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda13;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/util/ArrayList;Z)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void

    .line 2596
    :cond_8
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0, p5, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda14;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Ljava/lang/String;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$55(Ljava/lang/String;IZ)V
    .locals 4

    .line 2308
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;-><init>()V

    .line 2309
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    iput-boolean v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->muted:Z

    .line 2310
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->video_stopped:Z

    .line 2311
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v1, :cond_1

    .line 2312
    iget-object v2, v1, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2313
    iget v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    .line 2314
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->getMyPublicKey()[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->public_key:[B

    .line 2315
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->getLastBlock()[B

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->block:[B

    goto :goto_0

    .line 2316
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_2

    .line 2317
    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2319
    :cond_2
    :goto_0
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 2320
    iput-object p1, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 2321
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2322
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->invite_hash:Ljava/lang/String;

    .line 2323
    iget v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    or-int/2addr v1, v3

    iput v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    .line 2325
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_4

    .line 2326
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 2328
    :cond_4
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2329
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 2331
    :goto_1
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p2, p3, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda44;-><init>(Lorg/telegram/messenger/voip/VoIPService;IZLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private synthetic lambda$startConferenceGroupCall$56(Ljava/lang/Runnable;)V
    .locals 3

    .line 2624
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2627
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/ConferenceCall;->generateAddSelfBlock()[B

    .line 2628
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 2630
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-eqz v0, :cond_1

    .line 2631
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->getCallId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->setConferenceCallId(J)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private synthetic lambda$startConnectingSound$89()V
    .locals 9

    .line 3532
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 3533
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 3535
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spConnectingId:I

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-nez v0, :cond_1

    .line 3537
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$9;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$9;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$startGroupCall$21(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V
    .locals 3

    .line 1970
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-nez v0, :cond_0

    return-void

    .line 1973
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->access_hash:J

    .line 1974
    iget-wide v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iput-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    .line 1975
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v1, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v1, v2, v0}, Lorg/telegram/messenger/MessagesController;->putGroupCall(JLorg/telegram/messenger/ChatObject$Call;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1976
    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$22(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 1984
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    invoke-virtual {v0, v1, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1985
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$23(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1960
    :try_start_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x320

    invoke-virtual {p2, v1, v2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1962
    invoke-static {p2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1964
    :goto_0
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    const/4 p2, 0x0

    move v0, p2

    .line 1965
    :goto_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1966
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Update;

    .line 1967
    instance-of v2, v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    if-eqz v2, :cond_0

    .line 1968
    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;

    .line 1969
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda27;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_updateGroupCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1981
    :cond_1
    :goto_2
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    return-void

    .line 1983
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda28;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$25(I)V
    .locals 2

    .line 2030
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$26(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V
    .locals 2

    .line 2040
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startGroupCall$27(Z)V
    .locals 1

    .line 2055
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$28(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 6

    .line 2059
    const-string v0, "JOIN_AS_PEER_INVALID"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 2060
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_1

    .line 2061
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2063
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_0

    .line 2064
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x8001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 2066
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v2, -0x4000001

    and-int/2addr v0, v2

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 2068
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2069
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    .line 2072
    :cond_1
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 2073
    :cond_2
    const-string v0, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2074
    invoke-direct {p0, v2, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    return-void

    .line 2076
    :cond_3
    const-string v0, "GROUPCALL_INVALID"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_4

    .line 2077
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v5, v2, v3}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    .line 2079
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->needShowAlert:I

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    aput-object p1, v1, v3

    invoke-virtual {v0, v4, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2080
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void
.end method

.method private synthetic lambda$startGroupCall$29(IZLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 9

    if-eqz p3, :cond_4

    .line 2030
    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;

    invoke-direct {p4, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda22;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2031
    check-cast p3, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2032
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v0

    .line 2033
    iget-object p1, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p4, 0x0

    move v2, p4

    :goto_0
    if-ge v2, p1, :cond_3

    .line 2034
    iget-object v3, p3, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$Update;

    .line 2035
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v4, :cond_1

    .line 2036
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 2037
    iget-object v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, p4

    :goto_1
    if-ge v5, v4, :cond_2

    .line 2038
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 2039
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v7}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v7

    cmp-long v7, v7, v0

    if-nez v7, :cond_0

    .line 2040
    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda23;

    invoke-direct {v3, p0, v6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda23;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2041
    sget-boolean v3, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v3, :cond_2

    .line 2042
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "join source = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2047
    :cond_1
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v4, :cond_2

    .line 2048
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 2049
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-nez v4, :cond_2

    .line 2050
    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2054
    :cond_3
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2055
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda24;-><init>(Lorg/telegram/messenger/voip/VoIPService;Z)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2056
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    return-void

    .line 2058
    :cond_4
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;

    invoke-direct {p1, p0, p4}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda25;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$61(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4

    .line 2771
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2774
    :cond_0
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    if-eqz v0, :cond_1

    .line 2775
    check-cast p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;

    .line 2776
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->users:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 2777
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->chats:Ljava/util/ArrayList;

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 2779
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$groupCall;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-virtual {p2, v0, v2, v3, p1}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 2780
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->loadMembers(Z)V

    const/4 p1, 0x0

    .line 2782
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    .line 2783
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 2784
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 2785
    const-string p1, "GROUPCALL_INVALID"

    iget-object p2, p2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2787
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$62(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2770
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda123;

    invoke-direct {v0, p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda123;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$63(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;)V
    .locals 4

    .line 2763
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_a

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2766
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "GROUPCALL_INVALID"

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2768
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 2769
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2, v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2770
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda41;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 2792
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    .line 2793
    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    .line 2796
    instance-of v0, p2, Lorg/telegram/tgnet/Vector;

    if-eqz v0, :cond_3

    .line 2797
    check-cast p2, Lorg/telegram/tgnet/Vector;

    .line 2798
    invoke-virtual {p2}, Lorg/telegram/tgnet/Vector;->toIntArray()Ljava/util/ArrayList;

    move-result-object p1

    .line 2799
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v2

    if-eqz p2, :cond_2

    iget-object v0, p3, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->sources:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2800
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    move p2, v1

    goto :goto_0

    :cond_2
    move p2, v2

    .line 2804
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v0, v0, v1

    if-eqz v0, :cond_5

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->sources:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 2805
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p3, p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v1

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_6

    .line 2809
    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p2, 0x190

    if-ne p1, p2, :cond_6

    .line 2811
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p1, p1, v1

    if-eqz p1, :cond_4

    iget-object p2, p3, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->sources:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    :goto_1
    move p2, p1

    goto :goto_2

    :cond_4
    move p2, v1

    :cond_5
    move p1, v2

    goto :goto_2

    :cond_6
    move p1, v2

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_7

    .line 2816
    invoke-direct {p0, v2, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    :cond_7
    if-eqz p1, :cond_8

    .line 2819
    invoke-direct {p0, v1, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 2821
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p1, v1

    if-nez p2, :cond_9

    aget p1, p1, v2

    if-nez p1, :cond_9

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz p1, :cond_a

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_a

    .line 2822
    :cond_9
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    :cond_a
    :goto_3
    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$64(Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 2762
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda89;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startGroupCheckShortpoll$65()V
    .locals 5

    .line 2748
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    if-nez v3, :cond_0

    aget v1, v1, v4

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 2751
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;-><init>()V

    .line 2752
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2753
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    goto :goto_0

    .line 2755
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall(Z)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2757
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    array-length v3, v1

    if-ge v2, v3, :cond_3

    .line 2758
    aget v1, v1, v2

    if-eqz v1, :cond_2

    .line 2759
    iget-object v3, v0, Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;->sources:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2762
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda104;

    invoke-direct {v2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda104;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/tl/TL_phone$checkGroupCall;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->checkRequestId:I

    :cond_4
    :goto_1
    return-void
.end method

.method private synthetic lambda$startOutgoingCall$10([BLorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1116
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda65;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$11(Lorg/telegram/messenger/MessagesStorage;Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 7

    const/4 v0, 0x0

    .line 1072
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    .line 1073
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz v1, :cond_0

    .line 1074
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void

    :cond_0
    if-nez p3, :cond_5

    .line 1078
    move-object p3, p2

    check-cast p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;

    .line 1079
    instance-of p2, p2, Lorg/telegram/tgnet/TLRPC$TL_messages_dhConfig;

    if-eqz p2, :cond_2

    .line 1080
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    iget v1, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-static {p2, v1}, Lorg/telegram/messenger/Utilities;->isGoodPrime([BI)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1081
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1084
    :cond_1
    iget-object p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->p:[B

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretPBytes([B)V

    .line 1085
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->g:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setSecretG(I)V

    .line 1086
    iget p2, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->version:I

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/MessagesStorage;->setLastSecretVersion(I)V

    .line 1087
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result p2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lorg/telegram/messenger/MessagesStorage;->saveSecretParams(II[B)V

    :cond_2
    const/16 p2, 0x100

    .line 1089
    new-array v1, p2, [B

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 1091
    sget-object v3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    const-wide/high16 v5, 0x4070000000000000L    # 256.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    int-to-byte v3, v3

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$messages_DhConfig;->random:[B

    aget-byte v4, v4, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1094
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretG()I

    move-result p3

    int-to-long v2, p3

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p3

    .line 1095
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v4, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object p1

    invoke-direct {v4, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p3, v2, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 1096
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    .line 1097
    array-length p3, p1

    if-le p3, p2, :cond_4

    .line 1098
    new-array p3, p2, [B

    .line 1099
    invoke-static {p1, v3, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, p3

    .line 1103
    :cond_4
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$requestCall;-><init>()V

    .line 1104
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p3

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {p3, v2}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->user_id:Lorg/telegram/tgnet/TLRPC$InputUser;

    .line 1105
    new-instance p3, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    invoke-direct {p3}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;-><init>()V

    iput-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    .line 1106
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    iput-boolean v2, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->video:Z

    .line 1107
    iput-boolean v3, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_p2p:Z

    .line 1108
    iput-boolean v3, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_reflector:Z

    const/16 v2, 0x41

    .line 1109
    iput v2, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->min_layer:I

    .line 1110
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v2

    iput v2, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    .line 1111
    iget-object p3, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    iget-object p3, p3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/voip/NativeInstance;->getAllVersions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1112
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 1113
    array-length p3, p1

    int-to-long v2, p3

    invoke-static {p1, v0, v2, v3}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object p1

    iput-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->g_a_hash:[B

    .line 1114
    sget-object p1, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p2, Lorg/telegram/tgnet/tl/TL_phone$requestCall;->random_id:I

    .line 1116
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;

    invoke-direct {p3, p0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda49;-><init>(Lorg/telegram/messenger/voip/VoIPService;[B)V

    const/high16 v0, 0x10000

    invoke-virtual {p1, p2, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 1167
    :cond_5
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_6

    .line 1168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Error on getDhConfig "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1170
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$7(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    .line 1140
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 1142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error on phone.discardCall: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "phone.discardCall "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1147
    :cond_1
    :goto_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda60;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$8()V
    .locals 5

    const/4 v0, 0x0

    .line 1132
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1133
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V

    .line 1134
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1135
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1136
    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1137
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discardCall "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1139
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda29;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/high16 v3, 0x10000

    invoke-virtual {v1, v0, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void
.end method

.method private synthetic lambda$startOutgoingCall$9(Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;[B)V
    .locals 1

    if-nez p1, :cond_3

    .line 1118
    check-cast p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;

    iget-object p1, p2, Lorg/telegram/tgnet/tl/TL_phone$TL_phone_phoneCall;->phone_call:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 1119
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    const/16 p1, 0xd

    .line 1120
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1121
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    if-eqz p1, :cond_0

    .line 1122
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void

    .line 1125
    :cond_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz p1, :cond_2

    .line 1126
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p3, p3, 0x1

    check-cast v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 1127
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->onCallUpdated(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V

    goto :goto_0

    .line 1129
    :cond_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1131
    :cond_2
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda34;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1150
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    iget p2, p2, Lorg/telegram/messenger/MessagesController;->callReceiveTimeout:I

    int-to-long p2, p2

    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    .line 1152
    :cond_3
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x190

    if-ne p2, p3, :cond_4

    const-string p2, "PARTICIPANT_VERSION_OUTDATED"

    iget-object p3, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1153
    const-string p1, "ERROR_PEER_OUTDATED"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void

    .line 1154
    :cond_4
    iget p2, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->code:I

    const/16 p3, 0x193

    if-ne p2, p3, :cond_5

    .line 1155
    const-string p1, "ERROR_PRIVACY"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void

    :cond_5
    const/16 p3, 0x196

    if-ne p2, p3, :cond_6

    .line 1157
    const-string p1, "ERROR_LOCALIZED"

    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void

    .line 1159
    :cond_6
    sget-boolean p2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p2, :cond_7

    .line 1160
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error on phone.requestCall: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1162
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void
.end method

.method private synthetic lambda$startRingtoneAndVibration$96(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 4064
    :try_start_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 4066
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$startScreenCapture$57(I)V
    .locals 2

    .line 2672
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    return-void
.end method

.method private synthetic lambda$startScreenCapture$58(Lorg/telegram/tgnet/TLRPC$Updates;)V
    .locals 12

    .line 2675
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-eqz v0, :cond_5

    .line 2676
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    .line 2677
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_5

    .line 2678
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Updates;->updates:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Update;

    .line 2679
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    if-eqz v7, :cond_0

    .line 2680
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;

    .line 2681
    iget-boolean v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->presentation:Z

    if-eqz v7, :cond_4

    .line 2682
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v7, v7, v1

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallConnection;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    goto :goto_3

    .line 2684
    :cond_0
    instance-of v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    if-eqz v7, :cond_4

    .line 2685
    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;

    .line 2686
    iget-object v7, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_4

    .line 2687
    iget-object v9, v6, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 2688
    iget-object v10, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v10}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v10

    cmp-long v10, v10, v2

    if-nez v10, :cond_3

    .line 2689
    iget-object v6, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz v6, :cond_4

    .line 2690
    iget v7, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->flags:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1

    .line 2691
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    aput v6, v7, v1

    goto :goto_3

    .line 2693
    :cond_1
    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_4

    .line 2694
    iget-object v8, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->source_groups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;

    .line 2695
    iget-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 2696
    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    iget-object v8, v8, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideoSourceGroup;->sources:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v10, v1

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private synthetic lambda$startScreenCapture$59(Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 5

    .line 2712
    const-string v0, "GROUPCALL_VIDEO_TOO_MUCH"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2713
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->reloadGroupCall()V

    return-void

    .line 2714
    :cond_0
    const-string v0, "JOIN_AS_PEER_INVALID"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2715
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_2

    .line 2716
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2718
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 2719
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 2721
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :goto_0
    const/4 v0, 0x0

    .line 2723
    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2724
    invoke-static {}, Lorg/telegram/ui/Components/JoinCallAlert;->resetCache()V

    :cond_2
    const/4 p1, 0x2

    .line 2727
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 2728
    :cond_3
    const-string v0, "GROUPCALL_SSRC_DUPLICATE_MUCH"

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 2729
    invoke-direct {p0, v1, v2, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    return-void

    .line 2731
    :cond_4
    const-string v0, "GROUPCALL_INVALID"

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_5

    .line 2732
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v3, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v3, v4, v2, v1}, Lorg/telegram/messenger/MessagesController;->loadFullChat(JIZ)V

    :cond_5
    return-void
.end method

.method private synthetic lambda$startScreenCapture$60(ILorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 2672
    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;

    invoke-direct {p3, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda68;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2673
    check-cast p2, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 2674
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;

    invoke-direct {p1, p0, p2}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda69;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$Updates;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2708
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 2709
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    return-void

    .line 2711
    :cond_0
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;

    invoke-direct {p1, p0, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda70;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$stopScreenCapture$15(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1384
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .line 1385
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToSpeaker$91(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 3764
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 3765
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3766
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$switchToSpeaker$92()V
    .locals 2

    .line 3758
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v0

    .line 3759
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isSpeakerphoneOn()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 3762
    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3763
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda100;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda100;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isBluetoothAndSpeakerOnAsync(Lorg/telegram/messenger/Utilities$Callback2;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$93(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3785
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3788
    :cond_0
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    return-void
.end method

.method private synthetic lambda$toggleSpeakerphoneOrShowRouteSheet$95(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 3826
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    .line 3827
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3828
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateConnectionState$81(I)V
    .locals 2

    .line 3263
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3266
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    const/4 v1, 0x1

    .line 3267
    invoke-direct {p0, p1, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->updateConnectionState(IIZ)V

    const/4 p1, 0x0

    .line 3268
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private synthetic lambda$updateConnectionState$82()V
    .locals 9

    .line 3275
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 3276
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    .line 3278
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->spVoiceChatConnecting:I

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    return-void
.end method

.method private synthetic lambda$updateConnectionState$83()V
    .locals 2

    .line 3293
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-eqz v0, :cond_0

    .line 3294
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V

    const/4 v0, 0x0

    .line 3295
    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    :cond_0
    return-void
.end method

.method private loadResources()V
    .locals 2

    const/4 v0, 0x2

    .line 4764
    invoke-static {v0}, Lorg/webrtc/voiceengine/WebRtcAudioTrack;->setAudioTrackUsageAttribute(I)V

    .line 4765
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda30;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onTgVoipPreStop()V
    .locals 0

    return-void
.end method

.method private onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V
    .locals 10

    .line 4605
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 4608
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4610
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogFilePath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lorg/telegram/messenger/voip/Instance$FinalState;->debugLog:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4612
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4615
    :cond_1
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 4616
    iget-object v1, v0, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;

    if-nez v1, :cond_2

    .line 4617
    new-instance v1, Lorg/telegram/messenger/voip/VoIPDebugToSend;

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-direct {v1, v2}, Lorg/telegram/messenger/voip/VoIPDebugToSend;-><init>(I)V

    iput-object v1, v0, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;

    .line 4619
    :cond_2
    iget-object v3, v0, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v4, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iget-wide v6, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->lastLogFilePath:Ljava/lang/String;

    move-object v8, p1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/voip/VoIPDebugToSend;->push(JJLorg/telegram/messenger/voip/Instance$FinalState;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 4620
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastLogFilePath:Ljava/lang/String;

    .line 4622
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    if-eqz p1, :cond_3

    .line 4623
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2, p1}, Lorg/telegram/messenger/voip/VoIPDebugToSend;->done(JZ)V

    const/4 p1, 0x0

    .line 4624
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private processAcceptedCall()V
    .locals 7

    const/16 v0, 0xc

    .line 1834
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1835
    new-instance v0, Ljava/math/BigInteger;

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1836
    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-object v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->g_b:[B

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1838
    invoke-static {v1, v0}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1839
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 1840
    const-string/jumbo v0, "stopping VoIP service, bad Ga and Gb"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1842
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1846
    :cond_1
    new-instance v3, Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v3, v2, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v3, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1848
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1849
    array-length v1, v0

    const/4 v3, 0x0

    const/16 v4, 0x100

    if-le v1, v4, :cond_3

    .line 1850
    new-array v1, v4, [B

    .line 1851
    array-length v5, v0

    sub-int/2addr v5, v4

    invoke-static {v0, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 1853
    :cond_3
    array-length v1, v0

    if-ge v1, v4, :cond_4

    .line 1854
    new-array v1, v4, [B

    .line 1855
    array-length v5, v0

    rsub-int v5, v5, 0x100

    array-length v6, v0

    invoke-static {v0, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v3

    .line 1856
    :goto_0
    array-length v6, v0

    rsub-int v6, v6, 0x100

    if-ge v5, v6, :cond_2

    .line 1857
    aput-byte v3, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1861
    :cond_4
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v4, 0x8

    .line 1862
    new-array v5, v4, [B

    .line 1863
    array-length v6, v1

    sub-int/2addr v6, v4

    invoke-static {v1, v6, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1864
    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v3

    .line 1865
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1866
    iput-wide v3, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1867
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;-><init>()V

    .line 1868
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->g_a:[B

    .line 1869
    iput-wide v3, v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->key_fingerprint:J

    .line 1870
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 1871
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v4, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 1872
    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 1873
    new-instance v1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    invoke-direct {v1}, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    .line 1874
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->getConnectionMaxLayer()I

    move-result v3

    iput v3, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->max_layer:I

    .line 1875
    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$confirmCall;->protocol:Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallProtocol;

    const/16 v3, 0x41

    iput v3, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->min_layer:I

    .line 1876
    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_reflector:Z

    iput-boolean v2, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->udp_p2p:Z

    .line 1877
    iget-object v1, v1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCallProtocol;->library_versions:Ljava/util/ArrayList;

    invoke-static {}, Lorg/telegram/messenger/voip/NativeInstance;->getAllVersions()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1878
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda52;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private showIncomingNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZI)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 5186
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v4, v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5187
    const-string/jumbo v0, "voip"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5189
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p3, :cond_0

    .line 5190
    sget v5, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    :goto_0
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_0
    sget v5, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    goto :goto_0

    :goto_1
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    sget v5, Lorg/telegram/messenger/R$drawable;->ic_call:I

    .line 5191
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v5, 0x0

    const/high16 v6, 0x2000000

    .line 5192
    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 5193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-lt v0, v8, :cond_8

    .line 5194
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalNotificationsSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5195
    const-string v8, "calls_notification_channel"

    invoke-interface {v0, v8, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 5196
    const-string/jumbo v13, "notification"

    invoke-virtual {v1, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 5197
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls2"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 5199
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 5201
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls3"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 5203
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 5205
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "incoming_calls4"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v14

    const/4 v6, 0x4

    if-eqz v14, :cond_6

    .line 5208
    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v11

    if-lt v11, v6, :cond_4

    invoke-virtual {v14}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object v11

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    .line 5209
    :cond_4
    :goto_2
    sget-boolean v11, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v11, :cond_5

    .line 5210
    const-string v11, "User messed up the notification channel; deleting it and creating a proper one"

    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5212
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v11}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    .line 5214
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_7

    .line 5220
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 5221
    invoke-virtual {v0, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5222
    invoke-virtual {v0, v10}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5223
    invoke-virtual {v0, v10}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 5224
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 5225
    invoke-static {}, Lorg/telegram/messenger/NotificationsController$$ExternalSyntheticApiModelOutline0;->m()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget v11, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSetting:I

    invoke-static {v11}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11, v6}, Lcom/google/android/gms/cast/framework/media/internal/zzo$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    move-result-object v6

    .line 5227
    :try_start_0
    invoke-virtual {v6, v9, v0}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 5229
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5231
    :goto_4
    sget v0, Lorg/telegram/messenger/R$string;->IncomingCallsSystemSettingDescription:I

    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 5232
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 5233
    invoke-virtual {v6, v5}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v8, 0x1

    .line 5234
    invoke-virtual {v6, v8}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 5236
    :try_start_1
    invoke-virtual {v13, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    .line 5238
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 5239
    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 5243
    :cond_7
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_6

    .line 5245
    :cond_8
    invoke-virtual {v7, v9}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 5247
    :goto_6
    new-instance v0, Landroid/content/Intent;

    const-class v6, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v0, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5248
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ".DECLINE_CALL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5249
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v8

    const-string v11, "call_id"

    invoke-virtual {v0, v11, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5250
    sget v8, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    invoke-static {v8}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5251
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x18

    const/16 v13, 0x1f

    if-lt v9, v12, :cond_9

    if-ge v9, v13, :cond_9

    .line 5252
    new-instance v14, Landroid/text/SpannableString;

    invoke-direct {v14, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5253
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v15, -0xbbcca

    invoke-direct {v8, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-virtual {v14, v8, v5, v15, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v8, v14

    :cond_9
    const/high16 v14, 0x12000000

    .line 5255
    invoke-static {v1, v5, v0, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 5256
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ".ANSWER_CALL"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5258
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v5

    invoke-virtual {v15, v11, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5259
    sget v5, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-lt v9, v12, :cond_a

    if-ge v9, v13, :cond_a

    .line 5261
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 5262
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v11, -0xff5600

    invoke-direct {v5, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10, v11, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    goto :goto_7

    :cond_a
    const/4 v10, 0x0

    .line 5264
    :goto_7
    invoke-static {v1, v10, v15, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v11, 0x2

    .line 5265
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 5267
    invoke-virtual {v7, v10}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const v11, -0xd35a20

    .line 5270
    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 5271
    new-array v11, v10, [J

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 5272
    const-string v11, "call"

    invoke-virtual {v7, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/high16 v11, 0x2000000

    .line 5273
    invoke-static {v1, v10, v4, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v11, 0x1

    invoke-virtual {v7, v4, v11}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 5274
    instance-of v4, v3, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_b

    .line 5275
    move-object v4, v3

    check-cast v4, Lorg/telegram/tgnet/TLRPC$User;

    .line 5276
    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 5277
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_b
    if-lt v9, v13, :cond_d

    .line 5283
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5284
    invoke-static {v3}, Lorg/telegram/messenger/ContactsController;->formatName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    .line 5285
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5287
    const-string v3, "___"

    .line 5289
    :cond_c
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPGroupNotification$$ExternalSyntheticApiModelOutline0;->m()Landroid/app/Person$Builder;

    move-result-object v4

    .line 5290
    invoke-virtual {v4, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v3

    .line 5291
    invoke-static {v2}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v2

    .line 5292
    invoke-static {v2, v0, v6}, Landroid/app/Notification$CallStyle;->forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;

    move-result-object v0

    .line 5294
    invoke-virtual {v7, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 5295
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    :goto_8
    const/4 v11, 0x1

    goto/16 :goto_e

    .line 5297
    :cond_d
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    invoke-virtual {v7, v4, v8, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 5298
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v7, v4, v5, v6}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 5299
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 5301
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v8, :cond_e

    sget v8, Lorg/telegram/messenger/R$layout;->call_notification_rtl:I

    goto :goto_9

    :cond_e
    sget v8, Lorg/telegram/messenger/R$layout;->call_notification:I

    :goto_9
    invoke-direct {v4, v5, v8}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 5302
    sget v5, Lorg/telegram/messenger/R$id;->name:I

    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5303
    sget v2, Lorg/telegram/messenger/R$id;->subtitle:I

    const/16 v5, 0x8

    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5304
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getActivatedAccountsCount()I

    move-result v2

    const/4 v11, 0x1

    if-le v2, v11, :cond_10

    .line 5305
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 5306
    sget v5, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p3, :cond_f

    sget v8, Lorg/telegram/messenger/R$string;->VoipInVideoCallBrandingWithName:I

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v12, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v12, v10

    const-string v2, "VoipInVideoCallBrandingWithName"

    invoke-static {v2, v8, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_a

    :cond_f
    const/4 v10, 0x0

    sget v8, Lorg/telegram/messenger/R$string;->VoipInCallBrandingWithName:I

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v12, v2}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v12, v11, [Ljava/lang/Object;

    aput-object v2, v12, v10

    const-string v2, "VoipInCallBrandingWithName"

    invoke-static {v2, v8, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_a
    invoke-virtual {v4, v5, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_d

    .line 5308
    :cond_10
    sget v2, Lorg/telegram/messenger/R$id;->title:I

    if-eqz p3, :cond_11

    sget v5, Lorg/telegram/messenger/R$string;->VoipInVideoCallBranding:I

    :goto_b
    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_11
    sget v5, Lorg/telegram/messenger/R$string;->VoipInCallBranding:I

    goto :goto_b

    :goto_c
    invoke-virtual {v4, v2, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5310
    :goto_d
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5311
    sget v3, Lorg/telegram/messenger/R$id;->answer_text:I

    sget v5, Lorg/telegram/messenger/R$string;->VoipAnswerCall:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5312
    sget v3, Lorg/telegram/messenger/R$id;->decline_text:I

    sget v5, Lorg/telegram/messenger/R$string;->VoipDeclineCall:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5313
    sget v3, Lorg/telegram/messenger/R$id;->photo:I

    invoke-virtual {v4, v3, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 5314
    sget v3, Lorg/telegram/messenger/R$id;->answer_btn:I

    invoke-virtual {v4, v3, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5315
    sget v3, Lorg/telegram/messenger/R$id;->decline_btn:I

    invoke-virtual {v4, v3, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5316
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 5318
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 5319
    iput-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v4, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_8

    .line 5321
    :goto_e
    iput-boolean v11, v1, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z

    const/16 v2, 0x21

    const/16 v3, 0xca

    if-lt v9, v2, :cond_12

    .line 5323
    iput v3, v1, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v2

    iput v2, v1, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-virtual {v1, v3, v0, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_f

    .line 5325
    :cond_12
    iput v3, v1, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 5327
    :goto_f
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration()V

    return-void
.end method

.method private showNotification()V
    .locals 3

    .line 4554
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 4555
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void

    .line 4557
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p0, v1, v2}, Lorg/telegram/messenger/voip/VoIPService;->getRoundAvatarBitmap(Landroid/content/Context;ILorg/telegram/tgnet/TLObject;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    .line 3986
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "voip_chat"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "voip"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 3987
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_1

    .line 3988
    const-string v1, "currentAccount"

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3990
    :cond_1
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3991
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/16 v2, 0x32

    const/high16 v3, 0x2000000

    .line 3992
    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 3993
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 3994
    sget v1, Lorg/telegram/messenger/R$string;->VoipConference:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3995
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_1

    :cond_2
    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 3996
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_6

    .line 3997
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lorg/telegram/messenger/R$string;->VoipLiveStream:I

    :goto_2
    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget v1, Lorg/telegram/messenger/R$string;->VoipVoiceChat:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3998
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_4

    :cond_5
    sget v1, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_4
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_5

    .line 4000
    :cond_6
    sget v1, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    invoke-static {v1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 4001
    sget v1, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4002
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 4004
    :goto_5
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lorg/telegram/messenger/voip/VoIPActionsReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4005
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".END_CALL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4006
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v3

    const/high16 v4, 0xa000000

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    .line 4007
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    sget v6, Lorg/telegram/messenger/R$string;->VoipConferenceLeave:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v6, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 4008
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v3, :cond_9

    .line 4009
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v6}, Lorg/telegram/messenger/ChatObject;->isChannelOrGiga(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget v6, Lorg/telegram/messenger/R$string;->VoipChannelLeaveAlertTitle:I

    :goto_6
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_8
    sget v6, Lorg/telegram/messenger/R$string;->VoipGroupLeaveAlertTitle:I

    goto :goto_6

    :goto_7
    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v6, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_8

    .line 4011
    :cond_9
    sget v3, Lorg/telegram/messenger/R$drawable;->ic_call_end_white_24dp:I

    sget v6, Lorg/telegram/messenger/R$string;->VoipEndCall:I

    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v3, v6, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :goto_8
    const/4 v1, 0x2

    .line 4013
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 4014
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 4015
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_a

    const v4, -0xd7d1cf

    .line 4016
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 4017
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setColorized(Z)Landroid/app/Notification$Builder;

    goto :goto_9

    :cond_a
    const v4, -0xd35a20

    .line 4019
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :goto_9
    if-lt v1, v3, :cond_b

    .line 4022
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 4023
    sget-object v1, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 4025
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isConference()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz p2, :cond_c

    .line 4026
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 4029
    :cond_c
    :try_start_0
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_d

    .line 4031
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v1

    .line 4033
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    .line 4036
    :cond_d
    :goto_a
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z

    .line 4037
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/16 v3, 0xc9

    if-lt v1, v2, :cond_e

    .line 4038
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-virtual {p0, v3, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_c

    .line 4040
    :cond_e
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, v3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :goto_b
    if-eqz p2, :cond_f

    .line 4043
    instance-of p2, v0, Ljava/lang/IllegalArgumentException;

    if-eqz p2, :cond_f

    const/4 p2, 0x0

    .line 4044
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/voip/VoIPService;->showNotification(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_f
    :goto_c
    return-void
.end method

.method private startConferenceGroupCall(ZILjava/lang/String;Z)V
    .locals 9

    .line 2107
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eq v0, p0, :cond_0

    goto/16 :goto_1

    .line 2110
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez v0, :cond_1

    .line 2111
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    :cond_1
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    .line 2114
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    .line 2115
    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$6;

    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object p4

    invoke-virtual {p4}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v5

    invoke-direct {p2, p0, p3, v5, v6}, Lorg/telegram/messenger/voip/VoIPService$6;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJ)V

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    .line 2126
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 2127
    new-instance p2, Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {p2}, Lorg/telegram/messenger/ChatObject$Call;-><init>()V

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2128
    new-instance p3, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    invoke-direct {p3}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    iput-object p3, p2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2129
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p3, p2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput v3, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 2130
    iput v4, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 2131
    iput-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 2132
    iput-boolean v4, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 2133
    iget-boolean p4, p0, Lorg/telegram/messenger/voip/VoIPService;->isRtmpStream:Z

    iput-boolean p4, p3, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    .line 2134
    iput-wide v1, p2, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 2135
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p3

    iput-object p3, p2, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 2136
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p2, p3}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 2137
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    const/4 p2, 0x6

    .line 2139
    invoke-direct {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 2141
    new-instance p2, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;-><init>()V

    .line 2142
    sget-object p3, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result p3

    iput p3, p2, Lorg/telegram/tgnet/tl/TL_phone$createConferenceCall;->random_id:I

    .line 2143
    new-instance p3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 2144
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p3

    new-instance p4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;

    invoke-direct {p4, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda53;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/AccountInstance;)V

    const/high16 p1, 0x10000

    invoke-virtual {p3, p2, p4, p1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    return-void

    .line 2217
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-nez v5, :cond_3

    .line 2218
    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$7;

    iget v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v7

    invoke-direct {v5, p0, v6, v7, v8}, Lorg/telegram/messenger/voip/VoIPService$7;-><init>(Lorg/telegram/messenger/voip/VoIPService;IJ)V

    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    .line 2228
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object v6, v5, Lorg/telegram/messenger/voip/ConferenceCall;->inputGroupCall:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2230
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v5, :cond_5

    .line 2231
    new-instance v5, Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {v5}, Lorg/telegram/messenger/ChatObject$Call;-><init>()V

    iput-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 2232
    iput-boolean v4, v5, Lorg/telegram/messenger/ChatObject$Call;->isConference:Z

    .line 2233
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    iput-object v6, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2234
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput v3, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 2235
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 2236
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 2237
    iput-boolean v4, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 2238
    iget-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->isRtmpStream:Z

    iput-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    .line 2239
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    if-eqz v6, :cond_4

    .line 2240
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://t.me/call/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->invite_link:Ljava/lang/String;

    .line 2242
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iput-wide v1, v5, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 2243
    iget v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    iput-object v6, v5, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 2244
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 2245
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v5}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    .line 2246
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConferenceCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v5, :cond_5

    .line 2247
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iput-object v5, v6, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2248
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget v6, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConferenceCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    invoke-virtual {v5, v6, v1, v2, v7}, Lorg/telegram/messenger/ChatObject$Call;->setCall(Lorg/telegram/messenger/AccountInstance;JLorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 2249
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConferenceCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 2252
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v0, v0, Lorg/telegram/messenger/voip/ConferenceCall;->groupCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-nez v0, :cond_6

    .line 2253
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;-><init>()V

    .line 2254
    iget-object p4, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iput-object p4, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    const/16 p4, 0xa

    .line 2255
    iput p4, p1, Lorg/telegram/tgnet/tl/TL_phone$getGroupCall;->limit:I

    .line 2256
    iget p4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p4}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p4

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;

    invoke-direct {v0, p0, p2, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda54;-><init>(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/String;)V

    invoke-virtual {p4, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    :cond_6
    if-nez p3, :cond_a

    .line 2274
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 2275
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 2276
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;

    invoke-direct {p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda55;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2277
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p1, :cond_7

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    if-eqz p1, :cond_7

    .line 2278
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide p2, p1, v3

    aput-wide p2, p1, v4

    .line 2279
    aput-wide v1, p1, v3

    .line 2281
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v4, p1, v4

    .line 2282
    aput-boolean v4, p1, v3

    .line 2284
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v3

    invoke-virtual {p0, v4, p1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2285
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 2286
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v3, p1, v3

    .line 2288
    :cond_7
    invoke-direct {p0, v3, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 2290
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->inviteUsers:[J

    if-eqz p1, :cond_8

    .line 2291
    array-length p2, p1

    :goto_0
    if-ge v3, p2, :cond_8

    aget-wide p3, p1, v3

    .line 2292
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, p3, p4}, Lorg/telegram/messenger/ChatObject$Call;->addInvitedUser(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2295
    :cond_8
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 2296
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->finish()V

    .line 2298
    :cond_9
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    sget p1, Lorg/telegram/messenger/UserConfig;->selectedAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/GroupCallActivity;->create(Lorg/telegram/ui/LaunchActivity;Lorg/telegram/messenger/AccountInstance;Lorg/telegram/tgnet/TLRPC$Chat;Lorg/telegram/tgnet/TLRPC$InputPeer;ZLjava/lang/String;)V

    return-void

    .line 2300
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-nez v0, :cond_b

    goto :goto_1

    .line 2303
    :cond_b
    invoke-direct {p0, v4}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 2304
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_c

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initital source = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2307
    :cond_c
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;

    invoke-direct {v0, p0, p3, p2, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda56;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;IZ)V

    if-eqz p4, :cond_d

    .line 2621
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    invoke-virtual {p1}, Lorg/telegram/messenger/voip/ConferenceCall;->reset()V

    .line 2623
    :cond_d
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;

    invoke-direct {p2, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda57;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/Runnable;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/ConferenceCall;->requestLastBlock(Ljava/lang/Runnable;)V

    :cond_e
    :goto_1
    return-void
.end method

.method private startConnectingSound()V
    .locals 2

    .line 3531
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda88;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startGroupCall(ILjava/lang/String;Z)V
    .locals 5

    .line 1929
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eq v0, p0, :cond_0

    goto/16 :goto_2

    .line 1932
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1933
    new-instance p1, Lorg/telegram/messenger/ChatObject$Call;

    invoke-direct {p1}, Lorg/telegram/messenger/ChatObject$Call;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    .line 1934
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_groupCall;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_groupCall;-><init>()V

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 1935
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iput v3, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->participants_count:I

    .line 1936
    iput v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->version:I

    .line 1937
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_start_video:Z

    .line 1938
    iput-boolean v2, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->can_change_join_muted:Z

    .line 1939
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->isRtmpStream:Z

    iput-boolean p3, p2, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    .line 1940
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    iput-wide p2, p1, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    .line 1941
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/messenger/ChatObject$Call;->currentAccount:Lorg/telegram/messenger/AccountInstance;

    .line 1942
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1943
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p1}, Lorg/telegram/messenger/ChatObject$Call;->createNoVideoParticipant()V

    const/4 p1, 0x6

    .line 1945
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1946
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;-><init>()V

    .line 1947
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {p2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1948
    sget-object p2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result p2

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->random_id:I

    .line 1949
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    if-eqz p2, :cond_1

    .line 1950
    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->schedule_date:I

    .line 1951
    iget p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->flags:I

    .line 1953
    :cond_1
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->isRtmpStream:Z

    if-eqz p2, :cond_2

    .line 1954
    iget p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->flags:I

    or-int/lit8 p2, p2, 0x4

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$createGroupCall;->flags:I

    .line 1956
    :cond_2
    new-instance p2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p2, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1957
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;

    invoke-direct {p3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda62;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/high16 v0, 0x10000

    invoke-virtual {p2, p1, p3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1989
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    return-void

    :cond_3
    if-nez p2, :cond_5

    .line 1994
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez p1, :cond_4

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_4

    .line 1995
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide p2, p2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, p2, p3, v3}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object p1

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_4

    .line 1997
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 2000
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 2001
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 2002
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;

    invoke-direct {p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda63;-><init>()V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2003
    invoke-direct {p0, v3, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    return-void

    .line 2005
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_6

    goto/16 :goto_2

    .line 2008
    :cond_6
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 2009
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_7

    .line 2010
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initital source = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 2012
    :cond_7
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;-><init>()V

    .line 2013
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    iput-boolean v4, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->muted:Z

    .line 2014
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v4, v4, v3

    if-eq v4, v1, :cond_8

    goto :goto_0

    :cond_8
    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->video_stopped:Z

    .line 2015
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2016
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 2017
    iput-object p2, v2, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 2018
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 2019
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->invite_hash:Ljava/lang/String;

    .line 2020
    iget p2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    or-int/2addr p2, v1

    iput p2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->flags:I

    .line 2022
    :cond_9
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz p2, :cond_a

    .line 2023
    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 2025
    :cond_a
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object p2, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCall;->join_as:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2026
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/AccountInstance;->getUserConfig()Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getClientUserId()J

    move-result-wide v1

    iput-wide v1, p2, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 2028
    :goto_1
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, p1, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda64;-><init>(Lorg/telegram/messenger/voip/VoIPService;IZ)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_b
    :goto_2
    return-void
.end method

.method private startGroupCheckShortpoll()V
    .locals 3

    .line 2744
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2747
    :cond_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda61;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->shortPollRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startOutgoingCall()V
    .locals 4

    .line 1056
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_0

    .line 1057
    invoke-virtual {v0}, Landroid/telecom/Connection;->setDialing()V

    .line 1059
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 1060
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 1061
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xe

    .line 1062
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1063
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda58;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    const/16 v0, 0x100

    .line 1064
    new-array v1, v0, [B

    .line 1065
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1067
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 1068
    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1069
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 1070
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1071
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda59;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

    const/high16 v0, 0x10000

    invoke-virtual {v2, v1, v3, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v0

    iput v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    return-void
.end method

.method private startRatingActivity()V
    .locals 4

    .line 1812
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/VoIPFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "call_id"

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    .line 1813
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "call_access_hash"

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    .line 1814
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "call_video"

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    .line 1815
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "account"

    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    .line 1816
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x30000000

    .line 1817
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    const/4 v2, 0x0

    .line 1812
    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1817
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1819
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 1820
    const-string v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private startRinging()V
    .locals 4

    .line 4504
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 4507
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    .line 4508
    invoke-virtual {v0}, Landroid/telecom/Connection;->setRinging()V

    .line 4510
    :cond_1
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_2

    .line 4511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "starting ringing for call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4513
    :cond_2
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 4514
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    if-nez v0, :cond_3

    .line 4515
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-boolean v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->showIncomingNotification(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;ZI)V

    .line 4516
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 4517
    const-string v0, "Showing incoming call notification"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    return-void

    .line 4520
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    .line 4521
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_4

    .line 4522
    const-string v0, "Starting incall activity for incoming call"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4525
    :cond_4
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "voip"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    const/16 v2, 0x3039

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4527
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    .line 4528
    const-string v1, "Error starting incall activity"

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private startRingtoneAndVibration(J)V
    .locals 11

    .line 4050
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getNotificationsSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4051
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4052
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_f

    .line 4054
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    goto/16 :goto_9

    .line 4057
    :cond_0
    sget-object v2, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 4058
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 4059
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    .line 4061
    :cond_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 4062
    new-instance v4, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda42;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 4069
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 4070
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    .line 4071
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    goto :goto_1

    .line 4073
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v5}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 4074
    sget-boolean v3, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v3, :cond_4

    .line 4075
    invoke-virtual {v1, p0, v5, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_0

    :cond_3
    move v3, v6

    .line 4076
    :goto_0
    iput-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    const/4 v3, 0x0

    .line 4081
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "custom_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ringtone_path_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_5

    .line 4084
    :cond_5
    const-string v7, "CallsRingtonePath"

    invoke-interface {v0, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_6

    .line 4089
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    :goto_3
    move v8, v4

    goto :goto_4

    .line 4092
    :cond_6
    sget-object v8, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    if-eqz v8, :cond_7

    .line 4093
    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4094
    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v7

    goto :goto_3

    .line 4097
    :cond_7
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move v8, v6

    .line 4100
    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "start ringtone with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4101
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, p0, v7}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 4102
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .line 4104
    :goto_5
    :try_start_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4105
    iget-object v7, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_8

    .line 4106
    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    .line 4107
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    .line 4111
    :cond_8
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 4112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calls_vibrate_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_7

    .line 4114
    :cond_9
    const-string/jumbo p1, "vibrate_calls"

    invoke-interface {v0, p1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    :goto_7
    const/4 p2, 0x4

    if-eq p1, v5, :cond_a

    if-eq p1, p2, :cond_a

    .line 4116
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v4, :cond_b

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v0, v5, :cond_b

    :cond_a
    if-ne p1, p2, :cond_e

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p2

    if-ne p2, v4, :cond_e

    .line 4117
    :cond_b
    const-string/jumbo p2, "vibrator"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Vibrator;

    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    const/4 v0, 0x3

    if-ne p1, v4, :cond_c

    const-wide/16 v7, 0x15e

    goto :goto_8

    :cond_c
    if-ne p1, v0, :cond_d

    const-wide/16 v7, 0x578

    goto :goto_8

    :cond_d
    const-wide/16 v7, 0x2bc

    .line 4124
    :goto_8
    new-array p1, v0, [J

    const-wide/16 v0, 0x0

    aput-wide v0, p1, v6

    aput-wide v7, p1, v4

    const-wide/16 v0, 0x1f4

    aput-wide v0, p1, v5

    invoke-virtual {p2, p1, v6}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 4126
    :cond_e
    monitor-exit v2

    :goto_9
    return-void

    :goto_a
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_f
    return-void
.end method

.method private startScreenCapture(ILjava/lang/String;)V
    .locals 3

    .line 2662
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2665
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 2666
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCallPresentation;-><init>()V

    .line 2667
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 2668
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$joinGroupCallPresentation;->params:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    .line 2669
    iput-object p2, v1, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    .line 2670
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda132;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda132;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-virtual {p2, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBluetoothHeadsetState(Z)V
    .locals 4

    .line 5003
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-ne p1, v0, :cond_0

    goto/16 :goto_2

    .line 5006
    :cond_0
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1

    .line 5007
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBluetoothHeadsetState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5009
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    .line 5010
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 5011
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->isRinging()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz p1, :cond_5

    .line 5012
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 5013
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_2

    .line 5014
    const-string p1, "SCO already active, setting audio routing"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5016
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5017
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 5018
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    goto :goto_0

    .line 5021
    :cond_3
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 5022
    const-string/jumbo p1, "startBluetoothSco"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 5024
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5025
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 5026
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;

    invoke-direct {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda82;-><init>(Landroid/media/AudioManager;)V

    const-wide/16 v2, 0x1f4

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 5036
    :cond_5
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 5037
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 5039
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 5041
    :cond_6
    :goto_0
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_7

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 5042
    invoke-interface {v2}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_1

    :cond_7
    :goto_2
    return-void
.end method

.method private updateConnectionState(IIZ)V
    .locals 4

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 3260
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x3

    :goto_1
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 3261
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 3262
    :cond_3
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda95;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-static {v1, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_4
    if-nez p2, :cond_5

    .line 3272
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCheckShortpoll()V

    .line 3273
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p1, :cond_c

    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->spPlayId:I

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    if-nez p1, :cond_c

    .line 3274
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;

    invoke-direct {p2, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda96;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void

    .line 3282
    :cond_5
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    const/4 p1, 0x0

    if-nez p3, :cond_6

    .line 3284
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 3285
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingAccount:Z

    .line 3287
    :cond_6
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    const/4 p3, 0x0

    if-eqz p2, :cond_7

    .line 3288
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3289
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 3291
    :cond_7
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p2, :cond_8

    .line 3292
    sget-object p2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda97;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 3298
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz p2, :cond_9

    .line 3299
    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3300
    iput-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    goto :goto_2

    .line 3303
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->playConnectedSound()V

    .line 3305
    :cond_9
    :goto_2
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    if-nez p2, :cond_c

    .line 3306
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->wasConnected:Z

    .line 3307
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    if-eqz p2, :cond_a

    .line 3308
    invoke-direct {p0, v0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 3309
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->reconnectScreenCapture:Z

    .line 3311
    :cond_a
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p1

    if-eqz p2, :cond_b

    .line 3313
    iget-boolean p3, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-nez p3, :cond_b

    .line 3314
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 3317
    :cond_b
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantsVolume()V

    :cond_c
    :goto_3
    return-void
.end method

.method private updateNetworkType()V
    .locals 2

    .line 5059
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 5060
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5063
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getNetworkType()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setNetworkType(I)V

    return-void

    .line 5066
    :cond_1
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    return-void
.end method

.method private updateServerConfig()V
    .locals 4

    .line 4542
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getMainSettings(I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 4543
    const-string/jumbo v1, "voip_server_config"

    const-string/jumbo v2, "{}"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/voip/Instance;->setGlobalServerConfig(Ljava/lang/String;)V

    .line 4544
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/tgnet/tl/TL_phone$getCallConfig;

    invoke-direct {v2}, Lorg/telegram/tgnet/tl/TL_phone$getCallConfig;-><init>()V

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda84;-><init>(Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method private updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V
    .locals 12

    if-nez p1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    .line 4800
    invoke-virtual {p1}, Lorg/telegram/messenger/voip/NativeInstance;->getTrafficStats()Lorg/telegram/messenger/voip/Instance$TrafficStats;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    goto/16 :goto_6

    .line 4803
    :cond_2
    iget-wide v0, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_3

    iget-wide v4, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentWifi:J

    goto :goto_0

    :cond_3
    move-wide v4, v2

    :goto_0
    sub-long/2addr v0, v4

    .line 4804
    iget-wide v4, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    if-eqz p1, :cond_4

    iget-wide v6, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedWifi:J

    goto :goto_1

    :cond_4
    move-wide v6, v2

    :goto_1
    sub-long/2addr v4, v6

    .line 4805
    iget-wide v6, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    if-eqz p1, :cond_5

    iget-wide v8, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesSentMobile:J

    goto :goto_2

    :cond_5
    move-wide v8, v2

    :goto_2
    sub-long/2addr v6, v8

    .line 4806
    iget-wide v8, p2, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    if-eqz p1, :cond_6

    iget-wide v10, p1, Lorg/telegram/messenger/voip/Instance$TrafficStats;->bytesReceivedMobile:J

    goto :goto_3

    :cond_6
    move-wide v10, v2

    :goto_3
    sub-long/2addr v8, v10

    .line 4807
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    cmp-long p1, v0, v2

    const/4 p2, 0x1

    const/4 v10, 0x0

    if-lez p1, :cond_7

    .line 4809
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-virtual {p1, p2, v10, v0, v1}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_7
    cmp-long p1, v4, v2

    if-lez p1, :cond_8

    .line 4812
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    invoke-virtual {p1, p2, v10, v4, v5}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_8
    cmp-long p1, v6, v2

    const/4 p2, 0x2

    if-lez p1, :cond_a

    .line 4815
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, p2

    goto :goto_4

    :cond_9
    move v0, v10

    :goto_4
    invoke-virtual {p1, v0, v10, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementSentBytesCount(IIJ)V

    :cond_a
    cmp-long p1, v8, v2

    if-lez p1, :cond_c

    .line 4818
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastNetInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move p2, v10

    :goto_5
    invoke-virtual {p1, p2, v10, v8, v9}, Lorg/telegram/messenger/StatsController;->incrementReceivedBytesCount(IIJ)V

    :cond_c
    :goto_6
    return-void
.end method


# virtual methods
.method public acceptIncomingCall()V
    .locals 4

    .line 4310
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateCurrentForegroundType()V

    .line 4311
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 4312
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 4313
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    .line 4314
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->configureDeviceForCall()V

    .line 4315
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->startConnectingSound()V

    const/16 v0, 0xc

    .line 4316
    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 4317
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda9;-><init>()V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4318
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    .line 4319
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    const/16 v2, 0x100

    .line 4320
    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 4321
    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getLastSecretVersion()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 4322
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda10;-><init>(Lorg/telegram/messenger/voip/VoIPService;Lorg/telegram/messenger/MessagesStorage;)V

    invoke-virtual {v2, v1, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;
    .locals 10

    .line 1432
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-eqz p2, :cond_1

    .line 1435
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    :goto_0
    move-object v5, v0

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    goto :goto_0

    :goto_1
    if-nez v5, :cond_2

    return-object v2

    .line 1439
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz v0, :cond_3

    .line 1440
    invoke-static {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->-$$Nest$fgettarget(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)Lorg/webrtc/VideoSink;

    move-result-object v2

    if-ne v2, p3, :cond_3

    return-object v0

    :cond_3
    if-nez v0, :cond_4

    .line 1444
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v0, v5}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    :cond_4
    if-nez v0, :cond_5

    .line 1447
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    :cond_5
    move-object v7, v0

    if-eqz p3, :cond_6

    .line 1450
    invoke-virtual {v7, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_6
    if-eqz p4, :cond_7

    .line 1453
    invoke-virtual {v7, p4}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1455
    :cond_7
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {p3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1456
    iget-object p3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, p3, v1

    if-eqz p2, :cond_8

    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    goto :goto_2

    :cond_8
    iget-object p2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->video:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    :goto_2
    invoke-direct {p0, p2}, Lorg/telegram/messenger/voip/VoIPService;->createSsrcGroups(Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;)[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;

    move-result-object v6

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {p1}, Lorg/telegram/messenger/DialogObject;->getPeerDialogId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/voip/NativeInstance;->addIncomingVideoOutput(ILjava/lang/String;[Lorg/telegram/messenger/voip/NativeInstance$SsrcGroup;Lorg/webrtc/VideoSink;J)J

    move-result-wide p1

    invoke-static {v7, p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->-$$Nest$fputnativeInstance(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;J)V

    return-object v7
.end method

.method callFailedFromConnectionService()V
    .locals 1

    .line 5419
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_0

    .line 5420
    const-string v0, "ERROR_CONNECTION_SERVICE"

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed(Ljava/lang/String;)V

    return-void

    .line 5422
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void
.end method

.method public checkVideoFrame(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 610
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 614
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasPresentationFrame:I

    if-nez v1, :cond_3

    :cond_2
    if-nez p2, :cond_4

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasCameraFrame:I

    if-eqz v1, :cond_4

    :cond_3
    :goto_1
    return-void

    .line 618
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    .line 626
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 627
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_6

    .line 629
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasPresentationFrame:I

    return-void

    .line 631
    :cond_6
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasCameraFrame:I

    return-void

    :cond_7
    if-eqz p2, :cond_8

    .line 636
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasPresentationFrame:I

    goto :goto_2

    .line 638
    :cond_8
    iput v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasCameraFrame:I

    .line 640
    :goto_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->waitingFrameParticipant:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$5;

    invoke-direct {v1, p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService$5;-><init>(Lorg/telegram/messenger/voip/VoIPService;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->addRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZLorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    return-void

    :cond_9
    :goto_3
    const/4 v0, 0x2

    if-eqz p2, :cond_a

    .line 620
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasPresentationFrame:I

    return-void

    .line 622
    :cond_a
    iput v0, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->hasCameraFrame:I

    return-void
.end method

.method public clearCamera()V
    .locals 6

    .line 1341
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 1342
    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    .line 1344
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 1345
    invoke-static {v2, v3}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 1346
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v4, v0, v1

    :cond_1
    return-void
.end method

.method public clearRemoteSinks()V
    .locals 1

    .line 671
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->proxyVideoSinkLruCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public convertToConferenceCall(ZLjava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 2092
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingFromCallWithUserId:J

    .line 2093
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConferenceVideo:Z

    .line 2094
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->inviteUsersToConference:Ljava/util/HashSet;

    .line 2095
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 2096
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 p2, 0x0

    aget-object v0, p1, p2

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2097
    iput-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    .line 2098
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    .line 2099
    aput-object v1, p1, p2

    .line 2101
    :cond_1
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda26;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public createCaptureDevice(Z)V
    .locals 9

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1268
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->gotMediaProjection:Z

    .line 1269
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateCurrentForegroundType()V

    :cond_0
    const/4 v1, 0x2

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    .line 1277
    :cond_1
    iget-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    .line 1279
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_4

    .line 1280
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    if-nez v3, :cond_2

    if-eqz p1, :cond_2

    .line 1281
    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1283
    :cond_2
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    .line 1284
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v3, v3, v6

    if-eqz v3, :cond_3

    .line 1285
    invoke-virtual {v3}, Lorg/telegram/messenger/voip/NativeInstance;->clearVideoCapturer()V

    .line 1287
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v3, v6

    cmp-long v3, v7, v4

    if-eqz v3, :cond_4

    .line 1288
    invoke-static {v7, v8}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 1289
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v4, v3, v6

    :cond_4
    if-ne p1, v0, :cond_7

    .line 1293
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v3, :cond_6

    .line 1294
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v7, v3, p1

    cmp-long v4, v7, v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 1297
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v4, v4, p1

    invoke-static {v4, v2}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v4

    aput-wide v4, v3, p1

    .line 1298
    invoke-direct {p0, v0, v6, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 1299
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1300
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    new-array v1, v6, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    return-void

    .line 1302
    :cond_6
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->requestVideoCall(Z)V

    .line 1303
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->setVideoState(ZI)V

    .line 1304
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1305
    invoke-static {}, Lorg/telegram/ui/VoIPFragment;->getInstance()Lorg/telegram/ui/VoIPFragment;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/ui/VoIPFragment;->onScreenCastStart()V

    return-void

    .line 1309
    :cond_7
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v6, v0, p1

    cmp-long v0, v6, v4

    if-nez v0, :cond_8

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-nez v0, :cond_b

    .line 1310
    :cond_8
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, p1

    if-eqz v0, :cond_9

    cmp-long v1, v6, v4

    if-eqz v1, :cond_9

    .line 1311
    invoke-virtual {v0, v6, v7}, Lorg/telegram/messenger/voip/NativeInstance;->activateVideoCapturer(J)V

    .line 1313
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v6, v0, p1

    cmp-long v0, v6, v4

    if-eqz v0, :cond_b

    :cond_a
    :goto_1
    return-void

    .line 1317
    :cond_b
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v1, v1, p1

    invoke-static {v1, v2}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method public declineIncomingCall()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4475
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void
.end method

.method public declineIncomingCall(ILjava/lang/Runnable;)V
    .locals 6

    .line 4396
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    .line 4397
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopScreenCapture()V

    .line 4399
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 4400
    iput p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callDiscardReason:I

    .line 4401
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xe

    const/16 v2, 0xa

    if-ne v0, v1, :cond_2

    .line 4402
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 4403
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4404
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void

    .line 4406
    :cond_1
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    const/4 p1, 0x1

    .line 4407
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->endCallAfterRequest:Z

    .line 4408
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda50;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v0, 0x1388

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    if-eq v0, v2, :cond_a

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 4419
    :cond_3
    invoke-direct {p0, v2}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 4420
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 4421
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 4422
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    .line 4423
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    if-eqz p1, :cond_a

    .line 4424
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    invoke-virtual {p1, p2, v1}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    .line 4425
    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->callReqId:I

    return-void

    .line 4429
    :cond_4
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$discardCall;-><init>()V

    .line 4430
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 4431
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v4, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 4432
    iget-wide v3, v3, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v3, v2, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 4433
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->duration:I

    .line 4434
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v2, v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->getPreferredRelayId()J

    move-result-wide v1

    goto :goto_0

    :cond_5
    const-wide/16 v1, 0x0

    :goto_0
    iput-wide v1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->connection_id:J

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v1, 0x3

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    .line 4451
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonHangup;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_1

    .line 4446
    :cond_6
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 4447
    const-string v1, ""

    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->slug:Ljava/lang/String;

    goto :goto_1

    .line 4443
    :cond_7
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_1

    .line 4440
    :cond_8
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMissed;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    goto :goto_1

    .line 4437
    :cond_9
    new-instance p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;

    invoke-direct {p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonDisconnect;-><init>()V

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    .line 4454
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "discardCall "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$discardCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4455
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda51;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/high16 v2, 0x10000

    invoke-virtual {p1, v0, v1, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 4470
    iput-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    .line 4471
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_a
    :goto_2
    return-void
.end method

.method public varargs didReceivedNotification(II[Ljava/lang/Object;)V
    .locals 0

    .line 5658
    sget p2, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    if-ne p1, p2, :cond_0

    .line 5659
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    :cond_0
    return-void
.end method

.method public editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V
    .locals 7

    if-eqz p1, :cond_a

    .line 3692
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 3695
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;-><init>()V

    .line 3696
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v1}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 3697
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$User;

    const-string v2, " access_hash = "

    const-string v3, "edit group call part id = "

    if-eqz v1, :cond_2

    .line 3698
    check-cast p1, Lorg/telegram/tgnet/TLRPC$User;

    .line 3699
    invoke-static {p1}, Lorg/telegram/messenger/UserObject;->isUserSelf(Lorg/telegram/tgnet/TLRPC$User;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-eqz v1, :cond_1

    .line 3700
    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_1

    .line 3702
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3703
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 3704
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 3707
    :cond_2
    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v1, :cond_4

    .line 3708
    check-cast p1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 3709
    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(Lorg/telegram/tgnet/TLRPC$Chat;)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object p1

    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 3710
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_4

    .line 3711
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v3, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    :goto_0
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->participant:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 3715
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->muted:Z

    .line 3716
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    :cond_5
    if-eqz p4, :cond_6

    .line 3719
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->volume:I

    .line 3720
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    :cond_6
    if-eqz p5, :cond_7

    .line 3723
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->raise_hand:Z

    .line 3724
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    :cond_7
    if-eqz p3, :cond_8

    .line 3727
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->video_stopped:Z

    .line 3728
    iget p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    .line 3730
    :cond_8
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_9

    .line 3731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "edit group call flags = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lorg/telegram/tgnet/tl/TL_phone$editGroupCallParticipant;->flags:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3733
    :cond_9
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    .line 3734
    invoke-static {p1}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object p2

    invoke-virtual {p2}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance p3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;

    invoke-direct {p3, p0, p1, p6}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda67;-><init>(Lorg/telegram/messenger/voip/VoIPService;ILjava/lang/Runnable;)V

    invoke-virtual {p2, v0, p3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public forceRating()V
    .locals 1

    const/4 v0, 0x1

    .line 3595
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    return-void
.end method

.method public getAccount()I
    .locals 1

    .line 5653
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    return v0
.end method

.method public getCallDuration()J
    .locals 4

    .line 3965
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 3968
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCallID()J
    .locals 2

    .line 4290
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallState()I
    .locals 1

    .line 5051
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    return v0
.end method

.method public getCallerId()J
    .locals 2

    .line 1009
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    .line 1010
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    return-wide v0

    .line 1011
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    .line 1012
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    neg-long v0, v0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getChat()Lorg/telegram/tgnet/TLRPC$Chat;
    .locals 1

    .line 990
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-object v0
.end method

.method public getConnectionAndStartCall()Lorg/telegram/messenger/voip/VoIPService$CallConnection;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 4484
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-nez v0, :cond_2

    .line 4485
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4486
    const-string v0, "creating call connection"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 4488
    :cond_0
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$CallConnection;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    .line 4489
    invoke-virtual {v0}, Landroid/telecom/Connection;->setInitializing()V

    .line 4490
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1

    .line 4491
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda117;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda117;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    .line 4495
    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 4497
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+99084"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "tel"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setAddress(Landroid/net/Uri;I)V

    .line 4498
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v3, v1}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/telecom/Connection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 4500
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    return-object v0
.end method

.method public getCurrentAudioRoute()I
    .locals 5

    .line 3932
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    .line 3933
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3934
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    return v1

    .line 3944
    :cond_3
    :goto_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0

    .line 3946
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v0, :cond_7

    .line 3947
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3948
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v4

    .line 3949
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 3951
    :cond_5
    invoke-virtual {v4}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    :cond_6
    return v1

    .line 3957
    :cond_7
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    return v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 2

    .line 3961
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->getDebugInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    .line 1830
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    return-object v0
.end method

.method public getGA()[B
    .locals 1

    .line 3591
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    return-object v0
.end method

.method public getGroupCall()Lorg/telegram/tgnet/TLRPC$GroupCall;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupCallBottomSheetLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallBottomSheetLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public getGroupCallID()J
    .locals 2

    .line 4294
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getGroupCallPeer()Lorg/telegram/tgnet/TLRPC$InputPeer;
    .locals 1

    .line 5055
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    return-object v0
.end method

.method public getGroupParticipants()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;",
            ">;"
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastError()Ljava/lang/String;
    .locals 1

    .line 5047
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastError:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateCall()Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    return-object v0
.end method

.method public getRemoteAudioState()I
    .locals 1

    .line 5675
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteAudioState:I

    return v0
.end method

.method public getRemoteVideoState()I
    .locals 1

    .line 5679
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    return v0
.end method

.method public getSelfId()J
    .locals 2

    .line 1529
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    if-nez v0, :cond_0

    .line 1530
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v0

    iget-wide v0, v0, Lorg/telegram/messenger/UserConfig;->clientUserId:J

    return-wide v0

    .line 1532
    :cond_0
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    if-eqz v1, :cond_1

    .line 1533
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    return-wide v0

    .line 1534
    :cond_1
    instance-of v1, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v1, :cond_2

    .line 1535
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    neg-long v0, v0

    return-wide v0

    .line 1537
    :cond_2
    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    neg-long v0, v0

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 579
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 580
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->title:Ljava/lang/String;

    return-object v0

    .line 581
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public getUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 1

    .line 986
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    return-object v0
.end method

.method public getVideoState(Z)I
    .locals 1

    .line 1401
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, v0, p1

    return p1
.end method

.method public handleNotificationAction(Landroid/content/Intent;)V
    .locals 3

    .line 5600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".END_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 5601
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 5602
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp()V

    return-void

    .line 5603
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".DECLINE_CALL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5604
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    const/4 p1, 0x4

    const/4 v0, 0x0

    .line 5605
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    return-void

    .line 5606
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ANSWER_CALL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5607
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCallFromNotification()V

    :cond_2
    return-void
.end method

.method public hangUp()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4298
    invoke-virtual {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(I)V
    .locals 1

    const/4 v0, 0x0

    .line 4302
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hangUp(ILjava/lang/Runnable;)V
    .locals 7

    .line 1019
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0x10

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->declineIncomingCall(ILjava/lang/Runnable;)V

    .line 1020
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    if-ne p1, v3, :cond_4

    .line 1025
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz p1, :cond_3

    .line 1026
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v1, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {p1, v4, v5}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1028
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v4, -0x200001

    and-int/2addr v1, v4

    iput v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/4 v1, 0x0

    .line 1029
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1030
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v5, v5, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v4, v2, v0

    aput-object v5, v2, v3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v0, v2, p2

    invoke-virtual {p1, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1033
    :cond_3
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;-><init>()V

    .line 1034
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$discardGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1035
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda102;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda102;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void

    .line 1042
    :cond_4
    new-instance p1, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;

    invoke-direct {p1}, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;-><init>()V

    .line 1043
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {p2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object p2

    iput-object p2, p1, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1044
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget p2, p2, v0

    iput p2, p1, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCall;->source:I

    .line 1045
    iget p2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p2

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda103;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda103;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1, v0}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public hangUp(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4306
    invoke-virtual {p0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(ILjava/lang/Runnable;)V

    return-void
.end method

.method public hasEarpiece()Z
    .locals 7

    .line 3609
    const-class v0, Landroid/media/AudioManager;

    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 3610
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3611
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_0

    return v3

    :cond_0
    return v2

    .line 3615
    :cond_1
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_2

    return v3

    .line 3618
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    if-eqz v1, :cond_3

    .line 3619
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 3624
    :cond_3
    :try_start_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3625
    const-string v4, "getDevicesForStream"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 3626
    const-string v5, "DEVICE_OUT_EARPIECE"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v5, 0x0

    .line 3627
    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 3628
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v5, v3, v2

    invoke-virtual {v4, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_4

    .line 3632
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 3634
    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3637
    :goto_0
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_5

    .line 3638
    const-string v1, "Error while checking earpiece! "

    invoke-static {v1, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3640
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    .line 3643
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mHasEarpiece:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hasRate()Z
    .locals 1

    .line 4601
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->forceRating:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public hasVideoCapturer()Z
    .locals 6

    .line 606
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public isBluetoothHeadsetConnected()Z
    .locals 1

    .line 4988
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4989
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getSupportedRouteMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4991
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    return v0
.end method

.method public isBluetoothOn()Z
    .locals 1

    .line 5508
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5509
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothWillOn()Z
    .locals 1

    .line 5513
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    return v0
.end method

.method public isCallingVideo()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v0, :cond_0

    .line 314
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isConference()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public isConverting()Z
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFrontFaceCamera()Z
    .locals 1

    .line 537
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    return v0
.end method

.method public isFullscreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)Z
    .locals 1

    .line 1504
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, p2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBackgroundEndpointId:[Ljava/lang/String;

    aget-object v0, v0, p2

    if-eqz p2, :cond_0

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isHangingUp()Z
    .locals 2

    .line 1518
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 1

    .line 5517
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    return v0
.end method

.method public isJoined()Z
    .locals 3

    .line 1235
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMicMute()Z
    .locals 1

    .line 3749
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    return v0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 5596
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    return v0
.end method

.method public isScreencast()Z
    .locals 1

    .line 541
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 4

    .line 3920
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3921
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {v0}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result v0

    .line 3922
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return v3

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return v3

    :cond_2
    return v2

    .line 3923
    :cond_3
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    .line 3924
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3925
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 3926
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0

    :cond_4
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0

    .line 3928
    :cond_5
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    return v0
.end method

.method public isSwitchingCamera()Z
    .locals 1

    .line 1263
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    return v0
.end method

.method public isSwitchingStream()Z
    .locals 1

    .line 3347
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    return v0
.end method

.method public isVideoAvailable()Z
    .locals 1

    .line 3572
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    return v0
.end method

.method public migrateToChat(Lorg/telegram/tgnet/TLRPC$Chat;)V
    .locals 0

    .line 1896
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    return-void
.end method

.method public mutedByAdmin()Z
    .locals 3

    .line 585
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_0

    .line 587
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v1

    .line 588
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v0, :cond_0

    .line 589
    iget-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->canManageCalls(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 4996
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4998
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCallUpdated(Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;)V
    .locals 7

    .line 1641
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 1644
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez v0, :cond_1

    .line 1645
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->pendingUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 1651
    :cond_2
    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 1674
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_1c

    .line 1675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallUpdated called with wrong call id (got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", expected "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    return-void

    .line 1679
    :cond_3
    iget-wide v1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 1680
    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v0, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    .line 1682
    :cond_4
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_5

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call updated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1685
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->key_fingerprint:J

    .line 1686
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 1687
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallDiscarded;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_b

    .line 1688
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_debug:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needSendDebugLog:Z

    .line 1689
    iget-boolean v0, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_rating:Z

    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->needRateCall:Z

    .line 1690
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_6

    .line 1691
    const-string v0, "call discarded, stopping service"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1693
    :cond_6
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    .line 1694
    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->voipDebug:Lorg/telegram/messenger/voip/VoIPDebugToSend;

    if-eqz v0, :cond_7

    .line 1695
    iget-wide v4, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iget-boolean v6, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->need_debug:Z

    invoke-virtual {v0, v4, v5, v6}, Lorg/telegram/messenger/voip/VoIPDebugToSend;->done(JZ)V

    .line 1697
    :cond_7
    iget-object p1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->reason:Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;

    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;

    if-eqz v0, :cond_9

    .line 1698
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonMigrateConferenceCall;

    .line 1699
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputGroupCallSlug;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1700
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$PhoneCallDiscardReason;->slug:Ljava/lang/String;

    iput-object p1, v0, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->slug:Ljava/lang/String;

    .line 1702
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 1703
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, p1, v3

    if-eqz v0, :cond_8

    .line 1704
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    .line 1705
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    .line 1706
    aput-object v2, p1, v3

    .line 1709
    :cond_8
    invoke-direct {p0, v3, v3, v2, v3}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    return-void

    .line 1710
    :cond_9
    instance-of p1, p1, Lorg/telegram/tgnet/TLRPC$TL_phoneCallDiscardReasonBusy;

    if-eqz p1, :cond_a

    const/16 p1, 0x11

    .line 1711
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1712
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    .line 1713
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda129;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda129;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1714
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->afterSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x5dc

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1715
    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->endConnectionServiceCall(J)V

    .line 1716
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    .line 1718
    :cond_a
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callEnded()V

    return-void

    .line 1720
    :cond_b
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCall;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_17

    .line 1721
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->g_a_or_b:[B

    if-nez v0, :cond_d

    .line 1722
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_c

    .line 1723
    const-string/jumbo p1, "stopping VoIP service, Ga == null"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1725
    :cond_c
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1728
    :cond_d
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a_hash:[B

    array-length v4, v0

    int-to-long v4, v4

    invoke-static {v0, v3, v4, v5}, Lorg/telegram/messenger/Utilities;->computeSHA256([BIJ)[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_f

    .line 1729
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_e

    .line 1730
    const-string/jumbo p1, "stopping VoIP service, Ga hash doesn\'t match"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1732
    :cond_e
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1735
    :cond_f
    iget-object v0, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->g_a_or_b:[B

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->g_a:[B

    .line 1736
    new-instance v0, Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->g_a_or_b:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1737
    new-instance v2, Ljava/math/BigInteger;

    iget v4, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->getInstance(I)Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MessagesStorage;->getSecretPBytes()[B

    move-result-object v4

    invoke-direct {v2, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1739
    invoke-static {v0, v2}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 1740
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_10

    .line 1741
    const-string/jumbo p1, "stopping VoIP service, bad Ga and Gb (accepting)"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1743
    :cond_10
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1746
    :cond_11
    new-instance v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->a_or_b:[B

    invoke-direct {v4, v1, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 1748
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 1749
    array-length v1, v0

    const/16 v2, 0x100

    if-le v1, v2, :cond_13

    .line 1750
    new-array v1, v2, [B

    .line 1751
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_12
    move-object v0, v1

    goto :goto_1

    .line 1753
    :cond_13
    array-length v1, v0

    if-ge v1, v2, :cond_14

    .line 1754
    new-array v1, v2, [B

    .line 1755
    array-length v4, v0

    rsub-int v4, v4, 0x100

    array-length v5, v0

    invoke-static {v0, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v3

    .line 1756
    :goto_0
    array-length v5, v0

    rsub-int v5, v5, 0x100

    if-ge v4, v5, :cond_12

    .line 1757
    aput-byte v3, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1761
    :cond_14
    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v1

    const/16 v2, 0x8

    .line 1762
    new-array v4, v2, [B

    .line 1763
    array-length v5, v1

    sub-int/2addr v5, v2

    invoke-static {v1, v5, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1764
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    .line 1765
    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPService;->keyFingerprint:J

    .line 1767
    iget-wide v2, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->key_fingerprint:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_16

    .line 1768
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_15

    .line 1769
    const-string/jumbo p1, "key fingerprints don\'t match"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 1771
    :cond_15
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    return-void

    .line 1775
    :cond_16
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->initiateActualEncryptedCall()V

    return-void

    .line 1776
    :cond_17
    instance-of v0, p1, Lorg/telegram/tgnet/tl/TL_phone$TL_phoneCallAccepted;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->authKey:[B

    if-nez v0, :cond_18

    .line 1777
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->processAcceptedCall()V

    return-void

    .line 1782
    :cond_18
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    iget p1, p1, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->receive_date:I

    if-eqz p1, :cond_1c

    const/16 p1, 0x10

    .line 1783
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 1784
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_19

    .line 1785
    const-string p1, "!!!!!! CALL RECEIVED"

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1787
    :cond_19
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1a

    .line 1788
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1789
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->connectingSoundRunnable:Ljava/lang/Runnable;

    .line 1791
    :cond_1a
    sget-object p1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda130;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda130;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1797
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_1b

    .line 1798
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 1799
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1801
    :cond_1b
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda131;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda131;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 1805
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget v0, v0, Lorg/telegram/messenger/MessagesController;->callRingTimeout:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    :cond_1c
    :goto_2
    return-void
.end method

.method protected onCameraFirstFrameAvailable()V
    .locals 2

    const/4 v0, 0x0

    .line 3668
    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3669
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3670
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraFirstFrameAvailable()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onConnectionStateChanged(IZ)V
    .locals 0

    .line 5428
    new-instance p2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;

    invoke-direct {p2, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda124;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {p2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .line 4637
    const-string v0, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4638
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v1, :cond_0

    .line 4639
    const-string v1, "=============== VoIPService STARTING ==============="

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x1

    .line 4642
    :try_start_0
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 4643
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4644
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4645
    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_1
    const v0, 0xbb80

    const/4 v3, 0x4

    const/4 v4, 0x2

    .line 4647
    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    div-int/2addr v0, v4

    invoke-static {v0}, Lorg/telegram/messenger/voip/Instance;->setBufferSize(I)V

    .line 4650
    :goto_0
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string/jumbo v3, "telegram-voip"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    .line 4651
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 4653
    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    :goto_1
    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 4655
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 4656
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4657
    sget-boolean v4, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v4, :cond_4

    .line 4658
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4659
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->btAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v4, :cond_3

    .line 4660
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4661
    const-string v4, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4663
    :cond_3
    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4664
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4665
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4667
    :cond_4
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 4668
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->fetchBluetoothDeviceName()V

    .line 4670
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_5

    .line 4672
    :try_start_1
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$10;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$10;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 4685
    :try_start_2
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4686
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    .line 4689
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v0, :cond_6

    .line 4690
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0, v3}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 4692
    :cond_6
    new-instance v0, Landroid/content/ComponentName;

    const-class v3, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v0, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 4694
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkUpdateBluetoothHeadset()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 4696
    :goto_3
    sget-boolean v2, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v2, :cond_7

    .line 4697
    const-string v2, "error initializing voip controller"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4699
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->callFailed()V

    .line 4701
    :goto_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_d

    .line 4702
    sget-object v2, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    const/16 v3, 0x21

    const/4 v4, 0x0

    const/16 v5, 0xc9

    if-eqz v2, :cond_b

    .line 4703
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 4704
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline2;->m()V

    sget-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$string;->VoipOutgoingCall:I

    .line 4705
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4706
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4707
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v4, :cond_9

    .line 4708
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result v4

    if-eqz v4, :cond_8

    sget v4, Lorg/telegram/messenger/R$drawable;->voicechat_muted:I

    goto :goto_5

    :cond_8
    sget v4, Lorg/telegram/messenger/R$drawable;->voicechat_active:I

    :goto_5
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_6

    .line 4710
    :cond_9
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4712
    :goto_6
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z

    if-lt v0, v3, :cond_a

    .line 4714
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-virtual {p0, v5, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_7

    .line 4716
    :cond_a
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_7

    .line 4719
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->checkOtherNotificationsChannel()V

    .line 4720
    invoke-static {}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline2;->m()V

    sget-object v2, Lorg/telegram/messenger/NotificationsController;->OTHER_NOTIFICATIONS_CHANNEL:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/telegram/messenger/FilesMigrationService$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    sget v6, Lorg/telegram/messenger/R$string;->VoipCallEnded:I

    .line 4721
    invoke-static {v6}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4722
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 4723
    sget v4, Lorg/telegram/messenger/R$drawable;->ic_call:I

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 4724
    iput-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z

    if-lt v0, v3, :cond_c

    .line 4726
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-virtual {p0, v5, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    goto :goto_7

    .line 4728
    :cond_c
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, v5, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_d
    :goto_7
    return-void
.end method

.method public onDestroy()V
    .locals 11

    .line 4132
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 4133
    const-string v0, "=============== VoIPService STOPPING ==============="

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 4135
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 4136
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->stopRinging()V

    .line 4137
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    const/4 v2, 0x0

    if-ltz v1, :cond_3

    .line 4138
    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->mainInterfacePaused:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-nez v1, :cond_2

    .line 4139
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iput-boolean v2, v1, Lorg/telegram/messenger/MessagesController;->ignoreSetOnline:Z

    .line 4141
    :cond_2
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->appDidLogout:I

    invoke-virtual {v1, p0, v3}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;I)V

    .line 4150
    :cond_3
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    const/16 v3, 0x8

    .line 4153
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 4155
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 4157
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4158
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->proximityWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4160
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    .line 4161
    sget-object v1, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 4162
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    .line 4164
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_7

    .line 4165
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4166
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStreamTimeoutRunnable:Ljava/lang/Runnable;

    .line 4168
    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4169
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_8

    .line 4170
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 4171
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->timeoutRunnable:Ljava/lang/Runnable;

    .line 4173
    :cond_8
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v1, :cond_9

    .line 4174
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/ConferenceCall;->destroy()V

    .line 4176
    :cond_9
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 4177
    sput-object v3, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 4178
    const-string v1, "(5) set sharedInstance = null"

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4179
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 4180
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->cancelGroupCheckShortPoll()V

    .line 4181
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda71;-><init>()V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 4182
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_c

    .line 4183
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/StatsController;->getInstance(I)Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getStatsNetworkType()I

    move-result v6

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallDuration()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v7, v7

    rem-int/lit8 v7, v7, 0x5

    invoke-virtual {v1, v6, v7}, Lorg/telegram/messenger/StatsController;->incrementTotalCallsTime(II)V

    .line 4184
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipPreStop()V

    .line 4185
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4186
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    .line 4187
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4188
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 4189
    iget v7, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v7}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/AccountInstance;->getConnectionsManager()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v7, v6, v0}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_0

    .line 4191
    :cond_a
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentStreamRequestTimestamp:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_1

    .line 4193
    :cond_b
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/NativeInstance;->stop()Lorg/telegram/messenger/voip/Instance$FinalState;

    move-result-object v1

    .line 4194
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v6, v6, v2

    iget-object v7, v1, Lorg/telegram/messenger/voip/Instance$FinalState;->trafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    invoke-direct {p0, v6, v7}, Lorg/telegram/messenger/voip/VoIPService;->updateTrafficStats(Lorg/telegram/messenger/voip/NativeInstance;Lorg/telegram/messenger/voip/Instance$TrafficStats;)V

    .line 4195
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->onTgVoipStop(Lorg/telegram/messenger/voip/Instance$FinalState;)V

    .line 4197
    :goto_1
    iput-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->prevTrafficStats:Lorg/telegram/messenger/voip/Instance$TrafficStats;

    .line 4198
    iput-wide v4, p0, Lorg/telegram/messenger/voip/VoIPService;->callStartTime:J

    .line 4199
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v2

    .line 4200
    invoke-static {}, Lorg/telegram/messenger/voip/Instance;->destroyInstance()V

    .line 4202
    :cond_c
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->destroyConverting()V

    .line 4203
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    .line 4205
    sget-object v6, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v7, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4206
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aput-object v3, v1, v0

    :cond_d
    move v1, v2

    .line 4208
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    array-length v7, v6

    if-ge v1, v7, :cond_10

    .line 4209
    aget-wide v7, v6, v1

    cmp-long v6, v7, v4

    if-eqz v6, :cond_f

    .line 4210
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aget-boolean v6, v6, v1

    if-eqz v6, :cond_e

    .line 4211
    invoke-static {v7, v8}, Lorg/telegram/messenger/voip/NativeInstance;->destroyVideoCapturer(J)V

    .line 4213
    :cond_e
    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aput-wide v4, v6, v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4216
    :cond_10
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->cpuWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4217
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 4218
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v4, :cond_16

    .line 4219
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v4

    .line 4220
    sget-boolean v5, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-nez v5, :cond_14

    .line 4221
    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez v5, :cond_11

    iget-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz v5, :cond_12

    .line 4222
    :cond_11
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 4223
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 4224
    invoke-virtual {v4, v2}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 4225
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 4226
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 4228
    :cond_12
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-nez v4, :cond_13

    .line 4229
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;

    invoke-direct {v5, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda73;-><init>(Landroid/media/AudioManager;)V

    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4245
    :cond_13
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 4248
    :cond_14
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lorg/telegram/messenger/voip/VoIPMediaButtonReceiver;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 4250
    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 4252
    :goto_3
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioDeviceCallback:Landroid/media/AudioDeviceCallback;

    if-eqz v4, :cond_15

    .line 4253
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 4256
    :cond_15
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda74;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 4262
    :cond_16
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->hasAudioFocus:Z

    if-eqz v4, :cond_17

    .line 4263
    invoke-virtual {v1, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 4266
    :cond_17
    sget-boolean v1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v1, :cond_19

    .line 4267
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->didDeleteConnectionServiceContact:Z

    if-nez v1, :cond_18

    .line 4268
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ContactsController;->deleteConnectionServiceContact()V

    .line 4270
    :cond_18
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v1, :cond_19

    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->playingSound:Z

    if-nez v4, :cond_19

    .line 4271
    invoke-virtual {v1}, Landroid/telecom/Connection;->destroy()V

    .line 4275
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sput-wide v4, Lorg/telegram/ui/Components/voip/VoIPHelper;->lastCallTime:J

    .line 4277
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V

    .line 4278
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->onDestroyRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1a

    .line 4279
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 4281
    :cond_1a
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-ltz v1, :cond_1b

    .line 4282
    invoke-static {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->setAppPaused(ZZ)V

    .line 4283
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v1}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 4284
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    invoke-virtual {v1, v2, v3, v0}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    :cond_1b
    return-void
.end method

.method public onGroupCallParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;)V
    .locals 11

    .line 1542
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_b

    iget-object v1, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    iget-wide v3, v3, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1545
    :cond_0
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1546
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1547
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1548
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v0, p1, v3}, Lorg/telegram/messenger/ChatObject$Call;->processParticipantsUpdate(Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;Z)V

    .line 1549
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v4, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v2}, Lorg/telegram/messenger/voip/ConferenceCall;->updateParticipants(Ljava/util/ArrayList;Z)V

    move v0, v3

    .line 1550
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1551
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 1552
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallState()I

    move-result v5

    invoke-interface {v4, v5}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1554
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v0, Lorg/telegram/messenger/ChatObject$Call;->shadyLeftParticipants:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyLeftParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1555
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v4, v0, Lorg/telegram/messenger/ChatObject$Call;->shadyJoinParticipants:Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->sortedParticipants:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Lorg/telegram/messenger/voip/ConferenceCall;->getShadyJoiningParticipants(Ljava/util/ArrayList;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1556
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v6, v6, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v3

    aput-object v6, v7, v2

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v5, v7, v1

    invoke-virtual {v0, v4, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1558
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v4

    .line 1559
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_b

    .line 1560
    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1561
    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->left:Z

    if-eqz v8, :cond_6

    .line 1562
    iget v7, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-eqz v7, :cond_a

    .line 1563
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v8, v8, v3

    if-ne v7, v8, :cond_a

    move v7, v3

    move v8, v7

    :goto_2
    if-ge v7, v0, :cond_5

    .line 1566
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$TL_updateGroupCallParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 1567
    iget-boolean v10, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v10, :cond_3

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    iget-object v10, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v10, v10, v3

    if-ne v9, v10, :cond_4

    :cond_3
    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    if-le v8, v2, :cond_a

    .line 1572
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1577
    :cond_6
    iget-object v8, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {v8}, Lorg/telegram/messenger/MessageObject;->getPeerId(Lorg/telegram/tgnet/TLRPC$Peer;)J

    move-result-wide v8

    cmp-long v8, v8, v4

    if-nez v8, :cond_a

    .line 1578
    iget v8, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v9, v9, v3

    if-eq v8, v9, :cond_8

    if-eqz v9, :cond_8

    if-eqz v8, :cond_8

    .line 1579
    sget-boolean p1, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz p1, :cond_7

    .line 1580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "source mismatch my = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " psrc = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 1582
    :cond_7
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1584
    :cond_8
    iget-object v8, p0, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    invoke-static {v8}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v8

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v8, :cond_9

    iget-boolean v8, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-eqz v8, :cond_9

    .line 1585
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1586
    invoke-direct {p0, v3, v3, v2}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 1588
    :cond_9
    iget-boolean v7, v7, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v7, :cond_a

    .line 1589
    invoke-virtual {p0, v2, v3, v3}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_b
    :goto_3
    return-void
.end method

.method public onGroupCallUpdated(Lorg/telegram/tgnet/TLRPC$GroupCall;)V
    .locals 6

    .line 1597
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    iget-wide v3, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 1601
    :cond_0
    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_groupCallDiscarded;

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 1602
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->hangUp(I)V

    return-void

    .line 1606
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1608
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1609
    const-string/jumbo v3, "stream"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1611
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_2
    move v0, v2

    .line 1614
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->conference:Lorg/telegram/messenger/voip/ConferenceCall;

    if-eqz v3, :cond_3

    .line 1615
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v3, p1}, Lorg/telegram/messenger/ChatObject$Call;->processGroupCallUpdate(Lorg/telegram/tgnet/TLRPC$GroupCall;)V

    .line 1618
    :cond_3
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq v0, v3, :cond_9

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->myParams:Lorg/telegram/tgnet/TLRPC$TL_dataJSON;

    if-eqz v3, :cond_9

    .line 1619
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v5, v5, v2

    if-nez v5, :cond_5

    .line 1620
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastGroupCallUpdate:Lorg/telegram/tgnet/TLRPC$GroupCall;

    return-void

    .line 1623
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eq v0, p1, :cond_6

    .line 1624
    iput-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingStream:Z

    .line 1626
    :cond_6
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v0, :cond_8

    .line 1629
    :try_start_1
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    if-eqz p1, :cond_7

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCall;->rtmp_stream:Z

    if-eqz p1, :cond_7

    move v2, v4

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    :cond_7
    :goto_1
    invoke-virtual {v5, v2}, Lorg/telegram/messenger/voip/NativeInstance;->prepareForStream(Z)V

    goto :goto_2

    .line 1631
    :cond_8
    iget-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_dataJSON;->data:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setJoinResponsePayload(Ljava/lang/String;)V

    .line 1633
    :goto_2
    invoke-direct {p0, v1}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 1635
    :goto_3
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    return-void

    .line 1598
    :cond_a
    :goto_5
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastGroupCallUpdate:Lorg/telegram/tgnet/TLRPC$GroupCall;

    return-void
.end method

.method onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 3579
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x55

    if-ne v0, v1, :cond_3

    .line 3580
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 3581
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v1, 0xf

    if-ne p1, v1, :cond_2

    .line 3582
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    return-void

    .line 3584
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isMicMute()Z

    move-result p1

    xor-int/2addr p1, v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 4942
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->lastSensorEvent:Landroid/hardware/SensorEvent;

    .line 4943
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteVideoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 4946
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 4947
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4948
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 4949
    iget v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 4952
    :cond_1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    cmpg-float p1, v0, p1

    const/4 v0, 0x1

    if-gez p1, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, v2

    .line 4953
    :goto_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear(Z)V

    .line 4954
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v1

    sget v3, Lorg/telegram/messenger/NotificationCenter;->nearEarEvent:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-virtual {v1, v3, v0}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onSignalBarCountChanged(I)V
    .locals 1

    .line 5498
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda118;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda118;-><init>(Lorg/telegram/messenger/voip/VoIPService;I)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSignalingData(Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;)V
    .locals 6

    .line 1522
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->isGroup()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCallID()J

    move-result-wide v2

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;->phone_call_id:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1525
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$TL_updatePhoneCallSignalingData;->data:[B

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->onSignalingDataReceive([B)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSignalingData([B)V
    .locals 5

    .line 3560
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-nez v0, :cond_0

    return-void

    .line 3563
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$sendSignalingData;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$sendSignalingData;-><init>()V

    .line 3564
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/tl/TL_phone$sendSignalingData;->peer:Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;

    .line 3565
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v3, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iput-wide v3, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->access_hash:J

    .line 3566
    iget-wide v2, v2, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputPhoneCall;->id:J

    .line 3567
    iput-object p1, v0, Lorg/telegram/tgnet/tl/TL_phone$sendSignalingData;->data:[B

    .line 3568
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "InlinedApi"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 758
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 759
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 760
    const-string v0, "Tried to start the VoIP service when it\'s already started"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    :cond_0
    return v3

    .line 765
    :cond_1
    const-string v0, "account"

    const/4 v4, -0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    if-eq v0, v4, :cond_23

    .line 769
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->generateClassGuid()I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    .line 770
    const-string/jumbo v0, "user_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 771
    const-string v0, "chat_id"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 772
    const-string v0, "createGroupCall"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    .line 773
    const-string/jumbo v0, "joinConference"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v11, 0x1

    if-eqz v0, :cond_2

    .line 775
    new-instance v12, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 776
    invoke-virtual {v12, v11}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {v12, v0, v11}, Lorg/telegram/tgnet/TLRPC$InputGroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 778
    :cond_2
    const-string/jumbo v0, "mute_on_start"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 779
    const-string/jumbo v0, "mute_on_start"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->muteOnStart:Ljava/lang/Boolean;

    .line 782
    :cond_3
    const-string/jumbo v0, "joinConferenceCall"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_4

    .line 784
    new-instance v12, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v12, v0}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 785
    invoke-virtual {v12, v11}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {v12, v0, v11}, Lorg/telegram/tgnet/TLRPC$GroupCall;->TLdeserialize(Lorg/telegram/tgnet/InputSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$GroupCall;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinConferenceCall:Lorg/telegram/tgnet/TLRPC$GroupCall;

    .line 787
    :cond_4
    const-string v0, "inviteUsers"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->inviteUsers:[J

    .line 788
    const-string v0, "hasFewPeers"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->hasFewPeers:Z

    .line 789
    const-string/jumbo v0, "isRtmpStream"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isRtmpStream:Z

    .line 790
    const-string v0, "hash"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    .line 791
    const-string/jumbo v0, "peerChannelId"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 792
    const-string/jumbo v0, "peerChatId"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    .line 793
    const-string/jumbo v0, "peerUserId"

    move/from16 p3, v11

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    cmp-long v0, v14, v4

    if-eqz v0, :cond_5

    .line 795
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChat;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 796
    iput-wide v14, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:J

    .line 797
    const-string/jumbo v10, "peerAccessHash"

    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_5
    cmp-long v0, v12, v4

    if-eqz v0, :cond_6

    .line 799
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 800
    iput-wide v12, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:J

    .line 801
    const-string/jumbo v10, "peerAccessHash"

    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    goto :goto_0

    :cond_6
    cmp-long v0, v10, v4

    if-eqz v0, :cond_7

    .line 803
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 804
    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:J

    .line 805
    const-string/jumbo v10, "peerAccessHash"

    invoke-virtual {v2, v10, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 807
    :cond_7
    :goto_0
    const-string/jumbo v0, "scheduleDate"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lorg/telegram/messenger/voip/VoIPService;->scheduleDate:I

    .line 809
    const-string/jumbo v0, "is_outgoing"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    .line 810
    const-string/jumbo v0, "video_call"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    .line 811
    const-string v0, "can_video_call"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    .line 812
    const-string/jumbo v0, "notifications_disabled"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->notificationsDisabled:Z

    .line 813
    const-string v0, "accept"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->instantAccept:Z

    .line 814
    const-string/jumbo v0, "openFragment"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    cmp-long v0, v6, v4

    if-eqz v0, :cond_8

    .line 816
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    :cond_8
    cmp-long v4, v8, v4

    if-eqz v4, :cond_9

    .line 819
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Long;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v0

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    .line 820
    invoke-static {v0}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 821
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->classGuid:I

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v6, v10}, Lorg/telegram/messenger/MessagesController;->startShortPoll(Lorg/telegram/tgnet/TLRPC$Chat;IZ)V

    .line 824
    :cond_9
    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->loadResources()V

    const/4 v0, 0x0

    .line 825
    :goto_1
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    array-length v6, v5

    if-ge v0, v6, :cond_a

    .line 826
    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v6, v5, v0

    .line 827
    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    new-instance v6, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    invoke-direct {v6}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;-><init>()V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 830
    :cond_a
    :try_start_0
    const-string v0, "audio"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 831
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    iput-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 833
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 835
    :goto_2
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->createGroupCall:Z

    if-nez v0, :cond_b

    .line 836
    iget v0, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v5, v5, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    const/4 v10, 0x0

    invoke-virtual {v0, v5, v6, v10}, Lorg/telegram/messenger/MessagesController;->getGroupCall(JZ)Lorg/telegram/messenger/ChatObject$Call;

    move-result-object v0

    if-nez v0, :cond_b

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoIPService: trying to open group call without call "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 844
    :cond_b
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v0, :cond_e

    .line 845
    const-string v0, "android.permission.CAMERA"

    invoke-virtual {v1, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_d

    .line 846
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    iget-object v5, v1, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v10, 0x0

    aget-object v5, v5, v10

    iget-boolean v6, v1, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-static {v5, v6}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v5

    aput-wide v5, v0, v10

    if-eqz v4, :cond_c

    .line 848
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p3, v0, v10

    goto :goto_3

    .line 850
    :cond_c
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v3, v0, v10

    goto :goto_3

    :cond_d
    const/4 v10, 0x0

    .line 853
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p3, v0, v10

    .line 855
    :goto_3
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_e

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_e

    .line 856
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    .line 860
    :cond_e
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v0, :cond_10

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-nez v0, :cond_10

    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-nez v0, :cond_10

    .line 861
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_f

    .line 862
    const-string v0, "VoIPService: user == null AND chat == null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->w(Ljava/lang/String;)V

    .line 864
    :cond_f
    invoke-virtual {v1}, Landroid/app/Service;->stopSelf()V

    return v3

    .line 867
    :cond_10
    sput-object v1, Lorg/telegram/messenger/voip/VoIPService;->sharedInstance:Lorg/telegram/messenger/voip/VoIPService;

    .line 868
    const-string v0, "(4) set sharedInstance = this"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 869
    sget-object v4, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v4

    .line 870
    :try_start_1
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    const/4 v5, 0x0

    if-eqz v0, :cond_11

    .line 871
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    sget-object v6, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 872
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->setModeRunnable:Ljava/lang/Runnable;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 874
    :cond_11
    :goto_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 875
    invoke-static {v1}, Lorg/telegram/messenger/voip/VoIPGroupNotification;->hide(Landroid/content/Context;)V

    .line 877
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->joinConference:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    if-eqz v0, :cond_14

    .line 878
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getGlobalMainSettings()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "callmiconstart"

    move/from16 v4, p3

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 880
    iput-boolean v4, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    :cond_12
    :goto_5
    const/4 v10, 0x0

    goto :goto_6

    .line 882
    :cond_13
    const-string v0, "android.permission.RECORD_AUDIO"

    invoke-static {v0}, Lorg/telegram/ui/Components/PermissionRequest;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 883
    iput-boolean v4, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    .line 884
    const-string v0, "android.permission.RECORD_AUDIO"

    new-instance v2, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;

    invoke-direct {v2, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda36;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0, v2}, Lorg/telegram/ui/Components/PermissionRequest;->requestPermission(Ljava/lang/String;Lorg/telegram/messenger/Utilities$Callback;)V

    goto :goto_5

    .line 891
    :goto_6
    invoke-direct {v1, v10, v10, v5, v10}, Lorg/telegram/messenger/voip/VoIPService;->startConferenceGroupCall(ZILjava/lang/String;Z)V

    .line 892
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_22

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_22

    .line 893
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto/16 :goto_d

    .line 895
    :cond_14
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isOutgoing:Z

    if-eqz v0, :cond_1a

    .line 896
    iget-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_16

    const/16 v0, 0xe

    .line 897
    invoke-direct {v1, v0}, Lorg/telegram/messenger/voip/VoIPService;->dispatchStateChanged(I)V

    .line 898
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_15

    .line 899
    const-string/jumbo v0, "telecom"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 900
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 901
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 902
    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->addAccountToTelecomManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 903
    const-string v7, "call_type"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 904
    const-string v7, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 905
    iget v6, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v6}, Lorg/telegram/messenger/ContactsController;->getInstance(I)Lorg/telegram/messenger/ContactsController;

    move-result-object v6

    iget-object v7, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$User;->id:J

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10, v7}, Lorg/telegram/messenger/ContactsController;->createOrUpdateConnectionServiceContact(JLjava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string/jumbo v6, "tel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "+99084"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v8, v8, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    .line 908
    :cond_15
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda37;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->delayedStartOutgoingCall:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    .line 912
    invoke-static {v0, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_7

    :cond_16
    const/4 v4, 0x1

    .line 915
    iput-boolean v4, v1, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v10, 0x0

    .line 916
    invoke-direct {v1, v10, v5, v10}, Lorg/telegram/messenger/voip/VoIPService;->startGroupCall(ILjava/lang/String;Z)V

    .line 917
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_17

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_17

    .line 918
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    .line 921
    :cond_17
    :goto_8
    const-string/jumbo v0, "start_incall_activity"

    invoke-virtual {v2, v0, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 922
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v2, :cond_18

    const-string/jumbo v2, "voip"

    goto :goto_9

    :cond_18
    const-string/jumbo v2, "voip_chat"

    :goto_9
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 923
    iget-object v2, v1, Lorg/telegram/messenger/voip/VoIPService;->chat:Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v2, :cond_19

    .line 924
    const-string v2, "currentAccount"

    iget v4, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 926
    :cond_19
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_d

    .line 929
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getGlobalInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v2, Lorg/telegram/messenger/NotificationCenter;->closeInCallActivity:I

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 930
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iput-object v0, v1, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    if-eqz v0, :cond_1b

    .line 931
    iget-boolean v0, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->video:Z

    if-eqz v0, :cond_1b

    const/4 v10, 0x1

    goto :goto_a

    :cond_1b
    const/4 v10, 0x0

    :goto_a
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->videoCall:Z

    if-eqz v10, :cond_1c

    const/4 v4, 0x1

    .line 933
    iput-boolean v4, v1, Lorg/telegram/messenger/voip/VoIPService;->isVideoAvailable:Z

    :cond_1c
    if-eqz v10, :cond_1d

    .line 935
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isBtHeadsetConnected:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-nez v0, :cond_1d

    const/4 v10, 0x0

    .line 936
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    goto :goto_b

    :cond_1d
    const/4 v10, 0x0

    .line 938
    :goto_b
    sput-object v5, Lorg/telegram/messenger/voip/VoIPService;->callIShouldHavePutIntoIntent:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    .line 939
    const-string v0, "(3) set VoIPService.callIShouldHavePutIntoIntent = null"

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 940
    iget-boolean v0, v1, Lorg/telegram/messenger/voip/VoIPService;->instantAccept:Z

    if-eqz v0, :cond_1e

    .line 941
    iput-boolean v10, v1, Lorg/telegram/messenger/voip/VoIPService;->instantAccept:Z

    .line 942
    invoke-virtual {v1}, Lorg/telegram/messenger/voip/VoIPService;->acceptIncomingCall()V

    goto :goto_c

    .line 943
    :cond_1e
    sget-boolean v0, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz v0, :cond_1f

    .line 944
    invoke-direct {v1, v10}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    .line 945
    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->showNotification()V

    goto :goto_c

    :cond_1f
    const/4 v4, 0x1

    .line 947
    invoke-direct {v1, v4}, Lorg/telegram/messenger/voip/VoIPService;->acknowledgeCall(Z)V

    :goto_c
    if-eqz v11, :cond_22

    .line 951
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_20

    .line 952
    sget-object v0, Lorg/telegram/ui/LaunchActivity;->instance:Lorg/telegram/ui/LaunchActivity;

    :cond_20
    if-nez v0, :cond_21

    .line 953
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    :cond_21
    if-eqz v0, :cond_22

    .line 955
    iget v2, v1, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0, v2}, Lorg/telegram/ui/VoIPFragment;->show(Landroid/app/Activity;I)V

    .line 959
    :cond_22
    :goto_d
    invoke-direct {v1}, Lorg/telegram/messenger/voip/VoIPService;->initializeAccountRelatedThings()V

    .line 960
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;

    invoke-direct {v0, v1}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda38;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    return v3

    .line 874
    :goto_e
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 767
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No account specified when starting VoIP service"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public playAllowTalkSound()V
    .locals 2

    .line 5493
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda111;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda111;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playConnectedSound()V
    .locals 2

    .line 3526
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda101;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda101;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 3527
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->playedConnectedSound:Z

    return-void
.end method

.method public playStartRecordSound()V
    .locals 2

    .line 5489
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda110;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda110;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public processMessageUpdate(Lorg/telegram/messenger/MessageObject;)V
    .locals 6

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 5821
    :cond_0
    iget-object v0, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 5822
    :cond_1
    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    if-eqz v0, :cond_3

    .line 5823
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v0

    .line 5824
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    .line 5825
    iget-object p1, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;

    .line 5827
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v3, :cond_3

    .line 5828
    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMessageIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;

    if-eqz v3, :cond_3

    .line 5829
    iget v4, v3, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->msg_id:I

    if-ne v4, v2, :cond_3

    .line 5830
    iget-boolean v2, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->missed:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    iget-boolean p1, p1, Lorg/telegram/tgnet/TLRPC$TL_messageActionConferenceCall;->active:Z

    if-nez p1, :cond_2

    move p1, v5

    goto :goto_0

    :cond_2
    move p1, v4

    .line 5831
    :goto_0
    invoke-virtual {v3}, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->isCalling()Z

    move-result v2

    if-eq v2, p1, :cond_3

    .line 5832
    iput-boolean p1, v3, Lorg/telegram/messenger/ChatObject$Call$InvitedUser;->calling:Z

    .line 5833
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object p1, p1, Lorg/telegram/messenger/ChatObject$Call;->invitedUsersMessageIds:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5834
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/NotificationCenter;->getInstance(I)Lorg/telegram/messenger/NotificationCenter;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/NotificationCenter;->groupCallUpdated:I

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v2, v2, Lorg/telegram/messenger/ChatObject$Call;->call:Lorg/telegram/tgnet/TLRPC$GroupCall;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$GroupCall;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v2, v3, v5

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x2

    aput-object v1, v3, v2

    invoke-virtual {p1, v0, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public registerStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 3675
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3678
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3679
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    if-eqz v0, :cond_1

    .line 3680
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onStateChanged(I)V

    .line 3682
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->signalBarCount:I

    if-eqz v0, :cond_2

    .line 3683
    invoke-interface {p1, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onSignalBarsCountChanged(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeRemoteSink(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1491
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1493
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->-$$Nest$fgetnativeInstance(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    return-void

    .line 1496
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSinks:Ljava/util/HashMap;

    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    if-eqz p1, :cond_1

    .line 1498
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    invoke-static {p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->-$$Nest$fgetnativeInstance(Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->removeIncomingVideoOutput(J)V

    :cond_1
    return-void
.end method

.method public requestFullScreen(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;ZZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1478
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentationEndpoint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->videoEndpoint:Ljava/lang/String;

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 1483
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x2

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    return-void

    .line 1485
    :cond_2
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, p3

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoEndpointQuality(Ljava/lang/String;I)V

    return-void
.end method

.method public requestVideoCall(Z)V
    .locals 7

    .line 1239
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 1242
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, v1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_1

    .line 1243
    invoke-virtual {v0, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1244
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    goto :goto_1

    .line 1246
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v2, v2, v1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideo(Lorg/webrtc/VideoSink;I)V

    .line 1248
    :goto_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->isPrivateScreencast:Z

    return-void
.end method

.method public sendCallRating(I)V
    .locals 7

    .line 1826
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->privateCall:Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;

    iget-wide v1, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->id:J

    iget-wide v3, v0, Lorg/telegram/tgnet/tl/TL_phone$PhoneCall;->access_hash:J

    iget v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    move v6, p1

    invoke-static/range {v1 .. v6}, Lorg/telegram/ui/Components/voip/VoIPHelper;->sendCallRating(JJII)V

    return-void
.end method

.method public setAudioOutput(I)V
    .locals 7

    .line 3841
    sget-boolean v0, Lorg/telegram/messenger/BuildVars;->LOGS_ENABLED:Z

    if-eqz v0, :cond_0

    .line 3842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioOutput "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 3844
    :cond_0
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3845
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object v1

    .line 3846
    sget-boolean v2, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz v6, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    goto/16 :goto_2

    .line 3849
    :cond_1
    invoke-virtual {v6, v3}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_2
    const/4 p1, 0x5

    .line 3852
    invoke-virtual {v6, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    :cond_3
    const/16 p1, 0x8

    .line 3855
    invoke-virtual {v6, p1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto/16 :goto_2

    .line 3858
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz v6, :cond_d

    if-nez v2, :cond_d

    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_5

    goto :goto_1

    .line 3861
    :cond_5
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_6

    .line 3862
    iput-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3864
    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3866
    invoke-static {p1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3869
    :cond_6
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3870
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3872
    :goto_0
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 3875
    :cond_7
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3876
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_9

    .line 3877
    :cond_8
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 3878
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3879
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3881
    :cond_9
    invoke-virtual {v1, v5}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3882
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3883
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    goto :goto_1

    .line 3886
    :cond_a
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->needSwitchToBluetoothAfterScoActivates:Z

    .line 3887
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    if-eqz p1, :cond_c

    .line 3888
    :cond_b
    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 3889
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoActive:Z

    .line 3890
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->bluetoothScoConnecting:Z

    .line 3892
    :cond_c
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3893
    invoke-virtual {v1, v4}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    .line 3894
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3897
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->updateOutputGainControlState()V

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_10

    if-eq p1, v4, :cond_f

    if-eq p1, v3, :cond_e

    goto :goto_2

    .line 3901
    :cond_e
    iput v3, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3902
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 3905
    :cond_f
    iput v5, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3906
    iput-boolean v5, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    goto :goto_2

    .line 3909
    :cond_10
    iput v4, p0, Lorg/telegram/messenger/voip/VoIPService;->audioRouteToSet:I

    .line 3910
    iput-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 3914
    :goto_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v5, v0, :cond_11

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v5, v5, 0x1

    check-cast v1, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3915
    invoke-interface {v1}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    :cond_11
    return-void
.end method

.method public setAudioRoute(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 676
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 678
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 680
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/voip/VoIPService;->setAudioOutput(I)V

    :cond_2
    return-void
.end method

.method public setBackgroundSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 2

    .line 1508
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    .line 1509
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p1, p1, v1

    invoke-virtual {p1, p2}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setBackground(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setGroupCallHash(Ljava/lang/String;)V
    .locals 1

    .line 1001
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentGroupModeStreaming:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->joinHash:Ljava/lang/String;

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 1005
    invoke-direct {p0, v0, v0, p1}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setGroupCallPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V
    .locals 2

    .line 1900
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1903
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCallPeer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1904
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/ChatObject$Call;->setSelfPeer(Lorg/telegram/tgnet/TLRPC$InputPeer;)V

    .line 1905
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/MessagesController;->getInstance(I)Lorg/telegram/messenger/MessagesController;

    move-result-object p1

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-wide v0, v0, Lorg/telegram/messenger/ChatObject$Call;->chatId:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/messenger/MessagesController;->getChatFull(J)Lorg/telegram/tgnet/TLRPC$ChatFull;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1907
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->selfPeer:Lorg/telegram/tgnet/TLRPC$Peer;

    iput-object v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->groupcall_default_join_as:Lorg/telegram/tgnet/TLRPC$Peer;

    if-eqz v0, :cond_2

    .line 1909
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_1

    .line 1910
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1912
    :cond_1
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const/high16 v1, 0x4000000

    or-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1915
    :cond_2
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_chatFull;

    if-eqz v0, :cond_3

    .line 1916
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    goto :goto_0

    .line 1918
    :cond_3
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$ChatFull;->flags:I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1922
    invoke-direct {p0, p1, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    .line 1923
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    .line 1924
    invoke-direct {p0, v0, v0, v0}, Lorg/telegram/messenger/voip/VoIPService;->createGroupInstance(IZZ)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setLocalSink(Lorg/webrtc/VideoSink;Z)V
    .locals 1

    if-eqz p2, :cond_0

    return-void

    .line 1423
    :cond_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setMicMute(ZZZ)V
    .locals 9

    .line 545
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    if-eqz v0, :cond_1

    :cond_0
    move-object v2, p0

    goto/16 :goto_4

    .line 548
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    .line 549
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-nez p3, :cond_2

    .line 551
    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->getSelfId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    if-eqz v0, :cond_2

    .line 552
    iget-boolean v2, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v2, :cond_2

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v0, :cond_2

    move p3, v1

    :cond_2
    if-eqz p3, :cond_3

    .line 557
    iget p3, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p3}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p3

    invoke-virtual {p3}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 558
    sget-object p3, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda15;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    iput-object v0, v2, Lorg/telegram/messenger/voip/VoIPService;->updateNotificationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    move-object v2, p0

    .line 567
    :goto_0
    iget-boolean p3, v2, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v0, 0x0

    if-nez p3, :cond_4

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    iput-boolean v1, v2, Lorg/telegram/messenger/voip/VoIPService;->unmutedByHold:Z

    .line 568
    iget-object p2, v2, Lorg/telegram/messenger/voip/VoIPService;->convertingVoip:Lorg/telegram/messenger/voip/NativeInstance;

    if-eqz p2, :cond_5

    .line 569
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    goto :goto_2

    .line 570
    :cond_5
    iget-object p2, v2, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v0

    if-eqz p2, :cond_6

    .line 571
    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setMuteMicrophone(Z)V

    .line 573
    :cond_6
    :goto_2
    iget-object p1, v2, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_3
    if-ge v0, p2, :cond_7

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v0, v0, 0x1

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 574
    invoke-interface {p3}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public setNoiseSupressionEnabled(Z)V
    .locals 2

    .line 994
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 997
    :cond_0
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/NativeInstance;->setNoiseSuppressionEnabled(Z)V

    return-void
.end method

.method public setParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V
    .locals 7

    .line 3340
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    int-to-double v3, p2

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    .line 3341
    iget-object p1, p1, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->presentation:Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;

    if-eqz p1, :cond_0

    iget p1, p1, Lorg/telegram/tgnet/TLRPC$TL_groupCallParticipantVideo;->audio_source:I

    if-eqz p1, :cond_0

    .line 3342
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object p2, p2, v1

    invoke-virtual {p2, p1, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setVolume(ID)V

    :cond_0
    return-void
.end method

.method public setParticipantsVolume()V
    .locals 5

    .line 3323
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 3325
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v0, v0, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 3326
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    iget-object v3, v3, Lorg/telegram/messenger/ChatObject$Call;->participants:Landroidx/collection/LongSparseArray;

    invoke-virtual {v3, v2}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;

    .line 3327
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->self:Z

    if-nez v4, :cond_2

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->source:I

    if-eqz v4, :cond_2

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->can_self_unmute:Z

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted:Z

    if-eqz v4, :cond_0

    goto :goto_1

    .line 3330
    :cond_0
    iget-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;->muted_by_you:Z

    if-eqz v4, :cond_1

    .line 3331
    invoke-virtual {p0, v3, v1}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V

    goto :goto_1

    .line 3333
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/ChatObject;->getParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/voip/VoIPService;->setParticipantVolume(Lorg/telegram/tgnet/TLRPC$GroupCallParticipant;I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setRemoteSink(Lorg/webrtc/VideoSink;Z)V
    .locals 1

    .line 1428
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;Lorg/webrtc/VideoSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 1405
    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/voip/VoIPService;->setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V

    return-void
.end method

.method public setSinks(Lorg/webrtc/VideoSink;ZLorg/webrtc/VideoSink;)V
    .locals 2

    .line 1409
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, p2

    .line 1410
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object p2, v1, p2

    if-eqz v0, :cond_0

    .line 1412
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1415
    invoke-virtual {p2, p3}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->setTarget(Lorg/webrtc/VideoSink;)V

    :cond_1
    return-void
.end method

.method protected setSwitchingCamera(ZZ)V
    .locals 1

    .line 3657
    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez p1, :cond_0

    .line 3659
    iput-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    const/4 p1, 0x0

    .line 3660
    :goto_0
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 3661
    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3662
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    invoke-interface {p2, v0}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onCameraSwitch(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setVideoState(ZI)V
    .locals 11

    .line 1352
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, p1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 1353
    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    if-nez v4, :cond_4

    .line 1354
    iget-object v4, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v9, v4, p1

    cmp-long v6, v9, v6

    if-eqz v6, :cond_1

    .line 1355
    iget-object v3, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v3, v2

    .line 1356
    invoke-static {v9, v10, p2}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    return-void

    :cond_1
    if-ne p2, v8, :cond_8

    .line 1357
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentState:I

    const/16 v6, 0x11

    if-eq v1, v6, :cond_8

    const/16 v6, 0xb

    if-eq v1, v6, :cond_8

    .line 1358
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v1, v1, v2

    if-eqz p1, :cond_2

    move v3, v8

    goto :goto_1

    :cond_2
    iget-boolean v6, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    if-eqz v6, :cond_3

    move v3, v5

    :cond_3
    :goto_1
    invoke-static {v1, v3}, Lorg/telegram/messenger/voip/NativeInstance;->createVideoCapturer(Lorg/webrtc/VideoSink;I)J

    move-result-wide v5

    aput-wide v5, v4, p1

    .line 1359
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v8, v1, v2

    return-void

    .line 1363
    :cond_4
    iget-object v9, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput p2, v9, v2

    .line 1364
    invoke-virtual {v4, p2}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoState(I)V

    .line 1365
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v9, v1, p1

    cmp-long v1, v9, v6

    if-eqz v1, :cond_5

    .line 1366
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v1, v1, v2

    invoke-static {v9, v10, v1}, Lorg/telegram/messenger/voip/NativeInstance;->setVideoStateCapturer(JI)V

    :cond_5
    if-nez p1, :cond_8

    .line 1369
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v1, :cond_7

    .line 1370
    iget v1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget v2, v2, v3

    if-eq v2, v8, :cond_6

    move v3, v5

    :cond_6
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    .line 1372
    :cond_7
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->checkIsNear()V

    :cond_8
    return-void
.end method

.method public setupCaptureDevice(ZZ)V
    .locals 10

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 1324
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v2, p1

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1327
    :cond_0
    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/voip/NativeInstance;->setupOutgoingVideoCreated(J)V

    .line 1328
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v2, p1

    .line 1329
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v0, v2, p1

    .line 1331
    :cond_1
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->micMute:Z

    const/4 v2, 0x1

    if-ne p1, p2, :cond_2

    xor-int/lit8 p1, p2, 0x1

    .line 1332
    invoke-virtual {p0, p1, v1, v1}, Lorg/telegram/messenger/voip/VoIPService;->setMicMute(ZZZ)V

    .line 1333
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->micSwitching:Z

    .line 1335
    :cond_2
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz p1, :cond_4

    .line 1336
    iget p1, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {p1}, Lorg/telegram/messenger/UserConfig;->getInstance(I)Lorg/telegram/messenger/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lorg/telegram/messenger/UserConfig;->getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v4

    xor-int/lit8 p1, p2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aget p1, p1, v1

    if-eq p1, v0, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    new-instance v9, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda33;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lorg/telegram/messenger/voip/VoIPService;->editCallMember(Lorg/telegram/tgnet/TLObject;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public startRingtoneAndVibration()V
    .locals 2

    .line 4535
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    if-nez v0, :cond_0

    .line 4536
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->user:Lorg/telegram/tgnet/TLRPC$User;

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPService;->startRingtoneAndVibration(J)V

    const/4 v0, 0x1

    .line 4537
    iput-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->startedRinging:Z

    :cond_0
    return-void
.end method

.method public stopRinging()V
    .locals 3

    .line 3972
    sget-object v0, Lorg/telegram/messenger/voip/VoIPService;->sync:Ljava/lang/Object;

    monitor-enter v0

    .line 3973
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3974
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 3975
    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 3976
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->ringtonePlayer:Landroid/media/MediaPlayer;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 3978
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3979
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 3980
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 3981
    iput-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->vibrator:Landroid/os/Vibrator;

    :cond_1
    return-void

    .line 3978
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopScreenCapture()V
    .locals 5

    .line 1377
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1380
    :cond_0
    new-instance v0, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCallPresentation;

    invoke-direct {v0}, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCallPresentation;-><init>()V

    .line 1381
    iget-object v2, p0, Lorg/telegram/messenger/voip/VoIPService;->groupCall:Lorg/telegram/messenger/ChatObject$Call;

    invoke-virtual {v2}, Lorg/telegram/messenger/ChatObject$Call;->getInputGroupCall()Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/tl/TL_phone$leaveGroupCallPresentation;->call:Lorg/telegram/tgnet/TLRPC$InputGroupCall;

    .line 1382
    iget v2, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance(I)Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda83;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {v2, v0, v3}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1388
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 1390
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;

    invoke-direct {v3, v0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda72;-><init>(Lorg/telegram/messenger/voip/NativeInstance;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)Z

    .line 1392
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->mySource:[I

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1393
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 1394
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->destroyCaptureDevice:[Z

    aput-boolean v1, v0, v1

    .line 1395
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v0, v1

    .line 1396
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->videoState:[I

    aput v2, v0, v1

    .line 1397
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->currentAccount:I

    invoke-static {v0}, Lorg/telegram/messenger/AccountInstance;->getInstance(I)Lorg/telegram/messenger/AccountInstance;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/AccountInstance;->getNotificationCenter()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->groupCallScreencastStateChanged:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public swapSinks()V
    .locals 2

    .line 1513
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->localSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    .line 1514
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->remoteSink:[Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/VoIPService$ProxyVideoSink;->swap()V

    return-void
.end method

.method public switchCamera()V
    .locals 5

    .line 1252
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/voip/NativeInstance;->hasVideoCapturer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1258
    :cond_0
    iput-boolean v2, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    .line 1259
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->tgVoip:[Lorg/telegram/messenger/voip/NativeInstance;

    aget-object v0, v0, v1

    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/voip/NativeInstance;->switchCamera(Z)V

    return-void

    .line 1253
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->captureDevice:[J

    aget-wide v3, v0, v1

    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->switchingCamera:Z

    if-nez v0, :cond_2

    .line 1254
    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->isFrontFaceCamera:Z

    xor-int/2addr v0, v2

    invoke-static {v3, v4, v0}, Lorg/telegram/messenger/voip/NativeInstance;->switchCameraCapturer(JZ)V

    :cond_2
    return-void
.end method

.method public switchToSpeaker()V
    .locals 3

    .line 3757
    new-instance v0, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda18;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3753
    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/voip/VoIPService;->toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V

    return-void
.end method

.method public toggleSpeakerphoneOrShowRouteSheet(Landroid/content/Context;ZLjava/lang/Integer;)V
    .locals 7

    .line 3773
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->isBluetoothHeadsetConnected()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3774
    new-instance v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    invoke-direct {v0, p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;-><init>(Landroid/content/Context;)V

    sget p1, Lorg/telegram/messenger/R$string;->VoipOutputDevices:I

    .line 3775
    invoke-static {p1}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setTitle(Ljava/lang/CharSequence;Z)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 3776
    invoke-virtual {p1, p3}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->selectedPos(Ljava/lang/Integer;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 3777
    sget v0, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->CELL_TYPE_CALL:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setCellType(I)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    sget v0, Lorg/telegram/messenger/R$string;->VoipAudioRoutingSpeaker:I

    .line 3779
    invoke-static {v0}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3780
    iget-boolean v4, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v4, :cond_1

    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingHeadset:I

    :goto_1
    invoke-static {v4}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    sget v4, Lorg/telegram/messenger/R$string;->VoipAudioRoutingEarpiece:I

    goto :goto_1

    .line 3781
    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/voip/VoIPService;->currentBluetoothDeviceName:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_3

    :cond_2
    sget v5, Lorg/telegram/messenger/R$string;->VoipAudioRoutingBluetooth:I

    invoke-static {v5}, Lorg/telegram/messenger/LocaleController;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_3
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/CharSequence;

    aput-object v0, v6, v2

    aput-object v4, v6, v3

    aput-object v5, v6, v1

    sget v0, Lorg/telegram/messenger/R$drawable;->msg_call_speaker:I

    .line 3783
    iget-boolean v1, p0, Lorg/telegram/messenger/voip/VoIPService;->isHeadsetPlugged:Z

    if-eqz v1, :cond_3

    sget v1, Lorg/telegram/messenger/R$drawable;->calls_menu_headset:I

    goto :goto_4

    :cond_3
    sget v1, Lorg/telegram/messenger/R$drawable;->msg_call_earpiece:I

    :goto_4
    sget v2, Lorg/telegram/messenger/R$drawable;->msg_call_bluetooth:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda91;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    .line 3778
    invoke-virtual {p1, v6, v0, v1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->setItems([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/BottomSheet$Builder;

    move-result-object p1

    .line 3791
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->create()Lorg/telegram/ui/ActionBar/BottomSheet;

    move-result-object v0

    .line 3792
    new-instance v1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;

    invoke-direct {v1, v0, p3}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda92;-><init>(Lorg/telegram/ui/ActionBar/BottomSheet;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    if-eqz p2, :cond_5

    .line 3802
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_4

    .line 3803
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7f6

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    goto :goto_5

    .line 3805
    :cond_4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x7d3

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 3808
    :cond_5
    :goto_5
    invoke-virtual {p1}, Lorg/telegram/ui/ActionBar/BottomSheet$Builder;->show()Lorg/telegram/ui/ActionBar/BottomSheet;

    return-void

    .line 3811
    :cond_6
    sget-boolean p1, Lorg/telegram/messenger/voip/VoIPService;->USE_CONNECTION_SERVICE:Z

    if-eqz p1, :cond_a

    iget-object p2, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 3812
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_8

    .line 3813
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    const/16 v0, 0x8

    if-ne p3, v0, :cond_7

    goto :goto_6

    :cond_7
    move p2, v0

    :goto_6
    invoke-virtual {p1, p2}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_8

    .line 3815
    :cond_8
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->systemCallConnection:Lorg/telegram/messenger/voip/VoIPService$CallConnection;

    invoke-virtual {p1}, Landroid/telecom/Connection;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/telecom/CallAudioState;->getRoute()I

    move-result p3

    if-ne p3, v1, :cond_9

    move v1, p2

    :cond_9
    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->setAudioRoute(I)V

    goto :goto_8

    .line 3817
    :cond_a
    iget-boolean p2, p0, Lorg/telegram/messenger/voip/VoIPService;->audioConfigured:Z

    if-eqz p2, :cond_c

    if-nez p1, :cond_c

    .line 3818
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 3819
    invoke-static {}, Lorg/telegram/messenger/voip/VoipAudioManager;->get()Lorg/telegram/messenger/voip/VoipAudioManager;

    move-result-object p2

    .line 3820
    invoke-virtual {p0}, Lorg/telegram/messenger/voip/VoIPService;->hasEarpiece()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 3821
    invoke-virtual {p2}, Lorg/telegram/messenger/voip/VoipAudioManager;->isSpeakerphoneOn()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_7

    .line 3823
    :cond_b
    invoke-virtual {p1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result p3

    xor-int/2addr p3, v3

    invoke-virtual {p1, p3}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 3825
    :goto_7
    new-instance p1, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;

    invoke-direct {p1, p0}, Lorg/telegram/messenger/voip/VoIPService$$ExternalSyntheticLambda93;-><init>(Lorg/telegram/messenger/voip/VoIPService;)V

    invoke-virtual {p2, p1}, Lorg/telegram/messenger/voip/VoipAudioManager;->isBluetoothAndSpeakerOnAsync(Lorg/telegram/messenger/Utilities$Callback2;)V

    return-void

    .line 3833
    :cond_c
    iget-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    xor-int/2addr p1, v3

    iput-boolean p1, p0, Lorg/telegram/messenger/voip/VoIPService;->speakerphoneStateToSet:Z

    .line 3835
    :goto_8
    iget-object p1, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_9
    if-ge v2, p2, :cond_d

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    check-cast p3, Lorg/telegram/messenger/voip/VoIPService$StateListener;

    .line 3836
    invoke-interface {p3}, Lorg/telegram/messenger/voip/VoIPService$StateListener;->onAudioSettingsChanged()V

    goto :goto_9

    :cond_d
    return-void
.end method

.method public unregisterStateListener(Lorg/telegram/messenger/voip/VoIPService$StateListener;)V
    .locals 1

    .line 3688
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPService;->stateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateCurrentForegroundType()V
    .locals 3

    .line 5363
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5364
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 5365
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    .line 5366
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPService;->getCurrentForegroundType()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/voip/VoIPService;->lastForegroundType:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;I)V

    return-void

    .line 5368
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundId:I

    iget-object v1, p0, Lorg/telegram/messenger/voip/VoIPService;->foregroundNotification:Landroid/app/Notification;

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method public updateOutputGainControlState()V
    .locals 0

    .line 5635
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->hasRtmpStream()Z

    return-void
.end method
