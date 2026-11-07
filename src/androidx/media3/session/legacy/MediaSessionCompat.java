package androidx.media3.session.legacy;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioAttributes;
import android.media.Rating;
import android.media.VolumeProvider;
import android.media.session.MediaSession;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.session.AbstractC0008x4c959418;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import androidx.media3.common.util.Assertions;
import androidx.media3.session.legacy.IMediaSession;
import androidx.media3.session.legacy.MediaSessionManager;
import androidx.media3.session.legacy.PlaybackStateCompat;
import androidx.mediarouter.media.MediaItemMetadata;
import androidx.versionedparcelable.ParcelUtils;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public class MediaSessionCompat {
    private final MediaControllerCompat controller;
    private final MediaSessionImpl impl;

    public interface MediaSessionImpl {
        Callback getCallback();

        String getCallingPackage();

        MediaSessionManager.RemoteUserInfo getCurrentControllerInfo();

        Object getMediaSession();

        PlaybackStateCompat getPlaybackState();

        Token getSessionToken();

        boolean isActive();

        void release();

        void sendSessionEvent(String str, Bundle bundle);

        void setActive(boolean z);

        void setCallback(Callback callback, Handler handler);

        void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo);

        void setExtras(Bundle bundle);

        void setFlags(int i);

        void setMediaButtonReceiver(PendingIntent pendingIntent);

        void setMetadata(MediaMetadataCompat mediaMetadataCompat);

        void setPlaybackState(PlaybackStateCompat playbackStateCompat);

        void setPlaybackToLocal(int i);

        void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat);

        void setQueue(List<QueueItem> list);

        void setQueueTitle(CharSequence charSequence);

        void setRatingType(int i);

        void setRepeatMode(int i);

        void setSessionActivity(PendingIntent pendingIntent);

        void setShuffleMode(int i);
    }

    public MediaSessionCompat(Context context, String str, ComponentName componentName, PendingIntent pendingIntent, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m212m("tag must not be null or empty");
            throw null;
        }
        if (componentName == null && (componentName = MediaButtonReceiver.getMediaButtonReceiverComponent(context)) == null) {
            Log.i("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
        }
        if (componentName != null && pendingIntent == null) {
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            pendingIntent = PendingIntent.getBroadcast(context, 0, intent, Build.VERSION.SDK_INT >= 31 ? 33554432 : 0);
        }
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            this.impl = new MediaSessionImplApi29(context, str, bundle);
        } else if (i >= 28) {
            this.impl = new MediaSessionImplApi28(context, str, bundle);
        } else {
            this.impl = new MediaSessionImplApi22(context, str, bundle);
        }
        Looper looperMyLooper = Looper.myLooper();
        setCallback(new Callback() { // from class: androidx.media3.session.legacy.MediaSessionCompat.1
        }, new Handler(looperMyLooper == null ? Looper.getMainLooper() : looperMyLooper));
        this.impl.setMediaButtonReceiver(pendingIntent);
        this.controller = new MediaControllerCompat(context, this);
    }

    public void setCallback(Callback callback, Handler handler) {
        this.impl.setCallback(callback, handler);
    }

    public void setSessionActivity(PendingIntent pendingIntent) {
        this.impl.setSessionActivity(pendingIntent);
    }

    public void setMediaButtonReceiver(PendingIntent pendingIntent) {
        this.impl.setMediaButtonReceiver(pendingIntent);
    }

    public void setFlags(int i) {
        this.impl.setFlags(i);
    }

    public void setPlaybackToLocal(int i) {
        this.impl.setPlaybackToLocal(i);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
        this.impl.setPlaybackToRemote(volumeProviderCompat);
    }

    public void setActive(boolean z) {
        this.impl.setActive(z);
    }

    public boolean isActive() {
        return this.impl.isActive();
    }

    public void sendSessionEvent(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            f$$ExternalSyntheticBUOutline1.m212m("event cannot be null or empty");
        } else {
            this.impl.sendSessionEvent(str, bundle);
        }
    }

    public void release() {
        this.impl.release();
    }

    public Token getSessionToken() {
        return this.impl.getSessionToken();
    }

    public MediaControllerCompat getController() {
        return this.controller;
    }

    public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
        this.impl.setPlaybackState(playbackStateCompat);
    }

    public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
        this.impl.setMetadata(mediaMetadataCompat);
    }

    public void setQueue(List<QueueItem> list) {
        if (list != null) {
            HashSet hashSet = new HashSet();
            for (QueueItem queueItem : list) {
                if (hashSet.contains(Long.valueOf(queueItem.getQueueId()))) {
                    Log.e("MediaSessionCompat", "Found duplicate queue id: " + queueItem.getQueueId(), new IllegalArgumentException("id of each queue item should be unique"));
                }
                hashSet.add(Long.valueOf(queueItem.getQueueId()));
            }
        }
        this.impl.setQueue(list);
    }

    public void setQueueTitle(CharSequence charSequence) {
        this.impl.setQueueTitle(charSequence);
    }

    public void setRatingType(int i) {
        this.impl.setRatingType(i);
    }

    public void setRepeatMode(int i) {
        this.impl.setRepeatMode(i);
    }

    public void setShuffleMode(int i) {
        this.impl.setShuffleMode(i);
    }

    public void setExtras(Bundle bundle) {
        this.impl.setExtras(bundle);
    }

    public Object getMediaSession() {
        return this.impl.getMediaSession();
    }

    public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
        return this.impl.getCurrentControllerInfo();
    }

    public static void ensureClassLoader(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader((ClassLoader) Assertions.checkNotNull(MediaSessionCompat.class.getClassLoader()));
        }
    }

    public static Bundle unparcelWithClassLoader(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        ensureClassLoader(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public static PlaybackStateCompat getStateWithUpdatedPosition(PlaybackStateCompat playbackStateCompat, MediaMetadataCompat mediaMetadataCompat) {
        if (playbackStateCompat == null) {
            return playbackStateCompat;
        }
        long j = -1;
        if (playbackStateCompat.getPosition() == -1) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getState() != 3 && playbackStateCompat.getState() != 4 && playbackStateCompat.getState() != 5) {
            return playbackStateCompat;
        }
        if (playbackStateCompat.getLastPositionUpdateTime() <= 0) {
            return playbackStateCompat;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long playbackSpeed = ((long) (playbackStateCompat.getPlaybackSpeed() * (jElapsedRealtime - r0))) + playbackStateCompat.getPosition();
        if (mediaMetadataCompat != null && mediaMetadataCompat.containsKey(MediaItemMetadata.KEY_DURATION)) {
            j = mediaMetadataCompat.getLong(MediaItemMetadata.KEY_DURATION);
        }
        return new PlaybackStateCompat.Builder(playbackStateCompat).setState(playbackStateCompat.getState(), (j < 0 || playbackSpeed <= j) ? playbackSpeed < 0 ? 0L : playbackSpeed : j, playbackStateCompat.getPlaybackSpeed(), jElapsedRealtime).build();
    }

    public static abstract class Callback {
        CallbackHandler callbackHandler;
        private boolean mediaPlayPausePendingOnHandler;
        final Object lock = new Object();
        final MediaSession.Callback callbackFwk = new MediaSessionCallbackApi21();
        WeakReference<MediaSessionImpl> sessionImpl = new WeakReference<>(null);

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onAddQueueItem(MediaDescriptionCompat mediaDescriptionCompat, int i) {
        }

        public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
        }

        public void onCustomAction(String str, Bundle bundle) {
        }

        public void onFastForward() {
        }

        public void onPause() {
        }

        public void onPlay() {
        }

        public void onPlayFromMediaId(String str, Bundle bundle) {
        }

        public void onPlayFromSearch(String str, Bundle bundle) {
        }

        public void onPlayFromUri(Uri uri, Bundle bundle) {
        }

        public void onPrepare() {
        }

        public void onPrepareFromMediaId(String str, Bundle bundle) {
        }

        public void onPrepareFromSearch(String str, Bundle bundle) {
        }

        public void onPrepareFromUri(Uri uri, Bundle bundle) {
        }

        public void onRemoveQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
        }

        public void onRewind() {
        }

        public void onSeekTo(long j) {
        }

        public void onSetCaptioningEnabled(boolean z) {
        }

        public void onSetPlaybackSpeed(float f) {
        }

        public void onSetRating(RatingCompat ratingCompat) {
        }

        public void onSetRating(RatingCompat ratingCompat, Bundle bundle) {
        }

        public void onSetRepeatMode(int i) {
        }

        public void onSetShuffleMode(int i) {
        }

        public void onSkipToNext() {
        }

        public void onSkipToPrevious() {
        }

        public void onSkipToQueueItem(long j) {
        }

        public void onStop() {
        }

        public void setSessionImpl(MediaSessionImpl mediaSessionImpl, Handler handler) {
            synchronized (this.lock) {
                try {
                    this.sessionImpl = new WeakReference<>(mediaSessionImpl);
                    CallbackHandler callbackHandler = this.callbackHandler;
                    CallbackHandler callbackHandler2 = null;
                    if (callbackHandler != null) {
                        callbackHandler.removeCallbacksAndMessages(null);
                    }
                    if (handler != null) {
                        callbackHandler2 = new CallbackHandler(handler.getLooper());
                    }
                    this.callbackHandler = callbackHandler2;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public boolean onMediaButtonEvent(Intent intent) {
            MediaSessionImpl mediaSessionImpl;
            CallbackHandler callbackHandler;
            KeyEvent keyEvent;
            if (Build.VERSION.SDK_INT >= 27) {
                return false;
            }
            synchronized (this.lock) {
                mediaSessionImpl = this.sessionImpl.get();
                callbackHandler = this.callbackHandler;
            }
            if (mediaSessionImpl == null || callbackHandler == null || (keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT")) == null || keyEvent.getAction() != 0) {
                return false;
            }
            MediaSessionManager.RemoteUserInfo currentControllerInfo = mediaSessionImpl.getCurrentControllerInfo();
            int keyCode = keyEvent.getKeyCode();
            if (keyCode == 79 || keyCode == 85) {
                if (keyEvent.getRepeatCount() == 0) {
                    if (this.mediaPlayPausePendingOnHandler) {
                        callbackHandler.removeMessages(1);
                        this.mediaPlayPausePendingOnHandler = false;
                        PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                        if (((playbackState == null ? 0L : playbackState.getActions()) & 32) != 0) {
                            onSkipToNext();
                        }
                    } else {
                        this.mediaPlayPausePendingOnHandler = true;
                        callbackHandler.sendMessageDelayed(callbackHandler.obtainMessage(1, currentControllerInfo), ViewConfiguration.getDoubleTapTimeout());
                    }
                } else {
                    handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
                }
                return true;
            }
            handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
            return false;
        }

        public void handleMediaPlayPauseIfPendingOnHandler(MediaSessionImpl mediaSessionImpl, Handler handler) {
            if (this.mediaPlayPausePendingOnHandler) {
                this.mediaPlayPausePendingOnHandler = false;
                handler.removeMessages(1);
                PlaybackStateCompat playbackState = mediaSessionImpl.getPlaybackState();
                long actions = playbackState == null ? 0L : playbackState.getActions();
                boolean z = playbackState != null && playbackState.getState() == 3;
                boolean z2 = (516 & actions) != 0;
                boolean z3 = (actions & 514) != 0;
                if (z && z3) {
                    onPause();
                } else {
                    if (z || !z2) {
                        return;
                    }
                    onPlay();
                }
            }
        }

        public class CallbackHandler extends Handler {
            public CallbackHandler(Looper looper) {
                super(looper);
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                MediaSessionImpl mediaSessionImpl;
                Callback callback;
                CallbackHandler callbackHandler;
                if (message.what == 1) {
                    synchronized (Callback.this.lock) {
                        mediaSessionImpl = Callback.this.sessionImpl.get();
                        callback = Callback.this;
                        callbackHandler = callback.callbackHandler;
                    }
                    if (mediaSessionImpl == null || callback != mediaSessionImpl.getCallback() || callbackHandler == null) {
                        return;
                    }
                    mediaSessionImpl.setCurrentControllerInfo((MediaSessionManager.RemoteUserInfo) message.obj);
                    Callback.this.handleMediaPlayPauseIfPendingOnHandler(mediaSessionImpl, callbackHandler);
                    mediaSessionImpl.setCurrentControllerInfo(null);
                }
            }
        }

        public class MediaSessionCallbackApi21 extends MediaSession.Callback {
            public MediaSessionCallbackApi21() {
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCommand(String str, Bundle bundle, ResultReceiver resultReceiver) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                try {
                    QueueItem queueItem = null;
                    IBinder iBinderAsBinder = null;
                    queueItem = null;
                    if (str.equals("android.support.v4.media.session.command.GET_EXTRA_BINDER")) {
                        if (resultReceiver != null) {
                            Bundle bundle2 = new Bundle();
                            Token sessionToken = sessionImplIfCallbackIsSet.getSessionToken();
                            IMediaSession extraBinder = sessionToken.getExtraBinder();
                            if (extraBinder != null) {
                                iBinderAsBinder = extraBinder.asBinder();
                            }
                            bundle2.putBinder("android.support.v4.media.session.EXTRA_BINDER", iBinderAsBinder);
                            ParcelUtils.putVersionedParcelable(bundle2, "android.support.v4.media.session.SESSION_TOKEN2", sessionToken.getSession2Token());
                            resultReceiver.send(0, bundle2);
                        }
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM")) {
                        if (bundle != null) {
                            Callback.this.onAddQueueItem((MediaDescriptionCompat) LegacyParcelableUtil.convert(bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR));
                        }
                    } else if (str.equals("android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT")) {
                        if (bundle != null) {
                            Callback.this.onAddQueueItem((MediaDescriptionCompat) LegacyParcelableUtil.convert(bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR), bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX"));
                        }
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM")) {
                        if (bundle != null) {
                            Callback.this.onRemoveQueueItem((MediaDescriptionCompat) LegacyParcelableUtil.convert(bundle.getParcelable("android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"), MediaDescriptionCompat.CREATOR));
                        }
                    } else if (str.equals("android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT")) {
                        List<QueueItem> list = sessionImplIfCallbackIsSet.queue;
                        if (list != null && bundle != null) {
                            int i = bundle.getInt("android.support.v4.media.session.command.ARGUMENT_INDEX", -1);
                            if (i >= 0 && i < list.size()) {
                                queueItem = list.get(i);
                            }
                            if (queueItem != null) {
                                Callback.this.onRemoveQueueItem(queueItem.getDescription());
                            }
                        }
                    } else {
                        Callback.this.onCommand(str, bundle, resultReceiver);
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the extra data.");
                }
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public boolean onMediaButtonEvent(Intent intent) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return false;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                boolean zOnMediaButtonEvent = Callback.this.onMediaButtonEvent(intent);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
                return zOnMediaButtonEvent || super.onMediaButtonEvent(intent);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlay() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlay();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromMediaId(str, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromSearch(str, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPlayFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPlayFromUri(uri, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToQueueItem(long j) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToQueueItem(j);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPause() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPause();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToNext() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToNext();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSkipToPrevious() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSkipToPrevious();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onFastForward() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onFastForward();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onRewind() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onRewind();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onStop() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onStop();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSeekTo(long j) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSeekTo(j);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetRating(Rating rating) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSetRating(RatingCompat.fromRating(rating));
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onCustomAction(String str, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                try {
                    if (str.equals("android.support.v4.media.session.action.PLAY_FROM_URI")) {
                        if (bundle != null) {
                            Uri uri = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                            Bundle bundle2 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.ensureClassLoader(bundle2);
                            Callback.this.onPlayFromUri(uri, bundle2);
                        }
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE")) {
                        Callback.this.onPrepare();
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID")) {
                        if (bundle != null) {
                            String string = bundle.getString("android.support.v4.media.session.action.ARGUMENT_MEDIA_ID");
                            Bundle bundle3 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.ensureClassLoader(bundle3);
                            Callback.this.onPrepareFromMediaId(string, bundle3);
                        }
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_SEARCH")) {
                        if (bundle != null) {
                            String string2 = bundle.getString("android.support.v4.media.session.action.ARGUMENT_QUERY");
                            Bundle bundle4 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.ensureClassLoader(bundle4);
                            Callback.this.onPrepareFromSearch(string2, bundle4);
                        }
                    } else if (str.equals("android.support.v4.media.session.action.PREPARE_FROM_URI")) {
                        if (bundle != null) {
                            Uri uri2 = (Uri) bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_URI");
                            Bundle bundle5 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.ensureClassLoader(bundle5);
                            Callback.this.onPrepareFromUri(uri2, bundle5);
                        }
                    } else if (str.equals("android.support.v4.media.session.action.SET_CAPTIONING_ENABLED")) {
                        if (bundle != null) {
                            Callback.this.onSetCaptioningEnabled(bundle.getBoolean("android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"));
                        }
                    } else if (str.equals("android.support.v4.media.session.action.SET_REPEAT_MODE")) {
                        if (bundle != null) {
                            Callback.this.onSetRepeatMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"));
                        }
                    } else if (str.equals("android.support.v4.media.session.action.SET_SHUFFLE_MODE")) {
                        if (bundle != null) {
                            Callback.this.onSetShuffleMode(bundle.getInt("android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"));
                        }
                    } else if (str.equals("android.support.v4.media.session.action.SET_RATING")) {
                        if (bundle != null) {
                            RatingCompat ratingCompat = (RatingCompat) LegacyParcelableUtil.convert(bundle.getParcelable("android.support.v4.media.session.action.ARGUMENT_RATING"), RatingCompat.CREATOR);
                            Bundle bundle6 = bundle.getBundle("android.support.v4.media.session.action.ARGUMENT_EXTRAS");
                            MediaSessionCompat.ensureClassLoader(bundle6);
                            Callback.this.onSetRating(ratingCompat, bundle6);
                        }
                    } else if (!str.equals("android.support.v4.media.session.action.SET_PLAYBACK_SPEED")) {
                        Callback.this.onCustomAction(str, bundle);
                    } else if (bundle != null) {
                        Callback.this.onSetPlaybackSpeed(bundle.getFloat("android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED", 1.0f));
                    }
                } catch (BadParcelableException unused) {
                    Log.e("MediaSessionCompat", "Could not unparcel the data.");
                }
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPrepare() {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepare();
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPrepareFromMediaId(String str, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromMediaId(str, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPrepareFromSearch(String str, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromSearch(str, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onPrepareFromUri(Uri uri, Bundle bundle) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                MediaSessionCompat.ensureClassLoader(bundle);
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onPrepareFromUri(uri, bundle);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            @Override // android.media.session.MediaSession.Callback
            public void onSetPlaybackSpeed(float f) {
                MediaSessionImplApi21 sessionImplIfCallbackIsSet = getSessionImplIfCallbackIsSet();
                if (sessionImplIfCallbackIsSet == null) {
                    return;
                }
                setCurrentControllerInfo(sessionImplIfCallbackIsSet);
                Callback.this.onSetPlaybackSpeed(f);
                clearCurrentControllerInfo(sessionImplIfCallbackIsSet);
            }

            private void setCurrentControllerInfo(MediaSessionImpl mediaSessionImpl) {
                if (Build.VERSION.SDK_INT >= 28) {
                    return;
                }
                String callingPackage = mediaSessionImpl.getCallingPackage();
                if (TextUtils.isEmpty(callingPackage)) {
                    callingPackage = "android.media.session.MediaController";
                }
                mediaSessionImpl.setCurrentControllerInfo(new MediaSessionManager.RemoteUserInfo(callingPackage, -1, -1));
            }

            private void clearCurrentControllerInfo(MediaSessionImpl mediaSessionImpl) {
                mediaSessionImpl.setCurrentControllerInfo(null);
            }

            private MediaSessionImplApi21 getSessionImplIfCallbackIsSet() {
                MediaSessionImplApi21 mediaSessionImplApi21;
                synchronized (Callback.this.lock) {
                    mediaSessionImplApi21 = (MediaSessionImplApi21) Callback.this.sessionImpl.get();
                }
                if (mediaSessionImplApi21 == null || Callback.this != mediaSessionImplApi21.getCallback()) {
                    return null;
                }
                return mediaSessionImplApi21;
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static final class Token implements Parcelable {
        public static final Parcelable.Creator<Token> CREATOR = new Parcelable.Creator<Token>() { // from class: androidx.media3.session.legacy.MediaSessionCompat.Token.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token createFromParcel(Parcel parcel) {
                return new Token((MediaSession.Token) Assertions.checkNotNull((MediaSession.Token) parcel.readParcelable(null)));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Token[] newArray(int i) {
                return new Token[i];
            }
        };
        private IMediaSession extraBinder;
        private final MediaSession.Token inner;
        private final Object lock;
        private VersionedParcelable session2Token;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public Token(MediaSession.Token token) {
            this(token, null);
        }

        public Token(MediaSession.Token token, IMediaSession iMediaSession) {
            this(token, iMediaSession, null);
        }

        public Token(MediaSession.Token token, IMediaSession iMediaSession, VersionedParcelable versionedParcelable) {
            this.lock = new Object();
            this.inner = token;
            this.extraBinder = iMediaSession;
            this.session2Token = versionedParcelable;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeParcelable(this.inner, i);
        }

        public int hashCode() {
            return this.inner.hashCode();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Token) {
                return this.inner.equals(((Token) obj).inner);
            }
            return false;
        }

        public MediaSession.Token getToken() {
            return this.inner;
        }

        public IMediaSession getExtraBinder() {
            IMediaSession iMediaSession;
            synchronized (this.lock) {
                iMediaSession = this.extraBinder;
            }
            return iMediaSession;
        }

        public void setExtraBinder(IMediaSession iMediaSession) {
            synchronized (this.lock) {
                this.extraBinder = iMediaSession;
            }
        }

        public VersionedParcelable getSession2Token() {
            VersionedParcelable versionedParcelable;
            synchronized (this.lock) {
                versionedParcelable = this.session2Token;
            }
            return versionedParcelable;
        }

        public void setSession2Token(VersionedParcelable versionedParcelable) {
            synchronized (this.lock) {
                this.session2Token = versionedParcelable;
            }
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static final class QueueItem implements Parcelable {
        public static final Parcelable.Creator<QueueItem> CREATOR = new Parcelable.Creator<QueueItem>() { // from class: androidx.media3.session.legacy.MediaSessionCompat.QueueItem.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem createFromParcel(Parcel parcel) {
                return new QueueItem(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public QueueItem[] newArray(int i) {
                return new QueueItem[i];
            }
        };
        private final MediaDescriptionCompat description;
        private final long id;
        private MediaSession.QueueItem itemFwk;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public QueueItem(MediaDescriptionCompat mediaDescriptionCompat, long j) {
            this(null, mediaDescriptionCompat, j);
        }

        private QueueItem(MediaSession.QueueItem queueItem, MediaDescriptionCompat mediaDescriptionCompat, long j) {
            if (j == -1) {
                f$$ExternalSyntheticBUOutline1.m212m("Id cannot be QueueItem.UNKNOWN_ID");
                throw null;
            }
            this.description = mediaDescriptionCompat;
            this.id = j;
            this.itemFwk = queueItem;
        }

        public QueueItem(Parcel parcel) {
            this.description = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            this.id = parcel.readLong();
        }

        public MediaDescriptionCompat getDescription() {
            return this.description;
        }

        public long getQueueId() {
            return this.id;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.description.writeToParcel(parcel, i);
            parcel.writeLong(this.id);
        }

        public MediaSession.QueueItem getQueueItem() {
            MediaSession.QueueItem queueItem = this.itemFwk;
            if (queueItem != null) {
                return queueItem;
            }
            MediaSession.QueueItem queueItem2 = new MediaSession.QueueItem(this.description.getMediaDescription(), this.id);
            this.itemFwk = queueItem2;
            return queueItem2;
        }

        public String toString() {
            return "MediaSession.QueueItem { Description=" + this.description + ", Id=" + this.id + " }";
        }
    }

    @SuppressLint({"BanParcelableUsage"})
    public static final class ResultReceiverWrapper implements Parcelable {
        public static final Parcelable.Creator<ResultReceiverWrapper> CREATOR = new Parcelable.Creator<ResultReceiverWrapper>() { // from class: androidx.media3.session.legacy.MediaSessionCompat.ResultReceiverWrapper.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper createFromParcel(Parcel parcel) {
                return new ResultReceiverWrapper(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ResultReceiverWrapper[] newArray(int i) {
                return new ResultReceiverWrapper[i];
            }
        };
        ResultReceiver resultReceiver;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public ResultReceiverWrapper(Parcel parcel) {
            this.resultReceiver = (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            this.resultReceiver.writeToParcel(parcel, i);
        }
    }

    public static class MediaSessionImplApi21 implements MediaSessionImpl {
        Callback callback;
        boolean captioningEnabled;
        final ExtraSession extraSession;
        MediaMetadataCompat metadata;
        PlaybackStateCompat playbackState;
        List<QueueItem> queue;
        int ratingType;
        MediaSessionManager.RemoteUserInfo remoteUserInfo;
        int repeatMode;
        final MediaSession sessionFwk;
        Bundle sessionInfo;
        int shuffleMode;
        final Token token;
        final Object lock = new Object();
        boolean destroyed = false;
        final RemoteCallbackList<IMediaControllerCallback> extraControllerCallbacks = new RemoteCallbackList<>();

        public MediaSessionImplApi21(Context context, String str, Bundle bundle) {
            MediaSession mediaSessionCreateFwkMediaSession = createFwkMediaSession(context, str, bundle);
            this.sessionFwk = mediaSessionCreateFwkMediaSession;
            ExtraSession extraSession = new ExtraSession(this);
            this.extraSession = extraSession;
            this.token = new Token(mediaSessionCreateFwkMediaSession.getSessionToken(), extraSession);
            this.sessionInfo = bundle;
            setFlags(3);
        }

        public MediaSession createFwkMediaSession(Context context, String str, Bundle bundle) {
            return new MediaSession(context, str);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setCallback(Callback callback, Handler handler) {
            synchronized (this.lock) {
                try {
                    this.callback = callback;
                    this.sessionFwk.setCallback(callback == null ? null : callback.callbackFwk, handler);
                    if (callback != null) {
                        callback.setSessionImpl(this, handler);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        @SuppressLint({"WrongConstant"})
        public void setFlags(int i) {
            this.sessionFwk.setFlags(i | 3);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToLocal(int i) {
            AudioAttributes.Builder builder = new AudioAttributes.Builder();
            builder.setLegacyStreamType(i);
            this.sessionFwk.setPlaybackToLocal(builder.build());
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackToRemote(VolumeProviderCompat volumeProviderCompat) {
            this.sessionFwk.setPlaybackToRemote((VolumeProvider) volumeProviderCompat.getVolumeProvider());
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setActive(boolean z) {
            this.sessionFwk.setActive(z);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public boolean isActive() {
            return this.sessionFwk.isActive();
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void sendSessionEvent(String str, Bundle bundle) {
            this.sessionFwk.sendSessionEvent(str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void release() {
            this.destroyed = true;
            this.extraControllerCallbacks.kill();
            if (Build.VERSION.SDK_INT == 27) {
                try {
                    Field declaredField = this.sessionFwk.getClass().getDeclaredField("mCallback");
                    declaredField.setAccessible(true);
                    Handler handler = (Handler) declaredField.get(this.sessionFwk);
                    if (handler != null) {
                        handler.removeCallbacksAndMessages(null);
                    }
                } catch (Exception e) {
                    Log.w("MediaSessionCompat", "Exception happened while accessing MediaSession.mCallback.", e);
                }
            }
            this.sessionFwk.setCallback(null);
            this.extraSession.release();
            this.sessionFwk.release();
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public Token getSessionToken() {
            return this.token;
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setPlaybackState(PlaybackStateCompat playbackStateCompat) {
            this.playbackState = playbackStateCompat;
            synchronized (this.lock) {
                int iBeginBroadcast = this.extraControllerCallbacks.beginBroadcast() - 1;
                while (true) {
                    RemoteCallbackList<IMediaControllerCallback> remoteCallbackList = this.extraControllerCallbacks;
                    if (iBeginBroadcast >= 0) {
                        try {
                            ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).onPlaybackStateChanged(playbackStateCompat);
                        } catch (RemoteException | SecurityException e) {
                            Log.e("MediaSessionCompat", "Dead object in setPlaybackState.", e);
                        }
                        iBeginBroadcast--;
                    } else {
                        remoteCallbackList.finishBroadcast();
                    }
                }
            }
            this.sessionFwk.setPlaybackState(playbackStateCompat.getPlaybackState());
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public PlaybackStateCompat getPlaybackState() {
            return this.playbackState;
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setMetadata(MediaMetadataCompat mediaMetadataCompat) {
            this.metadata = mediaMetadataCompat;
            this.sessionFwk.setMetadata(mediaMetadataCompat == null ? null : mediaMetadataCompat.getMediaMetadata());
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setSessionActivity(PendingIntent pendingIntent) {
            this.sessionFwk.setSessionActivity(pendingIntent);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setMediaButtonReceiver(PendingIntent pendingIntent) {
            this.sessionFwk.setMediaButtonReceiver(pendingIntent);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setQueue(List<QueueItem> list) {
            this.queue = list;
            if (list == null) {
                this.sessionFwk.setQueue(null);
                return;
            }
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<QueueItem> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getQueueItem());
            }
            this.sessionFwk.setQueue(arrayList);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setQueueTitle(CharSequence charSequence) {
            this.sessionFwk.setQueueTitle(charSequence);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setRepeatMode(int i) {
            if (this.repeatMode != i) {
                this.repeatMode = i;
                synchronized (this.lock) {
                    int iBeginBroadcast = this.extraControllerCallbacks.beginBroadcast() - 1;
                    while (true) {
                        RemoteCallbackList<IMediaControllerCallback> remoteCallbackList = this.extraControllerCallbacks;
                        if (iBeginBroadcast >= 0) {
                            try {
                                ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).onRepeatModeChanged(i);
                            } catch (RemoteException | SecurityException e) {
                                Log.e("MediaSessionCompat", "Dead object in setRepeatMode.", e);
                            }
                            iBeginBroadcast--;
                        } else {
                            remoteCallbackList.finishBroadcast();
                        }
                    }
                }
            }
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setShuffleMode(int i) {
            if (this.shuffleMode != i) {
                this.shuffleMode = i;
                synchronized (this.lock) {
                    int iBeginBroadcast = this.extraControllerCallbacks.beginBroadcast() - 1;
                    while (true) {
                        RemoteCallbackList<IMediaControllerCallback> remoteCallbackList = this.extraControllerCallbacks;
                        if (iBeginBroadcast >= 0) {
                            try {
                                ((IMediaControllerCallback) remoteCallbackList.getBroadcastItem(iBeginBroadcast)).onShuffleModeChanged(i);
                            } catch (RemoteException | SecurityException e) {
                                Log.e("MediaSessionCompat", "Dead object in setShuffleMode.", e);
                            }
                            iBeginBroadcast--;
                        } else {
                            remoteCallbackList.finishBroadcast();
                        }
                    }
                }
            }
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setExtras(Bundle bundle) {
            this.sessionFwk.setExtras(bundle);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public Object getMediaSession() {
            return this.sessionFwk;
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
            synchronized (this.lock) {
                this.remoteUserInfo = remoteUserInfo;
            }
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public String getCallingPackage() {
            try {
                return (String) this.sessionFwk.getClass().getMethod("getCallingPackage", null).invoke(this.sessionFwk, null);
            } catch (Exception e) {
                Log.e("MediaSessionCompat", "Cannot execute MediaSession.getCallingPackage()", e);
                return null;
            }
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            MediaSessionManager.RemoteUserInfo remoteUserInfo;
            synchronized (this.lock) {
                remoteUserInfo = this.remoteUserInfo;
            }
            return remoteUserInfo;
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public Callback getCallback() {
            Callback callback;
            synchronized (this.lock) {
                callback = this.callback;
            }
            return callback;
        }

        public static class ExtraSession extends IMediaSession.Stub {
            private final WeakReference<MediaSessionImplApi21> mediaSessionImplRef;

            @Override // androidx.media3.session.legacy.IMediaSession
            public List<QueueItem> getQueue() {
                return null;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public boolean isShuffleModeEnabledRemoved() {
                return false;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setShuffleModeEnabledRemoved(boolean z) {
            }

            public ExtraSession(MediaSessionImplApi21 mediaSessionImplApi21) {
                this.mediaSessionImplRef = new WeakReference<>(mediaSessionImplApi21);
            }

            public void release() {
                this.mediaSessionImplRef.clear();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void sendCommand(String str, Bundle bundle, ResultReceiverWrapper resultReceiverWrapper) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public boolean sendMediaButton(KeyEvent keyEvent) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void registerCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 == null || iMediaControllerCallback == null) {
                    return;
                }
                mediaSessionImplApi21.extraControllerCallbacks.register(iMediaControllerCallback, new MediaSessionManager.RemoteUserInfo("android.media.session.MediaController", Binder.getCallingPid(), Binder.getCallingUid()));
                synchronized (mediaSessionImplApi21.lock) {
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void unregisterCallbackListener(IMediaControllerCallback iMediaControllerCallback) {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 == null || iMediaControllerCallback == null) {
                    return;
                }
                mediaSessionImplApi21.extraControllerCallbacks.unregister(iMediaControllerCallback);
                Binder.getCallingPid();
                Binder.getCallingUid();
                synchronized (mediaSessionImplApi21.lock) {
                }
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public String getPackageName() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public Bundle getSessionInfo() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 == null || mediaSessionImplApi21.sessionInfo == null) {
                    return null;
                }
                return new Bundle(mediaSessionImplApi21.sessionInfo);
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public String getTag() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public PendingIntent getLaunchPendingIntent() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public long getFlags() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public ParcelableVolumeInfo getVolumeAttributes() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void adjustVolume(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setVolumeTo(int i, int i2, String str) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void prepare() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void prepareFromMediaId(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void prepareFromSearch(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void prepareFromUri(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void play() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void playFromMediaId(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void playFromSearch(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void playFromUri(Uri uri, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void skipToQueueItem(long j) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void pause() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void stop() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void next() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void previous() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void fastForward() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void rewind() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void seekTo(long j) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void rate(RatingCompat ratingCompat) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void rateWithExtras(RatingCompat ratingCompat, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setPlaybackSpeed(float f) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setCaptioningEnabled(boolean z) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setRepeatMode(int i) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void setShuffleMode(int i) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void sendCustomAction(String str, Bundle bundle) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public MediaMetadataCompat getMetadata() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public PlaybackStateCompat getPlaybackState() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 != null) {
                    return MediaSessionCompat.getStateWithUpdatedPosition(mediaSessionImplApi21.playbackState, mediaSessionImplApi21.metadata);
                }
                return null;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void addQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void addQueueItemAt(MediaDescriptionCompat mediaDescriptionCompat, int i) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void removeQueueItem(MediaDescriptionCompat mediaDescriptionCompat) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public void removeQueueItemAt(int i) {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public CharSequence getQueueTitle() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public Bundle getExtras() {
                throw new AssertionError();
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public int getRatingType() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.ratingType;
                }
                return 0;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public boolean isCaptioningEnabled() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                return mediaSessionImplApi21 != null && mediaSessionImplApi21.captioningEnabled;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public int getRepeatMode() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.repeatMode;
                }
                return -1;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public int getShuffleMode() {
                MediaSessionImplApi21 mediaSessionImplApi21 = this.mediaSessionImplRef.get();
                if (mediaSessionImplApi21 != null) {
                    return mediaSessionImplApi21.shuffleMode;
                }
                return -1;
            }

            @Override // androidx.media3.session.legacy.IMediaSession
            public boolean isTransportControlEnabled() {
                throw new AssertionError();
            }
        }
    }

    public static class MediaSessionImplApi22 extends MediaSessionImplApi21 {
        public MediaSessionImplApi22(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setRatingType(int i) {
            this.sessionFwk.setRatingType(i);
        }
    }

    public static class MediaSessionImplApi28 extends MediaSessionImplApi22 {
        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImplApi21, androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public void setCurrentControllerInfo(MediaSessionManager.RemoteUserInfo remoteUserInfo) {
        }

        public MediaSessionImplApi28(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImplApi21, androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImpl
        public final MediaSessionManager.RemoteUserInfo getCurrentControllerInfo() {
            return new MediaSessionManager.RemoteUserInfo(this.sessionFwk.getCurrentControllerInfo());
        }
    }

    public static class MediaSessionImplApi29 extends MediaSessionImplApi28 {
        public MediaSessionImplApi29(Context context, String str, Bundle bundle) {
            super(context, str, bundle);
        }

        @Override // androidx.media3.session.legacy.MediaSessionCompat.MediaSessionImplApi21
        public MediaSession createFwkMediaSession(Context context, String str, Bundle bundle) {
            return AbstractC0008x4c959418.m3m(context, str, bundle);
        }
    }
}
