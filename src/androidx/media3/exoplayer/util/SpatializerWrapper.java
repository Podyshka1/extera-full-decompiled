package androidx.media3.exoplayer.util;

import android.content.Context;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.ExecutorC0733x95b99d2f;
import com.android.dx.io.Opcodes;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class SpatializerWrapper {
    private final Handler handler;
    private final Spatializer$OnSpatializerStateChangedListener listener;
    private final boolean spatializationSupported;
    private final Spatializer spatializer;

    public SpatializerWrapper(Context context, final Runnable runnable, Boolean bool) {
        AudioManager audioManager = context == null ? null : AudioManagerCompat.getAudioManager(context);
        if (audioManager == null || (bool != null && bool.booleanValue())) {
            this.spatializer = null;
            this.spatializationSupported = false;
            this.handler = null;
            this.listener = null;
            return;
        }
        Spatializer spatializer = audioManager.getSpatializer();
        this.spatializer = spatializer;
        this.spatializationSupported = spatializer.getImmersiveAudioLevel() != 0;
        if (runnable == null) {
            this.handler = null;
            this.listener = null;
            return;
        }
        Handler handler = new Handler((Looper) Preconditions.checkNotNull(Looper.myLooper()));
        this.handler = handler;
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener = new Spatializer$OnSpatializerStateChangedListener() { // from class: androidx.media3.exoplayer.util.SpatializerWrapper.1
            public void onSpatializerEnabledChanged(Spatializer spatializer2, boolean z) {
                runnable.run();
            }

            public void onSpatializerAvailableChanged(Spatializer spatializer2, boolean z) {
                runnable.run();
            }
        };
        this.listener = spatializer$OnSpatializerStateChangedListener;
        Objects.requireNonNull(handler);
        spatializer.addOnSpatializerStateChangedListener(new ExecutorC0733x95b99d2f(handler), spatializer$OnSpatializerStateChangedListener);
    }

    public boolean isSupportedAvailableAndEnabled() {
        return this.spatializer != null && this.spatializationSupported && isAvailable() && isEnabled();
    }

    public boolean isSpatializationSupported() {
        return this.spatializationSupported;
    }

    public boolean isAvailable() {
        Spatializer spatializer = this.spatializer;
        return spatializer != null && spatializer.isAvailable();
    }

    public boolean isEnabled() {
        Spatializer spatializer = this.spatializer;
        return spatializer != null && spatializer.isEnabled();
    }

    public boolean canBeSpatialized(AudioAttributes audioAttributes, Format format) {
        int i;
        if (!isSupportedAvailableAndEnabled()) {
            return false;
        }
        if (Objects.equals(format.sampleMimeType, "audio/eac3-joc")) {
            i = format.channelCount;
            if (i == 16) {
                i = 12;
            }
        } else if (Objects.equals(format.sampleMimeType, "audio/iamf")) {
            i = format.channelCount;
            if (i == -1) {
                i = 6;
            }
        } else {
            boolean zEquals = Objects.equals(format.sampleMimeType, "audio/ac4");
            int i2 = format.channelCount;
            i = (zEquals && (i2 == 18 || i2 == 21)) ? 24 : i2;
        }
        int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(i);
        if (audioTrackChannelConfig == 0) {
            return false;
        }
        AudioFormat.Builder channelMask = new AudioFormat.Builder().setEncoding(2).setChannelMask(audioTrackChannelConfig);
        int i3 = format.sampleRate;
        if (i3 != -1) {
            channelMask.setSampleRate(i3);
        }
        return SpatializerWrapper$$ExternalSyntheticApiModelOutline0.m190m(Preconditions.checkNotNull(this.spatializer)).canBeSpatialized(audioAttributes.getPlatformAudioAttributes(), channelMask.build());
    }

    public List<Integer> getSpatializedChannelMasks() {
        if (!isSupportedAvailableAndEnabled()) {
            return ImmutableList.of();
        }
        if (Build.VERSION.SDK_INT >= 36) {
            return SpatializerWrapper$$ExternalSyntheticApiModelOutline0.m190m(Preconditions.checkNotNull(this.spatializer)).getSpatializedChannelMasks();
        }
        return ImmutableList.of(Integer.valueOf(Opcodes.INVOKE_CUSTOM));
    }

    public void release() {
        Spatializer$OnSpatializerStateChangedListener spatializer$OnSpatializerStateChangedListener;
        Spatializer spatializer = this.spatializer;
        if (spatializer == null || (spatializer$OnSpatializerStateChangedListener = this.listener) == null || this.handler == null) {
            return;
        }
        spatializer.removeOnSpatializerStateChangedListener(spatializer$OnSpatializerStateChangedListener);
        this.handler.removeCallbacksAndMessages(null);
    }
}
