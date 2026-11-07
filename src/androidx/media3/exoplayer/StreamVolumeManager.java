package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.StreamVolumeManager;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import org.webrtc.MediaStreamTrack;

/* JADX INFO: loaded from: classes4.dex */
final class StreamVolumeManager {
    private final Context applicationContext;
    private AudioManager audioManager;
    private final Listener listener;
    private VolumeChangeReceiver receiver;
    private final BackgroundThreadStateHandler<StreamVolumeState> stateHandler;
    private int volumeBeforeMute;

    public interface Listener {
        void onStreamTypeChanged(int i);

        void onStreamVolumeChanged(int i, boolean z);
    }

    /* JADX INFO: renamed from: $r8$lambda$KIhM5OZt0889h-D-AjLv_I3prWc, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m1922$r8$lambda$KIhM5OZt0889hDAjLv_I3prWc(StreamVolumeState streamVolumeState) {
        return streamVolumeState;
    }

    public StreamVolumeManager(Context context, Listener listener, final int i, Looper looper, Looper looper2, Clock clock) {
        this.applicationContext = context.getApplicationContext();
        this.listener = listener;
        BackgroundThreadStateHandler<StreamVolumeState> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(new StreamVolumeState(i, 0, false, 0, 0), looper, looper2, clock, new BackgroundThreadStateHandler.StateChangeListener() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda0
            @Override // androidx.media3.common.util.BackgroundThreadStateHandler.StateChangeListener
            public final void onStateChanged(Object obj, Object obj2) {
                this.f$0.onStreamVolumeStateChanged((StreamVolumeManager.StreamVolumeState) obj, (StreamVolumeManager.StreamVolumeState) obj2);
            }
        });
        this.stateHandler = backgroundThreadStateHandler;
        backgroundThreadStateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                StreamVolumeManager.m1926$r8$lambda$oA_l2caYj03yjvz2K6RQaNlEG4(this.f$0, i);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$oA_l2caYj03yjvz2K6RQ-aNlEG4, reason: not valid java name */
    public static /* synthetic */ void m1926$r8$lambda$oA_l2caYj03yjvz2K6RQaNlEG4(StreamVolumeManager streamVolumeManager, int i) {
        streamVolumeManager.audioManager = (AudioManager) Preconditions.checkNotNull((AudioManager) streamVolumeManager.applicationContext.getSystemService(MediaStreamTrack.AUDIO_TRACK_KIND));
        VolumeChangeReceiver volumeChangeReceiver = new VolumeChangeReceiver();
        try {
            streamVolumeManager.applicationContext.registerReceiver(volumeChangeReceiver, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            streamVolumeManager.receiver = volumeChangeReceiver;
        } catch (RuntimeException e) {
            Log.m165w("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
        streamVolumeManager.stateHandler.setStateInBackground(streamVolumeManager.generateState(i));
    }

    public void setStreamType(final int i) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$7z907T46SgICSLAj14y8V6N3eUc(i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m1923$r8$lambda$YKSPczww4NjrUdpaoM4uNbFJTk(this.f$0, i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$7z907T46SgICSLAj14y8V6N3eUc(int i, StreamVolumeState streamVolumeState) {
        return new StreamVolumeState(i, streamVolumeState.volume, streamVolumeState.muted, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    /* JADX INFO: renamed from: $r8$lambda$YKSPczww4-NjrUdpaoM4uNbFJTk, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m1923$r8$lambda$YKSPczww4NjrUdpaoM4uNbFJTk(StreamVolumeManager streamVolumeManager, int i, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        return streamVolumeState.streamType == i ? streamVolumeState : streamVolumeManager.generateState(i);
    }

    public int getMinVolume() {
        return this.stateHandler.get().minVolume;
    }

    public int getMaxVolume() {
        return this.stateHandler.get().maxVolume;
    }

    public int getVolume() {
        return this.stateHandler.get().volume;
    }

    public boolean isMuted() {
        return this.stateHandler.get().muted;
    }

    @SuppressLint({"WrongConstant"})
    public void setVolume(final int i, final int i2) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda8
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$Lv87AXn_wtGrm7Lrft9dElZZaJc(i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda9
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$UXoHoi1PCghPL9lLucdwmHVjHOc(this.f$0, i, i2, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$Lv87AXn_wtGrm7Lrft9dElZZaJc(int i, StreamVolumeState streamVolumeState) {
        int i2 = streamVolumeState.streamType;
        int i3 = streamVolumeState.minVolume;
        return new StreamVolumeState(i2, (i < i3 || i > streamVolumeState.maxVolume) ? streamVolumeState.volume : i, i == 0, i3, streamVolumeState.maxVolume);
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$UXoHoi1PCghPL9lLucdwmHVjHOc(StreamVolumeManager streamVolumeManager, int i, int i2, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        if (i == streamVolumeState.volume || i < streamVolumeState.minVolume || i > streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Preconditions.checkNotNull(streamVolumeManager.audioManager)).setStreamVolume(streamVolumeState.streamType, i, i2);
        return streamVolumeManager.generateState(streamVolumeState.streamType);
    }

    @SuppressLint({"WrongConstant"})
    public void increaseVolume(final int i) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda12
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m1927$r8$lambda$v7rh79Dpv5MW8EGV3mJbRJHKfc((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda13
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m1924$r8$lambda$d1hFsoad9xxXi4UZMRqP5SkAfE(this.f$0, i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$v7rh79Dpv5MW-8EGV3mJbRJHKfc, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m1927$r8$lambda$v7rh79Dpv5MW8EGV3mJbRJHKfc(StreamVolumeState streamVolumeState) {
        int i = streamVolumeState.streamType;
        int i2 = streamVolumeState.volume;
        int i3 = streamVolumeState.maxVolume;
        return new StreamVolumeState(i, i2 < i3 ? i2 + 1 : i3, false, streamVolumeState.minVolume, i3);
    }

    /* JADX INFO: renamed from: $r8$lambda$d1hFsoa-d9xxXi4UZMRqP5SkAfE, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m1924$r8$lambda$d1hFsoad9xxXi4UZMRqP5SkAfE(StreamVolumeManager streamVolumeManager, int i, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        if (streamVolumeState.volume >= streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Preconditions.checkNotNull(streamVolumeManager.audioManager)).adjustStreamVolume(streamVolumeState.streamType, 1, i);
        return streamVolumeManager.generateState(streamVolumeState.streamType);
    }

    @SuppressLint({"WrongConstant"})
    public void decreaseVolume(final int i) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda6
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$QjQg0w_TCjWgUbFZwOrpUNSkgyw((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda7
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$UIdlGJMbnopnc782QA0pHwsqTYs(this.f$0, i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$QjQg0w_TCjWgUbFZwOrpUNSkgyw(StreamVolumeState streamVolumeState) {
        int i = streamVolumeState.streamType;
        int i2 = streamVolumeState.volume;
        int i3 = streamVolumeState.minVolume;
        return new StreamVolumeState(i, i2 > i3 ? i2 - 1 : i3, i2 <= 1, i3, streamVolumeState.maxVolume);
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$UIdlGJMbnopnc782QA0pHwsqTYs(StreamVolumeManager streamVolumeManager, int i, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        if (streamVolumeState.volume <= streamVolumeState.minVolume) {
            return streamVolumeState;
        }
        ((AudioManager) Preconditions.checkNotNull(streamVolumeManager.audioManager)).adjustStreamVolume(streamVolumeState.streamType, -1, i);
        return streamVolumeManager.generateState(streamVolumeState.streamType);
    }

    @SuppressLint({"WrongConstant"})
    public void setMuted(final boolean z, final int i) {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda10
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m1921$r8$lambda$6Um2v01EKjqzVTbgnE6U3MUk(this.f$0, z, (StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda11
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$aLJubDeDzUOg9jrESe0uzfsCBK8(this.f$0, z, i, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$6Um-2v01E--KjqzVTbgnE6U3MUk, reason: not valid java name */
    public static /* synthetic */ StreamVolumeState m1921$r8$lambda$6Um2v01EKjqzVTbgnE6U3MUk(StreamVolumeManager streamVolumeManager, boolean z, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        return new StreamVolumeState(streamVolumeState.streamType, streamVolumeState.muted == z ? streamVolumeState.volume : z ? 0 : streamVolumeManager.volumeBeforeMute, z, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$aLJubDeDzUOg9jrESe0uzfsCBK8(StreamVolumeManager streamVolumeManager, boolean z, int i, StreamVolumeState streamVolumeState) {
        streamVolumeManager.getClass();
        if (streamVolumeState.muted == z) {
            return streamVolumeState;
        }
        Preconditions.checkNotNull(streamVolumeManager.audioManager);
        streamVolumeManager.audioManager.adjustStreamVolume(streamVolumeState.streamType, z ? -100 : 100, i);
        return streamVolumeManager.generateState(streamVolumeState.streamType);
    }

    public void release() {
        this.stateHandler.updateStateAsync(new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda4
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.m1922$r8$lambda$KIhM5OZt0889hDAjLv_I3prWc((StreamVolumeManager.StreamVolumeState) obj);
            }
        }, new Function() { // from class: androidx.media3.exoplayer.StreamVolumeManager$$ExternalSyntheticLambda5
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return StreamVolumeManager.$r8$lambda$aESO6Yj8p_XERWh6HFu_2Yf2BK4(this.f$0, (StreamVolumeManager.StreamVolumeState) obj);
            }
        });
    }

    public static /* synthetic */ StreamVolumeState $r8$lambda$aESO6Yj8p_XERWh6HFu_2Yf2BK4(StreamVolumeManager streamVolumeManager, StreamVolumeState streamVolumeState) {
        VolumeChangeReceiver volumeChangeReceiver = streamVolumeManager.receiver;
        if (volumeChangeReceiver != null) {
            try {
                streamVolumeManager.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (RuntimeException e) {
                Log.m165w("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            streamVolumeManager.receiver = null;
        }
        return streamVolumeState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStreamVolumeStateChanged(StreamVolumeState streamVolumeState, StreamVolumeState streamVolumeState2) {
        boolean z = streamVolumeState.muted;
        if (!z && streamVolumeState2.muted) {
            this.volumeBeforeMute = streamVolumeState.volume;
        }
        int i = streamVolumeState.volume;
        int i2 = streamVolumeState2.volume;
        if (i != i2 || z != streamVolumeState2.muted) {
            this.listener.onStreamVolumeChanged(i2, streamVolumeState2.muted);
        }
        int i3 = streamVolumeState.streamType;
        int i4 = streamVolumeState2.streamType;
        if (i3 == i4 && streamVolumeState.minVolume == streamVolumeState2.minVolume && streamVolumeState.maxVolume == streamVolumeState2.maxVolume) {
            return;
        }
        this.listener.onStreamTypeChanged(i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StreamVolumeState generateState(int i) {
        Preconditions.checkNotNull(this.audioManager);
        return new StreamVolumeState(i, AudioManagerCompat.getStreamVolume(this.audioManager, i), AudioManagerCompat.isStreamMute(this.audioManager, i), AudioManagerCompat.getStreamMinVolume(this.audioManager, i), AudioManagerCompat.getStreamMaxVolume(this.audioManager, i));
    }

    public static final class StreamVolumeState {
        public final int maxVolume;
        public final int minVolume;
        public final boolean muted;
        public final int streamType;
        public final int volume;

        public StreamVolumeState(int i, int i2, boolean z, int i3, int i4) {
            this.streamType = i;
            this.volume = i2;
            this.muted = z;
            this.minVolume = i3;
            this.maxVolume = i4;
        }
    }

    public final class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.stateHandler.runInBackground(new Runnable() { // from class: androidx.media3.exoplayer.StreamVolumeManager$VolumeChangeReceiver$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StreamVolumeManager.VolumeChangeReceiver.$r8$lambda$7abK6rV3Svyh_vRtWD88OaVAcJc(this.f$0);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$7abK6rV3Svyh_vRtWD88OaVAcJc(VolumeChangeReceiver volumeChangeReceiver) {
            if (StreamVolumeManager.this.receiver == null) {
                return;
            }
            StreamVolumeManager.this.stateHandler.setStateInBackground(StreamVolumeManager.this.generateState(((StreamVolumeState) StreamVolumeManager.this.stateHandler.get()).streamType));
        }
    }
}
