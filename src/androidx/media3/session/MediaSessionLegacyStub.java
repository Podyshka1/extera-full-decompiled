package androidx.media3.session;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import androidx.core.util.ObjectsCompat;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.DeviceInfo;
import androidx.media3.common.MediaItem;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.PlaybackException;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.Player;
import androidx.media3.common.Rating;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.ExecutorC0733x95b99d2f;
import androidx.media3.session.MediaSession;
import androidx.media3.session.MediaSessionLegacyStub;
import androidx.media3.session.MediaSessionLegacyStub.C08631;
import androidx.media3.session.legacy.MediaDescriptionCompat;
import androidx.media3.session.legacy.MediaMetadataCompat;
import androidx.media3.session.legacy.MediaSessionCompat;
import androidx.media3.session.legacy.MediaSessionManager;
import androidx.media3.session.legacy.PlaybackStateCompat;
import androidx.media3.session.legacy.RatingCompat;
import androidx.media3.session.legacy.VolumeProviderCompat;
import com.google.android.gms.cast.MediaStatus;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.util.concurrent.FutureCallback;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.url._UrlKt;
import okhttp3.internal.ws.WebSocketProtocol;

/* JADX INFO: loaded from: classes4.dex */
class MediaSessionLegacyStub extends MediaSessionCompat.Callback {
    private static final int PENDING_INTENT_FLAG_MUTABLE;
    private final AndroidAutoConnectionStateObserver androidAutoObserver;
    private Player.Commands availablePlayerCommands;
    private SessionCommands availableSessionCommands;
    private final ComponentName broadcastReceiverComponentName;
    private final ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager;
    private final ConnectionTimeoutHandler connectionTimeoutHandler;
    private volatile long connectionTimeoutMs;
    private final ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast;
    private ImmutableList<CommandButton> customLayout;
    private PlaybackException customPlaybackException;
    private Bundle legacyExtras;
    private final boolean mayNeedButtonReservationWorkaroundForSeekbar;
    private ImmutableList<CommandButton> mediaButtonPreferences;
    private FutureCallback<Bitmap> pendingBitmapLoadCallback;
    private final boolean playIfSuppressed;
    private Player.Commands playerCommandsForErrorState;
    private final MediaButtonReceiver runtimeBroadcastReceiver;
    private final MediaSessionCompat sessionCompat;
    private int sessionFlags;
    private final MediaSessionImpl sessionImpl;
    private final MediaSessionManager sessionManager;
    private VolumeProviderCompat volumeProviderCompat;

    public interface SessionTask {
        void run(MediaSession.ControllerInfo controllerInfo);
    }

    private static long convertCommandToPlaybackStateActions(int i, boolean z) {
        if (i == 1) {
            return z ? 516L : 514L;
        }
        if (i == 2) {
            return 16384L;
        }
        if (i == 3) {
            return 1L;
        }
        if (i == 31) {
            return 240640L;
        }
        switch (i) {
            case 5:
                return 256L;
            case 6:
            case 7:
                return 16L;
            case 8:
            case 9:
                return 32L;
            case 10:
                return MediaStatus.COMMAND_EDIT_TRACKS;
            case 11:
                return 8L;
            case 12:
                return 64L;
            case 13:
                return 4194304L;
            case 14:
                return 2621440L;
            case 15:
                return MediaStatus.COMMAND_STREAM_TRANSFER;
            default:
                return 0L;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> void ignoreFuture(Future<T> future) {
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetCaptioningEnabled(boolean z) {
    }

    static {
        PENDING_INTENT_FLAG_MUTABLE = Build.VERSION.SDK_INT >= 31 ? 33554432 : 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MediaSessionLegacyStub(MediaSessionImpl mediaSessionImpl, Uri uri, Handler handler, Bundle bundle, boolean z, ImmutableList<CommandButton> immutableList, ImmutableList<CommandButton> immutableList2, SessionCommands sessionCommands, Player.Commands commands, Bundle bundle2) {
        ComponentName serviceComponentByAction;
        boolean z2;
        PendingIntent broadcast;
        MediaSessionCompat mediaSessionCompat;
        int i;
        PendingIntent sessionActivity;
        this.sessionImpl = mediaSessionImpl;
        this.playIfSuppressed = z;
        this.customLayout = immutableList;
        this.mediaButtonPreferences = immutableList2;
        this.availableSessionCommands = sessionCommands;
        this.availablePlayerCommands = commands;
        this.legacyExtras = new Bundle(bundle2);
        Context context = mediaSessionImpl.getContext();
        this.sessionManager = MediaSessionManager.getSessionManager(context);
        this.controllerLegacyCbForBroadcast = new ControllerLegacyCbForBroadcast();
        ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager = new ConnectedControllersManager<>(mediaSessionImpl);
        this.connectedControllersManager = connectedControllersManager;
        this.connectionTimeoutMs = 300000L;
        this.connectionTimeoutHandler = new ConnectionTimeoutHandler(mediaSessionImpl.getApplicationHandler().getLooper(), connectedControllersManager);
        boolean zMayNeedButtonReservationWorkaroundForSeekbar = mayNeedButtonReservationWorkaroundForSeekbar(context);
        this.mayNeedButtonReservationWorkaroundForSeekbar = zMayNeedButtonReservationWorkaroundForSeekbar;
        if (!immutableList2.isEmpty()) {
            updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences();
        }
        ComponentName componentNameQueryPackageManagerForMediaButtonReceiver = queryPackageManagerForMediaButtonReceiver(context);
        this.broadcastReceiverComponentName = componentNameQueryPackageManagerForMediaButtonReceiver;
        if (componentNameQueryPackageManagerForMediaButtonReceiver == null || Build.VERSION.SDK_INT < 31) {
            serviceComponentByAction = getServiceComponentByAction(context, "androidx.media3.session.MediaLibraryService");
            serviceComponentByAction = serviceComponentByAction == null ? getServiceComponentByAction(context, "androidx.media3.session.MediaSessionService") : serviceComponentByAction;
            if (serviceComponentByAction != null && !serviceComponentByAction.equals(componentNameQueryPackageManagerForMediaButtonReceiver)) {
                z2 = true;
            }
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", uri);
            Object[] objArr = 0;
            if (serviceComponentByAction != null) {
                MediaButtonReceiver mediaButtonReceiver = new MediaButtonReceiver(this, objArr == true ? 1 : 0);
                this.runtimeBroadcastReceiver = mediaButtonReceiver;
                IntentFilter intentFilter = new IntentFilter("android.intent.action.MEDIA_BUTTON");
                intentFilter.addDataScheme((String) Util.castNonNull(uri.getScheme()));
                Util.registerReceiverNotExported(context, mediaButtonReceiver, intentFilter);
                intent.setPackage(context.getPackageName());
                broadcast = PendingIntent.getBroadcast(context, 0, intent, PENDING_INTENT_FLAG_MUTABLE);
                serviceComponentByAction = new ComponentName(context, context.getClass());
            } else {
                intent.setComponent(serviceComponentByAction);
                if (z2) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        broadcast = PendingIntent.getForegroundService(context, 0, intent, PENDING_INTENT_FLAG_MUTABLE);
                    } else {
                        broadcast = PendingIntent.getService(context, 0, intent, PENDING_INTENT_FLAG_MUTABLE);
                    }
                } else {
                    broadcast = PendingIntent.getBroadcast(context, 0, intent, PENDING_INTENT_FLAG_MUTABLE);
                }
                this.runtimeBroadcastReceiver = null;
            }
            String strJoin = TextUtils.join(".", new String[]{"androidx.media3.session.id", mediaSessionImpl.getId()});
            i = Build.VERSION.SDK_INT;
            mediaSessionCompat = new MediaSessionCompat(context, strJoin, i >= 31 ? null : serviceComponentByAction, i >= 31 ? broadcast : null, bundle);
            this.sessionCompat = mediaSessionCompat;
            if (i >= 31 && componentNameQueryPackageManagerForMediaButtonReceiver != null) {
                Api31.setMediaButtonBroadcastReceiver(mediaSessionCompat, componentNameQueryPackageManagerForMediaButtonReceiver);
            }
            sessionActivity = mediaSessionImpl.getSessionActivity();
            if (sessionActivity != null) {
                mediaSessionCompat.setSessionActivity(sessionActivity);
            }
            mediaSessionCompat.setCallback(this, handler);
            this.androidAutoObserver = zMayNeedButtonReservationWorkaroundForSeekbar ? new AndroidAutoConnectionStateObserver(context, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.onAndroidAutoConnectionStateChanged();
                }
            }) : null;
        }
        serviceComponentByAction = componentNameQueryPackageManagerForMediaButtonReceiver;
        z2 = false;
        Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON", uri);
        Object[] objArr2 = 0;
        if (serviceComponentByAction != null) {
        }
        String strJoin2 = TextUtils.join(".", new String[]{"androidx.media3.session.id", mediaSessionImpl.getId()});
        i = Build.VERSION.SDK_INT;
        mediaSessionCompat = new MediaSessionCompat(context, strJoin2, i >= 31 ? null : serviceComponentByAction, i >= 31 ? broadcast : null, bundle);
        this.sessionCompat = mediaSessionCompat;
        if (i >= 31) {
            Api31.setMediaButtonBroadcastReceiver(mediaSessionCompat, componentNameQueryPackageManagerForMediaButtonReceiver);
        }
        sessionActivity = mediaSessionImpl.getSessionActivity();
        if (sessionActivity != null) {
        }
        mediaSessionCompat.setCallback(this, handler);
        this.androidAutoObserver = zMayNeedButtonReservationWorkaroundForSeekbar ? new AndroidAutoConnectionStateObserver(context, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.onAndroidAutoConnectionStateChanged();
            }
        }) : null;
    }

    public void setAvailableCommands(SessionCommands sessionCommands, Player.Commands commands) {
        if (this.customPlaybackException != null) {
            return;
        }
        boolean z = this.availablePlayerCommands.contains(17) != commands.contains(17);
        this.availableSessionCommands = sessionCommands;
        this.availablePlayerCommands = commands;
        if (!this.mediaButtonPreferences.isEmpty()) {
            m191x8cc96e7d();
        }
        MediaSessionImpl mediaSessionImpl = this.sessionImpl;
        if (z) {
            updateLegacySessionPlaybackStateAndQueue(mediaSessionImpl.getPlayerWrapper());
        } else {
            updateLegacySessionPlaybackState(mediaSessionImpl.getPlayerWrapper());
        }
    }

    public MediaSession.ConnectionResult getPlatformConnectionResult(MediaSession mediaSession) {
        MediaSession.ConnectionResult.AcceptedResultBuilder availablePlayerCommands = new MediaSession.ConnectionResult.AcceptedResultBuilder(mediaSession).setAvailableSessionCommands(this.availableSessionCommands).setAvailablePlayerCommands(this.availablePlayerCommands);
        if (!this.mediaButtonPreferences.isEmpty()) {
            availablePlayerCommands.setMediaButtonPreferences(this.mediaButtonPreferences);
        } else {
            availablePlayerCommands.setCustomLayout(this.customLayout);
        }
        return availablePlayerCommands.build();
    }

    public void setPlatformCustomLayout(ImmutableList<CommandButton> immutableList) {
        this.customLayout = immutableList;
    }

    public void setPlatformMediaButtonPreferences(ImmutableList<CommandButton> immutableList) {
        this.mediaButtonPreferences = immutableList;
        m191x8cc96e7d();
    }

    private static ComponentName queryPackageManagerForMediaButtonReceiver(Context context) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryBroadcastReceivers = packageManager.queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers.size() == 1) {
            ActivityInfo activityInfo = listQueryBroadcastReceivers.get(0).activityInfo;
            return new ComponentName(activityInfo.packageName, activityInfo.name);
        }
        if (listQueryBroadcastReceivers.size() <= 1) {
            return null;
        }
        Log.m164w("MediaSessionLegacyStub", "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found " + listQueryBroadcastReceivers.size() + ". Using runtime media button receiver instead.");
        return null;
    }

    public void start() {
        this.sessionCompat.setActive(true);
    }

    public void release() {
        if (Build.VERSION.SDK_INT < 31) {
            if (this.broadcastReceiverComponentName == null) {
                setMediaButtonReceiver(this.sessionCompat, null);
            } else {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON", this.sessionImpl.getUri());
                intent.setComponent(this.broadcastReceiverComponentName);
                setMediaButtonReceiver(this.sessionCompat, PendingIntent.getBroadcast(this.sessionImpl.getContext(), 0, intent, PENDING_INTENT_FLAG_MUTABLE));
            }
        }
        if (this.runtimeBroadcastReceiver != null) {
            this.sessionImpl.getContext().unregisterReceiver(this.runtimeBroadcastReceiver);
        }
        AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver = this.androidAutoObserver;
        if (androidAutoConnectionStateObserver != null) {
            androidAutoConnectionStateObserver.release();
        }
        this.sessionCompat.release();
    }

    public MediaSessionCompat getSessionCompat() {
        return this.sessionCompat;
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onCommand(String str, final Bundle bundle, final ResultReceiver resultReceiver) {
        Preconditions.checkNotNull(str);
        if (str.equals("androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST")) {
            return;
        }
        if (str.equals("androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN") && resultReceiver != null) {
            resultReceiver.send(0, this.sessionImpl.getToken().toBundle());
        } else {
            final SessionCommand sessionCommand = new SessionCommand(str, Bundle.EMPTY);
            dispatchSessionTaskWithSessionCommand(sessionCommand, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda22
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    MediaSessionLegacyStub.$r8$lambda$Y6DY0gQr0UFcIDfia_a7LYaKTqo(this.f$0, sessionCommand, bundle, resultReceiver, controllerInfo);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$Y6DY0gQr0UFcIDfia_a7LYaKTqo(MediaSessionLegacyStub mediaSessionLegacyStub, SessionCommand sessionCommand, Bundle bundle, ResultReceiver resultReceiver, MediaSession.ControllerInfo controllerInfo) {
        MediaSessionImpl mediaSessionImpl = mediaSessionLegacyStub.sessionImpl;
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        ListenableFuture<SessionResult> listenableFutureOnCustomCommandOnHandler = mediaSessionImpl.onCustomCommandOnHandler(controllerInfo, null, sessionCommand, bundle);
        if (resultReceiver != null) {
            sendCustomCommandResultWhenReady(resultReceiver, listenableFutureOnCustomCommandOnHandler);
        } else {
            ignoreFuture(listenableFutureOnCustomCommandOnHandler);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onCustomAction(String str, final Bundle bundle) {
        if (str.equals("androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST")) {
            return;
        }
        if (bundle == null) {
            bundle = Bundle.EMPTY;
        }
        final SessionCommand sessionCommand = new SessionCommand(str, bundle);
        if (CommandButton.isPredefinedCustomCommandButtonCode(sessionCommand.customAction)) {
            dispatchCustomCommandAsPredefinedCommand(sessionCommand);
        } else {
            dispatchSessionTaskWithSessionCommand(sessionCommand, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda12
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    MediaSessionLegacyStub.ignoreFuture(this.f$0.sessionImpl.onCustomCommandOnHandler(controllerInfo, null, sessionCommand, bundle));
                }
            });
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public boolean onMediaButtonEvent(Intent intent) {
        return this.sessionImpl.onMediaButtonEvent(new MediaSession.ControllerInfo((MediaSessionManager.RemoteUserInfo) Preconditions.checkNotNull(this.sessionCompat.getCurrentControllerInfo()), 0, 0, false, null, Bundle.EMPTY, 0, Build.VERSION.SDK_INT >= 33), intent);
    }

    public void maybeUpdateFlags(PlayerWrapper playerWrapper) {
        int i = playerWrapper.isCommandAvailable(20) ? 4 : 0;
        if (this.sessionFlags != i) {
            this.sessionFlags = i;
            this.sessionCompat.setFlags(i);
        }
    }

    public void handleMediaPlayPauseOnHandler(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        dispatchSessionTaskWithPlayerCommand(1, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda27
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                MediaSessionLegacyStub mediaSessionLegacyStub = this.f$0;
                Util.handlePlayPauseButtonAction(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper(), mediaSessionLegacyStub.sessionImpl.shouldPlayIfSuppressed());
            }
        }, remoteUserInfo, true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPrepare() {
        dispatchSessionTaskWithPlayerCommand(2, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda23
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().prepare();
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPrepareFromMediaId(String str, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(str, null, null, bundle), false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPrepareFromSearch(String str, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(null, null, str, bundle), false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPrepareFromUri(Uri uri, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(null, uri, null, bundle), false);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPlay() {
        dispatchSessionTaskWithPlayRequest();
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPlayFromMediaId(String str, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(str, null, null, bundle), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPlayFromSearch(String str, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(null, null, str, bundle), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPlayFromUri(Uri uri, Bundle bundle) {
        handleMediaRequest(createMediaItemForMediaRequest(null, uri, null, bundle), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onPause() {
        dispatchSessionTaskWithPlayerCommand(1, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda8
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                Util.handlePauseButtonAction(this.f$0.sessionImpl.getPlayerWrapper());
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onStop() {
        dispatchSessionTaskWithPlayerCommand(3, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda24
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().stop();
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSeekTo(final long j) {
        dispatchSessionTaskWithPlayerCommand(5, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda6
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().seekTo(j);
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSkipToNext() {
        if (this.sessionImpl.getPlayerWrapper().isCommandAvailable(9)) {
            dispatchSessionTaskWithPlayerCommand(9, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda4
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    this.f$0.sessionImpl.getPlayerWrapper().seekToNext();
                }
            }, this.sessionCompat.getCurrentControllerInfo(), true);
        } else {
            dispatchSessionTaskWithPlayerCommand(8, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda5
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    this.f$0.sessionImpl.getPlayerWrapper().seekToNextMediaItem();
                }
            }, this.sessionCompat.getCurrentControllerInfo(), true);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSkipToPrevious() {
        if (this.sessionImpl.getPlayerWrapper().isCommandAvailable(7)) {
            dispatchSessionTaskWithPlayerCommand(7, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda16
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    this.f$0.sessionImpl.getPlayerWrapper().seekToPrevious();
                }
            }, this.sessionCompat.getCurrentControllerInfo(), true);
        } else {
            dispatchSessionTaskWithPlayerCommand(6, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda17
                @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                public final void run(MediaSession.ControllerInfo controllerInfo) {
                    this.f$0.sessionImpl.getPlayerWrapper().seekToPreviousMediaItem();
                }
            }, this.sessionCompat.getCurrentControllerInfo(), true);
        }
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetPlaybackSpeed(final float f) {
        if (f <= 0.0f) {
            return;
        }
        dispatchSessionTaskWithPlayerCommand(13, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda9
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().setPlaybackSpeed(f);
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSkipToQueueItem(final long j) {
        if (j < 0) {
            return;
        }
        dispatchSessionTaskWithPlayerCommand(10, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda11
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().seekToDefaultPosition((int) j);
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onFastForward() {
        dispatchSessionTaskWithPlayerCommand(12, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda1
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().seekForward();
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onRewind() {
        dispatchSessionTaskWithPlayerCommand(11, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda20
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().seekBack();
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetRating(RatingCompat ratingCompat) {
        onSetRating(ratingCompat, null);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
        Rating ratingConvertToRating = LegacyConversions.convertToRating(ratingCompat);
        if (ratingConvertToRating == null) {
            Log.m164w("MediaSessionLegacyStub", "Ignoring invalid RatingCompat " + ratingCompat);
            return;
        }
        dispatchSessionTaskWithSetRatingSessionCommand(ratingConvertToRating);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetRepeatMode(final int i) {
        dispatchSessionTaskWithPlayerCommand(15, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda19
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().setRepeatMode(LegacyConversions.convertToRepeatMode(i));
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onSetShuffleMode(final int i) {
        dispatchSessionTaskWithPlayerCommand(14, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda7
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.getPlayerWrapper().setShuffleModeEnabled(LegacyConversions.convertToShuffleModeEnabled(i));
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        handleOnAddQueueItem(mediaDescriptionCompat, -1);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        handleOnAddQueueItem(mediaDescriptionCompat, i);
    }

    @Override // androidx.media3.session.legacy.MediaSessionCompat.Callback
    public void onRemoveQueueItem(final MediaDescriptionCompat mediaDescriptionCompat) {
        if (mediaDescriptionCompat == null) {
            return;
        }
        dispatchSessionTaskWithPlayerCommand(20, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda2
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                MediaSessionLegacyStub.$r8$lambda$zkpVdUOIPDusmV5_W_HPqjrIlpg(this.f$0, mediaDescriptionCompat, controllerInfo);
            }
        }, this.sessionCompat.getCurrentControllerInfo(), true);
    }

    public static /* synthetic */ void $r8$lambda$zkpVdUOIPDusmV5_W_HPqjrIlpg(MediaSessionLegacyStub mediaSessionLegacyStub, MediaDescriptionCompat mediaDescriptionCompat, MediaSession.ControllerInfo controllerInfo) {
        mediaSessionLegacyStub.getClass();
        String mediaId = mediaDescriptionCompat.getMediaId();
        if (TextUtils.isEmpty(mediaId)) {
            Log.m164w("MediaSessionLegacyStub", "onRemoveQueueItem(): Media ID shouldn't be null");
            return;
        }
        PlayerWrapper playerWrapper = mediaSessionLegacyStub.sessionImpl.getPlayerWrapper();
        if (!playerWrapper.isCommandAvailable(17)) {
            Log.m164w("MediaSessionLegacyStub", "Can't remove item by ID without COMMAND_GET_TIMELINE being available");
            return;
        }
        Timeline currentTimeline = playerWrapper.getCurrentTimeline();
        Timeline.Window window = new Timeline.Window();
        for (int i = 0; i < currentTimeline.getWindowCount(); i++) {
            if (TextUtils.equals(currentTimeline.getWindow(i, window).mediaItem.mediaId, mediaId)) {
                playerWrapper.removeMediaItem(i);
                return;
            }
        }
    }

    public MediaSession.ControllerCb getControllerLegacyCbForBroadcast() {
        return this.controllerLegacyCbForBroadcast;
    }

    public ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> getConnectedControllersManager() {
        return this.connectedControllersManager;
    }

    private void dispatchSessionTaskWithPlayRequest() {
        dispatchSessionTaskWithPlayerCommand(1, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda21
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                this.f$0.sessionImpl.handleMediaControllerPlayRequest(controllerInfo, true);
            }
        }, this.sessionCompat.getCurrentControllerInfo(), false);
    }

    private void dispatchSessionTaskWithPlayerCommand(final int i, final SessionTask sessionTask, final MediaSessionManager.RemoteUserInfo remoteUserInfo, final boolean z) {
        if (this.sessionImpl.isReleased()) {
            return;
        }
        if (remoteUserInfo == null) {
            Log.m159d("MediaSessionLegacyStub", "RemoteUserInfo is null, ignoring command=" + i);
            return;
        }
        Util.postOrRun(this.sessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda25
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub.$r8$lambda$MtuiXjNqcgjJtPF9mmi4REmY9lg(this.f$0, i, remoteUserInfo, sessionTask, z);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$MtuiXjNqcgjJtPF9mmi4REmY9lg(MediaSessionLegacyStub mediaSessionLegacyStub, int i, MediaSessionManager.RemoteUserInfo remoteUserInfo, final SessionTask sessionTask, boolean z) {
        if (mediaSessionLegacyStub.sessionImpl.isReleased()) {
            return;
        }
        if (!mediaSessionLegacyStub.sessionCompat.isActive()) {
            Log.m164w("MediaSessionLegacyStub", "Ignore incoming player command before initialization. command=" + i + ", pid=" + remoteUserInfo.getPid());
            return;
        }
        final MediaSession.ControllerInfo controllerInfoTryGetController = mediaSessionLegacyStub.tryGetController(remoteUserInfo);
        if (controllerInfoTryGetController == null) {
            return;
        }
        if (!mediaSessionLegacyStub.connectedControllersManager.isPlayerCommandAvailable(controllerInfoTryGetController, i)) {
            if (i != 1 || mediaSessionLegacyStub.sessionImpl.getPlayerWrapper().getPlayWhenReady()) {
                return;
            }
            Log.m164w("MediaSessionLegacyStub", "Calling play() omitted due to COMMAND_PLAY_PAUSE not being available. If this play command has started the service for instance for playback resumption, this may prevent the service from being started into the foreground.");
            return;
        }
        if (mediaSessionLegacyStub.sessionImpl.onPlayerCommandRequestOnHandler(controllerInfoTryGetController, i) != 0) {
            return;
        }
        mediaSessionLegacyStub.sessionImpl.callWithControllerForCurrentRequestSet(controllerInfoTryGetController, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub.$r8$lambda$v4K3TwfrCmXeR_CdDix8pVkBZBE(sessionTask, controllerInfoTryGetController);
            }
        }).run();
        if (z) {
            mediaSessionLegacyStub.sessionImpl.onPlayerInteractionFinishedOnHandler(controllerInfoTryGetController, new Player.Commands.Builder().add(i).build());
        }
    }

    public static /* synthetic */ void $r8$lambda$v4K3TwfrCmXeR_CdDix8pVkBZBE(SessionTask sessionTask, MediaSession.ControllerInfo controllerInfo) {
        try {
            sessionTask.run(controllerInfo);
        } catch (RemoteException e) {
            Log.m165w("MediaSessionLegacyStub", "Exception in " + controllerInfo, e);
        }
    }

    private void dispatchSessionTaskWithSetRatingSessionCommand(final Rating rating) {
        dispatchSessionTaskWithSessionCommandInternal(null, 40010, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda15
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                MediaSessionLegacyStub.$r8$lambda$bNUoC20JbvmdhX7iDZtCea1oEJg(this.f$0, rating, controllerInfo);
            }
        }, this.sessionCompat.getCurrentControllerInfo());
    }

    public static /* synthetic */ void $r8$lambda$bNUoC20JbvmdhX7iDZtCea1oEJg(MediaSessionLegacyStub mediaSessionLegacyStub, Rating rating, MediaSession.ControllerInfo controllerInfo) {
        MediaItem currentMediaItemWithCommandCheck = mediaSessionLegacyStub.sessionImpl.getPlayerWrapper().getCurrentMediaItemWithCommandCheck();
        if (currentMediaItemWithCommandCheck == null) {
            return;
        }
        ignoreFuture(mediaSessionLegacyStub.sessionImpl.onSetRatingOnHandler(controllerInfo, currentMediaItemWithCommandCheck.mediaId, rating));
    }

    private void dispatchSessionTaskWithSessionCommand(SessionCommand sessionCommand, SessionTask sessionTask) {
        dispatchSessionTaskWithSessionCommandInternal(sessionCommand, 0, sessionTask, this.sessionCompat.getCurrentControllerInfo());
    }

    private void dispatchSessionTaskWithSessionCommandInternal(final SessionCommand sessionCommand, final int i, final SessionTask sessionTask, final MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        if (remoteUserInfo == null) {
            StringBuilder sb = new StringBuilder("RemoteUserInfo is null, ignoring command=");
            Object objValueOf = sessionCommand;
            if (sessionCommand == null) {
                objValueOf = Integer.valueOf(i);
            }
            sb.append(objValueOf);
            Log.m159d("MediaSessionLegacyStub", sb.toString());
            return;
        }
        Util.postOrRun(this.sessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub.$r8$lambda$mk9a_qh3f89yHUBeGey9WUPhflA(this.f$0, sessionCommand, i, remoteUserInfo, sessionTask);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$mk9a_qh3f89yHUBeGey9WUPhflA(MediaSessionLegacyStub mediaSessionLegacyStub, SessionCommand sessionCommand, int i, MediaSessionManager.RemoteUserInfo remoteUserInfo, SessionTask sessionTask) {
        if (mediaSessionLegacyStub.sessionImpl.isReleased()) {
            return;
        }
        if (!mediaSessionLegacyStub.sessionCompat.isActive()) {
            StringBuilder sb = new StringBuilder("Ignore incoming session command before initialization. command=");
            sb.append(sessionCommand == null ? Integer.valueOf(i) : sessionCommand.customAction);
            sb.append(", pid=");
            sb.append(remoteUserInfo.getPid());
            Log.m164w("MediaSessionLegacyStub", sb.toString());
            return;
        }
        MediaSession.ControllerInfo controllerInfoTryGetController = mediaSessionLegacyStub.tryGetController(remoteUserInfo);
        if (controllerInfoTryGetController == null) {
            return;
        }
        ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager = mediaSessionLegacyStub.connectedControllersManager;
        if (sessionCommand != null) {
            if (!connectedControllersManager.isSessionCommandAvailable(controllerInfoTryGetController, sessionCommand)) {
                return;
            }
        } else if (!connectedControllersManager.isSessionCommandAvailable(controllerInfoTryGetController, i)) {
            return;
        }
        try {
            sessionTask.run(controllerInfoTryGetController);
        } catch (RemoteException e) {
            Log.m165w("MediaSessionLegacyStub", "Exception in " + controllerInfoTryGetController, e);
        }
    }

    private void dispatchCustomCommandAsPredefinedCommand(SessionCommand sessionCommand) {
        try {
            final CommandButton commandButtonConvertFromPredefinedCustomCommand = CommandButton.convertFromPredefinedCustomCommand(sessionCommand);
            if (!commandButtonConvertFromPredefinedCustomCommand.canExecuteAction()) {
                Log.m164w("MediaSessionLegacyStub", "Can't execute predefined custom command: " + sessionCommand.customAction);
                return;
            }
            SessionCommand sessionCommand2 = commandButtonConvertFromPredefinedCustomCommand.sessionCommand;
            if (sessionCommand2 != null) {
                Preconditions.checkState(sessionCommand2.commandCode == 40010);
                dispatchSessionTaskWithSetRatingSessionCommand((Rating) Preconditions.checkNotNull(commandButtonConvertFromPredefinedCustomCommand.parameter));
            } else {
                if (commandButtonConvertFromPredefinedCustomCommand.isPlayRequestPlayerAction(this.sessionImpl.getPlayerWrapper())) {
                    dispatchSessionTaskWithPlayRequest();
                    return;
                }
                int i = commandButtonConvertFromPredefinedCustomCommand.playerCommand;
                if (i == 31) {
                    handleMediaRequest((MediaItem) Preconditions.checkNotNull(commandButtonConvertFromPredefinedCustomCommand.parameter), false, false);
                } else {
                    dispatchSessionTaskWithPlayerCommand(i, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda28
                        @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                        public final void run(MediaSession.ControllerInfo controllerInfo) {
                            commandButtonConvertFromPredefinedCustomCommand.executePlayerAction(this.f$0.sessionImpl.getPlayerWrapper());
                        }
                    }, this.sessionCompat.getCurrentControllerInfo(), true);
                }
            }
        } catch (RuntimeException e) {
            Log.m165w("MediaSessionLegacyStub", "Failed to convert predefined custom command: " + sessionCommand.customAction, e);
        }
    }

    private MediaSession.ControllerInfo tryGetController(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        MediaSession.ControllerInfo controller = this.connectedControllersManager.getController(remoteUserInfo);
        if (controller == null) {
            ControllerLegacyCb controllerLegacyCb = new ControllerLegacyCb(remoteUserInfo);
            MediaSession.ControllerInfo controllerInfo = new MediaSession.ControllerInfo(remoteUserInfo, 0, 0, this.sessionManager.isTrustedForMediaControl(remoteUserInfo), controllerLegacyCb, Bundle.EMPTY, 0, Build.VERSION.SDK_INT >= 33);
            MediaSession.ConnectionResult connectionResultOnConnectOnHandler = this.sessionImpl.onConnectOnHandler(controllerInfo);
            if (!connectionResultOnConnectOnHandler.isAccepted) {
                controllerLegacyCb.onDisconnected(0);
                return null;
            }
            this.connectedControllersManager.addController(controllerInfo.getRemoteUserInfo(), controllerInfo, connectionResultOnConnectOnHandler.availableSessionCommands, connectionResultOnConnectOnHandler.availablePlayerCommands);
            this.sessionImpl.onPostConnectOnHandler(controllerInfo);
            controller = controllerInfo;
        }
        this.connectionTimeoutHandler.disconnectControllerAfterTimeout(controller, this.connectionTimeoutMs);
        return controller;
    }

    public void updateLegacySessionPlaybackState(final PlayerWrapper playerWrapper) {
        Util.postOrRun(this.sessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub mediaSessionLegacyStub = this.f$0;
                mediaSessionLegacyStub.sessionCompat.setPlaybackState(mediaSessionLegacyStub.createPlaybackStateCompat(playerWrapper));
            }
        });
    }

    public void updateLegacySessionPlaybackStateAndQueue(final PlayerWrapper playerWrapper) {
        Util.postOrRun(this.sessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub.$r8$lambda$k6yTB2x3LWGZAYdKaJMNNcefnSk(this.f$0, playerWrapper);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$k6yTB2x3LWGZAYdKaJMNNcefnSk(MediaSessionLegacyStub mediaSessionLegacyStub, PlayerWrapper playerWrapper) {
        Timeline currentTimeline;
        mediaSessionLegacyStub.sessionCompat.setPlaybackState(mediaSessionLegacyStub.createPlaybackStateCompat(playerWrapper));
        ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast = mediaSessionLegacyStub.controllerLegacyCbForBroadcast;
        if (playerWrapper.getAvailableCommands().contains(17)) {
            currentTimeline = playerWrapper.getCurrentTimeline();
        } else {
            currentTimeline = Timeline.EMPTY;
        }
        controllerLegacyCbForBroadcast.updateQueue(currentTimeline);
    }

    private void handleMediaRequest(MediaItem mediaItem, boolean z) {
        handleMediaRequest(mediaItem, true, z);
    }

    private void handleMediaRequest(final MediaItem mediaItem, final boolean z, final boolean z2) {
        dispatchSessionTaskWithPlayerCommand(31, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda10
            @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
            public final void run(MediaSession.ControllerInfo controllerInfo) {
                MediaSessionLegacyStub mediaSessionLegacyStub = this.f$0;
                Futures.addCallback(mediaSessionLegacyStub.sessionImpl.onSetMediaItemsOnHandler(controllerInfo, ImmutableList.of(mediaItem), -1, -9223372036854775807L), mediaSessionLegacyStub.new C08631(controllerInfo, z, z2), MoreExecutors.directExecutor());
            }
        }, this.sessionCompat.getCurrentControllerInfo(), false);
    }

    /* JADX INFO: renamed from: androidx.media3.session.MediaSessionLegacyStub$1 */
    public class C08631 implements FutureCallback<MediaSession.MediaItemsWithStartPosition> {
        final /* synthetic */ MediaSession.ControllerInfo val$controller;
        final /* synthetic */ boolean val$play;
        final /* synthetic */ boolean val$prepare;

        @Override // com.google.common.util.concurrent.FutureCallback
        public void onFailure(Throwable th) {
        }

        public C08631(MediaSession.ControllerInfo controllerInfo, boolean z, boolean z2) {
            this.val$controller = controllerInfo;
            this.val$prepare = z;
            this.val$play = z2;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public void onSuccess(final MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition) {
            Handler applicationHandler = MediaSessionLegacyStub.this.sessionImpl.getApplicationHandler();
            MediaSessionImpl mediaSessionImpl = MediaSessionLegacyStub.this.sessionImpl;
            final MediaSession.ControllerInfo controllerInfo = this.val$controller;
            final boolean z = this.val$prepare;
            final boolean z2 = this.val$play;
            Util.postOrRun(applicationHandler, mediaSessionImpl.callWithControllerForCurrentRequestSet(controllerInfo, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.C08631.m2032$r8$lambda$piCE7XfE51tUm2WhRxeAJLn9Vk(this.f$0, mediaItemsWithStartPosition, z, z2, controllerInfo);
                }
            }));
        }

        /* JADX INFO: renamed from: $r8$lambda$piCE7XfE51tUm2WhRx-eAJLn9Vk, reason: not valid java name */
        public static /* synthetic */ void m2032$r8$lambda$piCE7XfE51tUm2WhRxeAJLn9Vk(C08631 c08631, MediaSession.MediaItemsWithStartPosition mediaItemsWithStartPosition, boolean z, boolean z2, MediaSession.ControllerInfo controllerInfo) {
            PlayerWrapper playerWrapper = MediaSessionLegacyStub.this.sessionImpl.getPlayerWrapper();
            MediaUtils.setMediaItemsWithStartIndexAndPosition(playerWrapper, mediaItemsWithStartPosition);
            int playbackState = playerWrapper.getPlaybackState();
            if (z) {
                if (playbackState == 1) {
                    playerWrapper.prepareIfCommandAvailable();
                } else if (playbackState == 4) {
                    playerWrapper.seekToDefaultPositionIfCommandAvailable();
                }
            }
            if (z2) {
                playerWrapper.playIfCommandAvailable();
            }
            MediaSessionLegacyStub.this.sessionImpl.onPlayerInteractionFinishedOnHandler(controllerInfo, new Player.Commands.Builder().addAll(31, 2).addIf(1, z2).build());
        }
    }

    private void handleOnAddQueueItem(final MediaDescriptionCompat mediaDescriptionCompat, final int i) {
        if (mediaDescriptionCompat != null) {
            if (i == -1 || i >= 0) {
                dispatchSessionTaskWithPlayerCommand(20, new SessionTask() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda13
                    @Override // androidx.media3.session.MediaSessionLegacyStub.SessionTask
                    public final void run(MediaSession.ControllerInfo controllerInfo) {
                        MediaSessionLegacyStub.m2030$r8$lambda$awMNngmqcmZ9dbvbJRGsHYnP10(this.f$0, mediaDescriptionCompat, i, controllerInfo);
                    }
                }, this.sessionCompat.getCurrentControllerInfo(), false);
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$awMNngmqcmZ9dbvbJRGsHYnP-10, reason: not valid java name */
    public static /* synthetic */ void m2030$r8$lambda$awMNngmqcmZ9dbvbJRGsHYnP10(MediaSessionLegacyStub mediaSessionLegacyStub, MediaDescriptionCompat mediaDescriptionCompat, int i, MediaSession.ControllerInfo controllerInfo) {
        mediaSessionLegacyStub.getClass();
        if (TextUtils.isEmpty(mediaDescriptionCompat.getMediaId())) {
            Log.m164w("MediaSessionLegacyStub", "onAddQueueItem(): Media ID shouldn't be empty");
        } else {
            Futures.addCallback(mediaSessionLegacyStub.sessionImpl.onAddMediaItemsOnHandler(controllerInfo, ImmutableList.of(LegacyConversions.convertToMediaItem(mediaDescriptionCompat))), mediaSessionLegacyStub.new C08642(controllerInfo, i), MoreExecutors.directExecutor());
        }
    }

    /* JADX INFO: renamed from: androidx.media3.session.MediaSessionLegacyStub$2 */
    public class C08642 implements FutureCallback<List<MediaItem>> {
        final /* synthetic */ MediaSession.ControllerInfo val$controller;
        final /* synthetic */ int val$index;

        @Override // com.google.common.util.concurrent.FutureCallback
        public void onFailure(Throwable th) {
        }

        public C08642(MediaSession.ControllerInfo controllerInfo, int i) {
            this.val$controller = controllerInfo;
            this.val$index = i;
        }

        @Override // com.google.common.util.concurrent.FutureCallback
        public void onSuccess(final List<MediaItem> list) {
            Handler applicationHandler = MediaSessionLegacyStub.this.sessionImpl.getApplicationHandler();
            MediaSessionImpl mediaSessionImpl = MediaSessionLegacyStub.this.sessionImpl;
            final MediaSession.ControllerInfo controllerInfo = this.val$controller;
            final int i = this.val$index;
            Util.postOrRun(applicationHandler, mediaSessionImpl.callWithControllerForCurrentRequestSet(controllerInfo, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$2$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.C08642.m2033$r8$lambda$tqnZ3Onpq0lgDodWXxjGI6JFFc(this.f$0, i, list, controllerInfo);
                }
            }));
        }

        /* JADX INFO: renamed from: $r8$lambda$tqnZ3Onpq0lgDodWXxj-GI6JFFc, reason: not valid java name */
        public static /* synthetic */ void m2033$r8$lambda$tqnZ3Onpq0lgDodWXxjGI6JFFc(C08642 c08642, int i, List list, MediaSession.ControllerInfo controllerInfo) {
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            if (i == -1) {
                mediaSessionLegacyStub.sessionImpl.getPlayerWrapper().addMediaItems(list);
            } else {
                mediaSessionLegacyStub.sessionImpl.getPlayerWrapper().addMediaItems(i, list);
            }
            MediaSessionLegacyStub.this.sessionImpl.onPlayerInteractionFinishedOnHandler(controllerInfo, new Player.Commands.Builder().add(20).build());
        }
    }

    private static void sendCustomCommandResultWhenReady(final ResultReceiver resultReceiver, final ListenableFuture<SessionResult> listenableFuture) {
        listenableFuture.addListener(new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                MediaSessionLegacyStub.$r8$lambda$TZ33bCekKUornYXtFKaHrU24S3o(listenableFuture, resultReceiver);
            }
        }, MoreExecutors.directExecutor());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void $r8$lambda$TZ33bCekKUornYXtFKaHrU24S3o(ListenableFuture listenableFuture, ResultReceiver resultReceiver) {
        SessionResult sessionResult;
        try {
            sessionResult = (SessionResult) Preconditions.checkNotNull((SessionResult) listenableFuture.get(), "SessionResult must not be null");
        } catch (InterruptedException e) {
            e = e;
            Log.m165w("MediaSessionLegacyStub", "Custom command failed", e);
            sessionResult = new SessionResult(-1);
        } catch (CancellationException e2) {
            Log.m165w("MediaSessionLegacyStub", "Custom command cancelled", e2);
            sessionResult = new SessionResult(1);
        } catch (ExecutionException e3) {
            e = e3;
            Log.m165w("MediaSessionLegacyStub", "Custom command failed", e);
            sessionResult = new SessionResult(-1);
        }
        resultReceiver.send(sessionResult.resultCode, sessionResult.extras);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setMetadata(MediaSessionCompat mediaSessionCompat, MediaMetadataCompat mediaMetadataCompat) {
        mediaSessionCompat.setMetadata(mediaMetadataCompat);
    }

    private static void setMediaButtonReceiver(MediaSessionCompat mediaSessionCompat, PendingIntent pendingIntent) {
        mediaSessionCompat.setMediaButtonReceiver(pendingIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void setQueue(MediaSessionCompat mediaSessionCompat, List<MediaSessionCompat.QueueItem> list) {
        mediaSessionCompat.setQueue(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setQueueTitle(MediaSessionCompat mediaSessionCompat, CharSequence charSequence) {
        if (!isQueueEnabled()) {
            charSequence = null;
        }
        mediaSessionCompat.setQueueTitle(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isQueueEnabled() {
        return this.availablePlayerCommands.contains(17) && this.sessionImpl.getPlayerWrapper().getAvailableCommands().contains(17);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAndroidAutoConnectionStateChanged() {
        Util.postOrRun(this.sessionImpl.getApplicationHandler(), new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.m191x8cc96e7d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: updateCustomLayoutAndLegacyExtrasForMediaButtonPreferencesAndInformExtrasChanged */
    public void m191x8cc96e7d() {
        boolean z = this.legacyExtras.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", false);
        boolean z2 = this.legacyExtras.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false);
        updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences();
        if (this.legacyExtras.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", false) == z && this.legacyExtras.getBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false) == z2) {
            return;
        }
        getSessionCompat().setExtras(this.legacyExtras);
    }

    private void updateCustomLayoutAndLegacyExtrasForMediaButtonPreferences() {
        ImmutableList<CommandButton> immutableList = this.mediaButtonPreferences;
        SessionCommands sessionCommands = this.availableSessionCommands;
        Player.Commands commands = this.playerCommandsForErrorState;
        if (commands == null) {
            commands = this.availablePlayerCommands;
        }
        this.customLayout = CommandButton.getCustomLayoutFromMediaButtonPreferences(CommandButton.copyWithUnavailableButtonsDisabled(immutableList, sessionCommands, commands), true, true, 9);
        if (needsButtonReservationWorkaroundForSeekbar(this.androidAutoObserver)) {
            this.legacyExtras.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", (this.customLayout.isEmpty() || CommandButton.containsButtonForSlot(this.customLayout, 2)) ? false : true);
            this.legacyExtras.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", false);
        } else {
            this.legacyExtras.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", !CommandButton.containsButtonForSlot(this.customLayout, 2));
            this.legacyExtras.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", !CommandButton.containsButtonForSlot(this.customLayout, 3));
        }
    }

    private static MediaItem createMediaItemForMediaRequest(String str, Uri uri, String str2, Bundle bundle) {
        MediaItem.Builder builder = new MediaItem.Builder();
        if (str == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return builder.setMediaId(str).setRequestMetadata(new MediaItem.RequestMetadata.Builder().setMediaUri(uri).setSearchQuery(str2).setExtras(bundle).build()).build();
    }

    public static final class ControllerLegacyCb implements MediaSession.ControllerCb {
        private final MediaSessionManager.RemoteUserInfo remoteUserInfo;

        public ControllerLegacyCb(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            this.remoteUserInfo = remoteUserInfo;
        }

        public int hashCode() {
            return ObjectsCompat.hash(this.remoteUserInfo);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != ControllerLegacyCb.class) {
                return false;
            }
            return Objects.equals(this.remoteUserInfo, ((ControllerLegacyCb) obj).remoteUserInfo);
        }
    }

    public final class ControllerLegacyCbForBroadcast implements MediaSession.ControllerCb {
        private Uri lastMediaUri;
        private MediaMetadata lastMediaMetadata = MediaMetadata.EMPTY;
        private String lastMediaId = _UrlKt.FRAGMENT_ENCODE_SET;
        private long lastDurationMs = -9223372036854775807L;

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onDisconnected(int i) {
        }

        public ControllerLegacyCbForBroadcast() {
        }

        public boolean skipLegacySessionPlaybackStateUpdates() {
            return MediaSessionLegacyStub.this.customPlaybackException != null;
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onAvailableCommandsChangedFromPlayer(int i, Player.Commands commands) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            PlayerWrapper playerWrapper = MediaSessionLegacyStub.this.sessionImpl.getPlayerWrapper();
            MediaSessionLegacyStub.this.maybeUpdateFlags(playerWrapper);
            MediaSessionLegacyStub.this.updateLegacySessionPlaybackState(playerWrapper);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlayerChanged(int i, PlayerWrapper playerWrapper, PlayerWrapper playerWrapper2) {
            Timeline currentTimelineWithCommandCheck = playerWrapper2.getCurrentTimelineWithCommandCheck();
            if (playerWrapper == null || !Objects.equals(playerWrapper.getCurrentTimelineWithCommandCheck(), currentTimelineWithCommandCheck)) {
                onTimelineChanged(i, currentTimelineWithCommandCheck, 0);
            }
            MediaMetadata playlistMetadataWithCommandCheck = playerWrapper2.getPlaylistMetadataWithCommandCheck();
            if (playerWrapper == null || !Objects.equals(playerWrapper.getPlaylistMetadataWithCommandCheck(), playlistMetadataWithCommandCheck)) {
                onPlaylistMetadataChanged(i, playlistMetadataWithCommandCheck);
            }
            MediaMetadata mediaMetadataWithCommandCheck = playerWrapper2.getMediaMetadataWithCommandCheck();
            if (playerWrapper == null || !Objects.equals(playerWrapper.getMediaMetadataWithCommandCheck(), mediaMetadataWithCommandCheck)) {
                onMediaMetadataChanged(i, mediaMetadataWithCommandCheck);
            }
            if (playerWrapper == null || playerWrapper.getShuffleModeEnabled() != playerWrapper2.getShuffleModeEnabled()) {
                onShuffleModeEnabledChanged(i, playerWrapper2.getShuffleModeEnabled());
            }
            if (playerWrapper == null || playerWrapper.getRepeatMode() != playerWrapper2.getRepeatMode()) {
                onRepeatModeChanged(i, playerWrapper2.getRepeatMode());
            }
            onDeviceInfoChanged(i, playerWrapper2.getDeviceInfo());
            MediaSessionLegacyStub.this.maybeUpdateFlags(playerWrapper2);
            MediaItem currentMediaItemWithCommandCheck = playerWrapper2.getCurrentMediaItemWithCommandCheck();
            if (playerWrapper == null || !Objects.equals(playerWrapper.getCurrentMediaItemWithCommandCheck(), currentMediaItemWithCommandCheck)) {
                onMediaItemTransition(i, currentMediaItemWithCommandCheck, 3);
            } else {
                if (skipLegacySessionPlaybackStateUpdates()) {
                    return;
                }
                MediaSessionLegacyStub.this.updateLegacySessionPlaybackState(playerWrapper2);
            }
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlayerError(int i, PlaybackException playbackException) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void sendCustomCommand(int i, SessionCommand sessionCommand, Bundle bundle) {
            if (bundle.isEmpty()) {
                bundle = sessionCommand.customExtras;
            } else if (!sessionCommand.customExtras.isEmpty()) {
                Bundle bundle2 = new Bundle(sessionCommand.customExtras);
                bundle2.putAll(bundle);
                bundle = bundle2;
            }
            MediaSessionLegacyStub.this.sessionCompat.sendSessionEvent(sessionCommand.customAction, bundle);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlayWhenReadyChanged(int i, boolean z, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlaybackSuppressionReasonChanged(int i, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlaybackStateChanged(int i, int i2, PlaybackException playbackException) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onIsPlayingChanged(int i, boolean z) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPositionDiscontinuity(int i, Player.PositionInfo positionInfo, Player.PositionInfo positionInfo2, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlaybackParametersChanged(int i, PlaybackParameters playbackParameters) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onMediaItemTransition(int i, MediaItem mediaItem, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            updateMetadataIfChanged();
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            if (mediaItem == null) {
                mediaSessionLegacyStub.sessionCompat.setRatingType(0);
            } else {
                mediaSessionLegacyStub.sessionCompat.setRatingType(LegacyConversions.getRatingCompatStyle(mediaItem.mediaMetadata.userRating));
            }
            MediaSessionLegacyStub mediaSessionLegacyStub2 = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub2.updateLegacySessionPlaybackState(mediaSessionLegacyStub2.sessionImpl.getPlayerWrapper());
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onMediaMetadataChanged(int i, MediaMetadata mediaMetadata) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            updateMetadataIfChanged();
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onTimelineChanged(int i, Timeline timeline, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            updateQueue(timeline);
            updateMetadataIfChanged();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void updateQueue(Timeline timeline) {
            if (!MediaSessionLegacyStub.this.isQueueEnabled() || timeline.isEmpty()) {
                MediaSessionLegacyStub.setQueue(MediaSessionLegacyStub.this.sessionCompat, null);
                return;
            }
            final List<MediaItem> listConvertToMediaItemList = LegacyConversions.convertToMediaItemList(timeline);
            final ArrayList arrayList = new ArrayList();
            final AtomicInteger atomicInteger = new AtomicInteger(0);
            Runnable runnable = new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$ControllerLegacyCbForBroadcast$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.ControllerLegacyCbForBroadcast.m2035$r8$lambda$FOEjVJh95pMxDmpHvg3o9UcGz4(this.f$0, atomicInteger, listConvertToMediaItemList, arrayList);
                }
            };
            for (int i = 0; i < listConvertToMediaItemList.size(); i++) {
                MediaMetadata mediaMetadata = listConvertToMediaItemList.get(i).mediaMetadata;
                if (mediaMetadata.artworkData != null) {
                    ListenableFuture<Bitmap> listenableFutureDecodeBitmap = MediaSessionLegacyStub.this.sessionImpl.getBitmapLoader().decodeBitmap(mediaMetadata.artworkData);
                    arrayList.add(listenableFutureDecodeBitmap);
                    Handler applicationHandler = MediaSessionLegacyStub.this.sessionImpl.getApplicationHandler();
                    Objects.requireNonNull(applicationHandler);
                    listenableFutureDecodeBitmap.addListener(runnable, new ExecutorC0733x95b99d2f(applicationHandler));
                } else {
                    arrayList.add(null);
                    runnable.run();
                }
            }
        }

        /* JADX INFO: renamed from: $r8$lambda$FOEjVJh95pMxD-mpHvg3o9UcGz4, reason: not valid java name */
        public static /* synthetic */ void m2035$r8$lambda$FOEjVJh95pMxDmpHvg3o9UcGz4(ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast, AtomicInteger atomicInteger, List list, List list2) {
            controllerLegacyCbForBroadcast.getClass();
            if (atomicInteger.incrementAndGet() == list.size()) {
                controllerLegacyCbForBroadcast.handleBitmapFuturesAllCompletedAndSetQueue(list2, list);
            }
        }

        private void handleBitmapFuturesAllCompletedAndSetQueue(List<ListenableFuture<Bitmap>> list, List<MediaItem> list2) {
            Bitmap bitmap;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                ListenableFuture<Bitmap> listenableFuture = list.get(i);
                if (listenableFuture != null) {
                    try {
                        bitmap = (Bitmap) Futures.getDone(listenableFuture);
                    } catch (CancellationException | ExecutionException e) {
                        Log.m160d("MediaSessionLegacyStub", "Failed to get bitmap", e);
                        bitmap = null;
                    }
                } else {
                    bitmap = null;
                }
                arrayList.add(LegacyConversions.convertToQueueItem(list2.get(i), i, bitmap));
            }
            MediaSessionLegacyStub.setQueue(MediaSessionLegacyStub.this.sessionCompat, arrayList);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPlaylistMetadataChanged(int i, MediaMetadata mediaMetadata) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            CharSequence queueTitle = MediaSessionLegacyStub.this.sessionCompat.getController().getQueueTitle();
            CharSequence charSequence = mediaMetadata.title;
            if (TextUtils.equals(queueTitle, charSequence)) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.setQueueTitle(mediaSessionLegacyStub.sessionCompat, charSequence);
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onShuffleModeEnabledChanged(int i, boolean z) {
            MediaSessionLegacyStub.this.sessionCompat.setShuffleMode(LegacyConversions.convertToPlaybackStateCompatShuffleMode(z));
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onRepeatModeChanged(int i, int i2) {
            MediaSessionLegacyStub.this.sessionCompat.setRepeatMode(LegacyConversions.convertToPlaybackStateCompatRepeatMode(i2));
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onAudioAttributesChanged(int i, AudioAttributes audioAttributes) {
            if (MediaSessionLegacyStub.this.sessionImpl.getPlayerWrapper().getDeviceInfo().playbackType == 0) {
                MediaSessionLegacyStub.this.sessionCompat.setPlaybackToLocal(audioAttributes);
            }
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onDeviceInfoChanged(int i, DeviceInfo deviceInfo) {
            PlayerWrapper playerWrapper = MediaSessionLegacyStub.this.sessionImpl.getPlayerWrapper();
            MediaSessionLegacyStub.this.volumeProviderCompat = MediaSessionLegacyStub.createVolumeProviderCompat(playerWrapper);
            VolumeProviderCompat volumeProviderCompat = MediaSessionLegacyStub.this.volumeProviderCompat;
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            if (volumeProviderCompat == null) {
                mediaSessionLegacyStub.sessionCompat.setPlaybackToLocal(playerWrapper.getAudioAttributesWithCommandCheck());
            } else {
                mediaSessionLegacyStub.sessionCompat.setPlaybackToRemote(MediaSessionLegacyStub.this.volumeProviderCompat);
            }
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onDeviceVolumeChanged(int i, int i2, boolean z) {
            if (MediaSessionLegacyStub.this.volumeProviderCompat != null) {
                VolumeProviderCompat volumeProviderCompat = MediaSessionLegacyStub.this.volumeProviderCompat;
                if (z) {
                    i2 = 0;
                }
                volumeProviderCompat.setCurrentVolume(i2);
            }
        }

        @Override // androidx.media3.session.MediaSession.ControllerCb
        public void onPeriodicSessionPositionInfoChanged(int i, SessionPositionInfo sessionPositionInfo, boolean z, boolean z2, int i2) {
            if (skipLegacySessionPlaybackStateUpdates()) {
                return;
            }
            MediaSessionLegacyStub mediaSessionLegacyStub = MediaSessionLegacyStub.this;
            mediaSessionLegacyStub.updateLegacySessionPlaybackState(mediaSessionLegacyStub.sessionImpl.getPlayerWrapper());
        }

        private void updateMetadataIfChanged() {
            final long j;
            final String str;
            final Uri uri;
            ControllerLegacyCbForBroadcast controllerLegacyCbForBroadcast;
            final MediaMetadata mediaMetadata;
            Uri uri2;
            PlayerWrapper playerWrapper = MediaSessionLegacyStub.this.sessionImpl.getPlayerWrapper();
            MediaItem currentMediaItemWithCommandCheck = playerWrapper.getCurrentMediaItemWithCommandCheck();
            MediaMetadata mediaMetadataWithCommandCheck = playerWrapper.getMediaMetadataWithCommandCheck();
            long durationWithCommandCheck = playerWrapper.isCurrentMediaItemLiveWithCommandCheck() ? -9223372036854775807L : playerWrapper.getDurationWithCommandCheck();
            String str2 = currentMediaItemWithCommandCheck != null ? currentMediaItemWithCommandCheck.mediaId : _UrlKt.FRAGMENT_ENCODE_SET;
            Bitmap bitmap = null;
            Uri uri3 = (currentMediaItemWithCommandCheck == null || (uri2 = currentMediaItemWithCommandCheck.requestMetadata.mediaUri) == null) ? null : uri2;
            if (Objects.equals(this.lastMediaMetadata, mediaMetadataWithCommandCheck) && Objects.equals(this.lastMediaId, str2) && Objects.equals(this.lastMediaUri, uri3) && this.lastDurationMs == durationWithCommandCheck) {
                return;
            }
            this.lastMediaId = str2;
            this.lastMediaUri = uri3;
            this.lastMediaMetadata = mediaMetadataWithCommandCheck;
            this.lastDurationMs = durationWithCommandCheck;
            ListenableFuture<Bitmap> listenableFutureLoadBitmapFromMetadata = MediaSessionLegacyStub.this.sessionImpl.getBitmapLoader().loadBitmapFromMetadata(mediaMetadataWithCommandCheck);
            if (listenableFutureLoadBitmapFromMetadata != null) {
                MediaSessionLegacyStub.this.pendingBitmapLoadCallback = null;
                if (!listenableFutureLoadBitmapFromMetadata.isDone()) {
                    j = durationWithCommandCheck;
                    uri = uri3;
                    mediaMetadata = mediaMetadataWithCommandCheck;
                    str = str2;
                    controllerLegacyCbForBroadcast = this;
                    MediaSessionLegacyStub.this.pendingBitmapLoadCallback = new FutureCallback<Bitmap>() { // from class: androidx.media3.session.MediaSessionLegacyStub.ControllerLegacyCbForBroadcast.1
                        @Override // com.google.common.util.concurrent.FutureCallback
                        public void onSuccess(Bitmap bitmap2) {
                            if (this != MediaSessionLegacyStub.this.pendingBitmapLoadCallback) {
                                return;
                            }
                            MediaSessionLegacyStub.setMetadata(MediaSessionLegacyStub.this.sessionCompat, LegacyConversions.convertToMediaMetadataCompat(mediaMetadata, str, uri, j, bitmap2));
                            MediaSessionLegacyStub.this.sessionImpl.onNotificationRefreshRequired();
                        }

                        @Override // com.google.common.util.concurrent.FutureCallback
                        public void onFailure(Throwable th) {
                            if (this != MediaSessionLegacyStub.this.pendingBitmapLoadCallback) {
                                return;
                            }
                            Log.m164w("MediaSessionLegacyStub", MediaSessionLegacyStub.getBitmapLoadErrorMessage(th));
                        }
                    };
                    FutureCallback futureCallback = MediaSessionLegacyStub.this.pendingBitmapLoadCallback;
                    Handler applicationHandler = MediaSessionLegacyStub.this.sessionImpl.getApplicationHandler();
                    Objects.requireNonNull(applicationHandler);
                    Futures.addCallback(listenableFutureLoadBitmapFromMetadata, futureCallback, new ExecutorC0733x95b99d2f(applicationHandler));
                } else {
                    try {
                        bitmap = (Bitmap) Futures.getDone(listenableFutureLoadBitmapFromMetadata);
                    } catch (CancellationException | ExecutionException e) {
                        Log.m164w("MediaSessionLegacyStub", MediaSessionLegacyStub.getBitmapLoadErrorMessage(e));
                    }
                    j = durationWithCommandCheck;
                    str = str2;
                    uri = uri3;
                    controllerLegacyCbForBroadcast = this;
                    mediaMetadata = mediaMetadataWithCommandCheck;
                }
            } else {
                j = durationWithCommandCheck;
                str = str2;
                uri = uri3;
                controllerLegacyCbForBroadcast = this;
                mediaMetadata = mediaMetadataWithCommandCheck;
            }
            MediaSessionLegacyStub.setMetadata(MediaSessionLegacyStub.this.sessionCompat, LegacyConversions.convertToMediaMetadataCompat(mediaMetadata, str, uri, j, bitmap));
        }
    }

    public static class ConnectionTimeoutHandler extends Handler {
        private final ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager;

        public ConnectionTimeoutHandler(Looper looper, ConnectedControllersManager<MediaSessionManager.RemoteUserInfo> connectedControllersManager) {
            super(looper);
            this.connectedControllersManager = connectedControllersManager;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            MediaSession.ControllerInfo controllerInfo = (MediaSession.ControllerInfo) message.obj;
            if (this.connectedControllersManager.isConnected(controllerInfo)) {
                ((MediaSession.ControllerCb) Preconditions.checkNotNull(controllerInfo.getControllerCb())).onDisconnected(0);
                this.connectedControllersManager.removeController(controllerInfo);
            }
        }

        public void disconnectControllerAfterTimeout(MediaSession.ControllerInfo controllerInfo, long j) {
            removeMessages(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, controllerInfo);
            sendMessageDelayed(obtainMessage(WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, controllerInfo), j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getBitmapLoadErrorMessage(Throwable th) {
        return "Failed to load bitmap: " + th.getMessage();
    }

    private static ComponentName getServiceComponentByAction(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (listQueryIntentServices == null || listQueryIntentServices.isEmpty()) {
            return null;
        }
        ServiceInfo serviceInfo = listQueryIntentServices.get(0).serviceInfo;
        return new ComponentName(serviceInfo.packageName, serviceInfo.name);
    }

    private PlaybackStateCompat createPlaybackStateCompat(PlayerWrapper playerWrapper) {
        Player.Commands commandsIntersect;
        Bundle bundle;
        PlaybackException playerError = this.customPlaybackException;
        if (playerError == null) {
            playerError = playerWrapper.getPlayerError();
        }
        boolean z = playerWrapper.isCommandAvailable(16) && !playerWrapper.isCurrentMediaItemLive();
        boolean z2 = playerError != null || Util.shouldShowPlayButton(playerWrapper, this.playIfSuppressed);
        int iConvertToPlaybackStateCompatState = playerError != null ? 7 : LegacyConversions.convertToPlaybackStateCompatState(playerWrapper, z2);
        Player.Commands availableCommands = playerWrapper.getAvailableCommands();
        Player.Commands commands = this.playerCommandsForErrorState;
        if (commands != null) {
            commandsIntersect = MediaUtils.intersect(commands, availableCommands);
        } else {
            commandsIntersect = MediaUtils.intersect(this.availablePlayerCommands, availableCommands);
        }
        long jConvertCommandToPlaybackStateActions = 128;
        for (int i = 0; i < commandsIntersect.size(); i++) {
            jConvertCommandToPlaybackStateActions |= convertCommandToPlaybackStateActions(commandsIntersect.get(i), z2);
        }
        if (!this.mediaButtonPreferences.isEmpty() && CommandButton.containsButtonForSlot(this.customLayout, 2)) {
            jConvertCommandToPlaybackStateActions &= -17;
        }
        if (!this.mediaButtonPreferences.isEmpty() && CommandButton.containsButtonForSlot(this.customLayout, 3)) {
            jConvertCommandToPlaybackStateActions &= -33;
        }
        if (!z) {
            jConvertCommandToPlaybackStateActions &= -257;
        }
        long jConvertToQueueItemId = playerWrapper.isCommandAvailable(17) ? LegacyConversions.convertToQueueItemId(playerWrapper.getCurrentMediaItemIndex()) : -1L;
        float f = playerWrapper.getPlaybackParameters().speed;
        float f2 = (playerWrapper.isPlaying() && z) ? f : 0.0f;
        Bundle bundle2 = playerError != null ? new Bundle(playerError.extras) : new Bundle();
        bundle2.putAll(this.legacyExtras);
        bundle2.putFloat("EXO_SPEED", f);
        MediaItem currentMediaItemWithCommandCheck = playerWrapper.getCurrentMediaItemWithCommandCheck();
        if (currentMediaItemWithCommandCheck != null && !_UrlKt.FRAGMENT_ENCODE_SET.equals(currentMediaItemWithCommandCheck.mediaId)) {
            bundle2.putString("androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID", currentMediaItemWithCommandCheck.mediaId);
        }
        long currentPosition = z ? playerWrapper.getCurrentPosition() : -1L;
        long bufferedPosition = z ? playerWrapper.getBufferedPosition() : -1L;
        PlaybackException playbackException = playerError;
        PlaybackStateCompat.Builder extras = new PlaybackStateCompat.Builder().setState(iConvertToPlaybackStateCompatState, currentPosition, f2, SystemClock.elapsedRealtime()).setActions(jConvertCommandToPlaybackStateActions).setActiveQueueItemId(jConvertToQueueItemId).setBufferedPosition(bufferedPosition).setExtras(bundle2);
        for (int i2 = 0; i2 < this.customLayout.size(); i2++) {
            CommandButton commandButton = this.customLayout.get(i2);
            SessionCommand sessionCommand = commandButton.sessionCommand;
            if (sessionCommand != null && commandButton.isEnabled && sessionCommand.commandCode == 0 && (CommandButton.isButtonCommandAvailable(commandButton, this.availableSessionCommands, commandsIntersect) || CommandButton.isPredefinedCustomCommandButtonCode(sessionCommand.customAction))) {
                boolean z3 = commandButton.icon != 0;
                boolean z4 = commandButton.iconUri != null;
                if (z3 || z4 || !commandButton.extras.isEmpty()) {
                    bundle = new Bundle(sessionCommand.customExtras);
                } else {
                    bundle = sessionCommand.customExtras;
                }
                if (!commandButton.extras.isEmpty()) {
                    bundle.putAll(commandButton.extras);
                }
                if (z3) {
                    bundle.putInt("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT", commandButton.icon);
                }
                if (z4) {
                    bundle.putString("androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT", ((Uri) Preconditions.checkNotNull(commandButton.iconUri)).toString());
                }
                extras.addCustomAction(new PlaybackStateCompat.CustomAction.Builder(sessionCommand.customAction, commandButton.displayName, commandButton.iconResId).setExtras(bundle).build());
            }
        }
        if (playbackException != null) {
            extras.setErrorMessage(LegacyConversions.convertToLegacyErrorCode(playbackException), playbackException.getMessage());
        }
        return extras.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static VolumeProviderCompat createVolumeProviderCompat(PlayerWrapper playerWrapper) {
        int i;
        if (playerWrapper.getDeviceInfo().playbackType == 0) {
            return null;
        }
        Player.Commands availableCommands = playerWrapper.getAvailableCommands();
        if (availableCommands.containsAny(26, 34)) {
            i = availableCommands.containsAny(25, 33) ? 2 : 1;
        } else {
            i = 0;
        }
        int i2 = i;
        Handler handler = new Handler(playerWrapper.getApplicationLooper());
        int deviceVolumeWithCommandCheck = playerWrapper.getDeviceVolumeWithCommandCheck();
        DeviceInfo deviceInfo = playerWrapper.getDeviceInfo();
        return new C08653(i2, deviceInfo.maxVolume, deviceVolumeWithCommandCheck, deviceInfo.routingControllerId, handler, playerWrapper, 1);
    }

    /* JADX INFO: renamed from: androidx.media3.session.MediaSessionLegacyStub$3 */
    public class C08653 extends VolumeProviderCompat {
        final /* synthetic */ Handler val$handler;
        final /* synthetic */ int val$legacyVolumeFlag;
        final /* synthetic */ PlayerWrapper val$player;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C08653(int i, int i2, int i3, String str, Handler handler, PlayerWrapper playerWrapper, int i4) {
            super(i, i2, i3, str);
            this.val$handler = handler;
            this.val$player = playerWrapper;
            this.val$legacyVolumeFlag = i4;
        }

        @Override // androidx.media3.session.legacy.VolumeProviderCompat
        public void onSetVolumeTo(final int i) {
            Handler handler = this.val$handler;
            final PlayerWrapper playerWrapper = this.val$player;
            final int i2 = this.val$legacyVolumeFlag;
            Util.postOrRun(handler, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$3$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.C08653.$r8$lambda$c44gYbuaJQRDsnsgVdnkYipByuw(playerWrapper, i, i2);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$c44gYbuaJQRDsnsgVdnkYipByuw(PlayerWrapper playerWrapper, int i, int i2) {
            if (playerWrapper.isCommandAvailable(25) || playerWrapper.isCommandAvailable(33)) {
                if (playerWrapper.isCommandAvailable(33)) {
                    playerWrapper.setDeviceVolume(i, i2);
                } else {
                    playerWrapper.setDeviceVolume(i);
                }
            }
        }

        @Override // androidx.media3.session.legacy.VolumeProviderCompat
        public void onAdjustVolume(final int i) {
            Handler handler = this.val$handler;
            final PlayerWrapper playerWrapper = this.val$player;
            final int i2 = this.val$legacyVolumeFlag;
            Util.postOrRun(handler, new Runnable() { // from class: androidx.media3.session.MediaSessionLegacyStub$3$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    MediaSessionLegacyStub.C08653.m2034$r8$lambda$TjbUqtUwysPI6p6wigghYjknkg(playerWrapper, i, i2);
                }
            });
        }

        /* JADX INFO: renamed from: $r8$lambda$TjbUq-tUwysPI6p6wigghYjknkg, reason: not valid java name */
        public static /* synthetic */ void m2034$r8$lambda$TjbUqtUwysPI6p6wigghYjknkg(PlayerWrapper playerWrapper, int i, int i2) {
            if (playerWrapper.isCommandAvailable(26) || playerWrapper.isCommandAvailable(34)) {
                if (i == -100) {
                    if (playerWrapper.isCommandAvailable(34)) {
                        playerWrapper.setDeviceMuted(true, i2);
                        return;
                    } else {
                        playerWrapper.setDeviceMuted(true);
                        return;
                    }
                }
                if (i == -1) {
                    if (playerWrapper.isCommandAvailable(34)) {
                        playerWrapper.decreaseDeviceVolume(i2);
                        return;
                    } else {
                        playerWrapper.decreaseDeviceVolume();
                        return;
                    }
                }
                if (i == 1) {
                    if (playerWrapper.isCommandAvailable(34)) {
                        playerWrapper.increaseDeviceVolume(i2);
                        return;
                    } else {
                        playerWrapper.increaseDeviceVolume();
                        return;
                    }
                }
                if (i == 100) {
                    if (playerWrapper.isCommandAvailable(34)) {
                        playerWrapper.setDeviceMuted(false, i2);
                        return;
                    } else {
                        playerWrapper.setDeviceMuted(false);
                        return;
                    }
                }
                if (i == 101) {
                    if (playerWrapper.isCommandAvailable(34)) {
                        playerWrapper.setDeviceMuted(!playerWrapper.isDeviceMutedWithCommandCheck(), i2);
                        return;
                    } else {
                        playerWrapper.setDeviceMuted(!playerWrapper.isDeviceMutedWithCommandCheck());
                        return;
                    }
                }
                Log.m164w("VolumeProviderCompat", "onAdjustVolume: Ignoring unknown direction: " + i);
            }
        }
    }

    private boolean needsButtonReservationWorkaroundForSeekbar(AndroidAutoConnectionStateObserver androidAutoConnectionStateObserver) {
        if (this.mayNeedButtonReservationWorkaroundForSeekbar) {
            return androidAutoConnectionStateObserver == null || !androidAutoConnectionStateObserver.isConnected();
        }
        return false;
    }

    private static boolean mayNeedButtonReservationWorkaroundForSeekbar(Context context) {
        if (Build.VERSION.SDK_INT < 33 || Util.isAutomotive(context)) {
            return false;
        }
        String str = Build.MANUFACTURER;
        return str.equals("Google") || str.equals("motorola") || str.equals("vivo") || str.equals("Sony") || str.equals("Nothing") || str.equals("unknown");
    }

    public final class MediaButtonReceiver extends BroadcastReceiver {
        private MediaButtonReceiver() {
        }

        public /* synthetic */ MediaButtonReceiver(MediaSessionLegacyStub mediaSessionLegacyStub, C08631 c08631) {
            this();
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            KeyEvent keyEvent;
            if (Objects.equals(intent.getAction(), "android.intent.action.MEDIA_BUTTON") && (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) != null) {
                MediaSessionLegacyStub.this.sessionCompat.getController().dispatchMediaButtonEvent(keyEvent);
            }
        }
    }

    public static final class Api31 {
        public static void setMediaButtonBroadcastReceiver(MediaSessionCompat mediaSessionCompat, ComponentName componentName) {
            try {
                ((android.media.session.MediaSession) Preconditions.checkNotNull(mediaSessionCompat.getMediaSession())).setMediaButtonBroadcastReceiver(componentName);
            } catch (IllegalArgumentException e) {
                if (Build.MANUFACTURER.equals("motorola")) {
                    Log.m162e("MediaSessionLegacyStub", "caught IllegalArgumentException on a motorola device when attempting to set the media button broadcast receiver. See https://github.com/androidx/media/issues/1730 for details.", e);
                    return;
                }
                throw e;
            }
        }
    }
}
