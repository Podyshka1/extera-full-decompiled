package org.telegram.p029ui;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import com.google.android.gms.cast.MediaError;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.SessionManagerListener;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.atomic.AtomicInteger;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.Utilities;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CastSync {
    private static boolean listened;
    public static AtomicInteger pending;
    private static int savedVolume;
    private static ContentObserver syncingVolume;
    public static int type;

    public static Context getContext() {
        LaunchActivity launchActivity = LaunchActivity.instance;
        return launchActivity == null ? ApplicationLoader.applicationContext : launchActivity;
    }

    public static void check(final int i) {
        CastContext sharedInstance;
        type = i;
        if (listened) {
            return;
        }
        try {
            if (getContext() == null || (sharedInstance = CastContext.getSharedInstance(getContext())) == null) {
                return;
            }
            sharedInstance.getSessionManager().addSessionManagerListener(new SessionManagerListener() { // from class: org.telegram.ui.CastSync.1
                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionResumeFailed(CastSession castSession, int i2) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionResumed(CastSession castSession, boolean z) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionResuming(CastSession castSession, String str) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionStartFailed(CastSession castSession, int i2) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionStarting(CastSession castSession) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionSuspended(CastSession castSession, int i2) {
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionEnded(CastSession castSession, int i2) {
                    CastSync.doSyncVolume(false);
                    CastSync.syncInterface();
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionEnding(CastSession castSession) {
                    CastSync.doSyncVolume(false);
                    CastSync.syncInterface();
                }

                @Override // com.google.android.gms.cast.framework.SessionManagerListener
                public void onSessionStarted(CastSession castSession, String str) {
                    RemoteMediaClient remoteMediaClient;
                    long currentPosition;
                    if (castSession == null || (remoteMediaClient = castSession.getRemoteMediaClient()) == null) {
                        return;
                    }
                    AtomicInteger atomicInteger = CastSync.pending;
                    if (atomicInteger != null) {
                        atomicInteger.set(0);
                    }
                    remoteMediaClient.registerCallback(new RemoteMediaClient.Callback() { // from class: org.telegram.ui.CastSync.1.1
                        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
                        public void onStatusUpdated() {
                            FileLog.m1133d("onStatusUpdated");
                            CastSync.syncInterface();
                        }

                        @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.Callback
                        public void onMediaError(MediaError mediaError) {
                            FileLog.m1134e("Chromecast Media Error: " + mediaError);
                        }
                    });
                    remoteMediaClient.queueSetRepeatMode(2, null);
                    int i2 = i;
                    if (i2 == 0) {
                        currentPosition = PhotoViewer.getInstance().getCurrentPosition();
                    } else {
                        currentPosition = i2 == 1 ? MediaController.getInstance().getCurrentPosition() : -1L;
                    }
                    if (currentPosition >= 0) {
                        CastSync.seekTo(currentPosition);
                    }
                    CastSync.doSyncVolume(true);
                }
            }, CastSession.class);
            listened = true;
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static void stop() {
        if (getContext() == null) {
            return;
        }
        try {
            CastContext sharedInstance = CastContext.getSharedInstance(getContext());
            if (sharedInstance == null) {
                return;
            }
            sharedInstance.getSessionManager().endCurrentSession(true);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    public static boolean isActive() {
        CastSession currentCastSession;
        if (getContext() == null) {
            return false;
        }
        try {
            CastContext sharedInstance = CastContext.getSharedInstance(getContext());
            if (sharedInstance != null && (currentCastSession = sharedInstance.getSessionManager().getCurrentCastSession()) != null) {
                if (currentCastSession.isConnecting()) {
                    return true;
                }
                if (currentCastSession.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return false;
        }
    }

    public static RemoteMediaClient getClient() {
        CastSession currentCastSession;
        if (getContext() == null) {
            return null;
        }
        try {
            CastContext sharedInstance = CastContext.getSharedInstance(getContext());
            if (sharedInstance != null && (currentCastSession = sharedInstance.getSessionManager().getCurrentCastSession()) != null && currentCastSession.isConnected()) {
                return currentCastSession.getRemoteMediaClient();
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        return null;
    }

    public static long getPosition() {
        RemoteMediaClient client = getClient();
        if (client == null) {
            return -1L;
        }
        return client.getApproximateStreamPosition();
    }

    public static void seekTo(long j) {
        RemoteMediaClient client = getClient();
        if (client == null) {
            return;
        }
        if (pending == null) {
            pending = new AtomicInteger(0);
        }
        pending.incrementAndGet();
        client.seek(new MediaSeekOptions.Builder().setPosition(j).build()).addStatusListener(new PendingResult.StatusListener() { // from class: org.telegram.ui.CastSync$$ExternalSyntheticLambda3
            @Override // com.google.android.gms.common.api.PendingResult.StatusListener
            public final void onComplete(Status status) {
                CastSync.pending.decrementAndGet();
            }
        });
    }

    public static void syncPosition(long j) {
        if (j < 0) {
            return;
        }
        long position = getPosition();
        if (position == -1 || Math.abs(position - j) > 1500) {
            seekTo(j);
        }
    }

    public static void setVolume(float f) {
        RemoteMediaClient client = getClient();
        if (client == null) {
            return;
        }
        if (pending == null) {
            pending = new AtomicInteger(0);
        }
        pending.incrementAndGet();
        client.setStreamVolume(f).addStatusListener(new PendingResult.StatusListener() { // from class: org.telegram.ui.CastSync$$ExternalSyntheticLambda2
            @Override // com.google.android.gms.common.api.PendingResult.StatusListener
            public final void onComplete(Status status) {
                CastSync.pending.decrementAndGet();
            }
        });
    }

    public static float getVolume() {
        MediaStatus mediaStatus;
        RemoteMediaClient client = getClient();
        if (client == null || (mediaStatus = client.getMediaStatus()) == null) {
            return 0.5f;
        }
        return (float) mediaStatus.getStreamVolume();
    }

    public static boolean isPlaying() {
        RemoteMediaClient client = getClient();
        if (client == null) {
            return false;
        }
        if (type == 0) {
            return !client.isPaused();
        }
        return client.isPlaying();
    }

    public static void setPlaying(boolean z) {
        RemoteMediaClient client = getClient();
        if (client == null || z == client.isPlaying()) {
            return;
        }
        if (pending == null) {
            pending = new AtomicInteger(0);
        }
        pending.incrementAndGet();
        if (z) {
            client.play().addStatusListener(new PendingResult.StatusListener() { // from class: org.telegram.ui.CastSync$$ExternalSyntheticLambda0
                @Override // com.google.android.gms.common.api.PendingResult.StatusListener
                public final void onComplete(Status status) {
                    CastSync.pending.decrementAndGet();
                }
            });
        } else {
            client.pause().addStatusListener(new PendingResult.StatusListener() { // from class: org.telegram.ui.CastSync$$ExternalSyntheticLambda1
                @Override // com.google.android.gms.common.api.PendingResult.StatusListener
                public final void onComplete(Status status) {
                    CastSync.pending.decrementAndGet();
                }
            });
        }
    }

    public static void setSpeed(float f) {
        RemoteMediaClient client = getClient();
        if (client == null) {
            return;
        }
        if (pending == null) {
            pending = new AtomicInteger(0);
        }
        pending.incrementAndGet();
        client.setPlaybackRate(f).addStatusListener(new PendingResult.StatusListener() { // from class: org.telegram.ui.CastSync$$ExternalSyntheticLambda4
            @Override // com.google.android.gms.common.api.PendingResult.StatusListener
            public final void onComplete(Status status) {
                CastSync.pending.decrementAndGet();
            }
        });
    }

    public static boolean isUpdatePending() {
        AtomicInteger atomicInteger = pending;
        return atomicInteger != null && atomicInteger.get() > 0;
    }

    public static float getSpeed() {
        MediaStatus mediaStatus;
        RemoteMediaClient client = getClient();
        if (client == null || (mediaStatus = client.getMediaStatus()) == null) {
            return 1.0f;
        }
        return (float) mediaStatus.getPlaybackRate();
    }

    public static void doSyncVolume(boolean z) {
        Context context;
        AudioManager audioManager;
        ContentObserver contentObserver = syncingVolume;
        if ((contentObserver != null) != z) {
            if (!z) {
                if (contentObserver == null || (context = getContext()) == null) {
                    return;
                }
                context.getContentResolver().unregisterContentObserver(syncingVolume);
                syncingVolume = null;
                AudioManager audioManager2 = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND);
                if (audioManager2 == null) {
                    return;
                }
                audioManager2.setStreamVolume(3, savedVolume, 0);
                syncInterface();
                return;
            }
            Context context2 = getContext();
            if (context2 == null || (audioManager = (AudioManager) context2.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)) == null) {
                return;
            }
            savedVolume = audioManager.getStreamVolume(3);
            ContentResolver contentResolver = context2.getContentResolver();
            Uri uri = Settings.System.CONTENT_URI;
            ContentObserver contentObserver2 = new ContentObserver(new Handler()) { // from class: org.telegram.ui.CastSync.2
                @Override // android.database.ContentObserver
                public void onChange(boolean z2) {
                    CastSync.setVolume(CastSync.getDeviceVolume());
                }
            };
            syncingVolume = contentObserver2;
            contentResolver.registerContentObserver(uri, true, contentObserver2);
            setVolume(getDeviceVolume());
            audioManager.adjustStreamVolume(3, 0, 1);
        }
    }

    public static void syncInterface() {
        int i = type;
        if (i == 0) {
            PhotoViewer.getInstance().syncCastedPlayer();
        } else if (i == 1) {
            MediaController.getInstance().syncCastedPlayer();
        }
    }

    public static float getDeviceVolume() {
        AudioManager audioManager;
        Context context = getContext();
        if (context == null || (audioManager = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)) == null) {
            return 0.0f;
        }
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        int streamMinVolume = Build.VERSION.SDK_INT >= 28 ? audioManager.getStreamMinVolume(3) : 0;
        return Utilities.clamp01((streamVolume - streamMinVolume) / (streamMaxVolume - streamMinVolume));
    }
}
