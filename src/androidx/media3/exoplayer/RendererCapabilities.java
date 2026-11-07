package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import androidx.media3.common.Format;

/* JADX INFO: loaded from: classes4.dex */
public interface RendererCapabilities {

    public interface Listener {
        void onRendererCapabilitiesChanged(Renderer renderer);
    }

    @SuppressLint({"WrongConstant"})
    static int create(int i, int i2, int i3, int i4, int i5, int i6) {
        return i | i2 | i3 | i4 | i5 | i6;
    }

    @SuppressLint({"WrongConstant"})
    static int getAdaptiveSupport(int i) {
        return i & 24;
    }

    @SuppressLint({"WrongConstant"})
    static int getAudioOffloadSupport(int i) {
        return i & 3584;
    }

    @SuppressLint({"WrongConstant"})
    static int getDecoderSupport(int i) {
        return i & 384;
    }

    @SuppressLint({"WrongConstant"})
    static int getFormatSupport(int i) {
        return i & 7;
    }

    @SuppressLint({"WrongConstant"})
    static int getHardwareAccelerationSupport(int i) {
        return i & 64;
    }

    @SuppressLint({"WrongConstant"})
    static int getTunnelingSupport(int i) {
        return i & 32;
    }

    void clearListener();

    String getName();

    int getTrackType();

    void setListener(Listener listener);

    int supportsFormat(Format format);

    int supportsMixedMimeTypeAdaptation();

    static int create(int i) {
        return create(i, 0, 0, 0);
    }

    static int create(int i, int i2, int i3) {
        return create(i, i2, i3, 0, 128, 0);
    }

    static int create(int i, int i2, int i3, int i4) {
        return create(i, i2, i3, 0, 128, i4);
    }

    static int create(int i, int i2, int i3, int i4, int i5) {
        return create(i, i2, i3, i4, i5, 0);
    }

    static boolean isFormatSupported(int i, boolean z) {
        int formatSupport = getFormatSupport(i);
        if (formatSupport != 4) {
            return z && formatSupport == 3;
        }
        return true;
    }
}
