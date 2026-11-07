package org.telegram.utils.recorder.audio;

import java.io.File;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
final class AudioRecorderNative {
    private long nativeHandle;
    private final AtomicBoolean released = new AtomicBoolean(false);

    private static native long nCreate(String str, int i, String str2, long j, long j2);

    private static native boolean nCropOpusFile(String str, String str2, long j, long j2);

    private static native void nDestroy(long j);

    private static native boolean nFinish(long j);

    private static native long nFlush(long j);

    private static native byte[] nGetWaveform(String str);

    private static native int nWriteFrame(long j, ByteBuffer byteBuffer, int i);

    private AudioRecorderNative(long j) {
        this.nativeHandle = j;
    }

    public static AudioRecorderNative create(File file, int i, File file2, long j, long j2) {
        long jNCreate = nCreate(file.getAbsolutePath(), i, file2 == null ? null : file2.getAbsolutePath(), j, j2);
        if (jNCreate == 0) {
            return null;
        }
        return new AudioRecorderNative(jNCreate);
    }

    public int writeFrame(ByteBuffer byteBuffer, int i) {
        checkNotReleased();
        return nWriteFrame(this.nativeHandle, byteBuffer, i);
    }

    public long flush() {
        checkNotReleased();
        return nFlush(this.nativeHandle);
    }

    public boolean finish() {
        if (!this.released.compareAndSet(false, true)) {
            return false;
        }
        long j = this.nativeHandle;
        this.nativeHandle = 0L;
        return j != 0 && nFinish(j);
    }

    public void recycle() {
        if (this.released.compareAndSet(false, true)) {
            long j = this.nativeHandle;
            this.nativeHandle = 0L;
            if (j != 0) {
                nDestroy(j);
            }
        }
    }

    public static boolean cropOpusFile(String str, String str2, long j, long j2) {
        return nCropOpusFile(str, str2, j, j2);
    }

    public static byte[] getWaveform(String str) {
        return nGetWaveform(str);
    }

    private void checkNotReleased() {
        if (this.released.get()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Native audio recorder is already released");
        }
    }

    public void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }
}
