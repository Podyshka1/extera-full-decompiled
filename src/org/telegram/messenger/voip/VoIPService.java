package org.telegram.messenger.voip;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothProfile;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Icon;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.media.AudioAttributes;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.media.MediaRouter;
import android.media.RingtoneManager;
import android.media.SoundPool;
import android.media.audiofx.AcousticEchoCanceler;
import android.media.audiofx.NoiseSuppressor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.Vibrator;
import android.provider.Settings;
import android.telecom.CallAudioState;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import android.telecom.PhoneAccount;
import android.telecom.PhoneAccountHandle;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.util.LruCache;
import android.view.KeyEvent;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.android.dx.io.Opcodes;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0;
import com.google.android.gms.cast.CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline1;
import com.google.android.gms.cast.CastStatusCodes;
import com.google.android.gms.cast.MediaError;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.json.JSONObject;
import org.mvel2.MVEL;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2573R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.FilesMigrationService$$ExternalSyntheticApiModelOutline0;
import org.telegram.messenger.FilesMigrationService$$ExternalSyntheticApiModelOutline1;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.NotificationsController;
import org.telegram.messenger.NotificationsSettingsFacade;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.StatsController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.XiaomiUtilities;
import org.telegram.messenger.utils.tlutils.TlUtils;
import org.telegram.messenger.voip.Instance;
import org.telegram.messenger.voip.NativeInstance;
import org.telegram.messenger.voip.VoIPController;
import org.telegram.messenger.voip.VoIPGroupNotification;
import org.telegram.messenger.voip.VoIPService;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.NativeByteBuffer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.RequestDelegateTimestamp;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.tl.TL_account;
import org.telegram.tgnet.tl.TL_phone;
import org.telegram.tgnet.tl.TL_update;
import org.telegram.ui.ActionBar.BaseFragment;
import org.telegram.ui.ActionBar.BottomSheet;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.AvatarDrawable;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.JoinCallAlert;
import org.telegram.ui.Components.PermissionRequest;
import org.telegram.ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.ui.Components.voip.VoIPHelper;
import org.telegram.ui.DarkBlueThemeResourcesProvider;
import org.telegram.ui.GroupCallActivity;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.VoIPFeedbackActivity;
import org.telegram.ui.VoIPFragment;
import org.telegram.ui.VoIPPermissionActivity;
import org.webrtc.MediaStreamTrack;
import org.webrtc.VideoFrame;
import org.webrtc.VideoSink;
import org.webrtc.voiceengine.WebRtcAudioTrack;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
public class VoIPService extends Service implements SensorEventListener, AudioManager.OnAudioFocusChangeListener, VoIPController.ConnectionStateListener, NotificationCenter.NotificationCenterDelegate, VoIPServiceState {
    public static final String ACTION_HEADSET_PLUG = "android.intent.action.HEADSET_PLUG";
    public static final int AUDIO_ROUTE_BLUETOOTH = 2;
    public static final int AUDIO_ROUTE_EARPIECE = 0;
    public static final int AUDIO_ROUTE_SPEAKER = 1;
    public static final int CALL_MIN_LAYER = 65;
    public static final int CAPTURE_DEVICE_CAMERA = 0;
    public static final int CAPTURE_DEVICE_SCREEN = 1;
    public static final int DISCARD_REASON_CONVERT = 5;
    public static final int DISCARD_REASON_DISCONNECT = 2;
    public static final int DISCARD_REASON_HANGUP = 1;
    public static final int DISCARD_REASON_LINE_BUSY = 4;
    public static final int DISCARD_REASON_MISSED = 3;
    private static final int ID_INCOMING_CALL_NOTIFICATION = 202;
    public static final int ID_INCOMING_CALL_PRENOTIFICATION = 203;
    private static final int ID_ONGOING_CALL_NOTIFICATION = 201;
    private static final int PROXIMITY_SCREEN_OFF_WAKE_LOCK = 32;
    public static final int QUALITY_FULL = 2;
    public static final int QUALITY_MEDIUM = 1;
    public static final int QUALITY_SMALL = 0;
    public static final int STATE_BUSY = 17;
    public static final int STATE_CREATING = 6;
    public static final int STATE_ENDED = 11;
    public static final int STATE_ESTABLISHED = 3;
    public static final int STATE_EXCHANGING_KEYS = 12;
    public static final int STATE_FAILED = 4;
    public static final int STATE_HANGING_UP = 10;
    public static final int STATE_RECONNECTING = 5;
    public static final int STATE_REQUESTING = 14;
    public static final int STATE_RINGING = 16;
    public static final int STATE_WAITING = 13;
    public static final int STATE_WAITING_INCOMING = 15;
    public static final int STATE_WAIT_INIT = 1;
    public static final int STATE_WAIT_INIT_ACK = 2;
    public static NativeInstance.AudioLevelsCallback audioLevelsCallback;
    public static TL_phone.PhoneCall callIShouldHavePutIntoIntent;
    private static Runnable setModeRunnable;
    private static VoIPService sharedInstance;
    private byte[] a_or_b;
    private boolean audioConfigured;
    private AudioDeviceCallback audioDeviceCallback;
    private byte[] authKey;
    private boolean bluetoothScoActive;
    private boolean bluetoothScoConnecting;
    private BluetoothAdapter btAdapter;
    private int callDiscardReason;
    private int callReqId;
    private long callStartTime;
    private TLRPC.Chat chat;
    private int checkRequestId;
    private int classGuid;
    public ConferenceCall conference;
    private Runnable connectingSoundRunnable;
    public long convertingFromCallWithUserId;
    private NativeInstance convertingVoip;
    private PowerManager.WakeLock cpuWakelock;
    private boolean createGroupCall;
    public String currentBluetoothDeviceName;
    public boolean currentGroupModeStreaming;
    private Runnable delayedStartOutgoingCall;
    private boolean didDeleteConnectionServiceContact;
    private boolean endCallAfterRequest;
    boolean fetchingBluetoothDeviceName;
    private boolean forceRating;
    private int foregroundId;
    private Notification foregroundNotification;
    private boolean foregroundStarted;
    private byte[] g_a;
    private byte[] g_a_hash;
    private boolean gotMediaProjection;
    public ChatObject.Call groupCall;
    private volatile CountDownLatch groupCallBottomSheetLatch;
    private TLRPC.InputPeer groupCallPeer;
    private boolean hasAudioFocus;
    public boolean hasFewPeers;
    private boolean instantAccept;
    private long[] inviteUsers;
    private HashSet<Long> inviteUsersToConference;
    private boolean inviteUsersToConferenceVideo;
    private boolean isBtHeadsetConnected;
    private volatile boolean isCallEnded;
    private boolean isHeadsetPlugged;
    private boolean isOutgoing;
    private boolean isPrivateScreencast;
    private boolean isProximityNear;
    public boolean isRtmpStream;
    private boolean isVideoAvailable;
    private TLRPC.InputGroupCall joinConference;
    private TLRPC.GroupCall joinConferenceCall;
    private String joinHash;
    private long keyFingerprint;
    private String lastError;
    private int lastForegroundType;
    private TLRPC.GroupCall lastGroupCallUpdate;
    private String lastLogFilePath;
    private NetworkInfo lastNetInfo;
    private SensorEvent lastSensorEvent;
    private long lastTypingTimeSend;
    private Boolean mHasEarpiece;
    private boolean micMute;
    public boolean micSwitching;
    private Boolean muteOnStart;
    private TLRPC.TL_dataJSON myParams;
    private boolean needPlayEndSound;
    private boolean needRateCall;
    private boolean needSendDebugLog;
    private boolean needSwitchToBluetoothAfterScoActivates;
    private boolean notificationsDisabled;
    private Runnable onDestroyRunnable;
    private boolean playedConnectedSound;
    private boolean playingSound;
    private Instance.TrafficStats prevTrafficStats;
    public TL_phone.PhoneCall privateCall;
    private PowerManager.WakeLock proximityWakelock;
    private boolean reconnectScreenCapture;
    private MediaPlayer ringtonePlayer;
    private int scheduleDate;
    private Runnable shortPollRunnable;
    private int signalBarCount;
    private SoundPool soundPool;
    private int spAllowTalkId;
    private int spBusyId;
    private int spConnectingId;
    private int spEndId;
    private int spFailedID;
    private int spPlayId;
    private int spRingbackID;
    private int spStartRecordId;
    private int spVoiceChatConnecting;
    private int spVoiceChatEndId;
    private int spVoiceChatStartId;
    private boolean speakerphoneStateToSet;
    private boolean startedRinging;
    private boolean switchingAccount;
    private boolean switchingCamera;
    private boolean switchingStream;
    private Runnable switchingStreamTimeoutRunnable;
    private CallConnection systemCallConnection;
    private Runnable timeoutRunnable;
    private boolean unmutedByHold;
    private Runnable updateNotificationRunnable;
    private TLRPC.User user;
    private Vibrator vibrator;
    public boolean videoCall;
    private boolean wasConnected;
    private boolean wasEstablished;
    public static final boolean USE_CONNECTION_SERVICE = isDeviceCompatibleWithConnectionServiceAPI();
    private static final Object sync = new Object();
    private int currentAccount = -1;
    private int currentState = 0;
    private boolean isFrontFaceCamera = true;
    private int previousAudioOutput = -1;
    private ArrayList<StateListener> stateListeners = new ArrayList<>();
    private int remoteVideoState = 0;
    private int[] mySource = new int[2];
    private NativeInstance[] tgVoip = new NativeInstance[2];
    private long[] captureDevice = new long[2];
    private boolean[] destroyCaptureDevice = {true, true};
    private int[] videoState = {0, 0};
    private int remoteAudioState = 1;
    private int audioRouteToSet = 2;
    public final SharedUIParams sharedUIParams = new SharedUIParams();
    private ArrayList<TL_phone.PhoneCall> pendingUpdates = new ArrayList<>();
    private HashMap<String, Integer> currentStreamRequestTimestamp = new HashMap<>();
    private Runnable afterSoundRunnable = new RunnableC26481();
    private BluetoothProfile.ServiceListener serviceListener = new BluetoothProfile.ServiceListener() { // from class: org.telegram.messenger.voip.VoIPService.2
        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceDisconnected(int i) {
        }

        @Override // android.bluetooth.BluetoothProfile.ServiceListener
        public void onServiceConnected(int i, BluetoothProfile bluetoothProfile) {
            try {
                if (Build.VERSION.SDK_INT < 31) {
                    Iterator<BluetoothDevice> it = bluetoothProfile.getConnectedDevices().iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        BluetoothDevice next = it.next();
                        if (bluetoothProfile.getConnectionState(next) == 2) {
                            VoIPService.this.currentBluetoothDeviceName = next.getName();
                            break;
                        }
                    }
                }
                BluetoothAdapter.getDefaultAdapter().closeProfileProxy(i, bluetoothProfile);
                VoIPService.this.fetchingBluetoothDeviceName = false;
            } catch (Throwable th) {
                FileLog.m898e(th);
            }
        }
    };
    private BroadcastReceiver receiver = new BroadcastReceiver() { // from class: org.telegram.messenger.voip.VoIPService.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int i = 0;
            if (VoIPService.ACTION_HEADSET_PLUG.equals(intent.getAction())) {
                VoIPService.this.isHeadsetPlugged = intent.getIntExtra("state", 0) == 1;
                if (VoIPService.this.isHeadsetPlugged && VoIPService.this.proximityWakelock != null && VoIPService.this.proximityWakelock.isHeld()) {
                    VoIPService.this.proximityWakelock.release();
                }
                boolean z = VoIPService.this.isHeadsetPlugged;
                VoIPService voIPService = VoIPService.this;
                if (z) {
                    AudioManager audioManager = (AudioManager) voIPService.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
                    if (VoipAudioManager.get().isSpeakerphoneOn()) {
                        VoIPService.this.previousAudioOutput = 0;
                    } else {
                        boolean zIsBluetoothScoOn = audioManager.isBluetoothScoOn();
                        VoIPService voIPService2 = VoIPService.this;
                        if (zIsBluetoothScoOn) {
                            voIPService2.previousAudioOutput = 2;
                        } else {
                            voIPService2.previousAudioOutput = 1;
                        }
                    }
                    VoIPService.this.setAudioOutput(1);
                } else if (voIPService.previousAudioOutput >= 0) {
                    VoIPService voIPService3 = VoIPService.this;
                    voIPService3.setAudioOutput(voIPService3.previousAudioOutput);
                    VoIPService.this.previousAudioOutput = -1;
                }
                VoIPService.this.isProximityNear = false;
                VoIPService.this.updateOutputGainControlState();
                return;
            }
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction())) {
                VoIPService.this.updateNetworkType();
                return;
            }
            if ("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED".equals(intent.getAction())) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m896e("bt headset state = " + intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0));
                }
                VoIPService.this.updateBluetoothHeadsetState(intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0) == 2);
                return;
            }
            if ("android.media.ACTION_SCO_AUDIO_STATE_UPDATED".equals(intent.getAction())) {
                int intExtra = intent.getIntExtra("android.media.extra.SCO_AUDIO_STATE", 0);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m896e("Bluetooth SCO state updated: " + intExtra);
                }
                if (intExtra == 0 && VoIPService.this.isBtHeadsetConnected && (!VoIPService.this.btAdapter.isEnabled() || !PermissionRequest.hasPermission("android.permission.BLUETOOTH_CONNECT") || VoIPService.this.btAdapter.getProfileConnectionState(1) != 2)) {
                    VoIPService.this.updateBluetoothHeadsetState(false);
                    return;
                }
                VoIPService.this.bluetoothScoConnecting = intExtra == 2;
                VoIPService.this.bluetoothScoActive = intExtra == 1;
                if (VoIPService.this.bluetoothScoActive) {
                    VoIPService.this.fetchBluetoothDeviceName();
                    if (VoIPService.this.needSwitchToBluetoothAfterScoActivates) {
                        VoIPService.this.needSwitchToBluetoothAfterScoActivates = false;
                        AudioManager audioManager2 = (AudioManager) VoIPService.this.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
                        VoipAudioManager.get().setSpeakerphoneOn(false);
                        audioManager2.setBluetoothScoOn(true);
                    }
                }
                ArrayList arrayList = VoIPService.this.stateListeners;
                int size = arrayList.size();
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((StateListener) obj).onAudioSettingsChanged();
                }
                return;
            }
            if ("android.intent.action.PHONE_STATE".equals(intent.getAction())) {
                if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(intent.getStringExtra("state"))) {
                    VoIPService.this.hangUp();
                }
            } else if ("android.intent.action.SCREEN_ON".equals(intent.getAction())) {
                while (i < VoIPService.this.stateListeners.size()) {
                    ((StateListener) VoIPService.this.stateListeners.get(i)).onScreenOnChange(true);
                    i++;
                }
            } else if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
                for (int i2 = 0; i2 < VoIPService.this.stateListeners.size(); i2++) {
                    ((StateListener) VoIPService.this.stateListeners.get(i2)).onScreenOnChange(false);
                }
            }
        }
    };
    private final HashMap<String, TLRPC.GroupCallParticipant> waitingFrameParticipant = new HashMap<>();
    private final LruCache<String, ProxyVideoSink> proxyVideoSinkLruCache = new LruCache<String, ProxyVideoSink>(6) { // from class: org.telegram.messenger.voip.VoIPService.4
        @Override // android.util.LruCache
        public void entryRemoved(boolean z, String str, ProxyVideoSink proxyVideoSink, ProxyVideoSink proxyVideoSink2) {
            super.entryRemoved(z, str, proxyVideoSink, proxyVideoSink2);
            VoIPService.this.tgVoip[0].removeIncomingVideoOutput(proxyVideoSink.nativeInstance);
        }
    };
    private ProxyVideoSink[] localSink = new ProxyVideoSink[2];
    private ProxyVideoSink[] remoteSink = new ProxyVideoSink[2];
    private ProxyVideoSink[] currentBackgroundSink = new ProxyVideoSink[2];
    private String[] currentBackgroundEndpointId = new String[2];
    private HashMap<String, ProxyVideoSink> remoteSinks = new HashMap<>();
    private final Runnable destroyConvertingRunnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda90
        @Override // java.lang.Runnable
        public final void run() {
            this.f$0.destroyConverting();
        }
    };

    /* JADX INFO: loaded from: classes5.dex */
    public static class SharedUIParams {
        public boolean cameraAlertWasShowed;
        public boolean tapToVideoTooltipWasShowed;
        public boolean wasVideoCall;
    }

    public interface StateListener {
        default void onAudioSettingsChanged() {
        }

        default void onCameraFirstFrameAvailable() {
        }

        default void onCameraSwitch(boolean z) {
        }

        default void onMediaStateUpdated(int i, int i2) {
        }

        default void onScreenOnChange(boolean z) {
        }

        default void onSignalBarsCountChanged(int i) {
        }

        default void onStateChanged(int i) {
        }

        default void onVideoAvailableChange(boolean z) {
        }
    }

    public static /* synthetic */ void $r8$lambda$ihf_TgQlMZ9hVpHd61S65tYUha4(TLObject tLObject, TLRPC.TL_error tL_error) {
    }

    private static boolean isDeviceCompatibleWithConnectionServiceAPI() {
        return false;
    }

    private void onTgVoipPreStop() {
    }

    @Override // android.hardware.SensorEventListener
    public void onAccuracyChanged(Sensor sensor, int i) {
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public TL_phone.PhoneCall getPrivateCall() {
        return this.privateCall;
    }

    public boolean isConverting() {
        return this.convertingVoip != null;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public boolean isConference() {
        return (this.joinConference == null && this.conference == null) ? false : true;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public boolean isCallingVideo() {
        TL_phone.PhoneCall phoneCall = this.privateCall;
        if (phoneCall != null) {
            return phoneCall.video;
        }
        return false;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public TLRPC.GroupCall getGroupCall() {
        ChatObject.Call call = this.groupCall;
        if (call != null) {
            return call.call;
        }
        return null;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public ArrayList<TLRPC.GroupCallParticipant> getGroupParticipants() {
        ChatObject.Call call = this.groupCall;
        if (call != null) {
            return call.sortedParticipants;
        }
        return null;
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VoIPService$1 */
    /* JADX INFO: loaded from: classes5.dex */
    public class RunnableC26481 implements Runnable {
        public RunnableC26481() {
        }

        @Override // java.lang.Runnable
        public void run() {
            final AudioManager audioManager = (AudioManager) VoIPService.this.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            VoipAudioManager voipAudioManager = VoipAudioManager.get();
            audioManager.abandonAudioFocus(VoIPService.this);
            audioManager.unregisterMediaButtonEventReceiver(new ComponentName(VoIPService.this, (Class<?>) VoIPMediaButtonReceiver.class));
            if (VoIPService.this.audioDeviceCallback != null) {
                audioManager.unregisterAudioDeviceCallback(VoIPService.this.audioDeviceCallback);
            }
            if (!VoIPService.USE_CONNECTION_SERVICE && VoIPService.sharedInstance == null) {
                if (VoIPService.this.isBtHeadsetConnected) {
                    audioManager.stopBluetoothSco();
                    audioManager.setBluetoothScoOn(false);
                    VoIPService.this.bluetoothScoActive = false;
                    VoIPService.this.bluetoothScoConnecting = false;
                }
                voipAudioManager.setSpeakerphoneOn(false);
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0();
                }
            });
            DispatchQueue dispatchQueue = Utilities.globalQueue;
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPService.RunnableC26481.$r8$lambda$qXIvjgGbxhfIMsMFKKrqpX5Uls4(audioManager);
                }
            };
            VoIPService.setModeRunnable = runnable;
            dispatchQueue.postRunnable(runnable);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            VoIPService.this.soundPool.release();
        }

        public static /* synthetic */ void $r8$lambda$qXIvjgGbxhfIMsMFKKrqpX5Uls4(AudioManager audioManager) {
            synchronized (VoIPService.sync) {
                try {
                    if (VoIPService.setModeRunnable == null) {
                        return;
                    }
                    VoIPService.setModeRunnable = null;
                    try {
                        audioManager.setMode(0);
                    } catch (SecurityException e) {
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m897e("Error setting audio more to normal", e);
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public CountDownLatch getGroupCallBottomSheetLatch() {
        return this.groupCallBottomSheetLatch;
    }

    public boolean isFrontFaceCamera() {
        return this.isFrontFaceCamera;
    }

    public boolean isScreencast() {
        return this.isPrivateScreencast;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setMicMute(boolean z, boolean z2, boolean z3) {
        final VoIPService voIPService;
        TLRPC.GroupCallParticipant groupCallParticipant;
        if (this.micMute == z || this.micSwitching) {
            return;
        }
        this.micMute = z;
        ChatObject.Call call = this.groupCall;
        if (call == null) {
            voIPService = this;
        } else {
            if (!z3 && (groupCallParticipant = call.participants.get(getSelfId())) != null && groupCallParticipant.muted && !groupCallParticipant.can_self_unmute) {
                z3 = true;
            }
            if (z3) {
                voIPService = this;
                voIPService.editCallMember(UserConfig.getInstance(this.currentAccount).getCurrentUser(), Boolean.valueOf(z), null, null, null, null);
                DispatchQueue dispatchQueue = Utilities.globalQueue;
                Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda15
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setMicMute$0();
                    }
                };
                voIPService.updateNotificationRunnable = runnable;
                dispatchQueue.postRunnable(runnable);
            }
        }
        int i = 0;
        voIPService.unmutedByHold = !voIPService.micMute && z2;
        NativeInstance nativeInstance = voIPService.convertingVoip;
        if (nativeInstance != null) {
            nativeInstance.setMuteMicrophone(z);
        } else {
            NativeInstance nativeInstance2 = voIPService.tgVoip[0];
            if (nativeInstance2 != null) {
                nativeInstance2.setMuteMicrophone(z);
            }
        }
        ArrayList<StateListener> arrayList = voIPService.stateListeners;
        int size = arrayList.size();
        while (i < size) {
            StateListener stateListener = arrayList.get(i);
            i++;
            stateListener.onAudioSettingsChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setMicMute$0() {
        if (this.updateNotificationRunnable == null) {
            return;
        }
        this.updateNotificationRunnable = null;
        showNotification(getTitle(), getRoundAvatarBitmap(this, this.currentAccount, this.chat));
    }

    public String getTitle() {
        TLRPC.User user = this.user;
        if (user != null) {
            return ContactsController.formatName(user.first_name, user.last_name);
        }
        TLRPC.Chat chat = this.chat;
        return chat != null ? chat.title : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public boolean mutedByAdmin() {
        ChatObject.Call call = this.groupCall;
        if (call == null) {
            return false;
        }
        TLRPC.GroupCallParticipant groupCallParticipant = call.participants.get(getSelfId());
        return (groupCallParticipant == null || groupCallParticipant.can_self_unmute || !groupCallParticipant.muted || ChatObject.canManageCalls(this.chat)) ? false : true;
    }

    public boolean hasVideoCapturer() {
        return this.captureDevice[0] != 0;
    }

    public void checkVideoFrame(TLRPC.GroupCallParticipant groupCallParticipant, boolean z) {
        String str = z ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint;
        if (str == null) {
            return;
        }
        if (!z || groupCallParticipant.hasPresentationFrame == 0) {
            if (z || groupCallParticipant.hasCameraFrame == 0) {
                if (this.proxyVideoSinkLruCache.get(str) != null || (this.remoteSinks.get(str) != null && this.waitingFrameParticipant.get(str) == null)) {
                    if (z) {
                        groupCallParticipant.hasPresentationFrame = 2;
                        return;
                    } else {
                        groupCallParticipant.hasCameraFrame = 2;
                        return;
                    }
                }
                if (this.waitingFrameParticipant.containsKey(str)) {
                    this.waitingFrameParticipant.put(str, groupCallParticipant);
                    if (z) {
                        groupCallParticipant.hasPresentationFrame = 1;
                        return;
                    } else {
                        groupCallParticipant.hasCameraFrame = 1;
                        return;
                    }
                }
                if (z) {
                    groupCallParticipant.hasPresentationFrame = 1;
                } else {
                    groupCallParticipant.hasCameraFrame = 1;
                }
                this.waitingFrameParticipant.put(str, groupCallParticipant);
                addRemoteSink(groupCallParticipant, z, new C26525(str, z), null);
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VoIPService$5 */
    /* JADX INFO: loaded from: classes5.dex */
    public class C26525 implements VideoSink {
        final /* synthetic */ String val$endpointId;
        final /* synthetic */ boolean val$screencast;

        public C26525(String str, boolean z) {
            this.val$endpointId = str;
            this.val$screencast = z;
        }

        @Override // org.webrtc.VideoSink
        public void onFrame(VideoFrame videoFrame) {
            if (videoFrame == null || videoFrame.getBuffer().getHeight() == 0 || videoFrame.getBuffer().getWidth() == 0) {
                return;
            }
            final String str = this.val$endpointId;
            final boolean z = this.val$screencast;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onFrame$0(str, this, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onFrame$0(String str, VideoSink videoSink, boolean z) {
            TLRPC.GroupCallParticipant groupCallParticipant = (TLRPC.GroupCallParticipant) VoIPService.this.waitingFrameParticipant.remove(str);
            ProxyVideoSink proxyVideoSink = (ProxyVideoSink) VoIPService.this.remoteSinks.get(str);
            if (proxyVideoSink != null && proxyVideoSink.target == videoSink) {
                VoIPService.this.proxyVideoSinkLruCache.put(str, proxyVideoSink);
                VoIPService.this.remoteSinks.remove(str);
                proxyVideoSink.setTarget(null);
            }
            if (groupCallParticipant != null) {
                if (z) {
                    groupCallParticipant.hasPresentationFrame = 2;
                } else {
                    groupCallParticipant.hasCameraFrame = 2;
                }
            }
            ChatObject.Call call = VoIPService.this.groupCall;
            if (call != null) {
                call.updateVisibleParticipants();
            }
        }
    }

    public void clearRemoteSinks() {
        this.proxyVideoSinkLruCache.evictAll();
    }

    public void setAudioRoute(int i) {
        if (i == 1) {
            setAudioOutput(0);
        } else if (i == 0) {
            setAudioOutput(1);
        } else if (i == 2) {
            setAudioOutput(2);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class ProxyVideoSink implements VideoSink {
        private VideoSink background;
        private long nativeInstance;
        private VideoSink target;

        @Override // org.webrtc.VideoSink
        public synchronized void onFrame(VideoFrame videoFrame) {
            try {
                VideoSink videoSink = this.target;
                if (videoSink != null) {
                    videoSink.onFrame(videoFrame);
                }
                VideoSink videoSink2 = this.background;
                if (videoSink2 != null) {
                    videoSink2.onFrame(videoFrame);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void setTarget(VideoSink videoSink) {
            try {
                VideoSink videoSink2 = this.target;
                if (videoSink2 != videoSink) {
                    if (videoSink2 != null) {
                        videoSink2.setParentSink(null);
                    }
                    this.target = videoSink;
                    if (videoSink != null) {
                        videoSink.setParentSink(this);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void setBackground(VideoSink videoSink) {
            try {
                VideoSink videoSink2 = this.background;
                if (videoSink2 != null) {
                    videoSink2.setParentSink(null);
                }
                this.background = videoSink;
                if (videoSink != null) {
                    videoSink.setParentSink(this);
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void removeTarget(VideoSink videoSink) {
            if (this.target == videoSink) {
                this.target = null;
            }
        }

        public synchronized void removeBackground(VideoSink videoSink) {
            if (this.background == videoSink) {
                this.background = null;
            }
        }

        public synchronized void swap() {
            VideoSink videoSink;
            if (this.target != null && (videoSink = this.background) != null) {
                this.target = videoSink;
                this.background = null;
            }
        }
    }

    @Override // android.app.Service
    @SuppressLint({"MissingPermission", "InlinedApi"})
    public int onStartCommand(Intent intent, int i, int i2) {
        if (sharedInstance != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m896e("Tried to start the VoIP service when it's already started");
            }
            return 2;
        }
        int intExtra = intent.getIntExtra("account", -1);
        this.currentAccount = intExtra;
        if (intExtra == -1) {
            Segment$$ExternalSyntheticBUOutline1.m848m("No account specified when starting VoIP service");
            return 0;
        }
        this.classGuid = ConnectionsManager.generateClassGuid();
        long longExtra = intent.getLongExtra("user_id", 0L);
        long longExtra2 = intent.getLongExtra("chat_id", 0L);
        this.createGroupCall = intent.getBooleanExtra("createGroupCall", false);
        byte[] byteArrayExtra = intent.getByteArrayExtra("joinConference");
        if (byteArrayExtra != null) {
            SerializedData serializedData = new SerializedData(byteArrayExtra);
            this.joinConference = TLRPC.InputGroupCall.TLdeserialize(serializedData, serializedData.readInt32(true), true);
        }
        if (intent.hasExtra("mute_on_start")) {
            this.muteOnStart = Boolean.valueOf(intent.getBooleanExtra("mute_on_start", false));
        }
        byte[] byteArrayExtra2 = intent.getByteArrayExtra("joinConferenceCall");
        if (byteArrayExtra2 != null) {
            SerializedData serializedData2 = new SerializedData(byteArrayExtra2);
            this.joinConferenceCall = TLRPC.GroupCall.TLdeserialize(serializedData2, serializedData2.readInt32(true), true);
        }
        this.inviteUsers = intent.getLongArrayExtra("inviteUsers");
        this.hasFewPeers = intent.getBooleanExtra("hasFewPeers", false);
        this.isRtmpStream = intent.getBooleanExtra("isRtmpStream", false);
        this.joinHash = intent.getStringExtra("hash");
        long longExtra3 = intent.getLongExtra("peerChannelId", 0L);
        long longExtra4 = intent.getLongExtra("peerChatId", 0L);
        long longExtra5 = intent.getLongExtra("peerUserId", 0L);
        if (longExtra4 != 0) {
            TLRPC.TL_inputPeerChat tL_inputPeerChat = new TLRPC.TL_inputPeerChat();
            this.groupCallPeer = tL_inputPeerChat;
            tL_inputPeerChat.chat_id = longExtra4;
            tL_inputPeerChat.access_hash = intent.getLongExtra("peerAccessHash", 0L);
        } else if (longExtra3 != 0) {
            TLRPC.TL_inputPeerChannel tL_inputPeerChannel = new TLRPC.TL_inputPeerChannel();
            this.groupCallPeer = tL_inputPeerChannel;
            tL_inputPeerChannel.channel_id = longExtra3;
            tL_inputPeerChannel.access_hash = intent.getLongExtra("peerAccessHash", 0L);
        } else if (longExtra5 != 0) {
            TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
            this.groupCallPeer = tL_inputPeerUser;
            tL_inputPeerUser.user_id = longExtra5;
            tL_inputPeerUser.access_hash = intent.getLongExtra("peerAccessHash", 0L);
        }
        this.scheduleDate = intent.getIntExtra("scheduleDate", 0);
        this.isOutgoing = intent.getBooleanExtra("is_outgoing", false);
        this.videoCall = intent.getBooleanExtra("video_call", false);
        this.isVideoAvailable = intent.getBooleanExtra("can_video_call", false);
        this.notificationsDisabled = intent.getBooleanExtra("notifications_disabled", false);
        this.instantAccept = intent.getBooleanExtra("accept", false);
        boolean booleanExtra = intent.getBooleanExtra("openFragment", false);
        if (longExtra != 0) {
            this.user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(longExtra));
        }
        if (longExtra2 != 0) {
            TLRPC.Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(longExtra2));
            this.chat = chat;
            if (ChatObject.isChannel(chat)) {
                MessagesController.getInstance(this.currentAccount).startShortPoll(this.chat, this.classGuid, false);
            }
        }
        loadResources();
        int i3 = 0;
        while (true) {
            ProxyVideoSink[] proxyVideoSinkArr = this.localSink;
            if (i3 < proxyVideoSinkArr.length) {
                proxyVideoSinkArr[i3] = new ProxyVideoSink();
                this.remoteSink[i3] = new ProxyVideoSink();
                i3++;
            } else {
                try {
                    break;
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
        }
        this.isHeadsetPlugged = ((AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)).isWiredHeadsetOn();
        if (this.chat != null && !this.createGroupCall && MessagesController.getInstance(this.currentAccount).getGroupCall(this.chat.id, false) == null) {
            FileLog.m899w("VoIPService: trying to open group call without call " + this.chat.id);
            stopSelf();
            return 2;
        }
        if (this.videoCall) {
            if (checkSelfPermission("android.permission.CAMERA") == 0) {
                this.captureDevice[0] = NativeInstance.createVideoCapturer(this.localSink[0], this.isFrontFaceCamera ? 1 : 0);
                int[] iArr = this.videoState;
                if (longExtra2 != 0) {
                    iArr[0] = 1;
                } else {
                    iArr[0] = 2;
                }
            } else {
                this.videoState[0] = 1;
            }
            if (!this.isBtHeadsetConnected && !this.isHeadsetPlugged) {
                setAudioOutput(0);
            }
        }
        if (this.user == null && this.chat == null && this.joinConference == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("VoIPService: user == null AND chat == null");
            }
            stopSelf();
            return 2;
        }
        sharedInstance = this;
        FileLog.m896e("(4) set sharedInstance = this");
        synchronized (sync) {
            try {
                if (setModeRunnable != null) {
                    Utilities.globalQueue.cancelRunnable(setModeRunnable);
                    setModeRunnable = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        VoIPGroupNotification.hide(this);
        if (this.joinConference != null) {
            if (!MessagesController.getGlobalMainSettings().getBoolean("callmiconstart", true)) {
                this.micMute = true;
            } else if (!PermissionRequest.hasPermission("android.permission.RECORD_AUDIO")) {
                this.micMute = true;
                PermissionRequest.requestPermission("android.permission.RECORD_AUDIO", new Utilities.Callback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda36
                    @Override // org.telegram.messenger.Utilities.Callback
                    public final void run(Object obj) {
                        this.f$0.lambda$onStartCommand$1((Boolean) obj);
                    }
                });
            }
            startConferenceGroupCall(false, 0, null, false);
            if (!this.isBtHeadsetConnected && !this.isHeadsetPlugged) {
                setAudioOutput(0);
            }
        } else if (this.isOutgoing) {
            if (this.user != null) {
                dispatchStateChanged(14);
                if (USE_CONNECTION_SERVICE) {
                    TelecomManager telecomManager = (TelecomManager) getSystemService("telecom");
                    Bundle bundle = new Bundle();
                    Bundle bundle2 = new Bundle();
                    bundle.putParcelable("android.telecom.extra.PHONE_ACCOUNT_HANDLE", addAccountToTelecomManager());
                    bundle2.putInt("call_type", 1);
                    bundle.putBundle("android.telecom.extra.OUTGOING_CALL_EXTRAS", bundle2);
                    ContactsController contactsController = ContactsController.getInstance(this.currentAccount);
                    TLRPC.User user = this.user;
                    contactsController.createOrUpdateConnectionServiceContact(user.id, user.first_name, user.last_name);
                    telecomManager.placeCall(Uri.fromParts("tel", "+99084" + this.user.id, null), bundle);
                } else {
                    Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda37
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$onStartCommand$2();
                        }
                    };
                    this.delayedStartOutgoingCall = runnable;
                    AndroidUtilities.runOnUIThread(runnable, 2000L);
                }
            } else {
                this.micMute = true;
                startGroupCall(0, null, false);
                if (!this.isBtHeadsetConnected && !this.isHeadsetPlugged) {
                    setAudioOutput(0);
                }
            }
            if (intent.getBooleanExtra("start_incall_activity", false)) {
                Intent intentAddFlags = new Intent(this, (Class<?>) LaunchActivity.class).setAction(this.user != null ? "voip" : "voip_chat").addFlags(268435456);
                if (this.chat != null) {
                    intentAddFlags.putExtra("currentAccount", this.currentAccount);
                }
                startActivity(intentAddFlags);
            }
        } else {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.closeInCallActivity, new Object[0]);
            TL_phone.PhoneCall phoneCall = callIShouldHavePutIntoIntent;
            this.privateCall = phoneCall;
            boolean z = phoneCall != null && phoneCall.video;
            this.videoCall = z;
            if (z) {
                this.isVideoAvailable = true;
            }
            if (z && !this.isBtHeadsetConnected && !this.isHeadsetPlugged) {
                setAudioOutput(0);
            }
            callIShouldHavePutIntoIntent = null;
            FileLog.m896e("(3) set VoIPService.callIShouldHavePutIntoIntent = null");
            if (this.instantAccept) {
                this.instantAccept = false;
                acceptIncomingCall();
            } else if (USE_CONNECTION_SERVICE) {
                acknowledgeCall(false);
                showNotification();
            } else {
                acknowledgeCall(true);
            }
            if (booleanExtra) {
                Activity activityFindActivity = AndroidUtilities.findActivity(this);
                if (activityFindActivity == null) {
                    activityFindActivity = LaunchActivity.instance;
                }
                if (activityFindActivity == null) {
                    activityFindActivity = AndroidUtilities.findActivity(ApplicationLoader.applicationContext);
                }
                if (activityFindActivity != null) {
                    VoIPFragment.show(activityFindActivity, this.currentAccount);
                }
            }
        }
        initializeAccountRelatedThings();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda38
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onStartCommand$3();
            }
        });
        return 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$1(Boolean bool) {
        if (sharedInstance != null && bool.booleanValue()) {
            setMicMute(false, false, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$2() {
        this.delayedStartOutgoingCall = null;
        startOutgoingCall();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStartCommand$3() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.voipServiceCreated, new Object[0]);
    }

    public static boolean hasRtmpStream() {
        return (getSharedInstance() == null || getSharedInstance().groupCall == null || !getSharedInstance().groupCall.call.rtmp_stream) ? false : true;
    }

    public static VoIPServiceState getSharedState() {
        VoIPService voIPService = sharedInstance;
        if (voIPService != null) {
            return voIPService;
        }
        VoIPGroupNotification.State state = VoIPGroupNotification.currentState;
        if (state != null) {
            return state;
        }
        if (Build.VERSION.SDK_INT >= 33) {
            return VoIPPreNotificationService.getState();
        }
        return null;
    }

    public static VoIPService getSharedInstance() {
        return sharedInstance;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public TLRPC.User getUser() {
        return this.user;
    }

    public TLRPC.Chat getChat() {
        return this.chat;
    }

    public void setNoiseSupressionEnabled(boolean z) {
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance == null) {
            return;
        }
        nativeInstance.setNoiseSuppressionEnabled(z);
    }

    public void setGroupCallHash(String str) {
        if (!this.currentGroupModeStreaming || TextUtils.isEmpty(str) || str.equals(this.joinHash)) {
            return;
        }
        this.joinHash = str;
        createGroupInstance(0, false, true);
    }

    public long getCallerId() {
        TLRPC.User user = this.user;
        if (user != null) {
            return user.id;
        }
        TLRPC.Chat chat = this.chat;
        if (chat != null) {
            return -chat.id;
        }
        return 0L;
    }

    public void hangUp(int i, Runnable runnable) {
        TLRPC.ChatFull chatFull;
        int i2 = this.currentState;
        declineIncomingCall((i2 == 16 || (i2 == 13 && this.isOutgoing)) ? 3 : 1, runnable);
        if (this.groupCall == null || i == 2) {
            return;
        }
        if (i == 1) {
            if (this.chat != null && (chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chat.id)) != null) {
                chatFull.flags &= -2097153;
                chatFull.call = null;
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, Long.valueOf(this.chat.id), Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
            }
            TL_phone.discardGroupCall discardgroupcall = new TL_phone.discardGroupCall();
            discardgroupcall.call = this.groupCall.getInputGroupCall();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(discardgroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda102
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$hangUp$4(tLObject, tL_error);
                }
            });
            return;
        }
        TL_phone.leaveGroupCall leavegroupcall = new TL_phone.leaveGroupCall();
        leavegroupcall.call = this.groupCall.getInputGroupCall();
        leavegroupcall.source = this.mySource[0];
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(leavegroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda103
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$hangUp$5(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hangUp$4(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.TL_updates) tLObject, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$hangUp$5(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.TL_updates) tLObject, false);
        }
    }

    private void startOutgoingCall() {
        CallConnection callConnection;
        if (USE_CONNECTION_SERVICE && (callConnection = this.systemCallConnection) != null) {
            callConnection.setDialing();
        }
        configureDeviceForCall();
        showNotification();
        startConnectingSound();
        dispatchStateChanged(14);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda58
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedCall, new Object[0]);
            }
        });
        Utilities.random.nextBytes(new byte[256]);
        TLRPC.TL_messages_getDhConfig tL_messages_getDhConfig = new TLRPC.TL_messages_getDhConfig();
        tL_messages_getDhConfig.random_length = 256;
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        tL_messages_getDhConfig.version = messagesStorage.getLastSecretVersion();
        this.callReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getDhConfig, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda59
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startOutgoingCall$11(messagesStorage, tLObject, tL_error);
            }
        }, 65536);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutgoingCall$11(MessagesStorage messagesStorage, TLObject tLObject, TLRPC.TL_error tL_error) {
        this.callReqId = 0;
        if (this.endCallAfterRequest) {
            callEnded();
            return;
        }
        if (tL_error == null) {
            TLRPC.messages_DhConfig messages_dhconfig = (TLRPC.messages_DhConfig) tLObject;
            if (tLObject instanceof TLRPC.TL_messages_dhConfig) {
                if (!Utilities.isGoodPrime(messages_dhconfig.f883p, messages_dhconfig.f882g)) {
                    callFailed();
                    return;
                }
                messagesStorage.setSecretPBytes(messages_dhconfig.f883p);
                messagesStorage.setSecretG(messages_dhconfig.f882g);
                messagesStorage.setLastSecretVersion(messages_dhconfig.version);
                messagesStorage.saveSecretParams(messagesStorage.getLastSecretVersion(), messagesStorage.getSecretG(), messagesStorage.getSecretPBytes());
            }
            final byte[] bArr = new byte[256];
            for (int i = 0; i < 256; i++) {
                bArr[i] = (byte) (((byte) (Utilities.random.nextDouble() * 256.0d)) ^ messages_dhconfig.random[i]);
            }
            byte[] byteArray = BigInteger.valueOf(messagesStorage.getSecretG()).modPow(new BigInteger(1, bArr), new BigInteger(1, messagesStorage.getSecretPBytes())).toByteArray();
            if (byteArray.length > 256) {
                byte[] bArr2 = new byte[256];
                System.arraycopy(byteArray, 1, bArr2, 0, 256);
                byteArray = bArr2;
            }
            TL_phone.requestCall requestcall = new TL_phone.requestCall();
            requestcall.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(this.user);
            TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol = new TL_phone.TL_phoneCallProtocol();
            requestcall.protocol = tL_phoneCallProtocol;
            requestcall.video = this.videoCall;
            tL_phoneCallProtocol.udp_p2p = true;
            tL_phoneCallProtocol.udp_reflector = true;
            tL_phoneCallProtocol.min_layer = 65;
            tL_phoneCallProtocol.max_layer = Instance.getConnectionMaxLayer();
            Collections.addAll(requestcall.protocol.library_versions, NativeInstance.getAllVersions());
            this.g_a = byteArray;
            requestcall.g_a_hash = Utilities.computeSHA256(byteArray, 0, byteArray.length);
            requestcall.random_id = Utilities.random.nextInt();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(requestcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda49
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$startOutgoingCall$10(bArr, tLObject2, tL_error2);
                }
            }, 65536);
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m896e("Error on getDhConfig " + tL_error);
        }
        callFailed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutgoingCall$10(final byte[] bArr, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda65
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startOutgoingCall$9(tL_error, tLObject, bArr);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutgoingCall$9(TLRPC.TL_error tL_error, TLObject tLObject, byte[] bArr) {
        if (tL_error == null) {
            this.privateCall = ((TL_phone.TL_phone_phoneCall) tLObject).phone_call;
            this.a_or_b = bArr;
            dispatchStateChanged(13);
            if (this.endCallAfterRequest) {
                hangUp();
                return;
            }
            if (this.pendingUpdates.size() > 0 && this.privateCall != null) {
                ArrayList<TL_phone.PhoneCall> arrayList = this.pendingUpdates;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    TL_phone.PhoneCall phoneCall = arrayList.get(i);
                    i++;
                    onCallUpdated(phoneCall);
                }
                this.pendingUpdates.clear();
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda34
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startOutgoingCall$8();
                }
            };
            this.timeoutRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, MessagesController.getInstance(this.currentAccount).callReceiveTimeout);
            return;
        }
        if (tL_error.code == 400 && "PARTICIPANT_VERSION_OUTDATED".equals(tL_error.text)) {
            callFailed(Instance.ERROR_PEER_OUTDATED);
            return;
        }
        int i2 = tL_error.code;
        if (i2 == 403) {
            callFailed(Instance.ERROR_PRIVACY);
            return;
        }
        if (i2 == 406) {
            callFailed(Instance.ERROR_LOCALIZED);
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m896e("Error on phone.requestCall: " + tL_error);
        }
        callFailed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutgoingCall$8() {
        this.timeoutRunnable = null;
        TL_phone.discardCall discardcall = new TL_phone.discardCall();
        TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
        discardcall.peer = tL_inputPhoneCall;
        TL_phone.PhoneCall phoneCall = this.privateCall;
        tL_inputPhoneCall.access_hash = phoneCall.access_hash;
        tL_inputPhoneCall.id = phoneCall.id;
        discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonMissed();
        FileLog.m896e("discardCall " + discardcall.reason);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(discardcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda29
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startOutgoingCall$7(tLObject, tL_error);
            }
        }, 65536);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startOutgoingCall$7(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (BuildVars.LOGS_ENABLED) {
            if (tL_error != null) {
                FileLog.m896e("error on phone.discardCall: " + tL_error);
            } else {
                FileLog.m895d("phone.discardCall " + tLObject);
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda60
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.callFailed();
            }
        });
    }

    private void acknowledgeCall(final boolean z) {
        TL_phone.PhoneCall phoneCall = this.privateCall;
        if (phoneCall == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("Call is null, wtf");
            }
            stopSelf();
            return;
        }
        if (phoneCall instanceof TL_phone.TL_phoneCallDiscarded) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("Call " + this.privateCall.id + " was discarded before the service started, stopping");
            }
            stopSelf();
            return;
        }
        if (XiaomiUtilities.isMIUI() && !XiaomiUtilities.isCustomPermissionGranted(XiaomiUtilities.OP_SHOW_WHEN_LOCKED) && ((KeyguardManager) getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m896e("MIUI: no permission to show when locked but the screen is locked. ¯\\_(ツ)_/¯");
            }
            stopSelf();
            return;
        }
        TL_phone.receivedCall receivedcall = new TL_phone.receivedCall();
        TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
        receivedcall.peer = tL_inputPhoneCall;
        TL_phone.PhoneCall phoneCall2 = this.privateCall;
        tL_inputPhoneCall.id = phoneCall2.id;
        tL_inputPhoneCall.access_hash = phoneCall2.access_hash;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(receivedcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda94
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$acknowledgeCall$13(z, tLObject, tL_error);
            }
        }, 65536);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acknowledgeCall$13(final boolean z, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$acknowledgeCall$12(tLObject, tL_error, z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acknowledgeCall$12(TLObject tLObject, TLRPC.TL_error tL_error, boolean z) {
        if (sharedInstance == null) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m899w("receivedCall response = " + tLObject);
        }
        if (tL_error != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m896e("error on receivedCall: " + tL_error);
            }
            stopSelf();
            return;
        }
        if (USE_CONNECTION_SERVICE) {
            ContactsController contactsController = ContactsController.getInstance(this.currentAccount);
            TLRPC.User user = this.user;
            contactsController.createOrUpdateConnectionServiceContact(user.id, user.first_name, user.last_name);
            TelecomManager telecomManager = (TelecomManager) getSystemService("telecom");
            Bundle bundle = new Bundle();
            bundle.putInt("call_type", 1);
            telecomManager.addNewIncomingCall(addAccountToTelecomManager(), bundle);
        }
        if (z) {
            startRinging();
        }
    }

    private boolean isRinging() {
        return this.currentState == 15;
    }

    public boolean isJoined() {
        int i = this.currentState;
        return (i == 1 || i == 6) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void requestVideoCall(boolean z) {
        int i = 0;
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance == null) {
            return;
        }
        if (!z) {
            long j = this.captureDevice[0];
            if (j != 0) {
                nativeInstance.setupOutgoingVideoCreated(j);
                this.destroyCaptureDevice[0] = false;
            } else {
                ProxyVideoSink proxyVideoSink = this.localSink[0];
                if (z) {
                    i = 2;
                } else if (this.isFrontFaceCamera) {
                    i = 1;
                }
                nativeInstance.setupOutgoingVideo(proxyVideoSink, i);
            }
        }
        this.isPrivateScreencast = z;
    }

    public void switchCamera() {
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance == null || !nativeInstance.hasVideoCapturer() || this.switchingCamera) {
            long j = this.captureDevice[0];
            if (j == 0 || this.switchingCamera) {
                return;
            }
            NativeInstance.switchCameraCapturer(j, !this.isFrontFaceCamera);
            return;
        }
        this.switchingCamera = true;
        this.tgVoip[0].switchCamera(!this.isFrontFaceCamera);
    }

    public boolean isSwitchingCamera() {
        return this.switchingCamera;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    public void createCaptureDevice(boolean z) {
        if (z) {
            this.gotMediaProjection = true;
            updateCurrentForegroundType();
        }
        ?? r2 = z ? 2 : this.isFrontFaceCamera;
        if (this.groupCall == null) {
            if (!this.isPrivateScreencast && z) {
                setVideoState(false, 0);
            }
            this.isPrivateScreencast = z;
            NativeInstance nativeInstance = this.tgVoip[0];
            if (nativeInstance != null) {
                nativeInstance.clearVideoCapturer();
            }
            long j = this.captureDevice[0];
            if (j != 0) {
                NativeInstance.destroyVideoCapturer(j);
                this.captureDevice[0] = 0;
            }
        }
        if (z) {
            if (this.groupCall != null) {
                long[] jArr = this.captureDevice;
                if (jArr[z ? 1 : 0] != 0) {
                    return;
                }
                jArr[z ? 1 : 0] = NativeInstance.createVideoCapturer(this.localSink[z ? 1 : 0], r2);
                createGroupInstance(1, false, true);
                setVideoState(true, 2);
                AccountInstance.getInstance(this.currentAccount).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallScreencastStateChanged, new Object[0]);
                return;
            }
            requestVideoCall(true);
            setVideoState(true, 2);
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().onScreenCastStart();
                return;
            }
            return;
        }
        long j2 = this.captureDevice[z ? 1 : 0];
        if (j2 != 0 || this.tgVoip[z ? 1 : 0] == null) {
            NativeInstance nativeInstance2 = this.tgVoip[z ? 1 : 0];
            if (nativeInstance2 != null && j2 != 0) {
                nativeInstance2.activateVideoCapturer(j2);
            }
            if (this.captureDevice[z ? 1 : 0] != 0) {
                return;
            }
        }
        this.captureDevice[z ? 1 : 0] = NativeInstance.createVideoCapturer(this.localSink[z ? 1 : 0], r2);
    }

    public void setupCaptureDevice(boolean z, boolean z2) {
        NativeInstance nativeInstance;
        if (!z) {
            long j = this.captureDevice[z ? 1 : 0];
            if (j == 0 || (nativeInstance = this.tgVoip[z ? 1 : 0]) == null) {
                return;
            }
            nativeInstance.setupOutgoingVideoCreated(j);
            this.destroyCaptureDevice[z ? 1 : 0] = false;
            this.videoState[z ? 1 : 0] = 2;
        }
        if (this.micMute == z2) {
            setMicMute(!z2, false, false);
            this.micSwitching = true;
        }
        if (this.groupCall != null) {
            editCallMember(UserConfig.getInstance(this.currentAccount).getCurrentUser(), Boolean.valueOf(!z2), Boolean.valueOf(this.videoState[0] != 2), null, null, new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda33
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setupCaptureDevice$14();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setupCaptureDevice$14() {
        this.micSwitching = false;
    }

    public void clearCamera() {
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance != null) {
            nativeInstance.clearVideoCapturer();
        }
        long j = this.captureDevice[0];
        if (j != 0) {
            NativeInstance.destroyVideoCapturer(j);
            this.captureDevice[0] = 0;
        }
    }

    public void setVideoState(boolean z, int i) {
        int i2;
        int i3 = 0;
        char c2 = this.groupCall != null ? z ? 1 : 0 : (char) 0;
        NativeInstance nativeInstance = this.tgVoip[c2];
        if (nativeInstance == null) {
            long[] jArr = this.captureDevice;
            long j = jArr[z ? 1 : 0];
            if (j != 0) {
                this.videoState[c2] = i;
                NativeInstance.setVideoStateCapturer(j, i);
                return;
            }
            if (i != 2 || (i2 = this.currentState) == 17 || i2 == 11) {
                return;
            }
            ProxyVideoSink proxyVideoSink = this.localSink[c2];
            if (z) {
                i3 = 2;
            } else if (this.isFrontFaceCamera) {
                i3 = 1;
            }
            jArr[z ? 1 : 0] = NativeInstance.createVideoCapturer(proxyVideoSink, i3);
            this.videoState[c2] = 2;
            return;
        }
        this.videoState[c2] = i;
        nativeInstance.setVideoState(i);
        long j2 = this.captureDevice[z ? 1 : 0];
        if (j2 != 0) {
            NativeInstance.setVideoStateCapturer(j2, this.videoState[c2]);
        }
        if (z) {
            return;
        }
        if (this.groupCall != null) {
            editCallMember(UserConfig.getInstance(this.currentAccount).getCurrentUser(), null, Boolean.valueOf(this.videoState[0] != 2), null, null, null);
        }
        checkIsNear();
    }

    public void stopScreenCapture() {
        if (this.groupCall == null || this.videoState[1] != 2) {
            return;
        }
        TL_phone.leaveGroupCallPresentation leavegroupcallpresentation = new TL_phone.leaveGroupCallPresentation();
        leavegroupcallpresentation.call = this.groupCall.getInputGroupCall();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(leavegroupcallpresentation, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda83
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$stopScreenCapture$15(tLObject, tL_error);
            }
        });
        NativeInstance nativeInstance = this.tgVoip[1];
        if (nativeInstance != null) {
            Utilities.globalQueue.postRunnable(new VoIPService$$ExternalSyntheticLambda72(nativeInstance));
        }
        this.mySource[1] = 0;
        this.tgVoip[1] = null;
        this.destroyCaptureDevice[1] = true;
        this.captureDevice[1] = 0;
        this.videoState[1] = 0;
        AccountInstance.getInstance(this.currentAccount).getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallScreencastStateChanged, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$stopScreenCapture$15(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.Updates) tLObject, false);
        }
    }

    public int getVideoState(boolean z) {
        return this.videoState[z ? 1 : 0];
    }

    public void setSinks(VideoSink videoSink, VideoSink videoSink2) {
        setSinks(videoSink, false, videoSink2);
    }

    public void setSinks(VideoSink videoSink, boolean z, VideoSink videoSink2) {
        ProxyVideoSink proxyVideoSink = this.localSink[z ? 1 : 0];
        ProxyVideoSink proxyVideoSink2 = this.remoteSink[z ? 1 : 0];
        if (proxyVideoSink != null) {
            proxyVideoSink.setTarget(videoSink);
        }
        if (proxyVideoSink2 != null) {
            proxyVideoSink2.setTarget(videoSink2);
        }
    }

    public void setLocalSink(VideoSink videoSink, boolean z) {
        if (z) {
            return;
        }
        this.localSink[0].setTarget(videoSink);
    }

    public void setRemoteSink(VideoSink videoSink, boolean z) {
        this.remoteSink[z ? 1 : 0].setTarget(videoSink);
    }

    public ProxyVideoSink addRemoteSink(TLRPC.GroupCallParticipant groupCallParticipant, boolean z, VideoSink videoSink, VideoSink videoSink2) {
        if (this.tgVoip[0] == null) {
            return null;
        }
        String str = z ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint;
        if (str == null) {
            return null;
        }
        ProxyVideoSink proxyVideoSink = this.remoteSinks.get(str);
        if (proxyVideoSink != null && proxyVideoSink.target == videoSink) {
            return proxyVideoSink;
        }
        if (proxyVideoSink == null) {
            proxyVideoSink = this.proxyVideoSinkLruCache.remove(str);
        }
        if (proxyVideoSink == null) {
            proxyVideoSink = new ProxyVideoSink();
        }
        ProxyVideoSink proxyVideoSink2 = proxyVideoSink;
        if (videoSink != null) {
            proxyVideoSink2.setTarget(videoSink);
        }
        if (videoSink2 != null) {
            proxyVideoSink2.setBackground(videoSink2);
        }
        this.remoteSinks.put(str, proxyVideoSink2);
        proxyVideoSink2.nativeInstance = this.tgVoip[0].addIncomingVideoOutput(1, str, createSsrcGroups(z ? groupCallParticipant.presentation : groupCallParticipant.video), proxyVideoSink2, DialogObject.getPeerDialogId(groupCallParticipant.peer));
        return proxyVideoSink2;
    }

    private NativeInstance.SsrcGroup[] createSsrcGroups(TLRPC.TL_groupCallParticipantVideo tL_groupCallParticipantVideo) {
        if (tL_groupCallParticipantVideo.source_groups.isEmpty()) {
            return null;
        }
        int size = tL_groupCallParticipantVideo.source_groups.size();
        NativeInstance.SsrcGroup[] ssrcGroupArr = new NativeInstance.SsrcGroup[size];
        for (int i = 0; i < size; i++) {
            ssrcGroupArr[i] = new NativeInstance.SsrcGroup();
            TLRPC.TL_groupCallParticipantVideoSourceGroup tL_groupCallParticipantVideoSourceGroup = tL_groupCallParticipantVideo.source_groups.get(i);
            NativeInstance.SsrcGroup ssrcGroup = ssrcGroupArr[i];
            ssrcGroup.semantics = tL_groupCallParticipantVideoSourceGroup.semantics;
            ssrcGroup.ssrcs = new int[tL_groupCallParticipantVideoSourceGroup.sources.size()];
            int i2 = 0;
            while (true) {
                int[] iArr = ssrcGroupArr[i].ssrcs;
                if (i2 < iArr.length) {
                    iArr[i2] = tL_groupCallParticipantVideoSourceGroup.sources.get(i2).intValue();
                    i2++;
                }
            }
        }
        return ssrcGroupArr;
    }

    public void requestFullScreen(TLRPC.GroupCallParticipant groupCallParticipant, boolean z, boolean z2) {
        String str = z2 ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint;
        if (str == null) {
            return;
        }
        NativeInstance[] nativeInstanceArr = this.tgVoip;
        if (z) {
            nativeInstanceArr[0].setVideoEndpointQuality(str, 2);
        } else {
            nativeInstanceArr[0].setVideoEndpointQuality(str, 1);
        }
    }

    public void removeRemoteSink(TLRPC.GroupCallParticipant groupCallParticipant, boolean z) {
        HashMap<String, ProxyVideoSink> map = this.remoteSinks;
        if (z) {
            ProxyVideoSink proxyVideoSinkRemove = map.remove(groupCallParticipant.presentationEndpoint);
            if (proxyVideoSinkRemove != null) {
                this.tgVoip[0].removeIncomingVideoOutput(proxyVideoSinkRemove.nativeInstance);
                return;
            }
            return;
        }
        ProxyVideoSink proxyVideoSinkRemove2 = map.remove(groupCallParticipant.videoEndpoint);
        if (proxyVideoSinkRemove2 != null) {
            this.tgVoip[0].removeIncomingVideoOutput(proxyVideoSinkRemove2.nativeInstance);
        }
    }

    public boolean isFullscreen(TLRPC.GroupCallParticipant groupCallParticipant, boolean z) {
        if (this.currentBackgroundSink[z ? 1 : 0] != null) {
            return TextUtils.equals(this.currentBackgroundEndpointId[z ? 1 : 0], z ? groupCallParticipant.presentationEndpoint : groupCallParticipant.videoEndpoint);
        }
        return false;
    }

    public void setBackgroundSinks(VideoSink videoSink, VideoSink videoSink2) {
        this.localSink[0].setBackground(videoSink);
        this.remoteSink[0].setBackground(videoSink2);
    }

    public void swapSinks() {
        this.localSink[0].swap();
        this.remoteSink[0].swap();
    }

    public boolean isHangingUp() {
        return this.currentState == 10;
    }

    public void onSignalingData(TL_update.TL_updatePhoneCallSignalingData tL_updatePhoneCallSignalingData) {
        NativeInstance nativeInstance;
        if (this.user == null || (nativeInstance = this.tgVoip[0]) == null || nativeInstance.isGroup() || getCallID() != tL_updatePhoneCallSignalingData.phone_call_id) {
            return;
        }
        this.tgVoip[0].onSignalingDataReceive(tL_updatePhoneCallSignalingData.data);
    }

    public long getSelfId() {
        TLRPC.InputPeer inputPeer = this.groupCallPeer;
        if (inputPeer == null) {
            return UserConfig.getInstance(this.currentAccount).clientUserId;
        }
        if (inputPeer instanceof TLRPC.TL_inputPeerUser) {
            return inputPeer.user_id;
        }
        if (inputPeer instanceof TLRPC.TL_inputPeerChannel) {
            return -inputPeer.channel_id;
        }
        return -inputPeer.chat_id;
    }

    public void onGroupCallParticipantsUpdate(TL_update.TL_updateGroupCallParticipants tL_updateGroupCallParticipants) {
        ChatObject.Call call = this.groupCall;
        if (call == null || call.call.id != tL_updateGroupCallParticipants.call.id) {
            return;
        }
        call.shadyLeftParticipants.clear();
        this.groupCall.shadyJoinParticipants.clear();
        if (this.conference != null) {
            this.groupCall.processParticipantsUpdate(tL_updateGroupCallParticipants, false);
            this.conference.updateParticipants(this.groupCall.sortedParticipants, true);
            for (int i = 0; i < this.stateListeners.size(); i++) {
                this.stateListeners.get(i).onStateChanged(getCallState());
            }
            ChatObject.Call call2 = this.groupCall;
            call2.shadyLeftParticipants.addAll(this.conference.getShadyLeftParticipants(call2.sortedParticipants));
            ChatObject.Call call3 = this.groupCall;
            call3.shadyJoinParticipants.addAll(this.conference.getShadyJoiningParticipants(call3.sortedParticipants));
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
        }
        long selfId = getSelfId();
        int size = tL_updateGroupCallParticipants.participants.size();
        for (int i2 = 0; i2 < size; i2++) {
            TLRPC.GroupCallParticipant groupCallParticipant = tL_updateGroupCallParticipants.participants.get(i2);
            if (groupCallParticipant.left) {
                int i3 = groupCallParticipant.source;
                if (i3 != 0 && i3 == this.mySource[0]) {
                    int i4 = 0;
                    for (int i5 = 0; i5 < size; i5++) {
                        TLRPC.GroupCallParticipant groupCallParticipant2 = tL_updateGroupCallParticipants.participants.get(i5);
                        if (groupCallParticipant2.self || groupCallParticipant2.source == this.mySource[0]) {
                            i4++;
                        }
                    }
                    if (i4 > 1) {
                        hangUp(2);
                        return;
                    }
                }
            } else if (MessageObject.getPeerId(groupCallParticipant.peer) != selfId) {
                continue;
            } else {
                int i6 = groupCallParticipant.source;
                int i7 = this.mySource[0];
                if (i6 != i7 && i7 != 0 && i6 != 0) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("source mismatch my = " + this.mySource[0] + " psrc = " + groupCallParticipant.source);
                    }
                    hangUp(2);
                    return;
                }
                if (ChatObject.isChannel(this.chat) && this.currentGroupModeStreaming && groupCallParticipant.can_self_unmute) {
                    this.switchingStream = true;
                    createGroupInstance(0, false, true);
                }
                if (groupCallParticipant.muted) {
                    setMicMute(true, false, false);
                }
            }
        }
    }

    public void onGroupCallUpdated(TLRPC.GroupCall groupCall) {
        boolean zOptBoolean;
        TLRPC.TL_dataJSON tL_dataJSON;
        ChatObject.Call call = this.groupCall;
        if (call != null) {
            TLRPC.GroupCall groupCall2 = call.call;
            if (groupCall2.id == groupCall.id) {
                if (groupCall2 instanceof TLRPC.TL_groupCallDiscarded) {
                    hangUp(2);
                    return;
                }
                boolean z = false;
                if (this.myParams != null) {
                    try {
                        zOptBoolean = new JSONObject(this.myParams.data).optBoolean("stream");
                    } catch (Exception e) {
                        FileLog.m898e(e);
                        zOptBoolean = false;
                    }
                } else {
                    zOptBoolean = false;
                }
                if (this.conference != null) {
                    this.groupCall.processGroupCallUpdate(groupCall);
                }
                if ((this.currentState == 1 || zOptBoolean != this.currentGroupModeStreaming) && (tL_dataJSON = this.myParams) != null) {
                    NativeInstance nativeInstance = this.tgVoip[0];
                    if (nativeInstance == null) {
                        this.lastGroupCallUpdate = groupCall;
                        return;
                    }
                    if (this.playedConnectedSound && zOptBoolean != this.currentGroupModeStreaming) {
                        this.switchingStream = true;
                    }
                    this.currentGroupModeStreaming = zOptBoolean;
                    try {
                        if (zOptBoolean) {
                            TLRPC.GroupCall groupCall3 = this.groupCall.call;
                            if (groupCall3 != null && groupCall3.rtmp_stream) {
                                z = true;
                            }
                            nativeInstance.prepareForStream(z);
                        } else {
                            nativeInstance.setJoinResponsePayload(tL_dataJSON.data);
                        }
                        dispatchStateChanged(2);
                        return;
                    } catch (Exception e2) {
                        FileLog.m898e(e2);
                        return;
                    }
                }
                return;
            }
        }
        this.lastGroupCallUpdate = groupCall;
    }

    /* JADX WARN: Removed duplicated region for block: B:81:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onCallUpdated(TL_phone.PhoneCall phoneCall) {
        byte[] bArr;
        long jBytesToLong;
        if (this.user == null) {
            return;
        }
        TL_phone.PhoneCall phoneCall2 = this.privateCall;
        if (phoneCall2 == null) {
            this.pendingUpdates.add(phoneCall);
            return;
        }
        if (phoneCall == null) {
            return;
        }
        if (phoneCall.id != phoneCall2.id) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("onCallUpdated called with wrong call id (got " + phoneCall.id + ", expected " + this.privateCall.id + ")");
                return;
            }
            return;
        }
        if (phoneCall.access_hash == 0) {
            phoneCall.access_hash = phoneCall2.access_hash;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("Call updated: " + phoneCall);
        }
        long j = this.privateCall.key_fingerprint;
        this.privateCall = phoneCall;
        if (phoneCall instanceof TL_phone.TL_phoneCallDiscarded) {
            this.needSendDebugLog = phoneCall.need_debug;
            this.needRateCall = phoneCall.need_rating;
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("call discarded, stopping service");
            }
            VoIPDebugToSend voIPDebugToSend = MessagesController.getInstance(this.currentAccount).voipDebug;
            if (voIPDebugToSend != null) {
                voIPDebugToSend.done(phoneCall.id, phoneCall.need_debug);
            }
            TLRPC.PhoneCallDiscardReason phoneCallDiscardReason = phoneCall.reason;
            if (phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall) {
                TLRPC.TL_inputGroupCallSlug tL_inputGroupCallSlug = new TLRPC.TL_inputGroupCallSlug();
                this.joinConference = tL_inputGroupCallSlug;
                tL_inputGroupCallSlug.slug = ((TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall) phoneCallDiscardReason).slug;
                stopRinging();
                NativeInstance[] nativeInstanceArr = this.tgVoip;
                NativeInstance nativeInstance = nativeInstanceArr[0];
                if (nativeInstance != null) {
                    this.prevTrafficStats = null;
                    this.convertingVoip = nativeInstance;
                    nativeInstanceArr[0] = null;
                }
                startConferenceGroupCall(false, 0, null, false);
                return;
            }
            if (phoneCallDiscardReason instanceof TLRPC.TL_phoneCallDiscardReasonBusy) {
                dispatchStateChanged(17);
                this.playingSound = true;
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda129
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onCallUpdated$16();
                    }
                });
                AndroidUtilities.runOnUIThread(this.afterSoundRunnable, 1500L);
                endConnectionServiceCall(1500L);
                stopSelf();
                return;
            }
            callEnded();
            return;
        }
        if ((phoneCall instanceof TL_phone.TL_phoneCall) && this.authKey == null) {
            byte[] bArr2 = phoneCall.g_a_or_b;
            if (bArr2 == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m899w("stopping VoIP service, Ga == null");
                }
                callFailed();
                return;
            }
            if (!Arrays.equals(this.g_a_hash, Utilities.computeSHA256(bArr2, 0, bArr2.length))) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m899w("stopping VoIP service, Ga hash doesn't match");
                }
                callFailed();
                return;
            }
            this.g_a = phoneCall.g_a_or_b;
            BigInteger bigInteger = new BigInteger(1, phoneCall.g_a_or_b);
            BigInteger bigInteger2 = new BigInteger(1, MessagesStorage.getInstance(this.currentAccount).getSecretPBytes());
            if (!Utilities.isGoodGaAndGb(bigInteger, bigInteger2)) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m899w("stopping VoIP service, bad Ga and Gb (accepting)");
                }
                callFailed();
                return;
            }
            byte[] byteArray = bigInteger.modPow(new BigInteger(1, this.a_or_b), bigInteger2).toByteArray();
            if (byteArray.length > 256) {
                bArr = new byte[256];
                System.arraycopy(byteArray, byteArray.length - 256, bArr, 0, 256);
            } else {
                if (byteArray.length < 256) {
                    bArr = new byte[256];
                    System.arraycopy(byteArray, 0, bArr, 256 - byteArray.length, byteArray.length);
                    for (int i = 0; i < 256 - byteArray.length; i++) {
                        bArr[i] = 0;
                    }
                }
                byte[] bArrComputeSHA1 = Utilities.computeSHA1(byteArray);
                byte[] bArr3 = new byte[8];
                System.arraycopy(bArrComputeSHA1, bArrComputeSHA1.length - 8, bArr3, 0, 8);
                this.authKey = byteArray;
                jBytesToLong = Utilities.bytesToLong(bArr3);
                this.keyFingerprint = jBytesToLong;
                if (jBytesToLong == phoneCall.key_fingerprint) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m899w("key fingerprints don't match");
                    }
                    callFailed();
                    return;
                }
                initiateActualEncryptedCall();
                return;
            }
            byteArray = bArr;
            byte[] bArrComputeSHA12 = Utilities.computeSHA1(byteArray);
            byte[] bArr32 = new byte[8];
            System.arraycopy(bArrComputeSHA12, bArrComputeSHA12.length - 8, bArr32, 0, 8);
            this.authKey = byteArray;
            jBytesToLong = Utilities.bytesToLong(bArr32);
            this.keyFingerprint = jBytesToLong;
            if (jBytesToLong == phoneCall.key_fingerprint) {
            }
        } else {
            if ((phoneCall instanceof TL_phone.TL_phoneCallAccepted) && this.authKey == null) {
                processAcceptedCall();
                return;
            }
            if (this.currentState != 13 || phoneCall.receive_date == 0) {
                return;
            }
            dispatchStateChanged(16);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("!!!!!! CALL RECEIVED");
            }
            Runnable runnable = this.connectingSoundRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.connectingSoundRunnable = null;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda130
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCallUpdated$17();
                }
            });
            Runnable runnable2 = this.timeoutRunnable;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                this.timeoutRunnable = null;
            }
            Runnable runnable3 = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda131
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCallUpdated$18();
                }
            };
            this.timeoutRunnable = runnable3;
            AndroidUtilities.runOnUIThread(runnable3, MessagesController.getInstance(this.currentAccount).callRingTimeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCallUpdated$16() {
        this.soundPool.play(this.spBusyId, 1.0f, 1.0f, 0, -1, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCallUpdated$17() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
        }
        this.spPlayId = this.soundPool.play(this.spRingbackID, 1.0f, 1.0f, 0, -1, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCallUpdated$18() {
        this.timeoutRunnable = null;
        declineIncomingCall(3, null);
    }

    private void startRatingActivity() {
        try {
            PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) VoIPFeedbackActivity.class).putExtra("call_id", this.privateCall.id).putExtra("call_access_hash", this.privateCall.access_hash).putExtra("call_video", this.privateCall.video).putExtra("account", this.currentAccount).addFlags(805306368), 33554432).send();
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("Error starting incall activity", e);
            }
        }
    }

    public void sendCallRating(int i) {
        TL_phone.PhoneCall phoneCall = this.privateCall;
        VoIPHelper.sendCallRating(phoneCall.id, phoneCall.access_hash, this.currentAccount, i);
    }

    public byte[] getEncryptionKey() {
        return this.authKey;
    }

    private void processAcceptedCall() {
        byte[] bArr;
        dispatchStateChanged(12);
        BigInteger bigInteger = new BigInteger(1, MessagesStorage.getInstance(this.currentAccount).getSecretPBytes());
        BigInteger bigInteger2 = new BigInteger(1, this.privateCall.g_b);
        if (!Utilities.isGoodGaAndGb(bigInteger2, bigInteger)) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("stopping VoIP service, bad Ga and Gb");
            }
            callFailed();
            return;
        }
        byte[] byteArray = bigInteger2.modPow(new BigInteger(1, this.a_or_b), bigInteger).toByteArray();
        if (byteArray.length > 256) {
            bArr = new byte[256];
            System.arraycopy(byteArray, byteArray.length - 256, bArr, 0, 256);
        } else {
            if (byteArray.length < 256) {
                bArr = new byte[256];
                System.arraycopy(byteArray, 0, bArr, 256 - byteArray.length, byteArray.length);
                for (int i = 0; i < 256 - byteArray.length; i++) {
                    bArr[i] = 0;
                }
            }
            byte[] bArrComputeSHA1 = Utilities.computeSHA1(byteArray);
            byte[] bArr2 = new byte[8];
            System.arraycopy(bArrComputeSHA1, bArrComputeSHA1.length - 8, bArr2, 0, 8);
            long jBytesToLong = Utilities.bytesToLong(bArr2);
            this.authKey = byteArray;
            this.keyFingerprint = jBytesToLong;
            TL_phone.confirmCall confirmcall = new TL_phone.confirmCall();
            confirmcall.g_a = this.g_a;
            confirmcall.key_fingerprint = jBytesToLong;
            TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
            confirmcall.peer = tL_inputPhoneCall;
            TL_phone.PhoneCall phoneCall = this.privateCall;
            tL_inputPhoneCall.id = phoneCall.id;
            tL_inputPhoneCall.access_hash = phoneCall.access_hash;
            TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol = new TL_phone.TL_phoneCallProtocol();
            confirmcall.protocol = tL_phoneCallProtocol;
            tL_phoneCallProtocol.max_layer = Instance.getConnectionMaxLayer();
            TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol2 = confirmcall.protocol;
            tL_phoneCallProtocol2.min_layer = 65;
            tL_phoneCallProtocol2.udp_reflector = true;
            tL_phoneCallProtocol2.udp_p2p = true;
            Collections.addAll(tL_phoneCallProtocol2.library_versions, NativeInstance.getAllVersions());
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(confirmcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda52
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$processAcceptedCall$20(tLObject, tL_error);
                }
            });
        }
        byteArray = bArr;
        byte[] bArrComputeSHA12 = Utilities.computeSHA1(byteArray);
        byte[] bArr22 = new byte[8];
        System.arraycopy(bArrComputeSHA12, bArrComputeSHA12.length - 8, bArr22, 0, 8);
        long jBytesToLong2 = Utilities.bytesToLong(bArr22);
        this.authKey = byteArray;
        this.keyFingerprint = jBytesToLong2;
        TL_phone.confirmCall confirmcall2 = new TL_phone.confirmCall();
        confirmcall2.g_a = this.g_a;
        confirmcall2.key_fingerprint = jBytesToLong2;
        TLRPC.TL_inputPhoneCall tL_inputPhoneCall2 = new TLRPC.TL_inputPhoneCall();
        confirmcall2.peer = tL_inputPhoneCall2;
        TL_phone.PhoneCall phoneCall2 = this.privateCall;
        tL_inputPhoneCall2.id = phoneCall2.id;
        tL_inputPhoneCall2.access_hash = phoneCall2.access_hash;
        TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol3 = new TL_phone.TL_phoneCallProtocol();
        confirmcall2.protocol = tL_phoneCallProtocol3;
        tL_phoneCallProtocol3.max_layer = Instance.getConnectionMaxLayer();
        TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol22 = confirmcall2.protocol;
        tL_phoneCallProtocol22.min_layer = 65;
        tL_phoneCallProtocol22.udp_reflector = true;
        tL_phoneCallProtocol22.udp_p2p = true;
        Collections.addAll(tL_phoneCallProtocol22.library_versions, NativeInstance.getAllVersions());
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(confirmcall2, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda52
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$processAcceptedCall$20(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processAcceptedCall$20(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda45
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$processAcceptedCall$19(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processAcceptedCall$19(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error != null) {
            callFailed();
        } else {
            this.privateCall = ((TL_phone.TL_phone_phoneCall) tLObject).phone_call;
            initiateActualEncryptedCall();
        }
    }

    private int convertDataSavingMode(int i) {
        return i != 3 ? i : ApplicationLoader.isRoaming() ? 1 : 0;
    }

    public void migrateToChat(TLRPC.Chat chat) {
        this.chat = chat;
    }

    public void setGroupCallPeer(TLRPC.InputPeer inputPeer) {
        ChatObject.Call call = this.groupCall;
        if (call == null) {
            return;
        }
        this.groupCallPeer = inputPeer;
        call.setSelfPeer(inputPeer);
        TLRPC.ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.groupCall.chatId);
        if (chatFull != null) {
            TLRPC.Peer peer = this.groupCall.selfPeer;
            chatFull.groupcall_default_join_as = peer;
            if (peer != null) {
                boolean z = chatFull instanceof TLRPC.TL_chatFull;
                int i = chatFull.flags;
                if (z) {
                    chatFull.flags = 32768 | i;
                } else {
                    chatFull.flags = 67108864 | i;
                }
            } else {
                boolean z2 = chatFull instanceof TLRPC.TL_chatFull;
                int i2 = chatFull.flags;
                if (z2) {
                    chatFull.flags = (-32769) & i2;
                } else {
                    chatFull.flags = (-67108865) & i2;
                }
            }
        }
        createGroupInstance(0, true, true);
        if (this.videoState[1] == 2) {
            createGroupInstance(1, true, true);
        }
    }

    private void startGroupCall(final int i, String str, final boolean z) {
        if (sharedInstance != this) {
            return;
        }
        if (this.createGroupCall) {
            ChatObject.Call call = new ChatObject.Call();
            this.groupCall = call;
            call.call = new TLRPC.TL_groupCall();
            ChatObject.Call call2 = this.groupCall;
            TLRPC.GroupCall groupCall = call2.call;
            groupCall.participants_count = 0;
            groupCall.version = 1;
            groupCall.can_start_video = true;
            groupCall.can_change_join_muted = true;
            groupCall.rtmp_stream = this.isRtmpStream;
            call2.chatId = this.chat.id;
            call2.currentAccount = AccountInstance.getInstance(this.currentAccount);
            this.groupCall.setSelfPeer(this.groupCallPeer);
            this.groupCall.createNoVideoParticipant();
            dispatchStateChanged(6);
            TL_phone.createGroupCall creategroupcall = new TL_phone.createGroupCall();
            creategroupcall.peer = MessagesController.getInputPeer(this.chat);
            creategroupcall.random_id = Utilities.random.nextInt();
            int i2 = this.scheduleDate;
            if (i2 != 0) {
                creategroupcall.schedule_date = i2;
                creategroupcall.flags |= 2;
            }
            if (this.isRtmpStream) {
                creategroupcall.flags |= 4;
            }
            this.groupCallBottomSheetLatch = new CountDownLatch(1);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(creategroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda62
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$startGroupCall$23(tLObject, tL_error);
                }
            }, 65536);
            this.createGroupCall = false;
            return;
        }
        if (str == null) {
            if (this.groupCall == null && this.chat != null) {
                ChatObject.Call groupCall2 = MessagesController.getInstance(this.currentAccount).getGroupCall(this.chat.id, false);
                this.groupCall = groupCall2;
                if (groupCall2 != null) {
                    groupCall2.setSelfPeer(this.groupCallPeer);
                }
            }
            configureDeviceForCall();
            showNotification();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda63
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedCall, new Object[0]);
                }
            });
            createGroupInstance(0, false, true);
            return;
        }
        if (getSharedInstance() == null || this.groupCall == null) {
            return;
        }
        dispatchStateChanged(1);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("initital source = " + i);
        }
        TL_phone.joinGroupCall joingroupcall = new TL_phone.joinGroupCall();
        joingroupcall.muted = this.micMute;
        joingroupcall.video_stopped = this.videoState[0] != 2;
        joingroupcall.call = this.groupCall.getInputGroupCall();
        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
        joingroupcall.params = tL_dataJSON;
        tL_dataJSON.data = str;
        if (!TextUtils.isEmpty(this.joinHash)) {
            joingroupcall.invite_hash = this.joinHash;
            joingroupcall.flags |= 2;
        }
        TLRPC.InputPeer inputPeer = this.groupCallPeer;
        if (inputPeer != null) {
            joingroupcall.join_as = inputPeer;
        } else {
            TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
            joingroupcall.join_as = tL_inputPeerUser;
            tL_inputPeerUser.user_id = AccountInstance.getInstance(this.currentAccount).getUserConfig().getClientUserId();
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(joingroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda64
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startGroupCall$29(i, z, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$23(TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            try {
                this.groupCallBottomSheetLatch.await(800L, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                FileLog.m898e(e);
            }
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            int i = 0;
            while (true) {
                if (i >= updates.updates.size()) {
                    break;
                }
                TLRPC.Update update = updates.updates.get(i);
                if (update instanceof TL_update.TL_updateGroupCall) {
                    final TL_update.TL_updateGroupCall tL_updateGroupCall = (TL_update.TL_updateGroupCall) update;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda27
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$startGroupCall$21(tL_updateGroupCall);
                        }
                    });
                    break;
                }
                i++;
            }
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startGroupCall$22(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$21(TL_update.TL_updateGroupCall tL_updateGroupCall) {
        if (sharedInstance == null) {
            return;
        }
        TLRPC.GroupCall groupCall = this.groupCall.call;
        TLRPC.GroupCall groupCall2 = tL_updateGroupCall.call;
        groupCall.access_hash = groupCall2.access_hash;
        groupCall.id = groupCall2.id;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        ChatObject.Call call = this.groupCall;
        messagesController.putGroupCall(call.chatId, call);
        startGroupCall(0, null, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$22(TLRPC.TL_error tL_error) {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 6, tL_error.text);
        hangUp(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$25(int i) {
        this.mySource[0] = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$29(final int i, final boolean z, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda22
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startGroupCall$25(i);
                }
            });
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            long selfId = getSelfId();
            int size = updates.updates.size();
            for (int i2 = 0; i2 < size; i2++) {
                TLRPC.Update update = updates.updates.get(i2);
                if (update instanceof TL_update.TL_updateGroupCallParticipants) {
                    TL_update.TL_updateGroupCallParticipants tL_updateGroupCallParticipants = (TL_update.TL_updateGroupCallParticipants) update;
                    int size2 = tL_updateGroupCallParticipants.participants.size();
                    int i3 = 0;
                    while (true) {
                        if (i3 < size2) {
                            final TLRPC.GroupCallParticipant groupCallParticipant = tL_updateGroupCallParticipants.participants.get(i3);
                            if (MessageObject.getPeerId(groupCallParticipant.peer) == selfId) {
                                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda23
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        this.f$0.lambda$startGroupCall$26(groupCallParticipant);
                                    }
                                });
                                if (BuildVars.LOGS_ENABLED) {
                                    FileLog.m895d("join source = " + groupCallParticipant.source);
                                }
                            } else {
                                i3++;
                            }
                        }
                    }
                } else if (update instanceof TL_update.TL_updateGroupCallConnection) {
                    TL_update.TL_updateGroupCallConnection tL_updateGroupCallConnection = (TL_update.TL_updateGroupCallConnection) update;
                    if (!tL_updateGroupCallConnection.presentation) {
                        this.myParams = tL_updateGroupCallConnection.params;
                    }
                }
            }
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startGroupCall$27(z);
                }
            });
            startGroupCheckShortpoll();
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startGroupCall$28(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$26(TLRPC.GroupCallParticipant groupCallParticipant) {
        this.mySource[0] = groupCallParticipant.source;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$27(boolean z) {
        this.groupCall.loadMembers(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCall$28(TLRPC.TL_error tL_error) {
        TLRPC.ChatFull chatFull;
        if ("JOIN_AS_PEER_INVALID".equals(tL_error.text)) {
            if (this.chat != null && (chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chat.id)) != null) {
                boolean z = chatFull instanceof TLRPC.TL_chatFull;
                int i = chatFull.flags;
                if (z) {
                    chatFull.flags = (-32769) & i;
                } else {
                    chatFull.flags = (-67108865) & i;
                }
                chatFull.groupcall_default_join_as = null;
                JoinCallAlert.resetCache();
            }
            hangUp(2);
            return;
        }
        if ("GROUPCALL_SSRC_DUPLICATE_MUCH".equals(tL_error.text)) {
            createGroupInstance(0, false, false);
            return;
        }
        if ("GROUPCALL_INVALID".equals(tL_error.text) && this.chat != null) {
            MessagesController.getInstance(this.currentAccount).loadFullChat(this.chat.id, 0, true);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 6, tL_error.text);
        hangUp(0);
    }

    public void convertToConferenceCall(boolean z, HashSet<Long> hashSet) {
        TLRPC.User user = this.user;
        this.convertingFromCallWithUserId = user != null ? user.id : 0L;
        this.inviteUsersToConferenceVideo = z;
        this.inviteUsersToConference = hashSet;
        stopRinging();
        NativeInstance[] nativeInstanceArr = this.tgVoip;
        NativeInstance nativeInstance = nativeInstanceArr[0];
        if (nativeInstance != null) {
            this.prevTrafficStats = null;
            this.convertingVoip = nativeInstance;
            nativeInstanceArr[0] = null;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$convertToConferenceCall$30();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$convertToConferenceCall$30() {
        startConferenceGroupCall(true, 0, null, false);
    }

    private void startConferenceGroupCall(final boolean z, final int i, final String str, boolean z2) {
        if (sharedInstance != this) {
            return;
        }
        if (this.groupCallPeer == null) {
            this.groupCallPeer = MessagesController.getInputPeer(UserConfig.getInstance(this.currentAccount).getCurrentUser());
        }
        if (z) {
            final AccountInstance accountInstance = AccountInstance.getInstance(this.currentAccount);
            this.conference = new ConferenceCall(this.currentAccount, accountInstance.getUserConfig().getClientUserId()) { // from class: org.telegram.messenger.voip.VoIPService.6
                @Override // org.telegram.messenger.voip.ConferenceCall
                public void gotCallId(long j) {
                    for (int i2 = 0; i2 < 2; i2++) {
                        if (VoIPService.this.tgVoip[i2] != null) {
                            VoIPService.this.tgVoip[i2].setConferenceCallId(j);
                        }
                    }
                }
            };
            this.chat = null;
            ChatObject.Call call = new ChatObject.Call();
            this.groupCall = call;
            call.call = new TLRPC.TL_groupCall();
            ChatObject.Call call2 = this.groupCall;
            TLRPC.GroupCall groupCall = call2.call;
            groupCall.participants_count = 0;
            groupCall.version = 1;
            groupCall.can_start_video = true;
            groupCall.can_change_join_muted = true;
            groupCall.rtmp_stream = this.isRtmpStream;
            call2.chatId = 0L;
            call2.currentAccount = AccountInstance.getInstance(this.currentAccount);
            this.groupCall.setSelfPeer(this.groupCallPeer);
            this.groupCall.createNoVideoParticipant();
            dispatchStateChanged(6);
            TL_phone.createConferenceCall createconferencecall = new TL_phone.createConferenceCall();
            createconferencecall.random_id = Utilities.random.nextInt();
            this.groupCallBottomSheetLatch = new CountDownLatch(1);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(createconferencecall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda53
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$startConferenceGroupCall$32(accountInstance, tLObject, tL_error);
                }
            }, 65536);
            return;
        }
        if (this.conference == null) {
            int i2 = this.currentAccount;
            ConferenceCall conferenceCall = new ConferenceCall(i2, UserConfig.getInstance(i2).getClientUserId()) { // from class: org.telegram.messenger.voip.VoIPService.7
                @Override // org.telegram.messenger.voip.ConferenceCall
                public void gotCallId(long j) {
                    for (int i3 = 0; i3 < 2; i3++) {
                        if (VoIPService.this.tgVoip[i3] != null) {
                            VoIPService.this.tgVoip[i3].setConferenceCallId(j);
                        }
                    }
                }
            };
            this.conference = conferenceCall;
            conferenceCall.inputGroupCall = this.joinConference;
        }
        if (this.groupCall == null) {
            ChatObject.Call call3 = new ChatObject.Call();
            this.groupCall = call3;
            call3.isConference = true;
            call3.call = new TLRPC.TL_groupCall();
            TLRPC.GroupCall groupCall2 = this.groupCall.call;
            groupCall2.participants_count = 0;
            groupCall2.version = 1;
            groupCall2.can_start_video = true;
            groupCall2.can_change_join_muted = true;
            groupCall2.rtmp_stream = this.isRtmpStream;
            if (this.joinConference instanceof TLRPC.TL_inputGroupCallSlug) {
                groupCall2.invite_link = "https://t.me/call/" + this.joinConference.slug;
            }
            ChatObject.Call call4 = this.groupCall;
            call4.chatId = 0L;
            call4.currentAccount = AccountInstance.getInstance(this.currentAccount);
            this.groupCall.setSelfPeer(this.groupCallPeer);
            this.groupCall.createNoVideoParticipant();
            TLRPC.GroupCall groupCall3 = this.joinConferenceCall;
            if (groupCall3 != null) {
                this.conference.groupCall = groupCall3;
                this.groupCall.setCall(AccountInstance.getInstance(this.currentAccount), 0L, this.joinConferenceCall);
                this.joinConferenceCall = null;
            }
        }
        if (this.conference.groupCall == null) {
            TL_phone.getGroupCall getgroupcall = new TL_phone.getGroupCall();
            getgroupcall.call = this.joinConference;
            getgroupcall.limit = 10;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getgroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda54
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$startConferenceGroupCall$34(i, str, tLObject, tL_error);
                }
            });
            return;
        }
        if (str == null) {
            configureDeviceForCall();
            showNotification();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda55
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedCall, new Object[0]);
                }
            });
            if (this.convertingVoip != null && this.isPrivateScreencast) {
                long[] jArr = this.captureDevice;
                jArr[1] = jArr[0];
                jArr[0] = 0;
                boolean[] zArr = this.destroyCaptureDevice;
                zArr[1] = true;
                zArr[0] = true;
                setVideoState(true, this.videoState[0]);
                setVideoState(false, 0);
                this.videoState[0] = 0;
            }
            createGroupInstance(0, false, true);
            long[] jArr2 = this.inviteUsers;
            if (jArr2 != null) {
                for (long j : jArr2) {
                    this.groupCall.addInvitedUser(j);
                }
            }
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().finish();
            }
            GroupCallActivity.create(LaunchActivity.instance, AccountInstance.getInstance(UserConfig.selectedAccount), null, null, false, null);
            return;
        }
        if (getSharedInstance() != null) {
            if (this.groupCall == null && this.conference == null) {
                return;
            }
            dispatchStateChanged(1);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("initital source = " + i);
            }
            final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda56
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$55(str, i, z);
                }
            };
            if (z2) {
                this.conference.reset();
            }
            this.conference.requestLastBlock(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda57
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$56(runnable);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$32(final AccountInstance accountInstance, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$31(tLObject, accountInstance, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$31(TLObject tLObject, AccountInstance accountInstance, TLRPC.TL_error tL_error) {
        boolean z = tLObject instanceof TLRPC.Updates;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        if (z) {
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(updates.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(updates.chats, false);
            ArrayList arrayListFindUpdatesAndRemove = MessagesController.findUpdatesAndRemove(updates, TL_update.TL_updateGroupCall.class);
            int size = arrayListFindUpdatesAndRemove.size();
            TLRPC.GroupCall groupCall = null;
            int i = 0;
            while (i < size) {
                Object obj = arrayListFindUpdatesAndRemove.get(i);
                i++;
                groupCall = ((TL_update.TL_updateGroupCall) obj).call;
            }
            if (groupCall == null) {
                return;
            }
            try {
                this.groupCallBottomSheetLatch.await(800L, timeUnit);
            } catch (InterruptedException e) {
                FileLog.m898e(e);
            }
            this.groupCall.setCall(accountInstance, 0L, groupCall);
            this.groupCall.loadMembers(true);
            MessagesController.getInstance(this.currentAccount).putGroupCall(0L, this.groupCall);
            this.conference.inputGroupCall = new TLRPC.TL_inputGroupCall();
            ConferenceCall conferenceCall = this.conference;
            TLRPC.InputGroupCall inputGroupCall = conferenceCall.inputGroupCall;
            inputGroupCall.id = groupCall.id;
            inputGroupCall.access_hash = groupCall.access_hash;
            conferenceCall.groupCall = TlUtils.applyGroupCallUpdate(conferenceCall.groupCall, groupCall);
            startConferenceGroupCall(false, 0, null, false);
            HashSet<Long> hashSet = this.inviteUsersToConference;
            if (hashSet != null) {
                Iterator<Long> it = hashSet.iterator();
                while (it.hasNext()) {
                    long jLongValue = it.next().longValue();
                    ChatObject.Call call = this.groupCall;
                    if (call != null) {
                        call.addInvitedUser(jLongValue);
                    }
                }
            }
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().finish();
            }
            GroupCallActivity.create(LaunchActivity.instance, AccountInstance.getInstance(this.currentAccount), null, null, false, null);
            return;
        }
        if (tLObject instanceof TL_phone.groupCall) {
            try {
                this.groupCallBottomSheetLatch.await(800L, timeUnit);
            } catch (InterruptedException e2) {
                FileLog.m898e(e2);
            }
            TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
            this.groupCall.setCall(accountInstance, 0L, groupcall);
            this.groupCall.loadMembers(true);
            MessagesController.getInstance(this.currentAccount).putGroupCall(0L, this.groupCall);
            this.conference.inputGroupCall = new TLRPC.TL_inputGroupCall();
            ConferenceCall conferenceCall2 = this.conference;
            TLRPC.InputGroupCall inputGroupCall2 = conferenceCall2.inputGroupCall;
            TLRPC.GroupCall groupCall2 = groupcall.call;
            inputGroupCall2.id = groupCall2.id;
            inputGroupCall2.access_hash = groupCall2.access_hash;
            conferenceCall2.groupCall = groupCall2;
            startConferenceGroupCall(false, 0, null, false);
            HashSet<Long> hashSet2 = this.inviteUsersToConference;
            if (hashSet2 != null) {
                Iterator<Long> it2 = hashSet2.iterator();
                while (it2.hasNext()) {
                    long jLongValue2 = it2.next().longValue();
                    ChatObject.Call call2 = this.groupCall;
                    if (call2 != null) {
                        call2.addInvitedUser(jLongValue2);
                    }
                }
            }
            if (VoIPFragment.getInstance() != null) {
                VoIPFragment.getInstance().finish();
            }
            GroupCallActivity.create(LaunchActivity.instance, AccountInstance.getInstance(this.currentAccount), null, null, false, null);
            return;
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 6, tL_error.text);
        hangUp(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$34(final int i, final String str, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda114
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$33(tLObject, i, str, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$33(TLObject tLObject, int i, String str, TLRPC.TL_error tL_error) {
        if (!(tLObject instanceof TL_phone.groupCall)) {
            if (tL_error != null) {
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 6, tL_error.text);
                hangUp(0);
                return;
            }
            return;
        }
        TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
        MessagesController.getInstance(this.currentAccount).putUsers(groupcall.users, false);
        MessagesController.getInstance(this.currentAccount).putChats(groupcall.chats, false);
        this.groupCall.setCall(AccountInstance.getInstance(this.currentAccount), 0L, groupcall);
        ConferenceCall conferenceCall = this.conference;
        conferenceCall.groupCall = groupcall.call;
        conferenceCall.inputGroupCall = this.joinConference;
        startConferenceGroupCall(false, i, str, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$55(final String str, final int i, final boolean z) {
        TL_phone.joinGroupCall joingroupcall = new TL_phone.joinGroupCall();
        joingroupcall.muted = this.micMute;
        joingroupcall.video_stopped = this.videoState[0] != 2;
        ConferenceCall conferenceCall = this.conference;
        if (conferenceCall != null) {
            joingroupcall.call = conferenceCall.inputGroupCall;
            joingroupcall.flags |= 8;
            joingroupcall.public_key = conferenceCall.getMyPublicKey();
            joingroupcall.block = this.conference.getLastBlock();
        } else {
            ChatObject.Call call = this.groupCall;
            if (call != null) {
                joingroupcall.call = call.getInputGroupCall();
            }
        }
        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
        joingroupcall.params = tL_dataJSON;
        tL_dataJSON.data = str;
        if (!TextUtils.isEmpty(this.joinHash)) {
            joingroupcall.invite_hash = this.joinHash;
            joingroupcall.flags |= 2;
        }
        TLRPC.InputPeer inputPeer = this.groupCallPeer;
        if (inputPeer != null) {
            joingroupcall.join_as = inputPeer;
        } else {
            TLRPC.TL_inputPeerUser tL_inputPeerUser = new TLRPC.TL_inputPeerUser();
            joingroupcall.join_as = tL_inputPeerUser;
            tL_inputPeerUser.user_id = AccountInstance.getInstance(this.currentAccount).getUserConfig().getClientUserId();
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(joingroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda44
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startConferenceGroupCall$54(i, z, str, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$36(int i) {
        this.mySource[0] = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$54(final int i, final boolean z, final String str, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$36(i);
                }
            });
            TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            long selfId = getSelfId();
            final ArrayList arrayListFindUpdatesAndRemove = MessagesController.findUpdatesAndRemove(updates, TL_update.TL_updateGroupCallChainBlocks.class);
            ArrayList arrayListFindUpdates = MessagesController.findUpdates(updates, TL_update.TL_updateGroupCall.class);
            int size = arrayListFindUpdates.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayListFindUpdates.get(i2);
                i2++;
                TLRPC.GroupCall groupCall = ((TL_update.TL_updateGroupCall) obj).call;
                ChatObject.Call call = this.groupCall;
                if (call != null) {
                    call.setCall(AccountInstance.getInstance(this.currentAccount), 0L, groupCall);
                }
                ConferenceCall conferenceCall = this.conference;
                if (conferenceCall != null) {
                    conferenceCall.groupCall = TlUtils.applyGroupCallUpdate(conferenceCall.groupCall, groupCall);
                }
            }
            ArrayList arrayListFindUpdates2 = MessagesController.findUpdates(updates, TL_update.TL_updateGroupCallParticipants.class);
            int size2 = arrayListFindUpdates2.size();
            int i3 = 0;
            while (i3 < size2) {
                Object obj2 = arrayListFindUpdates2.get(i3);
                i3++;
                TL_update.TL_updateGroupCallParticipants tL_updateGroupCallParticipants = (TL_update.TL_updateGroupCallParticipants) obj2;
                int size3 = tL_updateGroupCallParticipants.participants.size();
                int i4 = 0;
                while (true) {
                    if (i4 < size3) {
                        final TLRPC.GroupCallParticipant groupCallParticipant = tL_updateGroupCallParticipants.participants.get(i4);
                        if (MessageObject.getPeerId(groupCallParticipant.peer) == selfId) {
                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda12
                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.f$0.lambda$startConferenceGroupCall$37(groupCallParticipant);
                                }
                            });
                            if (BuildVars.LOGS_ENABLED) {
                                FileLog.m895d("join source = " + groupCallParticipant.source);
                            }
                        } else {
                            i4++;
                        }
                    }
                }
            }
            ArrayList arrayListFindUpdates3 = MessagesController.findUpdates(updates, TL_update.TL_updateGroupCallConnection.class);
            int size4 = arrayListFindUpdates3.size();
            int i5 = 0;
            while (i5 < size4) {
                Object obj3 = arrayListFindUpdates3.get(i5);
                i5++;
                TL_update.TL_updateGroupCallConnection tL_updateGroupCallConnection = (TL_update.TL_updateGroupCallConnection) obj3;
                if (!tL_updateGroupCallConnection.presentation) {
                    this.myParams = tL_updateGroupCallConnection.params;
                }
            }
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$52(arrayListFindUpdatesAndRemove, z);
                }
            });
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$53(tL_error, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$37(TLRPC.GroupCallParticipant groupCallParticipant) {
        this.mySource[0] = groupCallParticipant.source;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$52(ArrayList arrayList, boolean z) {
        final TL_phone.PhoneCall phoneCall;
        ConferenceCall conferenceCall = this.conference;
        if (conferenceCall == null) {
            return;
        }
        conferenceCall.joined();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            this.conference.applyUpdate(0, (TL_update.TL_updateGroupCallChainBlocks) obj, true, null);
        }
        this.conference.forcePoll();
        this.groupCall.loadMembers(z);
        startGroupCheckShortpoll();
        if (this.captureDevice[1] != 0) {
            createGroupInstance(1, false, true);
        }
        for (int i2 = 0; i2 < 2; i2++) {
            NativeInstance nativeInstance = this.tgVoip[i2];
            if (nativeInstance != null) {
                nativeInstance.setConferenceCallId(this.conference.getCallId());
            }
        }
        AndroidUtilities.runOnUIThread(this.destroyConvertingRunnable, 5000L);
        if (this.inviteUsersToConference != null && (phoneCall = this.privateCall) != null && this.groupCall != null) {
            final TL_phone.exportGroupCallInvite exportgroupcallinvite = new TL_phone.exportGroupCallInvite();
            TLRPC.TL_inputGroupCall tL_inputGroupCall = new TLRPC.TL_inputGroupCall();
            exportgroupcallinvite.call = tL_inputGroupCall;
            TLRPC.GroupCall groupCall = this.groupCall.call;
            tL_inputGroupCall.id = groupCall.id;
            tL_inputGroupCall.access_hash = groupCall.access_hash;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(exportgroupcallinvite, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda112
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$startConferenceGroupCall$45(phoneCall, exportgroupcallinvite, tLObject, tL_error);
                }
            });
        }
        long[] jArr = this.inviteUsers;
        if (jArr != null) {
            final String str = this.groupCall.call.invite_link;
            final int length = jArr.length;
            final AtomicInteger atomicInteger = new AtomicInteger(0);
            final HashSet hashSet = new HashSet();
            for (final long j : this.inviteUsers) {
                this.groupCall.addInvitedUser(j);
                TL_phone.inviteConferenceCallParticipant inviteconferencecallparticipant = new TL_phone.inviteConferenceCallParticipant();
                inviteconferencecallparticipant.call = this.groupCall.getInputGroupCall();
                inviteconferencecallparticipant.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(j);
                inviteconferencecallparticipant.video = this.videoCall;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(inviteconferencecallparticipant, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda113
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$startConferenceGroupCall$51(j, hashSet, atomicInteger, length, str, tLObject, tL_error);
                    }
                });
            }
            this.inviteUsers = null;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$45(final TL_phone.PhoneCall phoneCall, final TL_phone.exportGroupCallInvite exportgroupcallinvite, final TLObject tLObject, TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda115
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$44(tLObject, phoneCall, exportgroupcallinvite);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$44(TLObject tLObject, TL_phone.PhoneCall phoneCall, TL_phone.exportGroupCallInvite exportgroupcallinvite) {
        if (tLObject instanceof TL_phone.exportedGroupCallInvite) {
            TL_phone.exportedGroupCallInvite exportedgroupcallinvite = (TL_phone.exportedGroupCallInvite) tLObject;
            String str = Uri.parse(exportedgroupcallinvite.link).getPathSegments().get(r0.getPathSegments().size() - 1);
            TL_phone.discardCall discardcall = new TL_phone.discardCall();
            TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
            discardcall.peer = tL_inputPhoneCall;
            tL_inputPhoneCall.access_hash = phoneCall.access_hash;
            tL_inputPhoneCall.id = phoneCall.id;
            TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall tL_phoneCallDiscardReasonMigrateConferenceCall = new TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall();
            discardcall.reason = tL_phoneCallDiscardReasonMigrateConferenceCall;
            tL_phoneCallDiscardReasonMigrateConferenceCall.slug = str;
            discardcall.duration = (int) (getCallDuration() / 1000);
            discardcall.connection_id = 0L;
            discardcall.video = this.inviteUsersToConferenceVideo;
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(discardcall, null);
            final String str2 = exportedgroupcallinvite.link;
            final int size = this.inviteUsersToConference.size();
            final AtomicInteger atomicInteger = new AtomicInteger(0);
            final HashSet hashSet = new HashSet();
            Iterator<Long> it = this.inviteUsersToConference.iterator();
            while (it.hasNext()) {
                final long jLongValue = it.next().longValue();
                TL_phone.inviteConferenceCallParticipant inviteconferencecallparticipant = new TL_phone.inviteConferenceCallParticipant();
                inviteconferencecallparticipant.user_id = MessagesController.getInstance(this.currentAccount).getInputUser(jLongValue);
                inviteconferencecallparticipant.call = exportgroupcallinvite.call;
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(inviteconferencecallparticipant, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda66
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$startConferenceGroupCall$43(jLongValue, hashSet, atomicInteger, size, str2, tLObject2, tL_error);
                    }
                });
            }
            this.privateCall = null;
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$43(final long j, final HashSet hashSet, AtomicInteger atomicInteger, int i, final String str, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda105
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$38(updates, j);
                }
            });
        } else if (tL_error != null && "USER_PRIVACY_RESTRICTED".equalsIgnoreCase(tL_error.text)) {
            hashSet.add(Long.valueOf(j));
        }
        if (atomicInteger.incrementAndGet() != i || hashSet.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda106
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$42(hashSet, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$38(TLRPC.Updates updates, long j) {
        TLRPC.Update update = updates.update;
        int i = 0;
        if (update instanceof TL_update.TL_updateNewMessage) {
            TLRPC.Message message = ((TL_update.TL_updateNewMessage) update).message;
            if (message != null && (message.action instanceof TLRPC.TL_messageActionConferenceCall)) {
                i = message.id;
            }
        } else if (update instanceof TL_update.TL_updateMessageID) {
            i = ((TL_update.TL_updateMessageID) update).id;
        } else if (updates.updates != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= updates.updates.size()) {
                    break;
                }
                TLRPC.Update update2 = updates.updates.get(i2);
                if (update2 instanceof TL_update.TL_updateNewMessage) {
                    TLRPC.Message message2 = ((TL_update.TL_updateNewMessage) update2).message;
                    if (message2 != null && (message2.action instanceof TLRPC.TL_messageActionConferenceCall)) {
                        i = message2.id;
                        break;
                    }
                    i2++;
                } else {
                    if (update2 instanceof TL_update.TL_updateMessageID) {
                        i = ((TL_update.TL_updateMessageID) update2).id;
                        break;
                    }
                    i2++;
                }
            }
        }
        ChatObject.Call call = this.groupCall;
        if (call == null || i == 0) {
            return;
        }
        call.invitedUsersMessageIds.put(Long.valueOf(j), ChatObject.Call.InvitedUser.make(i));
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$42(HashSet hashSet, final String str) {
        TL_account.getRequirementsToContact getrequirementstocontact = new TL_account.getRequirementsToContact();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            long jLongValue = l.longValue();
            ChatObject.Call call = this.groupCall;
            if (call != null) {
                call.removeInvitedUser(jLongValue);
            }
            arrayList.add(MessagesController.getInstance(this.currentAccount).getUser(l));
            getrequirementstocontact.id.add(MessagesController.getInstance(this.currentAccount).getInputUser(jLongValue));
        }
        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$39(arrayList, arrayList2, arrayList3, str);
            }
        };
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            runnable.run();
        } else {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getrequirementstocontact, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda32
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda116
                        @Override // java.lang.Runnable
                        public final void run() {
                            VoIPService.$r8$lambda$P8XeT5XImmvS6mi6z5zzcp8LAVk(tLObject, arrayList, arrayList, runnable);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$39(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(safeLastFragment, safeLastFragment.getContext(), 34, this.currentAccount, new DarkBlueThemeResourcesProvider());
        limitReachedBottomSheet.setRestrictedUsers(null, arrayList, arrayList2, arrayList3, str);
        limitReachedBottomSheet.show();
    }

    public static /* synthetic */ void $r8$lambda$P8XeT5XImmvS6mi6z5zzcp8LAVk(TLObject tLObject, ArrayList arrayList, ArrayList arrayList2, Runnable runnable) {
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            for (int i = 0; i < Math.min(arrayList.size(), vector.objects.size()); i++) {
                if (vector.objects.get(i) instanceof TL_account.requirementToContactPremium) {
                    arrayList2.add(Long.valueOf(((TLRPC.User) arrayList.get(i)).id));
                }
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$51(final long j, final HashSet hashSet, AtomicInteger atomicInteger, int i, final String str, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.Updates) {
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda39
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startConferenceGroupCall$46(updates, j);
                }
            });
        } else if (tL_error != null && "USER_PRIVACY_RESTRICTED".equalsIgnoreCase(tL_error.text)) {
            hashSet.add(Long.valueOf(j));
        }
        if (atomicInteger.incrementAndGet() != i || hashSet.isEmpty()) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda40
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$50(hashSet, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$46(TLRPC.Updates updates, long j) {
        TLRPC.Update update = updates.update;
        int i = 0;
        if (update instanceof TL_update.TL_updateNewMessage) {
            TLRPC.Message message = ((TL_update.TL_updateNewMessage) update).message;
            if (message != null && (message.action instanceof TLRPC.TL_messageActionConferenceCall)) {
                i = message.id;
            }
        } else if (update instanceof TL_update.TL_updateMessageID) {
            i = ((TL_update.TL_updateMessageID) update).id;
        } else if (updates.updates != null) {
            int i2 = 0;
            while (true) {
                if (i2 >= updates.updates.size()) {
                    break;
                }
                TLRPC.Update update2 = updates.updates.get(i2);
                if (update2 instanceof TL_update.TL_updateNewMessage) {
                    TLRPC.Message message2 = ((TL_update.TL_updateNewMessage) update2).message;
                    if (message2 != null && (message2.action instanceof TLRPC.TL_messageActionConferenceCall)) {
                        i = message2.id;
                        break;
                    }
                    i2++;
                } else {
                    if (update2 instanceof TL_update.TL_updateMessageID) {
                        i = ((TL_update.TL_updateMessageID) update2).id;
                        break;
                    }
                    i2++;
                }
            }
        }
        ChatObject.Call call = this.groupCall;
        if (call == null || i == 0) {
            return;
        }
        call.invitedUsersMessageIds.put(Long.valueOf(j), ChatObject.Call.InvitedUser.make(i));
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$50(HashSet hashSet, final String str) {
        TL_account.getRequirementsToContact getrequirementstocontact = new TL_account.getRequirementsToContact();
        final ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Long l = (Long) it.next();
            long jLongValue = l.longValue();
            ChatObject.Call call = this.groupCall;
            if (call != null) {
                call.removeInvitedUser(jLongValue);
            }
            arrayList.add(MessagesController.getInstance(this.currentAccount).getUser(l));
            getrequirementstocontact.id.add(MessagesController.getInstance(this.currentAccount).getInputUser(jLongValue));
        }
        final Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda108
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConferenceGroupCall$47(arrayList, arrayList2, arrayList3, str);
            }
        };
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            runnable.run();
        } else {
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getrequirementstocontact, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda109
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            VoIPService.m6444$r8$lambda$PaPBzqvxL3xvJckB30htjhFQH0(tLObject, arrayList, arrayList, runnable);
                        }
                    });
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$47(ArrayList arrayList, ArrayList arrayList2, ArrayList arrayList3, String str) {
        BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
        if (safeLastFragment == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(safeLastFragment, safeLastFragment.getContext(), 34, this.currentAccount, new DarkBlueThemeResourcesProvider());
        limitReachedBottomSheet.setRestrictedUsers(null, arrayList, arrayList2, arrayList3, str);
        limitReachedBottomSheet.show();
    }

    /* JADX INFO: renamed from: $r8$lambda$PaP-BzqvxL3xvJckB30htjhFQH0, reason: not valid java name */
    public static /* synthetic */ void m6444$r8$lambda$PaPBzqvxL3xvJckB30htjhFQH0(TLObject tLObject, ArrayList arrayList, ArrayList arrayList2, Runnable runnable) {
        if (tLObject instanceof Vector) {
            Vector vector = (Vector) tLObject;
            for (int i = 0; i < Math.min(arrayList.size(), vector.objects.size()); i++) {
                if (vector.objects.get(i) instanceof TL_account.requirementToContactPremium) {
                    arrayList2.add(Long.valueOf(((TLRPC.User) arrayList.get(i)).id));
                }
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$53(TLRPC.TL_error tL_error, String str) {
        if ("JOIN_AS_PEER_INVALID".equals(tL_error.text)) {
            hangUp(2);
            return;
        }
        if ("GROUPCALL_SSRC_DUPLICATE_MUCH".equals(tL_error.text)) {
            startConferenceGroupCall(false, 0, str, false);
            return;
        }
        if (tL_error.text.startsWith("CONF_WRITE_CHAIN_INVALID")) {
            stopSelf();
            return;
        }
        if ("GROUPCALL_INVALID".equals(tL_error.text)) {
            BaseFragment safeLastFragment = LaunchActivity.getSafeLastFragment();
            if (safeLastFragment != null) {
                BulletinFactory.of(safeLastFragment).createSimpleBulletin(C2573R.raw.linkbroken, getString(C2573R.string.ConferenceClosed)).show().hideAfterBottomSheet = false;
            }
            hangUp(0);
            return;
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.needShowAlert, 6, tL_error.text);
        hangUp(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConferenceGroupCall$56(Runnable runnable) {
        ConferenceCall conferenceCall = this.conference;
        if (conferenceCall == null) {
            return;
        }
        conferenceCall.generateAddSelfBlock();
        runnable.run();
        for (int i = 0; i < 2; i++) {
            NativeInstance nativeInstance = this.tgVoip[i];
            if (nativeInstance != null) {
                nativeInstance.setConferenceCallId(this.conference.getCallId());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void destroyConverting() {
        AndroidUtilities.cancelRunOnUIThread(this.destroyConvertingRunnable);
        if (this.convertingVoip == null) {
            return;
        }
        FileLog.m897e("destroyConverting!!", new Exception());
        this.callStartTime = 0L;
        StatsController.getInstance(this.currentAccount).incrementTotalCallsTime(getStatsNetworkType(), ((int) (getCallDuration() / 1000)) % 5);
        onTgVoipPreStop();
        Instance.FinalState finalStateStop = this.convertingVoip.stop();
        updateTrafficStats(this.convertingVoip, finalStateStop.trafficStats);
        onTgVoipStop(finalStateStop);
        Instance.destroyInstance();
        this.convertingVoip = null;
        for (int i = 0; i < this.stateListeners.size(); i++) {
            this.stateListeners.get(i).onStateChanged(getCallState());
        }
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance != null) {
            nativeInstance.setMuteMicrophone(this.micMute);
        }
    }

    private void startScreenCapture(final int i, String str) {
        if (getSharedInstance() == null || this.groupCall == null) {
            return;
        }
        this.mySource[1] = 0;
        TL_phone.joinGroupCallPresentation joingroupcallpresentation = new TL_phone.joinGroupCallPresentation();
        joingroupcallpresentation.call = this.groupCall.getInputGroupCall();
        TLRPC.TL_dataJSON tL_dataJSON = new TLRPC.TL_dataJSON();
        joingroupcallpresentation.params = tL_dataJSON;
        tL_dataJSON.data = str;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(joingroupcallpresentation, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda132
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$startScreenCapture$60(i, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startScreenCapture$57(int i) {
        this.mySource[1] = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startScreenCapture$60(final int i, TLObject tLObject, final TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda68
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startScreenCapture$57(i);
                }
            });
            final TLRPC.Updates updates = (TLRPC.Updates) tLObject;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda69
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$startScreenCapture$58(updates);
                }
            });
            MessagesController.getInstance(this.currentAccount).processUpdates(updates, false);
            startGroupCheckShortpoll();
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda70
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startScreenCapture$59(tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startScreenCapture$58(TLRPC.Updates updates) {
        if (this.tgVoip[1] != null) {
            long selfId = getSelfId();
            int size = updates.updates.size();
            for (int i = 0; i < size; i++) {
                TLRPC.Update update = updates.updates.get(i);
                if (update instanceof TL_update.TL_updateGroupCallConnection) {
                    TL_update.TL_updateGroupCallConnection tL_updateGroupCallConnection = (TL_update.TL_updateGroupCallConnection) update;
                    if (tL_updateGroupCallConnection.presentation) {
                        this.tgVoip[1].setJoinResponsePayload(tL_updateGroupCallConnection.params.data);
                    }
                } else if (update instanceof TL_update.TL_updateGroupCallParticipants) {
                    TL_update.TL_updateGroupCallParticipants tL_updateGroupCallParticipants = (TL_update.TL_updateGroupCallParticipants) update;
                    int size2 = tL_updateGroupCallParticipants.participants.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 < size2) {
                            TLRPC.GroupCallParticipant groupCallParticipant = tL_updateGroupCallParticipants.participants.get(i2);
                            if (MessageObject.getPeerId(groupCallParticipant.peer) == selfId) {
                                TLRPC.TL_groupCallParticipantVideo tL_groupCallParticipantVideo = groupCallParticipant.presentation;
                                if (tL_groupCallParticipantVideo != null) {
                                    if ((tL_groupCallParticipantVideo.flags & 2) != 0) {
                                        this.mySource[1] = tL_groupCallParticipantVideo.audio_source;
                                    } else {
                                        int size3 = tL_groupCallParticipantVideo.source_groups.size();
                                        for (int i3 = 0; i3 < size3; i3++) {
                                            TLRPC.TL_groupCallParticipantVideoSourceGroup tL_groupCallParticipantVideoSourceGroup = groupCallParticipant.presentation.source_groups.get(i3);
                                            if (tL_groupCallParticipantVideoSourceGroup.sources.size() > 0) {
                                                this.mySource[1] = tL_groupCallParticipantVideoSourceGroup.sources.get(0).intValue();
                                            }
                                        }
                                    }
                                }
                            } else {
                                i2++;
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startScreenCapture$59(TLRPC.TL_error tL_error) {
        TLRPC.ChatFull chatFull;
        if ("GROUPCALL_VIDEO_TOO_MUCH".equals(tL_error.text)) {
            this.groupCall.reloadGroupCall();
            return;
        }
        if ("JOIN_AS_PEER_INVALID".equals(tL_error.text)) {
            if (this.chat != null && (chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.chat.id)) != null) {
                boolean z = chatFull instanceof TLRPC.TL_chatFull;
                int i = chatFull.flags;
                if (z) {
                    chatFull.flags = (-32769) & i;
                } else {
                    chatFull.flags = (-67108865) & i;
                }
                chatFull.groupcall_default_join_as = null;
                JoinCallAlert.resetCache();
            }
            hangUp(2);
            return;
        }
        if ("GROUPCALL_SSRC_DUPLICATE_MUCH".equals(tL_error.text)) {
            createGroupInstance(1, false, false);
        } else {
            if (!"GROUPCALL_INVALID".equals(tL_error.text) || this.chat == null) {
                return;
            }
            MessagesController.getInstance(this.currentAccount).loadFullChat(this.chat.id, 0, true);
        }
    }

    private void startGroupCheckShortpoll() {
        ChatObject.Call call;
        TLRPC.GroupCall groupCall;
        if (this.shortPollRunnable != null || sharedInstance == null || (call = this.groupCall) == null) {
            return;
        }
        int[] iArr = this.mySource;
        if (iArr[0] == 0 && iArr[1] == 0 && ((groupCall = call.call) == null || !groupCall.rtmp_stream)) {
            return;
        }
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda61
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startGroupCheckShortpoll$65();
            }
        };
        this.shortPollRunnable = runnable;
        AndroidUtilities.runOnUIThread(runnable, 4000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCheckShortpoll$65() {
        ChatObject.Call call;
        TLRPC.GroupCall groupCall;
        if (this.shortPollRunnable == null || sharedInstance == null || (call = this.groupCall) == null) {
            return;
        }
        int[] iArr = this.mySource;
        int i = 0;
        if (iArr[0] == 0 && iArr[1] == 0 && ((groupCall = call.call) == null || !groupCall.rtmp_stream)) {
            return;
        }
        final TL_phone.checkGroupCall checkgroupcall = new TL_phone.checkGroupCall();
        TLRPC.InputGroupCall inputGroupCall = this.groupCall.getInputGroupCall(true);
        ChatObject.Call call2 = this.groupCall;
        if (inputGroupCall != null) {
            checkgroupcall.call = call2.getInputGroupCall(true);
        } else {
            checkgroupcall.call = call2.getInputGroupCall(false);
        }
        while (true) {
            int[] iArr2 = this.mySource;
            if (i < iArr2.length) {
                int i2 = iArr2[i];
                if (i2 != 0) {
                    checkgroupcall.sources.add(Integer.valueOf(i2));
                }
                i++;
            } else {
                this.checkRequestId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(checkgroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda104
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                        this.f$0.lambda$startGroupCheckShortpoll$64(checkgroupcall, tLObject, tL_error);
                    }
                });
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCheckShortpoll$64(final TL_phone.checkGroupCall checkgroupcall, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda89
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startGroupCheckShortpoll$63(tL_error, tLObject, checkgroupcall);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCheckShortpoll$63(TLRPC.TL_error tL_error, TLObject tLObject, TL_phone.checkGroupCall checkgroupcall) {
        boolean z;
        boolean z2;
        TLRPC.GroupCall groupCall;
        if (this.shortPollRunnable == null || sharedInstance == null || this.groupCall == null) {
            return;
        }
        if (this.conference != null && tL_error != null && "GROUPCALL_INVALID".equalsIgnoreCase(tL_error.text) && this.groupCall.getInputGroupCall(true) != null && this.groupCall.getInputGroupCall(false) != null) {
            TL_phone.getGroupCall getgroupcall = new TL_phone.getGroupCall();
            getgroupcall.call = this.groupCall.getInputGroupCall(false);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getgroupcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda41
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$startGroupCheckShortpoll$62(tLObject2, tL_error2);
                }
            });
            return;
        }
        this.shortPollRunnable = null;
        this.checkRequestId = 0;
        if (tLObject instanceof Vector) {
            ArrayList<Integer> intArray = ((Vector) tLObject).toIntArray();
            int i = this.mySource[0];
            z2 = (i == 0 || !checkgroupcall.sources.contains(Integer.valueOf(i)) || intArray.contains(Integer.valueOf(this.mySource[0]))) ? false : true;
            int i2 = this.mySource[1];
            z = (i2 == 0 || !checkgroupcall.sources.contains(Integer.valueOf(i2)) || intArray.contains(Integer.valueOf(this.mySource[1]))) ? false : true;
        } else {
            if (tL_error == null || tL_error.code != 400) {
                z = false;
            } else {
                int i3 = this.mySource[1];
                if (i3 == 0 || !checkgroupcall.sources.contains(Integer.valueOf(i3))) {
                    z2 = true;
                } else {
                    z = true;
                }
            }
            z2 = z;
        }
        if (z2) {
            createGroupInstance(0, false, false);
        }
        if (z) {
            createGroupInstance(1, false, false);
        }
        int[] iArr = this.mySource;
        if (iArr[1] == 0 && iArr[0] == 0 && ((groupCall = this.groupCall.call) == null || !groupCall.rtmp_stream)) {
            return;
        }
        startGroupCheckShortpoll();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCheckShortpoll$62(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda123
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startGroupCheckShortpoll$61(tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startGroupCheckShortpoll$61(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (this.shortPollRunnable == null || sharedInstance == null || this.groupCall == null) {
            return;
        }
        if (tLObject instanceof TL_phone.groupCall) {
            TL_phone.groupCall groupcall = (TL_phone.groupCall) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(groupcall.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(groupcall.chats, false);
            this.groupCall.setCall(AccountInstance.getInstance(this.currentAccount), 0L, groupcall.call);
            this.groupCall.loadMembers(true);
            this.shortPollRunnable = null;
            this.checkRequestId = 0;
            startGroupCheckShortpoll();
            return;
        }
        if (tL_error == null || !"GROUPCALL_INVALID".equalsIgnoreCase(tL_error.text)) {
            return;
        }
        stopSelf();
    }

    private void cancelGroupCheckShortPoll() {
        int[] iArr = this.mySource;
        if (iArr[1] == 0 && iArr[0] == 0) {
            if (this.checkRequestId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.checkRequestId, false);
                this.checkRequestId = 0;
            }
            Runnable runnable = this.shortPollRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.shortPollRunnable = null;
            }
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class RequestedParticipant {
        public int audioSsrc;
        public TLRPC.GroupCallParticipant participant;
        public long userId;

        public RequestedParticipant(TLRPC.GroupCallParticipant groupCallParticipant, int i) {
            this.participant = groupCallParticipant;
            this.audioSsrc = i;
            this.userId = groupCallParticipant == null ? 0L : DialogObject.getPeerDialogId(groupCallParticipant.peer);
        }
    }

    private void broadcastUnknownParticipants(long j, int[] iArr) {
        if (this.groupCall == null || this.tgVoip[0] == null) {
            return;
        }
        long selfId = getSelfId();
        int length = iArr.length;
        ArrayList arrayList = null;
        for (int i = 0; i < length; i++) {
            TLRPC.GroupCallParticipant groupCallParticipant = this.groupCall.participantsBySources.get(iArr[i]);
            if (groupCallParticipant == null && (groupCallParticipant = this.groupCall.participantsByVideoSources.get(iArr[i])) == null) {
                groupCallParticipant = this.groupCall.participantsByPresentationSources.get(iArr[i]);
            }
            if (groupCallParticipant != null && MessageObject.getPeerId(groupCallParticipant.peer) != selfId && groupCallParticipant.source != 0) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(new RequestedParticipant(groupCallParticipant, iArr[i]));
            }
        }
        if (arrayList != null) {
            this.tgVoip[0].onMediaDescriptionAvailable(j, (RequestedParticipant[]) arrayList.toArray(new RequestedParticipant[0]));
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                RequestedParticipant requestedParticipant = (RequestedParticipant) arrayList.get(i2);
                TLRPC.GroupCallParticipant groupCallParticipant2 = requestedParticipant.participant;
                boolean z = groupCallParticipant2.muted_by_you;
                NativeInstance[] nativeInstanceArr = this.tgVoip;
                if (z) {
                    nativeInstanceArr[0].setVolume(requestedParticipant.audioSsrc, 0.0d);
                } else {
                    nativeInstanceArr[0].setVolume(requestedParticipant.audioSsrc, ((double) ChatObject.getParticipantVolume(groupCallParticipant2)) / 10000.0d);
                }
            }
        }
    }

    private void createGroupInstance(final int i, boolean z, boolean z2) {
        int i2;
        boolean z3;
        String str;
        String logFilePath;
        if (z) {
            this.mySource[i] = 0;
            if (i == 0) {
                this.switchingAccount = z;
            }
        }
        cancelGroupCheckShortPoll();
        if (i == 0) {
            this.wasConnected = false;
        } else if (!this.wasConnected) {
            this.reconnectScreenCapture = true;
            return;
        }
        if (this.tgVoip[i] == null) {
            if (this.groupCall != null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET + this.groupCall.call.id;
            } else {
                TLRPC.InputGroupCall inputGroupCall = this.joinConference;
                if (inputGroupCall instanceof TLRPC.TL_inputGroupCallSlug) {
                    str = inputGroupCall.slug;
                } else if (inputGroupCall instanceof TLRPC.TL_inputGroupCall) {
                    str = _UrlKt.FRAGMENT_ENCODE_SET + this.joinConference.id;
                } else {
                    str = MVEL.VERSION_SUB;
                }
            }
            final boolean[] zArr = {z2};
            if (BuildVars.DEBUG_VERSION) {
                logFilePath = VoIPHelper.getLogFilePath("voip_" + i + "_" + str);
            } else {
                logFilePath = VoIPHelper.getLogFilePath(str, false);
            }
            i2 = 1;
            this.tgVoip[i] = NativeInstance.makeGroup(logFilePath, this.captureDevice[i], i == 1, i == 0 && SharedConfig.noiseSupression, new NativeInstance.PayloadCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda75
                @Override // org.telegram.messenger.voip.NativeInstance.PayloadCallback
                public final void run(int i3, String str2) {
                    this.f$0.lambda$createGroupInstance$66(i, zArr, i3, str2);
                }
            }, new NativeInstance.AudioLevelsCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda76
                @Override // org.telegram.messenger.voip.NativeInstance.AudioLevelsCallback
                public final void run(int[] iArr, float[] fArr, boolean[] zArr2) {
                    this.f$0.lambda$createGroupInstance$68(i, iArr, fArr, zArr2);
                }
            }, new NativeInstance.VideoSourcesCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda77
                @Override // org.telegram.messenger.voip.NativeInstance.VideoSourcesCallback
                public final void run(long j, int[] iArr) {
                    this.f$0.lambda$createGroupInstance$70(i, j, iArr);
                }
            }, new NativeInstance.RequestBroadcastPartCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda78
                @Override // org.telegram.messenger.voip.NativeInstance.RequestBroadcastPartCallback
                public final void run(long j, long j2, int i3, int i4) {
                    this.f$0.lambda$createGroupInstance$75(i, j, j2, i3, i4);
                }
            }, new NativeInstance.RequestBroadcastPartCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda79
                @Override // org.telegram.messenger.voip.NativeInstance.RequestBroadcastPartCallback
                public final void run(long j, long j2, int i3, int i4) {
                    this.f$0.lambda$createGroupInstance$77(i, j, j2, i3, i4);
                }
            }, new NativeInstance.RequestCurrentTimeCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda80
                @Override // org.telegram.messenger.voip.NativeInstance.RequestCurrentTimeCallback
                public final void run(long j) {
                    this.f$0.lambda$createGroupInstance$79(i, j);
                }
            }, this.conference != null);
            this.tgVoip[i].setOnStateUpdatedListener(new Instance.OnStateUpdatedListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda81
                @Override // org.telegram.messenger.voip.Instance.OnStateUpdatedListener
                public final void onStateUpdated(int i3, boolean z4) {
                    this.f$0.lambda$createGroupInstance$80(i, i3, z4);
                }
            });
            z3 = true;
        } else {
            i2 = 1;
            z3 = false;
        }
        this.tgVoip[i].resetGroupInstance(!z3, false);
        ConferenceCall conferenceCall = this.conference;
        if (conferenceCall != null && conferenceCall.getCallId() != -1) {
            this.tgVoip[i].setConferenceCallId(this.conference.getCallId());
        }
        if (this.captureDevice[i] != 0) {
            this.destroyCaptureDevice[i] = false;
        }
        if (i == 0) {
            dispatchStateChanged(i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$66(int i, boolean[] zArr, int i2, String str) {
        if (i == 0) {
            if (this.conference != null) {
                startConferenceGroupCall(false, i2, str, !zArr[0]);
            } else {
                startGroupCall(i2, str, true);
            }
            zArr[0] = false;
            return;
        }
        startScreenCapture(i2, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$68(int i, int[] iArr, float[] fArr, boolean[] zArr) {
        ChatObject.Call call;
        if (sharedInstance == null || (call = this.groupCall) == null || i != 0) {
            return;
        }
        call.processVoiceLevelsUpdate(iArr, fArr, zArr);
        float fMax = 0.0f;
        boolean z = false;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] == 0) {
                if (this.chat != null && this.lastTypingTimeSend < SystemClock.uptimeMillis() - 5000 && fArr[i2] > 0.1f && zArr[i2]) {
                    this.lastTypingTimeSend = SystemClock.uptimeMillis();
                    TLRPC.TL_messages_setTyping tL_messages_setTyping = new TLRPC.TL_messages_setTyping();
                    tL_messages_setTyping.action = new TLRPC.TL_speakingInGroupCallAction();
                    tL_messages_setTyping.peer = MessagesController.getInputPeer(this.chat);
                    ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_setTyping, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda85
                        @Override // org.telegram.tgnet.RequestDelegate
                        public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                            VoIPService.$r8$lambda$ihf_TgQlMZ9hVpHd61S65tYUha4(tLObject, tL_error);
                        }
                    });
                }
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.webRtcMicAmplitudeEvent, Float.valueOf(fArr[i2]));
            } else {
                fMax = Math.max(fMax, fArr[i2]);
                z = true;
            }
        }
        if (z) {
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.webRtcSpeakerAmplitudeEvent, Float.valueOf(fMax));
            NativeInstance.AudioLevelsCallback audioLevelsCallback2 = audioLevelsCallback;
            if (audioLevelsCallback2 != null) {
                audioLevelsCallback2.run(iArr, fArr, zArr);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$70(int i, final long j, final int[] iArr) {
        ChatObject.Call call;
        if (sharedInstance == null || (call = this.groupCall) == null || i != 0) {
            return;
        }
        call.processUnknownVideoParticipants(iArr, new ChatObject.Call.OnParticipantsLoad() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda122
            @Override // org.telegram.messenger.ChatObject.Call.OnParticipantsLoad
            public final void onLoad(ArrayList arrayList) {
                this.f$0.lambda$createGroupInstance$69(j, iArr, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$69(long j, int[] iArr, ArrayList arrayList) {
        if (sharedInstance == null || this.groupCall == null) {
            return;
        }
        broadcastUnknownParticipants(j, iArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$75(final int i, final long j, long j2, final int i2, final int i3) {
        StringBuilder sb;
        if (i != 0) {
            return;
        }
        TLRPC.TL_upload_getFile tL_upload_getFile = new TLRPC.TL_upload_getFile();
        tL_upload_getFile.limit = 131072;
        TLRPC.TL_inputGroupCallStream tL_inputGroupCallStream = new TLRPC.TL_inputGroupCallStream();
        tL_inputGroupCallStream.call = this.groupCall.getInputGroupCall();
        tL_inputGroupCallStream.time_ms = j;
        if (j2 == 500) {
            tL_inputGroupCallStream.scale = 1;
        }
        if (i2 != 0) {
            tL_inputGroupCallStream.flags |= 1;
            tL_inputGroupCallStream.video_channel = i2;
            tL_inputGroupCallStream.video_quality = i3;
        }
        tL_upload_getFile.location = tL_inputGroupCallStream;
        if (i2 == 0) {
            sb = new StringBuilder(_UrlKt.FRAGMENT_ENCODE_SET);
            sb.append(j);
        } else {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append("_");
            sb.append(j);
            sb.append("_");
            sb.append(i3);
        }
        final String string = sb.toString();
        final int iSendRequest = AccountInstance.getInstance(this.currentAccount).getConnectionsManager().sendRequest(tL_upload_getFile, new RequestDelegateTimestamp() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda16
            @Override // org.telegram.tgnet.RequestDelegateTimestamp
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error, long j3) {
                this.f$0.lambda$createGroupInstance$73(string, i, j, i2, i3, tLObject, tL_error, j3);
            }
        }, 65536, 2, this.groupCall.call.stream_dc_id);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createGroupInstance$74(string, iSendRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$71(String str) {
        this.currentStreamRequestTimestamp.remove(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$73(final String str, final int i, long j, int i2, int i3, TLObject tLObject, TLRPC.TL_error tL_error, long j2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda47
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createGroupInstance$71(str);
            }
        });
        NativeInstance nativeInstance = this.tgVoip[i];
        if (nativeInstance == null) {
            return;
        }
        if (tLObject != null) {
            NativeByteBuffer nativeByteBuffer = ((TLRPC.TL_upload_file) tLObject).bytes;
            nativeInstance.onStreamPartAvailable(j, nativeByteBuffer.buffer, nativeByteBuffer.limit(), j2, i2, i3);
        } else if ("GROUPCALL_JOIN_MISSING".equals(tL_error.text)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda48
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$createGroupInstance$72(i);
                }
            });
        } else {
            this.tgVoip[i].onStreamPartAvailable(j, null, ("TIME_TOO_BIG".equals(tL_error.text) || tL_error.text.startsWith("FLOOD_WAIT")) ? 0 : -1, j2, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$72(int i) {
        createGroupInstance(i, false, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$74(String str, int i) {
        this.currentStreamRequestTimestamp.put(str, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$77(int i, final long j, long j2, final int i2, final int i3) {
        if (i != 0) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda107
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createGroupInstance$76(i2, j, i3);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$76(int i, long j, int i2) {
        String str;
        if (i == 0) {
            str = _UrlKt.FRAGMENT_ENCODE_SET + j;
        } else {
            str = i + "_" + j + "_" + i2;
        }
        Integer num = this.currentStreamRequestTimestamp.get(str);
        if (num != null) {
            AccountInstance.getInstance(this.currentAccount).getConnectionsManager().cancelRequest(num.intValue(), true);
            this.currentStreamRequestTimestamp.remove(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$79(final int i, final long j) {
        TLRPC.GroupCall groupCall;
        ChatObject.Call call = this.groupCall;
        if (call != null && (groupCall = call.call) != null && groupCall.rtmp_stream) {
            TL_phone.getGroupCallStreamChannels getgroupcallstreamchannels = new TL_phone.getGroupCallStreamChannels();
            getgroupcallstreamchannels.call = this.groupCall.getInputGroupCall();
            ChatObject.Call call2 = this.groupCall;
            if (call2 == null || call2.call == null || this.tgVoip[i] == null) {
                NativeInstance nativeInstance = this.tgVoip[i];
                if (nativeInstance != null) {
                    nativeInstance.onRequestTimeComplete(j, 0L);
                    return;
                }
                return;
            }
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(getgroupcallstreamchannels, new RequestDelegateTimestamp() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda35
                @Override // org.telegram.tgnet.RequestDelegateTimestamp
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error, long j2) {
                    this.f$0.lambda$createGroupInstance$78(i, j, tLObject, tL_error, j2);
                }
            }, 65536, 2, this.groupCall.call.stream_dc_id);
            return;
        }
        NativeInstance nativeInstance2 = this.tgVoip[i];
        if (nativeInstance2 != null) {
            nativeInstance2.onRequestTimeComplete(j, ConnectionsManager.getInstance(this.currentAccount).getCurrentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createGroupInstance$78(int i, long j, TLObject tLObject, TLRPC.TL_error tL_error, long j2) {
        if (tL_error == null) {
            TL_phone.groupCallStreamChannels groupcallstreamchannels = (TL_phone.groupCallStreamChannels) tLObject;
            j = groupcallstreamchannels.channels.isEmpty() ? 0L : groupcallstreamchannels.channels.get(0).last_timestamp_ms;
            ChatObject.Call call = this.groupCall;
            if (!call.loadedRtmpStreamParticipant) {
                call.createRtmpStreamParticipant(groupcallstreamchannels.channels);
                this.groupCall.loadedRtmpStreamParticipant = true;
            }
        }
        NativeInstance nativeInstance = this.tgVoip[i];
        if (nativeInstance != null) {
            nativeInstance.onRequestTimeComplete(j, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateConnectionState, reason: merged with bridge method [inline-methods] */
    public void lambda$createGroupInstance$80(final int i, int i2, boolean z) {
        if (i != 0) {
            return;
        }
        dispatchStateChanged((i2 == 1 || this.switchingStream) ? 3 : 5);
        if (this.switchingStream && (i2 == 0 || (i2 == 1 && z))) {
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda95
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateConnectionState$81(i);
                }
            };
            this.switchingStreamTimeoutRunnable = runnable;
            AndroidUtilities.runOnUIThread(runnable, 3000L);
        }
        if (i2 == 0) {
            startGroupCheckShortpoll();
            if (!this.playedConnectedSound || this.spPlayId != 0 || this.switchingStream || this.switchingAccount) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda96
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateConnectionState$82();
                }
            });
            return;
        }
        cancelGroupCheckShortPoll();
        if (!z) {
            this.switchingStream = false;
            this.switchingAccount = false;
        }
        Runnable runnable2 = this.switchingStreamTimeoutRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.switchingStreamTimeoutRunnable = null;
        }
        if (this.playedConnectedSound) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda97
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$updateConnectionState$83();
                }
            });
            Runnable runnable3 = this.connectingSoundRunnable;
            if (runnable3 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable3);
                this.connectingSoundRunnable = null;
            }
        } else {
            playConnectedSound();
        }
        if (this.wasConnected) {
            return;
        }
        this.wasConnected = true;
        if (this.reconnectScreenCapture) {
            createGroupInstance(1, false, true);
            this.reconnectScreenCapture = false;
        }
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance != null && !this.micMute) {
            nativeInstance.setMuteMicrophone(false);
        }
        setParticipantsVolume();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateConnectionState$81(int i) {
        if (this.switchingStreamTimeoutRunnable == null) {
            return;
        }
        this.switchingStream = false;
        lambda$createGroupInstance$80(i, 0, true);
        this.switchingStreamTimeoutRunnable = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateConnectionState$82() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
        }
        this.spPlayId = this.soundPool.play(this.spVoiceChatConnecting, 1.0f, 1.0f, 0, -1, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateConnectionState$83() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
            this.spPlayId = 0;
        }
    }

    public void setParticipantsVolume() {
        if (this.tgVoip[0] != null) {
            int size = this.groupCall.participants.size();
            for (int i = 0; i < size; i++) {
                TLRPC.GroupCallParticipant groupCallParticipantValueAt = this.groupCall.participants.valueAt(i);
                if (!groupCallParticipantValueAt.self && groupCallParticipantValueAt.source != 0 && (groupCallParticipantValueAt.can_self_unmute || !groupCallParticipantValueAt.muted)) {
                    if (groupCallParticipantValueAt.muted_by_you) {
                        setParticipantVolume(groupCallParticipantValueAt, 0);
                    } else {
                        setParticipantVolume(groupCallParticipantValueAt, ChatObject.getParticipantVolume(groupCallParticipantValueAt));
                    }
                }
            }
        }
    }

    public void setParticipantVolume(TLRPC.GroupCallParticipant groupCallParticipant, int i) {
        int i2;
        double d = ((double) i) / 10000.0d;
        this.tgVoip[0].setVolume(groupCallParticipant.source, d);
        TLRPC.TL_groupCallParticipantVideo tL_groupCallParticipantVideo = groupCallParticipant.presentation;
        if (tL_groupCallParticipantVideo == null || (i2 = tL_groupCallParticipantVideo.audio_source) == 0) {
            return;
        }
        this.tgVoip[0].setVolume(i2, d);
    }

    public boolean isSwitchingStream() {
        return this.switchingStream;
    }

    /* JADX WARN: Removed duplicated region for block: B:119:0x03b6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x02b5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void initiateActualEncryptedCall() {
        SharedPreferences notificationsSettings;
        HashSet hashSet;
        int i;
        boolean zIsAvailable;
        boolean zIsAvailable2;
        Instance.Proxy proxy;
        Runnable runnable = this.timeoutRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.timeoutRunnable = null;
        }
        try {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("InitCall: keyID=" + this.keyFingerprint);
            }
            notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
            Set<String> stringSet = notificationsSettings.getStringSet("calls_access_hashes", null);
            if (stringSet != null) {
                hashSet = new HashSet(stringSet);
            } else {
                hashSet = new HashSet();
            }
            hashSet.add(this.privateCall.id + " " + this.privateCall.access_hash + " " + System.currentTimeMillis());
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
            }
            callFailed();
            return;
        }
        while (true) {
            i = 2;
            if (hashSet.size() <= 20) {
                break;
            }
            Iterator it = hashSet.iterator();
            long j = LongCompanionObject.MAX_VALUE;
            String str = null;
            while (it.hasNext()) {
                String str2 = (String) it.next();
                String[] strArrSplit = str2.split(" ");
                if (strArrSplit.length < 2) {
                    it.remove();
                } else {
                    try {
                        long j2 = Long.parseLong(strArrSplit[2]);
                        if (j2 < j) {
                            str = str2;
                            j = j2;
                        }
                    } catch (Exception unused) {
                        it.remove();
                    }
                }
            }
            if (str != null) {
                hashSet.remove(str);
            }
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("error starting call", e);
            }
            callFailed();
            return;
        }
        notificationsSettings.edit().putStringSet("calls_access_hashes", hashSet).apply();
        boolean z = false;
        try {
            zIsAvailable = AcousticEchoCanceler.isAvailable();
        } catch (Exception unused2) {
            zIsAvailable = false;
        }
        try {
            zIsAvailable2 = NoiseSuppressor.isAvailable();
        } catch (Exception unused3) {
            zIsAvailable2 = false;
        }
        SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        double d = ((double) messagesController.callConnectTimeout) / 1000.0d;
        double d2 = ((double) messagesController.callPacketTimeout) / 1000.0d;
        int iConvertDataSavingMode = convertDataSavingMode(globalMainSettings.getInt("VoipDataSaving", VoIPHelper.getDataSavingDefault()));
        Instance.ServerConfig globalServerConfig = Instance.getGlobalServerConfig();
        boolean z2 = (zIsAvailable && globalServerConfig.useSystemAec) ? false : true;
        boolean z3 = (zIsAvailable2 && globalServerConfig.useSystemNs) ? false : true;
        boolean z4 = BuildVars.DEBUG_VERSION;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        String logFilePath = z4 ? VoIPHelper.getLogFilePath("voip" + this.privateCall.id) : VoIPHelper.getLogFilePath(_UrlKt.FRAGMENT_ENCODE_SET + this.privateCall.id, false);
        String logFilePath2 = VoIPHelper.getLogFilePath(_UrlKt.FRAGMENT_ENCODE_SET + this.privateCall.id, true);
        TL_phone.PhoneCall phoneCall = this.privateCall;
        boolean z5 = phoneCall.p2p_allowed;
        boolean z6 = globalServerConfig.enableStunMarking;
        int i2 = phoneCall.protocol.max_layer;
        TLRPC.TL_dataJSON tL_dataJSON = phoneCall.custom_parameters;
        if (tL_dataJSON != null) {
            str3 = tL_dataJSON.data;
        }
        Instance.Config config = new Instance.Config(d, d2, iConvertDataSavingMode, z5, z2, z3, true, false, z6, logFilePath, logFilePath2, i2, str3);
        this.lastLogFilePath = logFilePath;
        String absolutePath = new File(ApplicationLoader.applicationContext.getCacheDir(), "voip_persistent_state.json").getAbsolutePath();
        boolean z7 = globalMainSettings.getBoolean("dbg_force_tcp_in_calls", false);
        int i3 = z7 ? 3 : 2;
        int size = this.privateCall.connections.size();
        Instance.Endpoint[] endpointArr = new Instance.Endpoint[size];
        ArrayList arrayList = new ArrayList();
        int i4 = 0;
        while (i4 < size) {
            TLRPC.PhoneConnection phoneConnection = this.privateCall.connections.get(i4);
            ArrayList arrayList2 = arrayList;
            int i5 = i4;
            int i6 = i;
            boolean z8 = z;
            endpointArr[i5] = new Instance.Endpoint(phoneConnection instanceof TLRPC.TL_phoneConnectionWebrtc, phoneConnection.id, phoneConnection.ip, phoneConnection.ipv6, phoneConnection.port, i3, phoneConnection.peer_tag, phoneConnection.turn, phoneConnection.stun, phoneConnection.username, phoneConnection.password, phoneConnection.tcp);
            if (phoneConnection instanceof TLRPC.TL_phoneConnection) {
                arrayList2.add(Long.valueOf(((TLRPC.TL_phoneConnection) phoneConnection).id));
            }
            i4 = i5 + 1;
            arrayList = arrayList2;
            i = i6;
            z = z8;
        }
        boolean z9 = z;
        int i7 = i;
        ArrayList arrayList3 = arrayList;
        if (!arrayList3.isEmpty()) {
            Collections.sort(arrayList3);
            HashMap map = new HashMap();
            int i8 = z9 ? 1 : 0;
            while (i8 < arrayList3.size()) {
                Long l = (Long) arrayList3.get(i8);
                i8++;
                map.put(l, Integer.valueOf(i8));
            }
            for (int i9 = z9 ? 1 : 0; i9 < size; i9++) {
                Instance.Endpoint endpoint = endpointArr[i9];
                endpoint.reflectorId = ((Integer) map.getOrDefault(Long.valueOf(endpoint.id), Integer.valueOf(z9 ? 1 : 0))).intValue();
            }
        }
        if (z7) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$initiateActualEncryptedCall$84();
                }
            });
        }
        if (globalMainSettings.getBoolean("proxy_enabled", z9) && globalMainSettings.getBoolean("proxy_enabled_calls", z9)) {
            String string = globalMainSettings.getString("proxy_ip", null);
            String string2 = globalMainSettings.getString("proxy_secret", null);
            if (!TextUtils.isEmpty(string) && TextUtils.isEmpty(string2)) {
                proxy = new Instance.Proxy(string, globalMainSettings.getInt("proxy_port", 0), globalMainSettings.getString("proxy_user", null), globalMainSettings.getString("proxy_pass", null));
            }
        } else {
            proxy = null;
        }
        Instance.EncryptionKey encryptionKey = new Instance.EncryptionKey(this.authKey, this.isOutgoing);
        boolean z10 = "2.7.7".compareTo(this.privateCall.protocol.library_versions.get(0)) <= 0;
        long j3 = this.captureDevice[0];
        if (j3 != 0 && !z10) {
            NativeInstance.destroyVideoCapturer(j3);
            this.captureDevice[0] = 0;
            this.videoState[0] = 0;
        }
        if (!this.isOutgoing) {
            if (this.videoCall && checkSelfPermission("android.permission.CAMERA") == 0) {
                this.captureDevice[0] = NativeInstance.createVideoCapturer(this.localSink[0], this.isFrontFaceCamera ? 1 : 0);
                this.videoState[0] = i7;
            } else {
                this.videoState[0] = 0;
            }
        }
        this.tgVoip[0] = Instance.makeInstance(this.privateCall.protocol.library_versions.get(0), config, absolutePath, endpointArr, proxy, getNetworkType(), encryptionKey, this.remoteSink[0], this.captureDevice[0], new NativeInstance.AudioLevelsCallback() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda3
            @Override // org.telegram.messenger.voip.NativeInstance.AudioLevelsCallback
            public final void run(int[] iArr, float[] fArr, boolean[] zArr) {
                this.f$0.lambda$initiateActualEncryptedCall$85(iArr, fArr, zArr);
            }
        });
        this.tgVoip[0].setOnStateUpdatedListener(new Instance.OnStateUpdatedListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda4
            @Override // org.telegram.messenger.voip.Instance.OnStateUpdatedListener
            public final void onStateUpdated(int i10, boolean z11) {
                this.f$0.onConnectionStateChanged(i10, z11);
            }
        });
        this.tgVoip[0].setOnSignalBarsUpdatedListener(new Instance.OnSignalBarsUpdatedListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.voip.Instance.OnSignalBarsUpdatedListener
            public final void onSignalBarsUpdated(int i10) {
                this.f$0.onSignalBarCountChanged(i10);
            }
        });
        this.tgVoip[0].setOnSignalDataListener(new Instance.OnSignalingDataListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.voip.Instance.OnSignalingDataListener
            public final void onSignalingData(byte[] bArr) {
                this.f$0.onSignalingData(bArr);
            }
        });
        this.tgVoip[0].setOnRemoteMediaStateUpdatedListener(new Instance.OnRemoteMediaStateUpdatedListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.voip.Instance.OnRemoteMediaStateUpdatedListener
            public final void onMediaStateUpdated(int i10, int i11) {
                this.f$0.lambda$initiateActualEncryptedCall$87(i10, i11);
            }
        });
        this.tgVoip[0].setMuteMicrophone(this.micMute);
        if (z10 != this.isVideoAvailable) {
            this.isVideoAvailable = z10;
            for (int i10 = 0; i10 < this.stateListeners.size(); i10++) {
                this.stateListeners.get(i10).onVideoAvailableChange(this.isVideoAvailable);
            }
        }
        this.destroyCaptureDevice[0] = false;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService.8
            @Override // java.lang.Runnable
            public void run() {
                if (VoIPService.this.tgVoip[0] != null) {
                    VoIPService voIPService = VoIPService.this;
                    voIPService.updateTrafficStats(voIPService.tgVoip[0], null);
                    AndroidUtilities.runOnUIThread(this, 5000L);
                }
            }
        }, 5000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initiateActualEncryptedCall$84() {
        Toast.makeText(this, "This call uses TCP which will degrade its quality.", 0).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initiateActualEncryptedCall$85(int[] iArr, float[] fArr, boolean[] zArr) {
        if (sharedInstance == null || this.privateCall == null) {
            return;
        }
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.webRtcMicAmplitudeEvent, Float.valueOf(fArr[0]));
        NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.webRtcSpeakerAmplitudeEvent, Float.valueOf(fArr[1]));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initiateActualEncryptedCall$87(final int i, final int i2) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda43
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$initiateActualEncryptedCall$86(i, i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$initiateActualEncryptedCall$86(int i, int i2) {
        this.remoteAudioState = i;
        this.remoteVideoState = i2;
        checkIsNear();
        for (int i3 = 0; i3 < this.stateListeners.size(); i3++) {
            this.stateListeners.get(i3).onMediaStateUpdated(i, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playConnectedSound$88() {
        this.soundPool.play(this.spVoiceChatStartId, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    public void playConnectedSound() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda101
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playConnectedSound$88();
            }
        });
        this.playedConnectedSound = true;
    }

    private void startConnectingSound() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda88
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$startConnectingSound$89();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startConnectingSound$89() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
        }
        int iPlay = this.soundPool.play(this.spConnectingId, 1.0f, 1.0f, 0, -1, 1.0f);
        this.spPlayId = iPlay;
        if (iPlay == 0) {
            RunnableC26569 runnableC26569 = new RunnableC26569();
            this.connectingSoundRunnable = runnableC26569;
            AndroidUtilities.runOnUIThread(runnableC26569, 100L);
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.voip.VoIPService$9 */
    /* JADX INFO: loaded from: classes5.dex */
    public class RunnableC26569 implements Runnable {
        public RunnableC26569() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (VoIPService.sharedInstance == null) {
                return;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$9$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$run$0();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$0() {
            if (VoIPService.this.spPlayId == 0) {
                VoIPService voIPService = VoIPService.this;
                voIPService.spPlayId = voIPService.soundPool.play(VoIPService.this.spConnectingId, 1.0f, 1.0f, 0, -1, 1.0f);
            }
            if (VoIPService.this.spPlayId == 0) {
                AndroidUtilities.runOnUIThread(this, 100L);
            } else {
                VoIPService.this.connectingSoundRunnable = null;
            }
        }
    }

    public void onSignalingData(byte[] bArr) {
        if (this.privateCall == null) {
            return;
        }
        TL_phone.sendSignalingData sendsignalingdata = new TL_phone.sendSignalingData();
        TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
        sendsignalingdata.peer = tL_inputPhoneCall;
        TL_phone.PhoneCall phoneCall = this.privateCall;
        tL_inputPhoneCall.access_hash = phoneCall.access_hash;
        tL_inputPhoneCall.id = phoneCall.id;
        sendsignalingdata.data = bArr;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(sendsignalingdata, null);
    }

    public boolean isVideoAvailable() {
        return this.isVideoAvailable;
    }

    public void onMediaButtonEvent(KeyEvent keyEvent) {
        if (keyEvent == null) {
            return;
        }
        if ((keyEvent.getKeyCode() == 79 || keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 85) && keyEvent.getAction() == 1) {
            if (this.currentState == 15) {
                acceptIncomingCall();
            } else {
                setMicMute(!isMicMute(), false, true);
            }
        }
    }

    public byte[] getGA() {
        return this.g_a;
    }

    public void forceRating() {
        this.forceRating = true;
    }

    private String[] getEmoji() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(this.authKey);
            byteArrayOutputStream.write(this.g_a);
        } catch (IOException unused) {
        }
        return EncryptionKeyEmojifier.emojifyForCall(Utilities.computeSHA256(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size()));
    }

    public boolean hasEarpiece() {
        CallConnection callConnection;
        if (USE_CONNECTION_SERVICE && (callConnection = this.systemCallConnection) != null && callConnection.getCallAudioState() != null) {
            return (this.systemCallConnection.getCallAudioState().getSupportedRouteMask() & 5) != 0;
        }
        if (((TelephonyManager) getSystemService("phone")).getPhoneType() != 0) {
            return true;
        }
        Boolean bool = this.mHasEarpiece;
        if (bool != null) {
            return bool.booleanValue();
        }
        try {
            AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            Method method = AudioManager.class.getMethod("getDevicesForStream", Integer.TYPE);
            int i = AudioManager.class.getField("DEVICE_OUT_EARPIECE").getInt(null);
            if ((((Integer) method.invoke(audioManager, 0)).intValue() & i) == i) {
                this.mHasEarpiece = Boolean.TRUE;
            } else {
                this.mHasEarpiece = Boolean.FALSE;
            }
        } catch (Throwable th) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("Error while checking earpiece! ", th);
            }
            this.mHasEarpiece = Boolean.TRUE;
        }
        return this.mHasEarpiece.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getStatsNetworkType() {
        NetworkInfo networkInfo = this.lastNetInfo;
        if (networkInfo == null || networkInfo.getType() != 0) {
            return 1;
        }
        return this.lastNetInfo.isRoaming() ? 2 : 0;
    }

    public void setSwitchingCamera(boolean z, boolean z2) {
        this.switchingCamera = z;
        if (z) {
            return;
        }
        this.isFrontFaceCamera = z2;
        for (int i = 0; i < this.stateListeners.size(); i++) {
            this.stateListeners.get(i).onCameraSwitch(this.isFrontFaceCamera);
        }
    }

    public void onCameraFirstFrameAvailable() {
        for (int i = 0; i < this.stateListeners.size(); i++) {
            this.stateListeners.get(i).onCameraFirstFrameAvailable();
        }
    }

    public void registerStateListener(StateListener stateListener) {
        if (this.stateListeners.contains(stateListener)) {
            return;
        }
        this.stateListeners.add(stateListener);
        int i = this.currentState;
        if (i != 0) {
            stateListener.onStateChanged(i);
        }
        int i2 = this.signalBarCount;
        if (i2 != 0) {
            stateListener.onSignalBarsCountChanged(i2);
        }
    }

    public void unregisterStateListener(StateListener stateListener) {
        this.stateListeners.remove(stateListener);
    }

    public void editCallMember(TLObject tLObject, Boolean bool, Boolean bool2, Integer num, Boolean bool3, final Runnable runnable) {
        TLRPC.InputPeer inputPeer;
        if (tLObject == null || this.groupCall == null) {
            return;
        }
        TL_phone.editGroupCallParticipant editgroupcallparticipant = new TL_phone.editGroupCallParticipant();
        editgroupcallparticipant.call = this.groupCall.getInputGroupCall();
        if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            if (UserObject.isUserSelf(user) && (inputPeer = this.groupCallPeer) != null) {
                editgroupcallparticipant.participant = inputPeer;
            } else {
                editgroupcallparticipant.participant = MessagesController.getInputPeer(user);
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("edit group call part id = " + editgroupcallparticipant.participant.user_id + " access_hash = " + editgroupcallparticipant.participant.user_id);
                }
            }
        } else if (tLObject instanceof TLRPC.Chat) {
            editgroupcallparticipant.participant = MessagesController.getInputPeer((TLRPC.Chat) tLObject);
            if (BuildVars.LOGS_ENABLED) {
                StringBuilder sb = new StringBuilder("edit group call part id = ");
                TLRPC.InputPeer inputPeer2 = editgroupcallparticipant.participant;
                long j = inputPeer2.chat_id;
                if (j == 0) {
                    j = inputPeer2.channel_id;
                }
                sb.append(j);
                sb.append(" access_hash = ");
                sb.append(editgroupcallparticipant.participant.access_hash);
                FileLog.m895d(sb.toString());
            }
        }
        if (bool != null) {
            editgroupcallparticipant.muted = bool.booleanValue();
            editgroupcallparticipant.flags |= 1;
        }
        if (num != null) {
            editgroupcallparticipant.volume = num.intValue();
            editgroupcallparticipant.flags |= 2;
        }
        if (bool3 != null) {
            editgroupcallparticipant.raise_hand = bool3.booleanValue();
            editgroupcallparticipant.flags |= 4;
        }
        if (bool2 != null) {
            editgroupcallparticipant.video_stopped = bool2.booleanValue();
            editgroupcallparticipant.flags |= 8;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("edit group call flags = " + editgroupcallparticipant.flags);
        }
        final int i = this.currentAccount;
        AccountInstance.getInstance(i).getConnectionsManager().sendRequest(editgroupcallparticipant, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda67
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject2, TLRPC.TL_error tL_error) {
                this.f$0.lambda$editCallMember$90(i, runnable, tLObject2, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$editCallMember$90(int i, Runnable runnable, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject != null) {
            AccountInstance.getInstance(i).getMessagesController().processUpdates((TLRPC.Updates) tLObject, false);
        } else if (tL_error != null && "GROUPCALL_VIDEO_TOO_MUCH".equals(tL_error.text)) {
            this.groupCall.reloadGroupCall();
        }
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable);
        }
    }

    public boolean isMicMute() {
        return this.micMute;
    }

    public void toggleSpeakerphoneOrShowRouteSheet(Context context, boolean z) {
        toggleSpeakerphoneOrShowRouteSheet(context, z, null);
    }

    public void switchToSpeaker() {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$switchToSpeaker$92();
            }
        }, 500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToSpeaker$92() {
        VoipAudioManager voipAudioManager = VoipAudioManager.get();
        if ((isBluetoothHeadsetConnected() && hasEarpiece()) || this.isHeadsetPlugged || isSpeakerphoneOn()) {
            return;
        }
        voipAudioManager.setSpeakerphoneOn(true);
        voipAudioManager.isBluetoothAndSpeakerOnAsync(new Utilities.Callback2() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda100
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$switchToSpeaker$91((Boolean) obj, (Boolean) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$switchToSpeaker$91(Boolean bool, Boolean bool2) {
        updateOutputGainControlState();
        ArrayList<StateListener> arrayList = this.stateListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StateListener stateListener = arrayList.get(i);
            i++;
            stateListener.onAudioSettingsChanged();
        }
    }

    public void toggleSpeakerphoneOrShowRouteSheet(Context context, boolean z, final Integer num) {
        CallConnection callConnection;
        int i = 0;
        if (isBluetoothHeadsetConnected() && hasEarpiece()) {
            BottomSheet.Builder cellType = new BottomSheet.Builder(context).setTitle(LocaleController.getString(C2573R.string.VoipOutputDevices), true).selectedPos(num).setCellType(num != null ? BottomSheet.Builder.CELL_TYPE_CALL : 0);
            String string = LocaleController.getString(C2573R.string.VoipAudioRoutingSpeaker);
            String string2 = LocaleController.getString(this.isHeadsetPlugged ? C2573R.string.VoipAudioRoutingHeadset : C2573R.string.VoipAudioRoutingEarpiece);
            String string3 = this.currentBluetoothDeviceName;
            if (string3 == null) {
                string3 = LocaleController.getString(C2573R.string.VoipAudioRoutingBluetooth);
            }
            BottomSheet.Builder items = cellType.setItems(new CharSequence[]{string, string2, string3}, new int[]{C2573R.drawable.msg_call_speaker, this.isHeadsetPlugged ? C2573R.drawable.calls_menu_headset : C2573R.drawable.msg_call_earpiece, C2573R.drawable.msg_call_bluetooth}, new DialogInterface.OnClickListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda91
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.lambda$toggleSpeakerphoneOrShowRouteSheet$93(dialogInterface, i2);
                }
            });
            final BottomSheet bottomSheetCreate = items.create();
            bottomSheetCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda92
                @Override // android.content.DialogInterface.OnShowListener
                public final void onShow(DialogInterface dialogInterface) {
                    VoIPService.m6454$r8$lambda$ehpzHbar0wrE5t2DJBpcihOqlU(bottomSheetCreate, num, dialogInterface);
                }
            });
            if (z) {
                if (Build.VERSION.SDK_INT >= 26) {
                    bottomSheetCreate.getWindow().setType(2038);
                } else {
                    bottomSheetCreate.getWindow().setType(CastStatusCodes.NOT_ALLOWED);
                }
            }
            items.show();
            return;
        }
        boolean z2 = USE_CONNECTION_SERVICE;
        if (z2 && (callConnection = this.systemCallConnection) != null && callConnection.getCallAudioState() != null) {
            boolean zHasEarpiece = hasEarpiece();
            CallConnection callConnection2 = this.systemCallConnection;
            if (zHasEarpiece) {
                callConnection2.setAudioRoute(callConnection2.getCallAudioState().getRoute() != 8 ? 8 : 5);
            } else {
                callConnection2.setAudioRoute(callConnection2.getCallAudioState().getRoute() == 2 ? 5 : 2);
            }
        } else {
            if (this.audioConfigured && !z2) {
                AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
                VoipAudioManager voipAudioManager = VoipAudioManager.get();
                if (hasEarpiece()) {
                    voipAudioManager.setSpeakerphoneOn(!voipAudioManager.isSpeakerphoneOn());
                } else {
                    audioManager.setBluetoothScoOn(!audioManager.isBluetoothScoOn());
                }
                voipAudioManager.isBluetoothAndSpeakerOnAsync(new Utilities.Callback2() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda93
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$toggleSpeakerphoneOrShowRouteSheet$95((Boolean) obj, (Boolean) obj2);
                    }
                });
                return;
            }
            this.speakerphoneStateToSet = !this.speakerphoneStateToSet;
        }
        ArrayList<StateListener> arrayList = this.stateListeners;
        int size = arrayList.size();
        while (i < size) {
            StateListener stateListener = arrayList.get(i);
            i++;
            stateListener.onAudioSettingsChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleSpeakerphoneOrShowRouteSheet$93(DialogInterface dialogInterface, int i) {
        if (getSharedInstance() == null) {
            return;
        }
        setAudioOutput(i);
    }

    /* JADX INFO: renamed from: $r8$lambda$e-hpzHbar0wrE5t2DJBpcihOqlU, reason: not valid java name */
    public static /* synthetic */ void m6454$r8$lambda$ehpzHbar0wrE5t2DJBpcihOqlU(BottomSheet bottomSheet, Integer num, DialogInterface dialogInterface) {
        for (int i = 0; i < bottomSheet.getItemViews().size(); i++) {
            int i2 = Theme.key_dialogTextBlack;
            bottomSheet.setItemColor(i, Theme.getColor(i2), Theme.getColor(i2));
        }
        if (num != null) {
            int color = Theme.getColor(Theme.key_dialogTextLink);
            bottomSheet.setItemColor(num.intValue(), color, color);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$toggleSpeakerphoneOrShowRouteSheet$95(Boolean bool, Boolean bool2) {
        updateOutputGainControlState();
        ArrayList<StateListener> arrayList = this.stateListeners;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            StateListener stateListener = arrayList.get(i);
            i++;
            stateListener.onAudioSettingsChanged();
        }
    }

    public void setAudioOutput(int i) {
        CallConnection callConnection;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("setAudioOutput " + i);
        }
        AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        VoipAudioManager voipAudioManager = VoipAudioManager.get();
        boolean z = USE_CONNECTION_SERVICE;
        int i2 = 0;
        if (!z || (callConnection = this.systemCallConnection) == null) {
            if (this.audioConfigured && !z) {
                if (i == 0) {
                    this.needSwitchToBluetoothAfterScoActivates = false;
                    if (this.bluetoothScoActive || this.bluetoothScoConnecting) {
                        audioManager.stopBluetoothSco();
                        this.bluetoothScoActive = false;
                        this.bluetoothScoConnecting = false;
                    }
                    audioManager.setBluetoothScoOn(false);
                    voipAudioManager.setSpeakerphoneOn(true);
                    this.audioRouteToSet = 1;
                } else if (i == 1) {
                    this.needSwitchToBluetoothAfterScoActivates = false;
                    if (this.bluetoothScoActive || this.bluetoothScoConnecting) {
                        audioManager.stopBluetoothSco();
                        this.bluetoothScoActive = false;
                        this.bluetoothScoConnecting = false;
                    }
                    voipAudioManager.setSpeakerphoneOn(false);
                    audioManager.setBluetoothScoOn(false);
                    this.audioRouteToSet = 0;
                } else if (i == 2) {
                    if (!this.bluetoothScoActive) {
                        this.needSwitchToBluetoothAfterScoActivates = true;
                        try {
                            audioManager.startBluetoothSco();
                        } catch (Throwable th) {
                            FileLog.m898e(th);
                        }
                    } else {
                        audioManager.setBluetoothScoOn(true);
                        voipAudioManager.setSpeakerphoneOn(false);
                    }
                    this.audioRouteToSet = 2;
                }
                updateOutputGainControlState();
            } else if (i == 0) {
                this.audioRouteToSet = 1;
                this.speakerphoneStateToSet = true;
            } else if (i == 1) {
                this.audioRouteToSet = 0;
                this.speakerphoneStateToSet = false;
            } else if (i == 2) {
                this.audioRouteToSet = 2;
                this.speakerphoneStateToSet = false;
            }
        } else if (i == 0) {
            callConnection.setAudioRoute(8);
        } else if (i == 1) {
            callConnection.setAudioRoute(5);
        } else if (i == 2) {
            callConnection.setAudioRoute(2);
        }
        ArrayList<StateListener> arrayList = this.stateListeners;
        int size = arrayList.size();
        while (i2 < size) {
            StateListener stateListener = arrayList.get(i2);
            i2++;
            stateListener.onAudioSettingsChanged();
        }
    }

    public boolean isSpeakerphoneOn() {
        CallConnection callConnection;
        boolean z = USE_CONNECTION_SERVICE;
        if (z && (callConnection = this.systemCallConnection) != null && callConnection.getCallAudioState() != null) {
            int route = this.systemCallConnection.getCallAudioState().getRoute();
            return hasEarpiece() ? route == 8 : route == 2;
        }
        if (!this.audioConfigured || z) {
            return this.speakerphoneStateToSet;
        }
        return hasEarpiece() ? VoipAudioManager.get().isSpeakerphoneOn() : ((AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)).isBluetoothScoOn();
    }

    public int getCurrentAudioRoute() {
        if (USE_CONNECTION_SERVICE) {
            CallConnection callConnection = this.systemCallConnection;
            if (callConnection != null && callConnection.getCallAudioState() != null) {
                int route = this.systemCallConnection.getCallAudioState().getRoute();
                if (route != 1) {
                    if (route == 2) {
                        return 2;
                    }
                    if (route != 4) {
                        if (route == 8) {
                            return 1;
                        }
                    }
                }
                return 0;
            }
            return this.audioRouteToSet;
        }
        if (this.audioConfigured) {
            AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            VoipAudioManager voipAudioManager = VoipAudioManager.get();
            if (audioManager.isBluetoothScoOn()) {
                return 2;
            }
            return voipAudioManager.isSpeakerphoneOn() ? 1 : 0;
        }
        return this.audioRouteToSet;
    }

    public String getDebugString() {
        NativeInstance nativeInstance = this.tgVoip[0];
        return nativeInstance != null ? nativeInstance.getDebugInfo() : _UrlKt.FRAGMENT_ENCODE_SET;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public long getCallDuration() {
        if (this.callStartTime == 0) {
            return 0L;
        }
        return SystemClock.elapsedRealtime() - this.callStartTime;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public void stopRinging() {
        synchronized (sync) {
            try {
                MediaPlayer mediaPlayer = this.ringtonePlayer;
                if (mediaPlayer != null) {
                    mediaPlayer.stop();
                    this.ringtonePlayer.release();
                    this.ringtonePlayer = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Vibrator vibrator = this.vibrator;
        if (vibrator != null) {
            vibrator.cancel();
            this.vibrator = null;
        }
    }

    private void showNotification(String str, Bitmap bitmap) {
        Intent action = new Intent(this, (Class<?>) LaunchActivity.class).setAction(this.groupCall != null ? "voip_chat" : "voip");
        if (this.groupCall != null) {
            action.putExtra("currentAccount", this.currentAccount);
        }
        Notification.Builder contentIntent = new Notification.Builder(this).setContentText(str).setContentIntent(PendingIntent.getActivity(this, 50, action, 33554432));
        if (isConference()) {
            contentIntent.setContentTitle(LocaleController.getString(C2573R.string.VoipConference));
            contentIntent.setSmallIcon(isMicMute() ? C2573R.drawable.voicechat_muted : C2573R.drawable.voicechat_active);
        } else if (this.groupCall != null) {
            contentIntent.setContentTitle(LocaleController.getString(ChatObject.isChannelOrGiga(this.chat) ? C2573R.string.VoipLiveStream : C2573R.string.VoipVoiceChat));
            contentIntent.setSmallIcon(isMicMute() ? C2573R.drawable.voicechat_muted : C2573R.drawable.voicechat_active);
        } else {
            contentIntent.setContentTitle(LocaleController.getString(C2573R.string.VoipOutgoingCall));
            contentIntent.setSmallIcon(C2573R.drawable.call);
            contentIntent.setOngoing(true);
        }
        Intent intent = new Intent(this, (Class<?>) VoIPActionsReceiver.class);
        intent.setAction(getPackageName() + ".END_CALL");
        if (isConference()) {
            contentIntent.addAction(C2573R.drawable.ic_call_end_white_24dp, LocaleController.getString(C2573R.string.VoipConferenceLeave), PendingIntent.getBroadcast(this, 0, intent, 167772160));
        } else if (this.groupCall != null) {
            contentIntent.addAction(C2573R.drawable.ic_call_end_white_24dp, LocaleController.getString(ChatObject.isChannelOrGiga(this.chat) ? C2573R.string.VoipChannelLeaveAlertTitle : C2573R.string.VoipGroupLeaveAlertTitle), PendingIntent.getBroadcast(this, 0, intent, 167772160));
        } else {
            contentIntent.addAction(C2573R.drawable.ic_call_end_white_24dp, LocaleController.getString(C2573R.string.VoipEndCall), PendingIntent.getBroadcast(this, 0, intent, 167772160));
        }
        contentIntent.setPriority(2);
        contentIntent.setShowWhen(false);
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            contentIntent.setColor(-14143951);
            contentIntent.setColorized(true);
        } else {
            contentIntent.setColor(-13851168);
        }
        if (i >= 26) {
            NotificationsController.checkOtherNotificationsChannel();
            contentIntent.setChannelId(NotificationsController.OTHER_NOTIFICATIONS_CHANNEL);
        }
        if (!isConference() && bitmap != null) {
            contentIntent.setLargeIcon(bitmap);
        }
        try {
            if (this.foregroundStarted) {
                try {
                    stopForeground(true);
                } catch (Exception e) {
                    FileLog.m898e(e);
                }
            }
            this.foregroundStarted = true;
            if (Build.VERSION.SDK_INT >= 33) {
                this.foregroundId = 201;
                Notification notification = contentIntent.getNotification();
                this.foregroundNotification = notification;
                int currentForegroundType = getCurrentForegroundType();
                this.lastForegroundType = currentForegroundType;
                startForeground(201, notification, currentForegroundType);
                return;
            }
            this.foregroundId = 201;
            Notification notification2 = contentIntent.getNotification();
            this.foregroundNotification = notification2;
            startForeground(201, notification2);
        } catch (Exception e2) {
            if (bitmap == null || !(e2 instanceof IllegalArgumentException)) {
                return;
            }
            showNotification(str, null);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00f1 A[Catch: all -> 0x002f, TryCatch #1 {all -> 0x002f, blocks: (B:9:0x0029, B:11:0x002d, B:15:0x0032, B:18:0x004f, B:27:0x0066, B:29:0x0078, B:34:0x0093, B:42:0x00b1, B:47:0x00df, B:49:0x00f1, B:54:0x010e, B:56:0x0114, B:61:0x0122, B:67:0x013a, B:68:0x0149, B:59:0x011c, B:50:0x0102, B:36:0x0099, B:38:0x009d, B:40:0x00a7, B:41:0x00ac, B:32:0x008b, B:44:0x00d3, B:46:0x00da, B:19:0x0053, B:21:0x005a, B:25:0x0063), top: B:75:0x0029, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0102 A[Catch: all -> 0x002f, TryCatch #1 {all -> 0x002f, blocks: (B:9:0x0029, B:11:0x002d, B:15:0x0032, B:18:0x004f, B:27:0x0066, B:29:0x0078, B:34:0x0093, B:42:0x00b1, B:47:0x00df, B:49:0x00f1, B:54:0x010e, B:56:0x0114, B:61:0x0122, B:67:0x013a, B:68:0x0149, B:59:0x011c, B:50:0x0102, B:36:0x0099, B:38:0x009d, B:40:0x00a7, B:41:0x00ac, B:32:0x008b, B:44:0x00d3, B:46:0x00da, B:19:0x0053, B:21:0x005a, B:25:0x0063), top: B:75:0x0029, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void startRingtoneAndVibration(long j) {
        int i;
        String string;
        Uri defaultUri;
        boolean z;
        SharedPreferences notificationsSettings = MessagesController.getNotificationsSettings(this.currentAccount);
        AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        if (audioManager.getRingerMode() == 0 || this.ringtonePlayer != null) {
            return;
        }
        synchronized (sync) {
            try {
                if (this.ringtonePlayer != null) {
                    return;
                }
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.ringtonePlayer = mediaPlayer;
                mediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda42
                    @Override // android.media.MediaPlayer.OnPreparedListener
                    public final void onPrepared(MediaPlayer mediaPlayer2) {
                        this.f$0.lambda$startRingtoneAndVibration$96(mediaPlayer2);
                    }
                });
                this.ringtonePlayer.setLooping(true);
                boolean z2 = this.isHeadsetPlugged;
                MediaPlayer mediaPlayer2 = this.ringtonePlayer;
                if (z2) {
                    mediaPlayer2.setAudioStreamType(0);
                } else {
                    mediaPlayer2.setAudioStreamType(2);
                    if (!USE_CONNECTION_SERVICE) {
                        this.hasAudioFocus = audioManager.requestAudioFocus(this, 2, 2) == 1;
                    }
                }
                try {
                    if (notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + j, false)) {
                        string = notificationsSettings.getString("ringtone_path_" + j, null);
                    } else {
                        string = notificationsSettings.getString("CallsRingtonePath", null);
                    }
                } catch (Exception e) {
                    FileLog.m898e(e);
                    MediaPlayer mediaPlayer3 = this.ringtonePlayer;
                    if (mediaPlayer3 != null) {
                        mediaPlayer3.release();
                        this.ringtonePlayer = null;
                    }
                }
                if (string == null) {
                    defaultUri = RingtoneManager.getDefaultUri(1);
                } else {
                    Uri uri = Settings.System.DEFAULT_RINGTONE_URI;
                    if (uri != null && string.equalsIgnoreCase(uri.getPath())) {
                        defaultUri = RingtoneManager.getDefaultUri(1);
                    } else {
                        defaultUri = Uri.parse(string);
                        z = false;
                        FileLog.m895d("start ringtone with " + z + " " + defaultUri);
                        this.ringtonePlayer.setDataSource(this, defaultUri);
                        this.ringtonePlayer.prepareAsync();
                        if (!notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + j, false)) {
                            i = notificationsSettings.getInt("calls_vibrate_" + j, 0);
                        } else {
                            i = notificationsSettings.getInt("vibrate_calls", 0);
                        }
                        if ((i == 2 && i != 4 && (audioManager.getRingerMode() == 1 || audioManager.getRingerMode() == 2)) || (i == 4 && audioManager.getRingerMode() == 1)) {
                            Vibrator vibrator = (Vibrator) getSystemService("vibrator");
                            this.vibrator = vibrator;
                            vibrator.vibrate(new long[]{0, i == 1 ? 350L : i == 3 ? 1400L : 700L, 500}, 0);
                        }
                    }
                }
                z = true;
                FileLog.m895d("start ringtone with " + z + " " + defaultUri);
                this.ringtonePlayer.setDataSource(this, defaultUri);
                this.ringtonePlayer.prepareAsync();
                if (!notificationsSettings.getBoolean(NotificationsSettingsFacade.PROPERTY_CUSTOM + j, false)) {
                }
                if (i == 2) {
                    Vibrator vibrator2 = (Vibrator) getSystemService("vibrator");
                    this.vibrator = vibrator2;
                    vibrator2.vibrate(new long[]{0, i == 1 ? 350L : i == 3 ? 1400L : 700L, 500}, 0);
                } else {
                    Vibrator vibrator22 = (Vibrator) getSystemService("vibrator");
                    this.vibrator = vibrator22;
                    vibrator22.vibrate(new long[]{0, i == 1 ? 350L : i == 3 ? 1400L : 700L, 500}, 0);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$startRingtoneAndVibration$96(MediaPlayer mediaPlayer) {
        try {
            this.ringtonePlayer.start();
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("=============== VoIPService STOPPING ===============");
        }
        stopForeground(true);
        stopRinging();
        if (this.currentAccount >= 0) {
            if (ApplicationLoader.mainInterfacePaused || !ApplicationLoader.isScreenOn) {
                MessagesController.getInstance(this.currentAccount).ignoreSetOnline = false;
            }
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.appDidLogout);
        }
        SensorManager sensorManager = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
        if (sensorManager.getDefaultSensor(8) != null) {
            sensorManager.unregisterListener(this);
        }
        PowerManager.WakeLock wakeLock = this.proximityWakelock;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.proximityWakelock.release();
        }
        if (this.updateNotificationRunnable != null) {
            Utilities.globalQueue.cancelRunnable(this.updateNotificationRunnable);
            this.updateNotificationRunnable = null;
        }
        Runnable runnable = this.switchingStreamTimeoutRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.switchingStreamTimeoutRunnable = null;
        }
        unregisterReceiver(this.receiver);
        Runnable runnable2 = this.timeoutRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.timeoutRunnable = null;
        }
        ConferenceCall conferenceCall = this.conference;
        if (conferenceCall != null) {
            conferenceCall.destroy();
        }
        super.onDestroy();
        sharedInstance = null;
        FileLog.m896e("(5) set sharedInstance = null");
        Arrays.fill(this.mySource, 0);
        cancelGroupCheckShortPoll();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda71
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didEndCall, new Object[0]);
            }
        });
        if (this.tgVoip[0] != null) {
            StatsController.getInstance(this.currentAccount).incrementTotalCallsTime(getStatsNetworkType(), ((int) (getCallDuration() / 1000)) % 5);
            onTgVoipPreStop();
            boolean zIsGroup = this.tgVoip[0].isGroup();
            NativeInstance[] nativeInstanceArr = this.tgVoip;
            if (zIsGroup) {
                NativeInstance nativeInstance = nativeInstanceArr[0];
                DispatchQueue dispatchQueue = Utilities.globalQueue;
                Objects.requireNonNull(nativeInstance);
                dispatchQueue.postRunnable(new VoIPService$$ExternalSyntheticLambda72(nativeInstance));
                Iterator<Map.Entry<String, Integer>> it = this.currentStreamRequestTimestamp.entrySet().iterator();
                while (it.hasNext()) {
                    AccountInstance.getInstance(this.currentAccount).getConnectionsManager().cancelRequest(it.next().getValue().intValue(), true);
                }
                this.currentStreamRequestTimestamp.clear();
            } else {
                Instance.FinalState finalStateStop = nativeInstanceArr[0].stop();
                updateTrafficStats(this.tgVoip[0], finalStateStop.trafficStats);
                onTgVoipStop(finalStateStop);
            }
            this.prevTrafficStats = null;
            this.callStartTime = 0L;
            this.tgVoip[0] = null;
            Instance.destroyInstance();
        }
        destroyConverting();
        NativeInstance nativeInstance2 = this.tgVoip[1];
        if (nativeInstance2 != null) {
            DispatchQueue dispatchQueue2 = Utilities.globalQueue;
            Objects.requireNonNull(nativeInstance2);
            dispatchQueue2.postRunnable(new VoIPService$$ExternalSyntheticLambda72(nativeInstance2));
            this.tgVoip[1] = null;
        }
        int i = 0;
        while (true) {
            long[] jArr = this.captureDevice;
            if (i >= jArr.length) {
                break;
            }
            long j = jArr[i];
            if (j != 0) {
                if (this.destroyCaptureDevice[i]) {
                    NativeInstance.destroyVideoCapturer(j);
                }
                this.captureDevice[i] = 0;
            }
            i++;
        }
        this.cpuWakelock.release();
        final AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        if (!this.playingSound) {
            VoipAudioManager voipAudioManager = VoipAudioManager.get();
            if (!USE_CONNECTION_SERVICE) {
                if (this.isBtHeadsetConnected || this.bluetoothScoActive || this.bluetoothScoConnecting) {
                    audioManager.stopBluetoothSco();
                    audioManager.setBluetoothScoOn(false);
                    voipAudioManager.setSpeakerphoneOn(false);
                    this.bluetoothScoActive = false;
                    this.bluetoothScoConnecting = false;
                }
                if (this.onDestroyRunnable == null) {
                    DispatchQueue dispatchQueue3 = Utilities.globalQueue;
                    Runnable runnable3 = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda73
                        @Override // java.lang.Runnable
                        public final void run() {
                            VoIPService.$r8$lambda$E5rDrTp9Td2_AhnvyRtiSASzdL0(audioManager);
                        }
                    };
                    setModeRunnable = runnable3;
                    dispatchQueue3.postRunnable(runnable3);
                }
                audioManager.abandonAudioFocus(this);
            }
            try {
                audioManager.unregisterMediaButtonEventReceiver(new ComponentName(this, (Class<?>) VoIPMediaButtonReceiver.class));
            } catch (Exception e) {
                FileLog.m898e(e);
            }
            AudioDeviceCallback audioDeviceCallback = this.audioDeviceCallback;
            if (audioDeviceCallback != null) {
                audioManager.unregisterAudioDeviceCallback(audioDeviceCallback);
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda74
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onDestroy$99();
                }
            });
        }
        if (this.hasAudioFocus) {
            audioManager.abandonAudioFocus(this);
        }
        if (USE_CONNECTION_SERVICE) {
            if (!this.didDeleteConnectionServiceContact) {
                ContactsController.getInstance(this.currentAccount).deleteConnectionServiceContact();
            }
            CallConnection callConnection = this.systemCallConnection;
            if (callConnection != null && !this.playingSound) {
                callConnection.destroy();
            }
        }
        VoIPHelper.lastCallTime = SystemClock.elapsedRealtime();
        setSinks(null, null);
        Runnable runnable4 = this.onDestroyRunnable;
        if (runnable4 != null) {
            runnable4.run();
        }
        int i2 = this.currentAccount;
        if (i2 >= 0) {
            ConnectionsManager.getInstance(i2).setAppPaused(true, false);
            if (ChatObject.isChannel(this.chat)) {
                MessagesController.getInstance(this.currentAccount).startShortPoll(this.chat, this.classGuid, true);
            }
        }
    }

    public static /* synthetic */ void $r8$lambda$E5rDrTp9Td2_AhnvyRtiSASzdL0(AudioManager audioManager) {
        synchronized (sync) {
            try {
                if (setModeRunnable == null) {
                    return;
                }
                setModeRunnable = null;
                try {
                    audioManager.setMode(0);
                } catch (SecurityException e) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m897e("Error setting audio more to normal", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDestroy$99() {
        SoundPool soundPool = this.soundPool;
        if (soundPool != null) {
            soundPool.release();
        }
    }

    public long getCallID() {
        TL_phone.PhoneCall phoneCall = this.privateCall;
        if (phoneCall != null) {
            return phoneCall.id;
        }
        return 0L;
    }

    public long getGroupCallID() {
        TLRPC.GroupCall groupCall;
        ChatObject.Call call = this.groupCall;
        if (call == null || (groupCall = call.call) == null) {
            return 0L;
        }
        return groupCall.id;
    }

    public void hangUp() {
        hangUp(0, null);
    }

    public void hangUp(int i) {
        hangUp(i, null);
    }

    public void hangUp(Runnable runnable) {
        hangUp(0, runnable);
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public void acceptIncomingCall() {
        updateCurrentForegroundType();
        MessagesController.getInstance(this.currentAccount).ignoreSetOnline = false;
        stopRinging();
        showNotification();
        configureDeviceForCall();
        startConnectingSound();
        dispatchStateChanged(12);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didStartedCall, new Object[0]);
            }
        });
        final MessagesStorage messagesStorage = MessagesStorage.getInstance(this.currentAccount);
        TLRPC.TL_messages_getDhConfig tL_messages_getDhConfig = new TLRPC.TL_messages_getDhConfig();
        tL_messages_getDhConfig.random_length = 256;
        tL_messages_getDhConfig.version = messagesStorage.getLastSecretVersion();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getDhConfig, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$acceptIncomingCall$103(messagesStorage, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acceptIncomingCall$103(MessagesStorage messagesStorage, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            TLRPC.messages_DhConfig messages_dhconfig = (TLRPC.messages_DhConfig) tLObject;
            if (tLObject instanceof TLRPC.TL_messages_dhConfig) {
                if (!Utilities.isGoodPrime(messages_dhconfig.f883p, messages_dhconfig.f882g)) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m896e("stopping VoIP service, bad prime");
                    }
                    callFailed();
                    return;
                } else {
                    messagesStorage.setSecretPBytes(messages_dhconfig.f883p);
                    messagesStorage.setSecretG(messages_dhconfig.f882g);
                    messagesStorage.setLastSecretVersion(messages_dhconfig.version);
                    MessagesStorage.getInstance(this.currentAccount).saveSecretParams(messagesStorage.getLastSecretVersion(), messagesStorage.getSecretG(), messagesStorage.getSecretPBytes());
                }
            }
            byte[] bArr = new byte[256];
            for (int i = 0; i < 256; i++) {
                bArr[i] = (byte) (((byte) (Utilities.random.nextDouble() * 256.0d)) ^ messages_dhconfig.random[i]);
            }
            if (this.privateCall == null) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m896e("call is null");
                }
                callFailed();
                return;
            }
            this.a_or_b = bArr;
            BigInteger bigIntegerModPow = BigInteger.valueOf(messagesStorage.getSecretG()).modPow(new BigInteger(1, bArr), new BigInteger(1, messagesStorage.getSecretPBytes()));
            this.g_a_hash = this.privateCall.g_a_hash;
            byte[] byteArray = bigIntegerModPow.toByteArray();
            if (byteArray.length > 256) {
                byte[] bArr2 = new byte[256];
                System.arraycopy(byteArray, 1, bArr2, 0, 256);
                byteArray = bArr2;
            }
            TL_phone.acceptCall acceptcall = new TL_phone.acceptCall();
            acceptcall.g_b = byteArray;
            TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
            acceptcall.peer = tL_inputPhoneCall;
            TL_phone.PhoneCall phoneCall = this.privateCall;
            tL_inputPhoneCall.id = phoneCall.id;
            tL_inputPhoneCall.access_hash = phoneCall.access_hash;
            TL_phone.TL_phoneCallProtocol tL_phoneCallProtocol = new TL_phone.TL_phoneCallProtocol();
            acceptcall.protocol = tL_phoneCallProtocol;
            tL_phoneCallProtocol.udp_reflector = true;
            tL_phoneCallProtocol.udp_p2p = true;
            tL_phoneCallProtocol.min_layer = 65;
            tL_phoneCallProtocol.max_layer = Instance.getConnectionMaxLayer();
            Collections.addAll(acceptcall.protocol.library_versions, NativeInstance.getAllVersions());
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(acceptcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda87
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    this.f$0.lambda$acceptIncomingCall$102(tLObject2, tL_error2);
                }
            }, 65536);
            return;
        }
        callFailed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acceptIncomingCall$102(final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda46
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$acceptIncomingCall$101(tL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$acceptIncomingCall$101(TLRPC.TL_error tL_error, TLObject tLObject) {
        if (tL_error == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m899w("accept call ok! " + tLObject);
            }
            TL_phone.PhoneCall phoneCall = ((TL_phone.TL_phone_phoneCall) tLObject).phone_call;
            this.privateCall = phoneCall;
            if (phoneCall instanceof TL_phone.TL_phoneCallDiscarded) {
                onCallUpdated(phoneCall);
                return;
            }
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m896e("Error on phone.acceptCall: " + tL_error);
        }
        callFailed();
    }

    public void declineIncomingCall(int i, Runnable runnable) {
        if (this.groupCall != null) {
            stopScreenCapture();
        }
        stopRinging();
        this.callDiscardReason = i;
        int i2 = this.currentState;
        if (i2 == 14) {
            Runnable runnable2 = this.delayedStartOutgoingCall;
            if (runnable2 != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable2);
                callEnded();
                return;
            } else {
                dispatchStateChanged(10);
                this.endCallAfterRequest = true;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda50
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$declineIncomingCall$104();
                    }
                }, 5000L);
                return;
            }
        }
        if (i2 == 10 || i2 == 11) {
            return;
        }
        dispatchStateChanged(10);
        if (this.privateCall == null) {
            this.onDestroyRunnable = runnable;
            callEnded();
            if (this.callReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.callReqId, false);
                this.callReqId = 0;
                return;
            }
            return;
        }
        TL_phone.discardCall discardcall = new TL_phone.discardCall();
        TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
        discardcall.peer = tL_inputPhoneCall;
        TL_phone.PhoneCall phoneCall = this.privateCall;
        tL_inputPhoneCall.access_hash = phoneCall.access_hash;
        tL_inputPhoneCall.id = phoneCall.id;
        discardcall.duration = (int) (getCallDuration() / 1000);
        NativeInstance nativeInstance = this.tgVoip[0];
        discardcall.connection_id = nativeInstance != null ? nativeInstance.getPreferredRelayId() : 0L;
        if (i == 2) {
            discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonDisconnect();
        } else if (i == 3) {
            discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonMissed();
        } else if (i == 4) {
            discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonBusy();
        } else if (i == 5) {
            TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall tL_phoneCallDiscardReasonMigrateConferenceCall = new TLRPC.TL_phoneCallDiscardReasonMigrateConferenceCall();
            discardcall.reason = tL_phoneCallDiscardReasonMigrateConferenceCall;
            tL_phoneCallDiscardReasonMigrateConferenceCall.slug = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonHangup();
        }
        FileLog.m896e("discardCall " + discardcall.reason);
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(discardcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda51
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$declineIncomingCall$105(tLObject, tL_error);
            }
        }, 65536);
        this.onDestroyRunnable = runnable;
        callEnded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$declineIncomingCall$104() {
        if (this.currentState == 10) {
            callEnded();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$declineIncomingCall$105(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m896e("error on phone.discardCall: " + tL_error);
                return;
            }
            return;
        }
        if (tLObject instanceof TLRPC.TL_updates) {
            MessagesController.getInstance(this.currentAccount).processUpdates((TLRPC.TL_updates) tLObject, false);
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("phone.discardCall " + tLObject);
        }
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public void declineIncomingCall() {
        declineIncomingCall(1, null);
    }

    private Class<? extends Activity> getUIActivityClass() {
        return LaunchActivity.class;
    }

    @TargetApi(26)
    public CallConnection getConnectionAndStartCall() {
        if (this.systemCallConnection == null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("creating call connection");
            }
            CallConnection callConnection = new CallConnection();
            this.systemCallConnection = callConnection;
            callConnection.setInitializing();
            if (this.isOutgoing) {
                Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda117
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$getConnectionAndStartCall$106();
                    }
                };
                this.delayedStartOutgoingCall = runnable;
                AndroidUtilities.runOnUIThread(runnable, 2000L);
            }
            this.systemCallConnection.setAddress(Uri.fromParts("tel", "+99084" + this.user.id, null), 1);
            CallConnection callConnection2 = this.systemCallConnection;
            TLRPC.User user = this.user;
            callConnection2.setCallerDisplayName(ContactsController.formatName(user.first_name, user.last_name), 1);
        }
        return this.systemCallConnection;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getConnectionAndStartCall$106() {
        this.delayedStartOutgoingCall = null;
        startOutgoingCall();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startRinging() {
        CallConnection callConnection;
        if (this.currentState == 15) {
            return;
        }
        if (USE_CONNECTION_SERVICE && (callConnection = this.systemCallConnection) != null) {
            callConnection.setRinging();
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("starting ringing for call " + this.privateCall.id);
        }
        dispatchStateChanged(15);
        boolean z = this.notificationsDisabled;
        TLRPC.User user = this.user;
        if (!z) {
            showIncomingNotification(ContactsController.formatName(user.first_name, user.last_name), this.user, this.privateCall.video, 0);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("Showing incoming call notification");
                return;
            }
            return;
        }
        startRingtoneAndVibration(user.id);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("Starting incall activity for incoming call");
        }
        try {
            PendingIntent.getActivity(this, 12345, new Intent(this, (Class<?>) LaunchActivity.class).setAction("voip"), 33554432).send();
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("Error starting incall activity", e);
            }
        }
    }

    public void startRingtoneAndVibration() {
        if (this.startedRinging) {
            return;
        }
        startRingtoneAndVibration(this.user.id);
        this.startedRinging = true;
    }

    private void updateServerConfig() {
        final SharedPreferences mainSettings = MessagesController.getMainSettings(this.currentAccount);
        Instance.setGlobalServerConfig(mainSettings.getString("voip_server_config", "{}"));
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TL_phone.getCallConfig(), new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda84
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                VoIPService.$r8$lambda$ky0Ni3_eN3vaYNjuGuhVV0p6TQM(mainSettings, tLObject, tL_error);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$ky0Ni3_eN3vaYNjuGuhVV0p6TQM(SharedPreferences sharedPreferences, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error == null) {
            String str = ((TLRPC.TL_dataJSON) tLObject).data;
            Instance.setGlobalServerConfig(str);
            sharedPreferences.edit().putString("voip_server_config", str).apply();
        }
    }

    private void showNotification() {
        if (this.user != null) {
            showNotification(getTitle(), getRoundAvatarBitmap(this, this.currentAccount, this.user));
        } else {
            showNotification(getTitle(), getRoundAvatarBitmap(this, this.currentAccount, this.chat));
        }
    }

    public static String convertStreamToString(InputStream inputStream) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                sb.append(line);
                sb.append("\n");
            } else {
                bufferedReader.close();
                return sb.toString();
            }
        }
    }

    public static String getStringFromFile(String str) throws IOException {
        FileInputStream fileInputStream = new FileInputStream(new File(str));
        String strConvertStreamToString = convertStreamToString(fileInputStream);
        fileInputStream.close();
        return strConvertStreamToString;
    }

    public boolean hasRate() {
        return this.needRateCall || this.forceRating;
    }

    private void onTgVoipStop(Instance.FinalState finalState) {
        if (this.user == null || this.privateCall == null || finalState == null) {
            return;
        }
        if (TextUtils.isEmpty(finalState.debugLog)) {
            try {
                finalState.debugLog = getStringFromFile(VoIPHelper.getLogFilePath(_UrlKt.FRAGMENT_ENCODE_SET + this.privateCall.id, true));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (messagesController.voipDebug == null) {
            messagesController.voipDebug = new VoIPDebugToSend(this.currentAccount);
        }
        VoIPDebugToSend voIPDebugToSend = messagesController.voipDebug;
        TL_phone.PhoneCall phoneCall = this.privateCall;
        voIPDebugToSend.push(phoneCall.id, phoneCall.access_hash, finalState, this.lastLogFilePath);
        this.lastLogFilePath = null;
        boolean z = this.needSendDebugLog;
        if (z) {
            messagesController.voipDebug.done(this.privateCall.id, z);
            this.needSendDebugLog = false;
        }
    }

    private void initializeAccountRelatedThings() {
        updateServerConfig();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.appDidLogout);
        ConnectionsManager.getInstance(this.currentAccount).setAppPaused(false, false);
    }

    @Override // android.app.Service
    @SuppressLint({"InvalidWakeLockTag"})
    public void onCreate() {
        super.onCreate();
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("=============== VoIPService STARTING ===============");
        }
        try {
            AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            if (audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER") != null) {
                Instance.setBufferSize(Integer.parseInt(audioManager.getProperty("android.media.property.OUTPUT_FRAMES_PER_BUFFER")));
            } else {
                Instance.setBufferSize(AudioTrack.getMinBufferSize(48000, 4, 2) / 2);
            }
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) getSystemService("power")).newWakeLock(1, "telegram-voip");
            this.cpuWakelock = wakeLockNewWakeLock;
            wakeLockNewWakeLock.acquire();
            this.btAdapter = audioManager.isBluetoothScoAvailableOffCall() ? BluetoothAdapter.getDefaultAdapter() : null;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            if (!USE_CONNECTION_SERVICE) {
                intentFilter.addAction(ACTION_HEADSET_PLUG);
                if (this.btAdapter != null) {
                    intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
                    intentFilter.addAction("android.media.ACTION_SCO_AUDIO_STATE_UPDATED");
                }
                intentFilter.addAction("android.intent.action.PHONE_STATE");
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                intentFilter.addAction("android.intent.action.SCREEN_OFF");
            }
            registerReceiver(this.receiver, intentFilter);
            fetchBluetoothDeviceName();
            if (this.audioDeviceCallback == null) {
                try {
                    this.audioDeviceCallback = new AudioDeviceCallback() { // from class: org.telegram.messenger.voip.VoIPService.10
                        @Override // android.media.AudioDeviceCallback
                        public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                            VoIPService.this.checkUpdateBluetoothHeadset();
                        }

                        @Override // android.media.AudioDeviceCallback
                        public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                            VoIPService.this.checkUpdateBluetoothHeadset();
                        }
                    };
                } catch (Throwable th) {
                    FileLog.m898e(th);
                    this.audioDeviceCallback = null;
                }
            }
            AudioDeviceCallback audioDeviceCallback = this.audioDeviceCallback;
            if (audioDeviceCallback != null) {
                audioManager.registerAudioDeviceCallback(audioDeviceCallback, new Handler(Looper.getMainLooper()));
            }
            audioManager.registerMediaButtonEventReceiver(new ComponentName(this, (Class<?>) VoIPMediaButtonReceiver.class));
            checkUpdateBluetoothHeadset();
        } catch (Exception e) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("error initializing voip controller", e);
            }
            callFailed();
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            if (callIShouldHavePutIntoIntent != null) {
                NotificationsController.checkOtherNotificationsChannel();
                FilesMigrationService$$ExternalSyntheticApiModelOutline1.m901m();
                Notification.Builder showWhen = FilesMigrationService$$ExternalSyntheticApiModelOutline0.m900m(this, NotificationsController.OTHER_NOTIFICATIONS_CHANNEL).setContentTitle(LocaleController.getString(C2573R.string.VoipOutgoingCall)).setShowWhen(false);
                if (this.groupCall != null) {
                    showWhen.setSmallIcon(isMicMute() ? C2573R.drawable.voicechat_muted : C2573R.drawable.voicechat_active);
                } else {
                    showWhen.setSmallIcon(C2573R.drawable.call);
                }
                this.foregroundStarted = true;
                if (i >= 33) {
                    this.foregroundId = 201;
                    Notification notificationBuild = showWhen.build();
                    this.foregroundNotification = notificationBuild;
                    int currentForegroundType = getCurrentForegroundType();
                    this.lastForegroundType = currentForegroundType;
                    startForeground(201, notificationBuild, currentForegroundType);
                    return;
                }
                this.foregroundId = 201;
                Notification notificationBuild2 = showWhen.build();
                this.foregroundNotification = notificationBuild2;
                startForeground(201, notificationBuild2);
                return;
            }
            NotificationsController.checkOtherNotificationsChannel();
            FilesMigrationService$$ExternalSyntheticApiModelOutline1.m901m();
            Notification.Builder showWhen2 = FilesMigrationService$$ExternalSyntheticApiModelOutline0.m900m(this, NotificationsController.OTHER_NOTIFICATIONS_CHANNEL).setContentTitle(LocaleController.getString(C2573R.string.VoipCallEnded)).setShowWhen(false);
            showWhen2.setSmallIcon(C2573R.drawable.call);
            this.foregroundStarted = true;
            if (i >= 33) {
                this.foregroundId = 201;
                Notification notificationBuild3 = showWhen2.build();
                this.foregroundNotification = notificationBuild3;
                int currentForegroundType2 = getCurrentForegroundType();
                this.lastForegroundType = currentForegroundType2;
                startForeground(201, notificationBuild3, currentForegroundType2);
                return;
            }
            this.foregroundId = 201;
            Notification notificationBuild4 = showWhen2.build();
            this.foregroundNotification = notificationBuild4;
            startForeground(201, notificationBuild4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkUpdateBluetoothHeadset() {
        BluetoothAdapter bluetoothAdapter;
        if (USE_CONNECTION_SERVICE || (bluetoothAdapter = this.btAdapter) == null || !bluetoothAdapter.isEnabled()) {
            return;
        }
        try {
            MediaRouter mediaRouter = (MediaRouter) getSystemService("media_router");
            AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            boolean z = true;
            MediaRouter.RouteInfo selectedRoute = mediaRouter.getSelectedRoute(1);
            if (PermissionRequest.hasPermission("android.permission.BLUETOOTH_CONNECT") && selectedRoute.getDeviceType() == 3) {
                int i = 0;
                if (this.btAdapter.getProfileConnectionState(1) != 2) {
                    z = false;
                }
                updateBluetoothHeadsetState(z);
                ArrayList<StateListener> arrayList = this.stateListeners;
                int size = arrayList.size();
                while (i < size) {
                    StateListener stateListener = arrayList.get(i);
                    i++;
                    stateListener.onAudioSettingsChanged();
                }
                return;
            }
            updateBluetoothHeadsetState(audioManager.isBluetoothA2dpOn());
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
    }

    private void loadResources() {
        WebRtcAudioTrack.setAudioTrackUsageAttribute(2);
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadResources$108();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadResources$108() {
        SoundPool soundPool = new SoundPool(1, 0, 0);
        this.soundPool = soundPool;
        this.spConnectingId = soundPool.load(this, C2573R.raw.voip_connecting, 1);
        this.spRingbackID = this.soundPool.load(this, C2573R.raw.voip_ringback, 1);
        this.spFailedID = this.soundPool.load(this, C2573R.raw.voip_failed, 1);
        this.spEndId = this.soundPool.load(this, C2573R.raw.voip_end, 1);
        this.spBusyId = this.soundPool.load(this, C2573R.raw.voip_busy, 1);
        this.spVoiceChatEndId = this.soundPool.load(this, C2573R.raw.voicechat_leave, 1);
        this.spVoiceChatStartId = this.soundPool.load(this, C2573R.raw.voicechat_join, 1);
        this.spVoiceChatConnecting = this.soundPool.load(this, C2573R.raw.voicechat_connecting, 1);
        this.spAllowTalkId = this.soundPool.load(this, C2573R.raw.voip_onallowtalk, 1);
        this.spStartRecordId = this.soundPool.load(this, C2573R.raw.voip_recordstart, 1);
    }

    private void dispatchStateChanged(int i) {
        CallConnection callConnection;
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("== Call " + getCallID() + " state changed to " + i + " ==");
        }
        this.currentState = i;
        if (i == 3) {
            destroyConverting();
        }
        if (USE_CONNECTION_SERVICE && i == 3 && (callConnection = this.systemCallConnection) != null) {
            callConnection.setActive();
        }
        for (int i2 = 0; i2 < this.stateListeners.size(); i2++) {
            this.stateListeners.get(i2).onStateChanged(i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTrafficStats(NativeInstance nativeInstance, Instance.TrafficStats trafficStats) {
        if (nativeInstance == null) {
            return;
        }
        if (trafficStats == null) {
            trafficStats = nativeInstance.getTrafficStats();
        }
        if (trafficStats == null) {
            return;
        }
        long j = trafficStats.bytesSentWifi;
        Instance.TrafficStats trafficStats2 = this.prevTrafficStats;
        long j2 = j - (trafficStats2 != null ? trafficStats2.bytesSentWifi : 0L);
        long j3 = trafficStats.bytesReceivedWifi - (trafficStats2 != null ? trafficStats2.bytesReceivedWifi : 0L);
        long j4 = trafficStats.bytesSentMobile - (trafficStats2 != null ? trafficStats2.bytesSentMobile : 0L);
        long j5 = trafficStats.bytesReceivedMobile - (trafficStats2 != null ? trafficStats2.bytesReceivedMobile : 0L);
        this.prevTrafficStats = trafficStats;
        if (j2 > 0) {
            StatsController.getInstance(this.currentAccount).incrementSentBytesCount(1, 0, j2);
        }
        if (j3 > 0) {
            StatsController.getInstance(this.currentAccount).incrementReceivedBytesCount(1, 0, j3);
        }
        if (j4 > 0) {
            StatsController statsController = StatsController.getInstance(this.currentAccount);
            NetworkInfo networkInfo = this.lastNetInfo;
            statsController.incrementSentBytesCount((networkInfo == null || !networkInfo.isRoaming()) ? 0 : 2, 0, j4);
        }
        if (j5 > 0) {
            StatsController statsController2 = StatsController.getInstance(this.currentAccount);
            NetworkInfo networkInfo2 = this.lastNetInfo;
            statsController2.incrementReceivedBytesCount((networkInfo2 == null || !networkInfo2.isRoaming()) ? 0 : 2, 0, j5);
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    private void configureDeviceForCall() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("configureDeviceForCall, route to set = " + this.audioRouteToSet);
        }
        WebRtcAudioTrack.setAudioTrackUsageAttribute(hasRtmpStream() ? 1 : 2);
        WebRtcAudioTrack.setAudioStreamType(hasRtmpStream() ? Integer.MIN_VALUE : 0);
        this.needPlayEndSound = true;
        final AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        if (!USE_CONNECTION_SERVICE) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda86
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$configureDeviceForCall$111(audioManager);
                }
            });
        }
        SensorManager sensorManager = (SensorManager) ApplicationLoader.applicationContext.getSystemService("sensor");
        Sensor defaultSensor = sensorManager.getDefaultSensor(8);
        if (defaultSensor != null) {
            try {
                this.proximityWakelock = ((PowerManager) getSystemService("power")).newWakeLock(32, "telegram-voip-prx");
                sensorManager.registerListener(this, defaultSensor, 3);
            } catch (Exception e) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m897e("Error initializing proximity sensor", e);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configureDeviceForCall$111(final AudioManager audioManager) {
        try {
        } catch (Exception e) {
            FileLog.m898e(e);
        }
        if (hasRtmpStream()) {
            audioManager.setMode(0);
            audioManager.setBluetoothScoOn(false);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda98
                @Override // java.lang.Runnable
                public final void run() {
                    VoIPService.$r8$lambda$Th4iaD1c4X1DsGtbwwD7IR8H2pA();
                }
            });
        } else {
            audioManager.setMode(3);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda99
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$configureDeviceForCall$110(audioManager);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$Th4iaD1c4X1DsGtbwwD7IR8H2pA() {
        if (MediaController.getInstance().isMessagePaused()) {
            return;
        }
        MediaController.getInstance().lambda$startAudioAgain$7(MediaController.getInstance().getPlayingMessageObject());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$configureDeviceForCall$110(AudioManager audioManager) {
        this.hasAudioFocus = audioManager.requestAudioFocus(this, 0, 2) == 1;
        VoipAudioManager voipAudioManager = VoipAudioManager.get();
        if (isBluetoothHeadsetConnected() && hasEarpiece()) {
            int i = this.audioRouteToSet;
            if (i == 0) {
                audioManager.setBluetoothScoOn(false);
                voipAudioManager.setSpeakerphoneOn(false);
            } else if (i == 1) {
                audioManager.setBluetoothScoOn(false);
                voipAudioManager.setSpeakerphoneOn(true);
            } else if (i == 2) {
                if (!this.bluetoothScoActive) {
                    this.needSwitchToBluetoothAfterScoActivates = true;
                    try {
                        audioManager.startBluetoothSco();
                    } catch (Throwable th) {
                        FileLog.m898e(th);
                    }
                } else {
                    audioManager.setBluetoothScoOn(true);
                    voipAudioManager.setSpeakerphoneOn(false);
                }
            }
        } else {
            boolean zIsBluetoothHeadsetConnected = isBluetoothHeadsetConnected();
            boolean z = this.speakerphoneStateToSet;
            if (zIsBluetoothHeadsetConnected) {
                audioManager.setBluetoothScoOn(z);
            } else {
                voipAudioManager.setSpeakerphoneOn(z);
                if (this.speakerphoneStateToSet) {
                    this.audioRouteToSet = 1;
                } else {
                    this.audioRouteToSet = 0;
                }
                SensorEvent sensorEvent = this.lastSensorEvent;
                if (sensorEvent != null) {
                    onSensorChanged(sensorEvent);
                }
            }
        }
        updateOutputGainControlState();
        this.audioConfigured = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fetchBluetoothDeviceName() {
        if (this.fetchingBluetoothDeviceName) {
            return;
        }
        try {
            this.currentBluetoothDeviceName = null;
            this.fetchingBluetoothDeviceName = true;
            BluetoothAdapter.getDefaultAdapter().getProfileProxy(this, this.serviceListener, 1);
        } catch (Throwable th) {
            FileLog.m898e(th);
        }
    }

    @Override // android.hardware.SensorEventListener
    @SuppressLint({"NewApi"})
    public void onSensorChanged(SensorEvent sensorEvent) {
        this.lastSensorEvent = sensorEvent;
        if (this.unmutedByHold || this.remoteVideoState == 2) {
            return;
        }
        if (this.videoState[0] != 2 && sensorEvent.sensor.getType() == 8) {
            AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
            VoipAudioManager voipAudioManager = VoipAudioManager.get();
            if (this.audioRouteToSet != 0 || this.isHeadsetPlugged || voipAudioManager.isSpeakerphoneOn()) {
                return;
            }
            if (isBluetoothHeadsetConnected() && audioManager.isBluetoothScoOn()) {
                return;
            }
            boolean z = sensorEvent.values[0] < Math.min(sensorEvent.sensor.getMaximumRange(), 3.0f);
            checkIsNear(z);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.nearEarEvent, Boolean.valueOf(z));
        }
    }

    private void checkIsNear() {
        if (this.remoteVideoState == 2 || this.videoState[0] == 2) {
            checkIsNear(false);
        }
    }

    private void checkIsNear(boolean z) {
        if (z != this.isProximityNear) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("proximity " + z);
            }
            this.isProximityNear = z;
            PowerManager.WakeLock wakeLock = this.proximityWakelock;
            try {
                if (z) {
                    wakeLock.acquire();
                } else {
                    wakeLock.release(1);
                }
            } catch (Exception e) {
                FileLog.m898e(e);
            }
        }
    }

    public boolean isBluetoothHeadsetConnected() {
        CallConnection callConnection;
        if (!USE_CONNECTION_SERVICE || (callConnection = this.systemCallConnection) == null || callConnection.getCallAudioState() == null) {
            return this.isBtHeadsetConnected;
        }
        return (this.systemCallConnection.getCallAudioState().getSupportedRouteMask() & 2) != 0;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public void onAudioFocusChange(int i) {
        if (i == 1) {
            this.hasAudioFocus = true;
        } else {
            this.hasAudioFocus = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateBluetoothHeadsetState(boolean z) {
        if (z == this.isBtHeadsetConnected) {
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("updateBluetoothHeadsetState: " + z);
        }
        this.isBtHeadsetConnected = z;
        final AudioManager audioManager = (AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
        int i = 0;
        if (z && !isRinging() && this.currentState != 0) {
            if (this.bluetoothScoActive) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("SCO already active, setting audio routing");
                }
                if (!hasRtmpStream()) {
                    audioManager.setSpeakerphoneOn(false);
                    audioManager.setBluetoothScoOn(true);
                }
            } else {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m895d("startBluetoothSco");
                }
                if (!hasRtmpStream()) {
                    this.needSwitchToBluetoothAfterScoActivates = true;
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda82
                        @Override // java.lang.Runnable
                        public final void run() {
                            audioManager.startBluetoothSco();
                        }
                    }, 500L);
                }
            }
        } else {
            this.bluetoothScoActive = false;
            this.bluetoothScoConnecting = false;
            audioManager.setBluetoothScoOn(false);
        }
        ArrayList<StateListener> arrayList = this.stateListeners;
        int size = arrayList.size();
        while (i < size) {
            StateListener stateListener = arrayList.get(i);
            i++;
            stateListener.onAudioSettingsChanged();
        }
    }

    public String getLastError() {
        return this.lastError;
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public int getCallState() {
        return this.currentState;
    }

    public TLRPC.InputPeer getGroupCallPeer() {
        return this.groupCallPeer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNetworkType() {
        NativeInstance nativeInstance = this.tgVoip[0];
        if (nativeInstance != null) {
            if (nativeInstance.isGroup()) {
                return;
            }
            this.tgVoip[0].setNetworkType(getNetworkType());
            return;
        }
        this.lastNetInfo = getActiveNetworkInfo();
    }

    private int getNetworkType() {
        NetworkInfo activeNetworkInfo = getActiveNetworkInfo();
        this.lastNetInfo = activeNetworkInfo;
        if (activeNetworkInfo == null) {
            return 0;
        }
        int type = activeNetworkInfo.getType();
        if (type != 0) {
            if (type != 1) {
                return type != 9 ? 0 : 7;
            }
            return 6;
        }
        switch (activeNetworkInfo.getSubtype()) {
            case 1:
                return 1;
            case 2:
            case 7:
                return 2;
            case 3:
            case 5:
                return 3;
            case 4:
            case 11:
            case 14:
            default:
                return 11;
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 15:
                return 4;
            case 13:
                return 5;
        }
    }

    private NetworkInfo getActiveNetworkInfo() {
        return ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callFailed() {
        NativeInstance nativeInstance = this.tgVoip[0];
        callFailed(nativeInstance != null ? nativeInstance.getLastError() : Instance.ERROR_UNKNOWN);
    }

    public static Bitmap getRoundAvatarBitmap(Context context, int i, TLObject tLObject) {
        AvatarDrawable avatarDrawable;
        TLRPC.ChatPhoto chatPhoto;
        Bitmap bitmapCreateBitmap = null;
        try {
            if (tLObject instanceof TLRPC.User) {
                TLRPC.User user = (TLRPC.User) tLObject;
                TLRPC.UserProfilePhoto userProfilePhoto = user.photo;
                if (userProfilePhoto != null && userProfilePhoto.photo_small != null) {
                    BitmapDrawable imageFromMemory = ImageLoader.getInstance().getImageFromMemory(user.photo.photo_small, null, "50_50");
                    if (imageFromMemory != null) {
                        bitmapCreateBitmap = imageFromMemory.getBitmap().copy(Bitmap.Config.ARGB_8888, true);
                    } else {
                        try {
                            BitmapFactory.Options options = new BitmapFactory.Options();
                            options.inMutable = true;
                            bitmapCreateBitmap = BitmapFactory.decodeFile(FileLoader.getInstance(i).getPathToAttach(user.photo.photo_small, true).toString(), options);
                        } catch (Throwable th) {
                            FileLog.m898e(th);
                        }
                    }
                }
            } else {
                TLRPC.Chat chat = (TLRPC.Chat) tLObject;
                if (chat != null && (chatPhoto = chat.photo) != null && chatPhoto.photo_small != null) {
                    BitmapDrawable imageFromMemory2 = ImageLoader.getInstance().getImageFromMemory(chat.photo.photo_small, null, "50_50");
                    if (imageFromMemory2 != null) {
                        bitmapCreateBitmap = imageFromMemory2.getBitmap().copy(Bitmap.Config.ARGB_8888, true);
                    } else {
                        try {
                            BitmapFactory.Options options2 = new BitmapFactory.Options();
                            options2.inMutable = true;
                            bitmapCreateBitmap = BitmapFactory.decodeFile(FileLoader.getInstance(i).getPathToAttach(chat.photo.photo_small, true).toString(), options2);
                        } catch (Throwable th2) {
                            FileLog.m898e(th2);
                        }
                    }
                }
            }
        } catch (Throwable th3) {
            FileLog.m898e(th3);
        }
        if (bitmapCreateBitmap == null) {
            Theme.createDialogsResources(context);
            if (tLObject instanceof TLRPC.User) {
                avatarDrawable = new AvatarDrawable((TLRPC.User) tLObject);
            } else {
                avatarDrawable = new AvatarDrawable((TLRPC.Chat) tLObject);
            }
            bitmapCreateBitmap = Bitmap.createBitmap(AndroidUtilities.dp(42.0f), AndroidUtilities.dp(42.0f), Bitmap.Config.ARGB_8888);
            avatarDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
            avatarDrawable.draw(new Canvas(bitmapCreateBitmap));
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Path path = new Path();
        path.addCircle(bitmapCreateBitmap.getWidth() / 2, bitmapCreateBitmap.getHeight() / 2, bitmapCreateBitmap.getWidth() / 2, Path.Direction.CW);
        path.toggleInverseFillType();
        Paint paint = new Paint(1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        canvas.drawPath(path, paint);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d9  */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v4 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void showIncomingNotification(String str, TLObject tLObject, boolean z, int i) {
        int i2;
        Notification notification;
        boolean z2;
        Intent intent = new Intent(this, (Class<?>) LaunchActivity.class);
        intent.setAction("voip");
        Notification.Builder contentIntent = new Notification.Builder(this).setContentTitle(LocaleController.getString(z ? C2573R.string.VoipInVideoCallBranding : C2573R.string.VoipInCallBranding)).setSmallIcon(C2573R.drawable.call).setContentIntent(PendingIntent.getActivity(this, 0, intent, 33554432));
        if (Build.VERSION.SDK_INT >= 26) {
            SharedPreferences globalNotificationsSettings = MessagesController.getGlobalNotificationsSettings();
            int i3 = globalNotificationsSettings.getInt("calls_notification_channel", 0);
            NotificationManager notificationManager = (NotificationManager) getSystemService("notification");
            NotificationChannel notificationChannel = notificationManager.getNotificationChannel("incoming_calls2" + i3);
            if (notificationChannel != null) {
                notificationManager.deleteNotificationChannel(notificationChannel.getId());
            }
            NotificationChannel notificationChannel2 = notificationManager.getNotificationChannel("incoming_calls3" + i3);
            if (notificationChannel2 != null) {
                notificationManager.deleteNotificationChannel(notificationChannel2.getId());
            }
            NotificationChannel notificationChannel3 = notificationManager.getNotificationChannel("incoming_calls4" + i3);
            if (notificationChannel3 != null) {
                if (notificationChannel3.getImportance() < 4 || notificationChannel3.getSound() != null) {
                    if (BuildVars.LOGS_ENABLED) {
                        FileLog.m895d("User messed up the notification channel; deleting it and creating a proper one");
                    }
                    notificationManager.deleteNotificationChannel("incoming_calls4" + i3);
                    i3++;
                    globalNotificationsSettings.edit().putInt("calls_notification_channel", i3).apply();
                    z2 = true;
                    if (z2) {
                    }
                    contentIntent.setChannelId("incoming_calls4" + i3);
                } else {
                    z2 = false;
                    if (z2) {
                    }
                    contentIntent.setChannelId("incoming_calls4" + i3);
                }
            } else {
                z2 = true;
                if (z2) {
                    AudioAttributes audioAttributesBuild = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(2).setUsage(2).build();
                    CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline1.m281m();
                    NotificationChannel notificationChannelM280m = CastRemoteDisplayLocalService$$ExternalSyntheticApiModelOutline0.m280m("incoming_calls4" + i3, LocaleController.getString(C2573R.string.IncomingCallsSystemSetting), 4);
                    try {
                        notificationChannelM280m.setSound(null, audioAttributesBuild);
                    } catch (Exception e) {
                        FileLog.m898e(e);
                    }
                    notificationChannelM280m.setDescription(LocaleController.getString(C2573R.string.IncomingCallsSystemSettingDescription));
                    notificationChannelM280m.enableVibration(false);
                    notificationChannelM280m.enableLights(false);
                    notificationChannelM280m.setBypassDnd(true);
                    try {
                        notificationManager.createNotificationChannel(notificationChannelM280m);
                    } catch (Exception e2) {
                        FileLog.m898e(e2);
                        stopSelf();
                        return;
                    }
                }
                contentIntent.setChannelId("incoming_calls4" + i3);
            }
        } else {
            contentIntent.setSound(null);
        }
        Intent intent2 = new Intent(this, (Class<?>) VoIPActionsReceiver.class);
        intent2.setAction(getPackageName() + ".DECLINE_CALL");
        intent2.putExtra("call_id", getCallID());
        CharSequence string = LocaleController.getString(C2573R.string.VoipDeclineCall);
        int i4 = Build.VERSION.SDK_INT;
        if (i4 < 31) {
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ForegroundColorSpan(-769226), 0, spannableString.length(), 0);
            string = spannableString;
        }
        PendingIntent broadcast = PendingIntent.getBroadcast(this, 0, intent2, 301989888);
        Intent intent3 = new Intent(this, (Class<?>) VoIPActionsReceiver.class);
        intent3.setAction(getPackageName() + ".ANSWER_CALL");
        intent3.putExtra("call_id", getCallID());
        CharSequence string2 = LocaleController.getString(C2573R.string.VoipAnswerCall);
        if (i4 < 31) {
            SpannableString spannableString2 = new SpannableString(string2);
            i2 = 0;
            spannableString2.setSpan(new ForegroundColorSpan(-16733696), 0, spannableString2.length(), 0);
            string2 = spannableString2;
        } else {
            i2 = 0;
        }
        PendingIntent broadcast2 = PendingIntent.getBroadcast(this, i2, intent3, 301989888);
        contentIntent.setPriority(2);
        contentIntent.setShowWhen(i2);
        contentIntent.setColor(-13851168);
        contentIntent.setVibrate(new long[i2]);
        contentIntent.setCategory("call");
        contentIntent.setFullScreenIntent(PendingIntent.getActivity(this, i2, intent, 33554432), true);
        if (tLObject instanceof TLRPC.User) {
            TLRPC.User user = (TLRPC.User) tLObject;
            if (!TextUtils.isEmpty(user.phone)) {
                contentIntent.addPerson("tel:" + user.phone);
            }
        }
        if (i4 >= 31) {
            Bitmap roundAvatarBitmap = getRoundAvatarBitmap(this, this.currentAccount, tLObject);
            String name = ContactsController.formatName(tLObject);
            if (TextUtils.isEmpty(name)) {
                name = "___";
            }
            contentIntent.setStyle(Notification.CallStyle.forIncomingCall(VoIPGroupNotification$$ExternalSyntheticApiModelOutline0.m927m().setName(name).setIcon(Icon.createWithAdaptiveBitmap(roundAvatarBitmap)).build(), broadcast, broadcast2));
            notification = contentIntent.build();
        } else {
            contentIntent.addAction(C2573R.drawable.ic_call_end_white_24dp, string, broadcast);
            contentIntent.addAction(C2573R.drawable.call, string2, broadcast2);
            contentIntent.setContentText(str);
            RemoteViews remoteViews = new RemoteViews(getPackageName(), LocaleController.isRTL ? C2573R.layout.call_notification_rtl : C2573R.layout.call_notification);
            remoteViews.setTextViewText(C2573R.id.name, str);
            remoteViews.setViewVisibility(C2573R.id.subtitle, 8);
            if (UserConfig.getActivatedAccountsCount() > 1) {
                TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
                remoteViews.setTextViewText(C2573R.id.title, z ? LocaleController.formatString("VoipInVideoCallBrandingWithName", C2573R.string.VoipInVideoCallBrandingWithName, ContactsController.formatName(currentUser.first_name, currentUser.last_name)) : LocaleController.formatString("VoipInCallBrandingWithName", C2573R.string.VoipInCallBrandingWithName, ContactsController.formatName(currentUser.first_name, currentUser.last_name)));
            } else {
                remoteViews.setTextViewText(C2573R.id.title, LocaleController.getString(z ? C2573R.string.VoipInVideoCallBranding : C2573R.string.VoipInCallBranding));
            }
            Bitmap roundAvatarBitmap2 = getRoundAvatarBitmap(this, this.currentAccount, tLObject);
            remoteViews.setTextViewText(C2573R.id.answer_text, LocaleController.getString(C2573R.string.VoipAnswerCall));
            remoteViews.setTextViewText(C2573R.id.decline_text, LocaleController.getString(C2573R.string.VoipDeclineCall));
            remoteViews.setImageViewBitmap(C2573R.id.photo, roundAvatarBitmap2);
            remoteViews.setOnClickPendingIntent(C2573R.id.answer_btn, broadcast2);
            remoteViews.setOnClickPendingIntent(C2573R.id.decline_btn, broadcast);
            contentIntent.setLargeIcon(roundAvatarBitmap2);
            notification = contentIntent.getNotification();
            notification.bigContentView = remoteViews;
            notification.headsUpContentView = remoteViews;
        }
        this.foregroundStarted = true;
        if (i4 >= 33) {
            this.foregroundId = 202;
            this.foregroundNotification = notification;
            int currentForegroundType = getCurrentForegroundType();
            this.lastForegroundType = currentForegroundType;
            startForeground(202, notification, currentForegroundType);
        } else {
            this.foregroundId = 202;
            this.foregroundNotification = notification;
            startForeground(202, notification);
        }
        startRingtoneAndVibration();
    }

    private int getCurrentForegroundType() {
        return getCurrentForegroundType(this, this.gotMediaProjection);
    }

    private static int getCurrentForegroundType(ContextWrapper contextWrapper, boolean z) {
        if (Build.VERSION.SDK_INT < 29) {
            return Opcodes.USHR_INT_LIT8;
        }
        int i = contextWrapper.checkSelfPermission("android.permission.CAMERA") == 0 ? 64 : 0;
        if (contextWrapper.checkSelfPermission("android.permission.RECORD_AUDIO") == 0) {
            i |= 128;
        }
        if (z) {
            i |= 32;
        }
        return i | 2;
    }

    public void updateCurrentForegroundType() {
        if (this.lastForegroundType == getCurrentForegroundType() || !this.foregroundStarted) {
            return;
        }
        stopForeground(true);
        int i = Build.VERSION.SDK_INT;
        int i2 = this.foregroundId;
        if (i >= 33) {
            Notification notification = this.foregroundNotification;
            int currentForegroundType = getCurrentForegroundType();
            this.lastForegroundType = currentForegroundType;
            startForeground(i2, notification, currentForegroundType);
            return;
        }
        startForeground(i2, this.foregroundNotification);
    }

    private void callFailed(String str) {
        CallConnection callConnection;
        if (this.privateCall != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("Discarding failed call");
            }
            TL_phone.discardCall discardcall = new TL_phone.discardCall();
            TLRPC.TL_inputPhoneCall tL_inputPhoneCall = new TLRPC.TL_inputPhoneCall();
            discardcall.peer = tL_inputPhoneCall;
            TL_phone.PhoneCall phoneCall = this.privateCall;
            tL_inputPhoneCall.access_hash = phoneCall.access_hash;
            tL_inputPhoneCall.id = phoneCall.id;
            discardcall.duration = (int) (getCallDuration() / 1000);
            NativeInstance nativeInstance = this.tgVoip[0];
            discardcall.connection_id = nativeInstance != null ? nativeInstance.getPreferredRelayId() : 0L;
            discardcall.reason = new TLRPC.TL_phoneCallDiscardReasonDisconnect();
            FileLog.m896e("discardCall " + discardcall.reason);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(discardcall, new RequestDelegate() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda119
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    VoIPService.$r8$lambda$qN6HCjTTJAV3pwMNo1mQyFRCfdk(tLObject, tL_error);
                }
            });
        }
        try {
            throw new Exception("Call " + getCallID() + " failed with error: " + str);
        } catch (Exception e) {
            FileLog.m898e(e);
            this.lastError = str;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda120
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$callFailed$114();
                }
            });
            if (TextUtils.equals(str, Instance.ERROR_LOCALIZED) && this.soundPool != null) {
                this.playingSound = true;
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda121
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$callFailed$115();
                    }
                });
                AndroidUtilities.runOnUIThread(this.afterSoundRunnable, 1000L);
            }
            if (USE_CONNECTION_SERVICE && (callConnection = this.systemCallConnection) != null) {
                callConnection.setDisconnected(new DisconnectCause(1));
                this.systemCallConnection.destroy();
                this.systemCallConnection = null;
            }
            stopSelf();
        }
    }

    public static /* synthetic */ void $r8$lambda$qN6HCjTTJAV3pwMNo1mQyFRCfdk(TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m896e("error on phone.discardCall: " + tL_error);
                return;
            }
            return;
        }
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("phone.discardCall " + tLObject);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callFailed$114() {
        dispatchStateChanged(4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callFailed$115() {
        this.soundPool.play(this.spFailedID, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    public void callFailedFromConnectionService() {
        if (this.isOutgoing) {
            callFailed(Instance.ERROR_CONNECTION_SERVICE);
        } else {
            hangUp();
        }
    }

    @Override // org.telegram.messenger.voip.VoIPController.ConnectionStateListener
    public void onConnectionStateChanged(final int i, boolean z) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda124
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onConnectionStateChanged$118(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnectionStateChanged$118(int i) {
        if (this.convertingVoip != null) {
            return;
        }
        if (i == 3 && this.callStartTime == 0) {
            this.callStartTime = SystemClock.elapsedRealtime();
        }
        if (i == 4) {
            callFailed();
            return;
        }
        if (i == 3) {
            Runnable runnable = this.connectingSoundRunnable;
            if (runnable != null) {
                AndroidUtilities.cancelRunOnUIThread(runnable);
                this.connectingSoundRunnable = null;
            }
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnectionStateChanged$116();
                }
            });
            if (this.groupCall == null && !this.wasEstablished) {
                this.wasEstablished = true;
                if (!this.isProximityNear && !this.privateCall.video) {
                    try {
                        LaunchActivity.getLastFragment().getFragmentView().performHapticFeedback(3, 2);
                    } catch (Exception unused) {
                    }
                }
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService.11
                    @Override // java.lang.Runnable
                    public void run() {
                        if (VoIPService.this.tgVoip[0] != null) {
                            StatsController.getInstance(VoIPService.this.currentAccount).incrementTotalCallsTime(VoIPService.this.getStatsNetworkType(), 5);
                            AndroidUtilities.runOnUIThread(this, 5000L);
                        }
                    }
                }, 5000L);
                boolean z = this.isOutgoing;
                int i2 = this.currentAccount;
                if (z) {
                    StatsController.getInstance(i2).incrementSentItemsCount(getStatsNetworkType(), 0, 1);
                } else {
                    StatsController.getInstance(i2).incrementReceivedItemsCount(getStatsNetworkType(), 0, 1);
                }
            }
        }
        if (i == 5 && !this.isCallEnded) {
            Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda21
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onConnectionStateChanged$117();
                }
            });
        }
        dispatchStateChanged(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnectionStateChanged$116() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
            this.spPlayId = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onConnectionStateChanged$117() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
        }
        this.spPlayId = this.soundPool.play(this.groupCall != null ? this.spVoiceChatConnecting : this.spConnectingId, 1.0f, 1.0f, 0, -1, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playStartRecordSound$119() {
        this.soundPool.play(this.spStartRecordId, 0.5f, 0.5f, 0, 0, 1.0f);
    }

    public void playStartRecordSound() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda110
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playStartRecordSound$119();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$playAllowTalkSound$120() {
        this.soundPool.play(this.spAllowTalkId, 0.5f, 0.5f, 0, 0, 1.0f);
    }

    public void playAllowTalkSound() {
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda111
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$playAllowTalkSound$120();
            }
        });
    }

    @Override // org.telegram.messenger.voip.VoIPController.ConnectionStateListener
    public void onSignalBarCountChanged(final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda118
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$onSignalBarCountChanged$121(i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSignalBarCountChanged$121(int i) {
        this.signalBarCount = i;
        for (int i2 = 0; i2 < this.stateListeners.size(); i2++) {
            this.stateListeners.get(i2).onSignalBarsCountChanged(i);
        }
    }

    public boolean isBluetoothOn() {
        return ((AudioManager) getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)).isBluetoothScoOn();
    }

    public boolean isBluetoothWillOn() {
        return this.needSwitchToBluetoothAfterScoActivates;
    }

    public boolean isHeadsetPlugged() {
        return this.isHeadsetPlugged;
    }

    private void callEnded() {
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m895d("Call " + getCallID() + " ended");
        }
        this.destroyCaptureDevice[0] = true;
        this.isCallEnded = true;
        if (this.groupCall != null && (!this.playedConnectedSound || this.onDestroyRunnable != null)) {
            this.needPlayEndSound = false;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda125
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$callEnded$122();
            }
        });
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda126
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$callEnded$123();
            }
        });
        Runnable runnable = this.connectingSoundRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.connectingSoundRunnable = null;
        }
        int i = 700;
        if (this.needPlayEndSound) {
            this.playingSound = true;
            if (this.groupCall == null) {
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda127
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$callEnded$124();
                    }
                });
            } else {
                Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda128
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$callEnded$125();
                    }
                }, 100L);
                i = MediaError.DetailedErrorCode.SEGMENT_UNKNOWN;
            }
            AndroidUtilities.runOnUIThread(this.afterSoundRunnable, i);
        }
        Runnable runnable2 = this.timeoutRunnable;
        if (runnable2 != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable2);
            this.timeoutRunnable = null;
        }
        endConnectionServiceCall(this.needPlayEndSound ? i : 0L);
        stopSelf();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callEnded$122() {
        dispatchStateChanged(11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callEnded$123() {
        int i = this.spPlayId;
        if (i != 0) {
            this.soundPool.stop(i);
            this.spPlayId = 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callEnded$124() {
        this.soundPool.play(this.spEndId, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$callEnded$125() {
        this.soundPool.play(this.spVoiceChatEndId, 1.0f, 1.0f, 0, 0, 1.0f);
    }

    private void endConnectionServiceCall(long j) {
        if (USE_CONNECTION_SERVICE) {
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.voip.VoIPService$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$endConnectionServiceCall$126();
                }
            };
            if (j > 0) {
                AndroidUtilities.runOnUIThread(runnable, j);
            } else {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$endConnectionServiceCall$126() {
        CallConnection callConnection = this.systemCallConnection;
        if (callConnection != null) {
            int i = this.callDiscardReason;
            if (i == 1) {
                callConnection.setDisconnected(new DisconnectCause(this.isOutgoing ? 2 : 6));
            } else if (i != 2) {
                if (i == 3) {
                    callConnection.setDisconnected(new DisconnectCause(this.isOutgoing ? 4 : 5));
                } else if (i == 4) {
                    callConnection.setDisconnected(new DisconnectCause(7));
                } else {
                    callConnection.setDisconnected(new DisconnectCause(3));
                }
            } else {
                callConnection.setDisconnected(new DisconnectCause(1));
            }
            this.systemCallConnection.destroy();
            this.systemCallConnection = null;
        }
    }

    @Override // org.telegram.messenger.voip.VoIPServiceState
    public boolean isOutgoing() {
        return this.isOutgoing;
    }

    public void handleNotificationAction(Intent intent) {
        if ((getPackageName() + ".END_CALL").equals(intent.getAction())) {
            stopForeground(true);
            hangUp();
            return;
        }
        if ((getPackageName() + ".DECLINE_CALL").equals(intent.getAction())) {
            stopForeground(true);
            declineIncomingCall(4, null);
            return;
        }
        if ((getPackageName() + ".ANSWER_CALL").equals(intent.getAction())) {
            acceptIncomingCallFromNotification();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void acceptIncomingCallFromNotification() {
        showNotification();
        if (checkSelfPermission("android.permission.RECORD_AUDIO") != 0 || (this.privateCall.video && checkSelfPermission("android.permission.CAMERA") != 0)) {
            try {
                PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) VoIPPermissionActivity.class).addFlags(268435456), 1107296256).send();
                return;
            } catch (Exception e) {
                if (BuildVars.LOGS_ENABLED) {
                    FileLog.m897e("Error starting permission activity", e);
                    return;
                }
                return;
            }
        }
        acceptIncomingCall();
        try {
            PendingIntent.getActivity(this, 0, new Intent(this, getUIActivityClass()).setAction("voip"), 33554432).send();
        } catch (Exception e2) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m897e("Error starting incall activity", e2);
            }
        }
    }

    public void updateOutputGainControlState() {
        hasRtmpStream();
    }

    public int getAccount() {
        return this.currentAccount;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.appDidLogout) {
            callEnded();
        }
    }

    public static boolean isAnyKindOfCallActive() {
        return (getSharedInstance() == null || getSharedInstance().getCallState() == 15) ? false : true;
    }

    private boolean isFinished() {
        int i = this.currentState;
        return i == 11 || i == 4;
    }

    public int getRemoteAudioState() {
        return this.remoteAudioState;
    }

    public int getRemoteVideoState() {
        return this.remoteVideoState;
    }

    @TargetApi(26)
    private PhoneAccountHandle addAccountToTelecomManager() {
        TelecomManager telecomManager = (TelecomManager) getSystemService("telecom");
        TLRPC.User currentUser = UserConfig.getInstance(this.currentAccount).getCurrentUser();
        PhoneAccountHandle phoneAccountHandle = new PhoneAccountHandle(new ComponentName(this, (Class<?>) TelegramConnectionService.class), _UrlKt.FRAGMENT_ENCODE_SET + currentUser.id);
        telecomManager.registerPhoneAccount(new PhoneAccount.Builder(phoneAccountHandle, ContactsController.formatName(currentUser.first_name, currentUser.last_name)).setCapabilities(2048).setIcon(Icon.createWithResource(this, C2573R.drawable.ic_launcher_dr)).setHighlightColor(-13851168).addSupportedUriScheme("sip").build());
        return phoneAccountHandle;
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class CallConnection extends Connection {
        public CallConnection() {
            setConnectionProperties(128);
            setAudioModeIsVoip(true);
        }

        @Override // android.telecom.Connection
        public void onCallAudioStateChanged(CallAudioState callAudioState) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("ConnectionService call audio state changed: " + callAudioState);
            }
            ArrayList arrayList = VoIPService.this.stateListeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((StateListener) obj).onAudioSettingsChanged();
            }
        }

        @Override // android.telecom.Connection
        public void onDisconnect() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("ConnectionService onDisconnect");
            }
            setDisconnected(new DisconnectCause(2));
            destroy();
            VoIPService.this.systemCallConnection = null;
            VoIPService.this.hangUp();
        }

        @Override // android.telecom.Connection
        public void onAnswer() {
            VoIPService.this.acceptIncomingCallFromNotification();
        }

        @Override // android.telecom.Connection
        public void onReject() {
            VoIPService.this.needPlayEndSound = false;
            VoIPService.this.declineIncomingCall(1, null);
        }

        @Override // android.telecom.Connection
        public void onShowIncomingCallUi() {
            VoIPService.this.startRinging();
        }

        @Override // android.telecom.Connection
        public void onStateChanged(int i) {
            super.onStateChanged(i);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("ConnectionService onStateChanged " + Connection.stateToString(i));
            }
            if (i == 4) {
                ContactsController.getInstance(VoIPService.this.currentAccount).deleteConnectionServiceContact();
                VoIPService.this.didDeleteConnectionServiceContact = true;
            }
        }

        @Override // android.telecom.Connection
        public void onCallEvent(String str, Bundle bundle) {
            super.onCallEvent(str, bundle);
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("ConnectionService onCallEvent " + str);
            }
        }

        @Override // android.telecom.Connection
        public void onSilence() {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m895d("onSlience");
            }
            VoIPService.this.stopRinging();
        }
    }

    public void processMessageUpdate(MessageObject messageObject) {
        TLRPC.Message message;
        ChatObject.Call.InvitedUser invitedUser;
        if (messageObject == null || (message = messageObject.messageOwner) == null || !(message.action instanceof TLRPC.TL_messageActionConferenceCall)) {
            return;
        }
        long dialogId = messageObject.getDialogId();
        int id = messageObject.getId();
        TLRPC.TL_messageActionConferenceCall tL_messageActionConferenceCall = (TLRPC.TL_messageActionConferenceCall) messageObject.messageOwner.action;
        ChatObject.Call call = this.groupCall;
        if (call == null || (invitedUser = call.invitedUsersMessageIds.get(Long.valueOf(dialogId))) == null || invitedUser.msg_id != id) {
            return;
        }
        boolean z = (tL_messageActionConferenceCall.missed || tL_messageActionConferenceCall.active) ? false : true;
        if (invitedUser.isCalling() != z) {
            invitedUser.calling = z;
            this.groupCall.invitedUsersMessageIds.put(Long.valueOf(dialogId), invitedUser);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.groupCallUpdated, 0L, Long.valueOf(this.groupCall.call.id), Boolean.FALSE);
        }
    }
}
