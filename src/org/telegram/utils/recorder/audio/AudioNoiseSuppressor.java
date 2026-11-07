package org.telegram.utils.recorder.audio;

import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
final class AudioNoiseSuppressor {
    private long nativeHandle;
    private final AtomicBoolean released = new AtomicBoolean(false);

    private static native long nCreate();

    private static native void nDestroy(long j);

    private static native boolean nProcess(long j, ByteBuffer byteBuffer, int i);

    private AudioNoiseSuppressor(long j) {
        this.nativeHandle = j;
    }

    public static AudioNoiseSuppressor create() {
        long jNCreate = nCreate();
        if (jNCreate == 0) {
            return null;
        }
        return new AudioNoiseSuppressor(jNCreate);
    }

    public boolean process(ByteBuffer byteBuffer, int i) {
        if (this.released.get()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("Native noise suppressor is already released");
            return false;
        }
        return nProcess(this.nativeHandle, byteBuffer, i);
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

    public void finalize() throws Throwable {
        try {
            recycle();
        } finally {
            super.finalize();
        }
    }
}
