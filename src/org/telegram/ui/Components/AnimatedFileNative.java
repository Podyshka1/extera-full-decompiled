package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Trace;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Segment$$ExternalSyntheticBUOutline1;
import org.telegram.messenger.AnimatedFileDrawableStream;
import org.telegram.messenger.BuildVars;

/* JADX INFO: loaded from: classes3.dex */
public class AnimatedFileNative {
    private final int[] mMetaData;
    private long mNativePtr;
    private final AtomicBoolean mRecycled = new AtomicBoolean(false);

    private static native long nCreateDecoder(String str, int[] iArr, int i, long j, Object obj, boolean z);

    private static native void nDestroyDecoder(long j);

    private static native int nGetFrameAtTime(long j, long j2, Bitmap bitmap, int[] iArr, AnimatedFileDrawable animatedFileDrawable);

    private static native int nGetVideoFrame(long j, Bitmap bitmap, int[] iArr, boolean z, float f, float f2, boolean z2, AnimatedFileDrawable animatedFileDrawable);

    private static native void nGetVideoInfo(int i, String str, int[] iArr, long j);

    private static native void nPrepareToSeek(long j);

    private static native void nSeekToMs(long j, long j2, int[] iArr, boolean z, AnimatedFileDrawable animatedFileDrawable);

    private static native void nStopDecoder(long j);

    private AnimatedFileNative(long j, int[] iArr) {
        this.mNativePtr = j;
        this.mMetaData = iArr;
    }

    public static AnimatedFileNative createDecoderFrom(String str, int[] iArr, int i, long j, AnimatedFileDrawableStream animatedFileDrawableStream, boolean z) {
        long jCreateDecoder = createDecoder(str, iArr, i, j, animatedFileDrawableStream, z);
        if (jCreateDecoder == 0) {
            return null;
        }
        return new AnimatedFileNative(jCreateDecoder, iArr);
    }

    public void stopDecoder() {
        checkNotDestroyed();
        stopDecoder(this.mNativePtr);
    }

    public int getVideoFrame(Bitmap bitmap, boolean z, float f, float f2, boolean z2) {
        return getVideoFrame(bitmap, z, f, f2, z2, null);
    }

    public int getVideoFrame(Bitmap bitmap, boolean z, float f, float f2, boolean z2, AnimatedFileDrawable animatedFileDrawable) {
        checkNotDestroyed();
        return getVideoFrame(this.mNativePtr, bitmap, this.mMetaData, z, f, f2, z2, animatedFileDrawable);
    }

    public void seekToMs(long j, boolean z) {
        seekToMs(j, z, null);
    }

    public void seekToMs(long j, boolean z, AnimatedFileDrawable animatedFileDrawable) {
        checkNotDestroyed();
        seekToMs(this.mNativePtr, j, this.mMetaData, z, animatedFileDrawable);
    }

    public int getFrameAtTime(long j, Bitmap bitmap, AnimatedFileDrawable animatedFileDrawable) {
        checkNotDestroyed();
        return getFrameAtTime(this.mNativePtr, j, bitmap, this.mMetaData, animatedFileDrawable);
    }

    public void prepareToSeek() {
        checkNotDestroyed();
        prepareToSeek(this.mNativePtr);
    }

    public void recycle() {
        if (this.mRecycled.compareAndSet(false, true)) {
            long j = this.mNativePtr;
            this.mNativePtr = 0L;
            if (j != 0) {
                destroyDecoder(j);
            }
        }
    }

    public void finalize() throws Throwable {
        try {
            if (!this.mRecycled.get()) {
                recycle();
            }
        } finally {
            super.finalize();
        }
    }

    private void checkNotDestroyed() {
        if (this.mRecycled.get() && BuildVars.DEBUG_PRIVATE_VERSION) {
            Segment$$ExternalSyntheticBUOutline1.m848m("Called method on a destroyed AnimatedFileNative instance");
        }
    }

    private static long createDecoder(String str, int[] iArr, int i, long j, AnimatedFileDrawableStream animatedFileDrawableStream, boolean z) {
        Trace.beginSection("AnimatedFileNative#createDecoder");
        try {
            return nCreateDecoder(str, iArr, i, j, animatedFileDrawableStream, z);
        } finally {
            Trace.endSection();
        }
    }

    private static void destroyDecoder(long j) {
        Trace.beginSection("AnimatedFileNative#destroyDecoder");
        try {
            nDestroyDecoder(j);
        } finally {
            Trace.endSection();
        }
    }

    private static void stopDecoder(long j) {
        Trace.beginSection("AnimatedFileNative#stopDecoder");
        try {
            nStopDecoder(j);
        } finally {
            Trace.endSection();
        }
    }

    private static int getVideoFrame(long j, Bitmap bitmap, int[] iArr, boolean z, float f, float f2, boolean z2, AnimatedFileDrawable animatedFileDrawable) {
        Trace.beginSection("AnimatedFileNative#getVideoFrame");
        try {
            return nGetVideoFrame(j, bitmap, iArr, z, f, f2, z2, animatedFileDrawable);
        } finally {
            Trace.endSection();
        }
    }

    private static void seekToMs(long j, long j2, int[] iArr, boolean z, AnimatedFileDrawable animatedFileDrawable) {
        Trace.beginSection("AnimatedFileNative#seekToMs");
        try {
            nSeekToMs(j, j2, iArr, z, animatedFileDrawable);
        } finally {
            Trace.endSection();
        }
    }

    private static int getFrameAtTime(long j, long j2, Bitmap bitmap, int[] iArr, AnimatedFileDrawable animatedFileDrawable) {
        Trace.beginSection("AnimatedFileNative#getFrameAtTime");
        try {
            return nGetFrameAtTime(j, j2, bitmap, iArr, animatedFileDrawable);
        } finally {
            Trace.endSection();
        }
    }

    private static void prepareToSeek(long j) {
        Trace.beginSection("AnimatedFileNative#prepareToSeek");
        try {
            nPrepareToSeek(j);
        } finally {
            Trace.endSection();
        }
    }

    public static void getVideoInfo(String str, int[] iArr, long j) {
        Trace.beginSection("AnimatedFileNative#getVideoInfo");
        try {
            nGetVideoInfo(Build.VERSION.SDK_INT, str, iArr, j);
        } finally {
            Trace.endSection();
        }
    }
}
