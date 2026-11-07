package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import android.media.MediaRoute2Info;
import android.media.MediaRouter2;
import android.media.MediaRouter2$ControllerCallback;
import android.media.MediaRouter2$RouteCallback;
import android.media.RouteDiscoveryPreference;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.DefaultSuitableOutputChecker;
import androidx.media3.exoplayer.SuitableOutputChecker;
import com.google.common.collect.ImmutableList;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.Executor;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
final class DefaultSuitableOutputChecker implements SuitableOutputChecker {
    private final SuitableOutputChecker impl;

    public DefaultSuitableOutputChecker() {
        if (Build.VERSION.SDK_INT >= 35) {
            this.impl = new ImplApi35();
        } else {
            this.impl = new ImplApi23();
        }
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public void enable(SuitableOutputChecker.Callback callback, Context context, Looper looper, Looper looper2, Clock clock) {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.enable(callback, context, looper, looper2, clock);
        }
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public void disable() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        if (suitableOutputChecker != null) {
            suitableOutputChecker.disable();
        }
    }

    @Override // androidx.media3.exoplayer.SuitableOutputChecker
    public boolean isSelectedOutputSuitableForPlayback() {
        SuitableOutputChecker suitableOutputChecker = this.impl;
        return suitableOutputChecker == null || suitableOutputChecker.isSelectedOutputSuitableForPlayback();
    }

    public static final class ImplApi35 implements SuitableOutputChecker {
        private static final RouteDiscoveryPreference EMPTY_DISCOVERY_PREFERENCE;
        private MediaRouter2$ControllerCallback controllerCallback;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;
        private MediaRouter2$RouteCallback routeCallback;
        private MediaRouter2 router;

        private ImplApi35() {
        }

        static {
            AbstractC0679x16d6b914.m171m();
            EMPTY_DISCOVERY_PREFERENCE = AbstractC0678x16d6b913.m170m(ImmutableList.of(), false).build();
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        @SuppressLint({"ThreadSafe"})
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda5
                @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi35.$r8$lambda$wzOoCunQO4W9nW53PwcC5hc5oik(this.f$0, context);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$wzOoCunQO4W9nW53PwcC5hc5oik(ImplApi35 implApi35, Context context) {
            Assertions.checkNotNull(implApi35.isSuitableForPlaybackState);
            implApi35.router = MediaRouter2.getInstance(context);
            implApi35.routeCallback = new MediaRouter2$RouteCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.1
            };
            final BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = implApi35.isSuitableForPlaybackState;
            Objects.requireNonNull(backgroundThreadStateHandler);
            Executor executor = new Executor() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda7
                @Override // java.util.concurrent.Executor
                public final void execute(Runnable runnable) {
                    backgroundThreadStateHandler.runInBackground(runnable);
                }
            };
            implApi35.router.registerRouteCallback(executor, implApi35.routeCallback, EMPTY_DISCOVERY_PREFERENCE);
            MediaRouter2$ControllerCallback mediaRouter2$ControllerCallback = new MediaRouter2$ControllerCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi35.2
                public void onControllerUpdated(MediaRouter2.RoutingController routingController) {
                    ImplApi35.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi35.isSelectedOutputSuitableForPlayback(ImplApi35.this.router)));
                }
            };
            implApi35.controllerCallback = mediaRouter2$ControllerCallback;
            implApi35.router.registerControllerCallback(executor, mediaRouter2$ControllerCallback);
            implApi35.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(isSelectedOutputSuitableForPlayback(implApi35.router)));
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkStateNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi35$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi35.$r8$lambda$C7hvk343s8kpImofY5V4I7EgdcI(this.f$0);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$C7hvk343s8kpImofY5V4I7EgdcI(ImplApi35 implApi35) {
            ((MediaRouter2) Assertions.checkNotNull(implApi35.router)).unregisterControllerCallback((MediaRouter2$ControllerCallback) Assertions.checkNotNull(implApi35.controllerCallback));
            implApi35.controllerCallback = null;
            implApi35.router.unregisterRouteCallback((MediaRouter2$RouteCallback) Assertions.checkNotNull(implApi35.routeCallback));
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean isSelectedOutputSuitableForPlayback(MediaRouter2 mediaRouter2) {
            int transferReason = C0680x16d6b915.m172m(Assertions.checkNotNull(mediaRouter2)).getSystemController().getRoutingSessionInfo().getTransferReason();
            boolean zWasTransferInitiatedBySelf = mediaRouter2.getSystemController().wasTransferInitiatedBySelf();
            Iterator<MediaRoute2Info> it = mediaRouter2.getSystemController().getSelectedRoutes().iterator();
            while (it.hasNext()) {
                if (isRouteSuitableForMediaPlayback(C0681x16d6b916.m173m(it.next()), transferReason, zWasTransferInitiatedBySelf)) {
                    return true;
                }
            }
            return false;
        }

        private static boolean isRouteSuitableForMediaPlayback(MediaRoute2Info mediaRoute2Info, int i, boolean z) {
            int suitabilityStatus = mediaRoute2Info.getSuitabilityStatus();
            return suitabilityStatus == 1 ? (i == 1 || i == 2) && z : suitabilityStatus == 0;
        }
    }

    public static final class ImplApi23 implements SuitableOutputChecker {
        private AudioDeviceCallback audioDeviceCallback;
        private AudioManager audioManager;
        private BackgroundThreadStateHandler<Boolean> isSuitableForPlaybackState;

        private ImplApi23() {
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void enable(final SuitableOutputChecker.Callback callback, final Context context, Looper looper, Looper looper2, Clock clock) {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(Boolean.TRUE, looper2, looper, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda1
                @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
                public final void onStateChanged(Object obj, Object obj2) {
                    callback.onSelectedOutputSuitabilityChanged(((Boolean) obj2).booleanValue());
                }
            });
            this.isSuitableForPlaybackState = backgroundThreadStateHandler;
            backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi23.$r8$lambda$nzgMNMGIdDD2279gYiEKPY49zSc(this.f$0, context);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$nzgMNMGIdDD2279gYiEKPY49zSc(ImplApi23 implApi23, Context context) {
            AudioManager audioManager;
            Assertions.checkNotNull(implApi23.isSuitableForPlaybackState);
            if (Util.isWear(context) && (audioManager = (AudioManager) context.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND)) != null) {
                implApi23.audioManager = audioManager;
                AudioDeviceCallback audioDeviceCallback = new AudioDeviceCallback() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker.ImplApi23.1
                    @Override // android.media.AudioDeviceCallback
                    public void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }

                    @Override // android.media.AudioDeviceCallback
                    public void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
                        ImplApi23.this.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(ImplApi23.this.hasSupportedAudioOutput()));
                    }
                };
                implApi23.audioDeviceCallback = audioDeviceCallback;
                audioManager.registerAudioDeviceCallback(audioDeviceCallback, new Handler((Looper) Assertions.checkNotNull(Looper.myLooper())));
                implApi23.isSuitableForPlaybackState.setStateInBackground(Boolean.valueOf(implApi23.hasSupportedAudioOutput()));
            }
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public void disable() {
            ((BackgroundThreadStateHandler) Assertions.checkNotNull(this.isSuitableForPlaybackState)).runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.DefaultSuitableOutputChecker$ImplApi23$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    DefaultSuitableOutputChecker.ImplApi23.$r8$lambda$sy28lDPudbVyaw948hTCSilVIxg(this.f$0);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$sy28lDPudbVyaw948hTCSilVIxg(ImplApi23 implApi23) {
            AudioManager audioManager = implApi23.audioManager;
            if (audioManager != null) {
                audioManager.unregisterAudioDeviceCallback((AudioDeviceCallback) Assertions.checkNotNull(implApi23.audioDeviceCallback));
            }
        }

        @Override // androidx.media3.exoplayer.SuitableOutputChecker
        public boolean isSelectedOutputSuitableForPlayback() {
            BackgroundThreadStateHandler<Boolean> backgroundThreadStateHandler = this.isSuitableForPlaybackState;
            if (backgroundThreadStateHandler == null) {
                return true;
            }
            return backgroundThreadStateHandler.get().booleanValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean hasSupportedAudioOutput() {
            for (AudioDeviceInfo audioDeviceInfo : ((AudioManager) Assertions.checkStateNotNull(this.audioManager)).getDevices(2)) {
                if (audioDeviceInfo.getType() == 8 || audioDeviceInfo.getType() == 5 || audioDeviceInfo.getType() == 6 || audioDeviceInfo.getType() == 11 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 3) {
                    return true;
                }
                int i = Build.VERSION.SDK_INT;
                if (i >= 26 && audioDeviceInfo.getType() == 22) {
                    return true;
                }
                if (i >= 28 && audioDeviceInfo.getType() == 23) {
                    return true;
                }
                if (i >= 31 && (audioDeviceInfo.getType() == 26 || audioDeviceInfo.getType() == 27)) {
                    return true;
                }
                if (i >= 33 && audioDeviceInfo.getType() == 30) {
                    return true;
                }
            }
            return false;
        }
    }
}
