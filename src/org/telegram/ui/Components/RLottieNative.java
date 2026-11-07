package org.telegram.ui.Components;

import android.graphics.Bitmap;
import android.os.Trace;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
public final class RLottieNative {
    private final int[] mMetaData;
    private long mNativePtr;
    private final AtomicBoolean mRecycled = new AtomicBoolean(false);

    private static native long nCreate(String str, String str2, int[] iArr, int[] iArr2, int i, String[] strArr, int[] iArr3);

    private static native long nCreateWithJson(String str, int[] iArr, int[] iArr2, String[] strArr, int[] iArr3);

    private static native void nDestroy(long j);

    private static native int nGetFrame(long j, int i, Bitmap bitmap, boolean z);

    private RLottieNative(long j, int[] iArr) {
        this.mNativePtr = j;
        this.mMetaData = iArr;
    }

    public static RLottieNative createFromFile(String str, String str2, int[] iArr, int[] iArr2, int i, Map<String, Integer> map) {
        int[] iArr3 = new int[3];
        long jCreate = create(str, str2, iArr3, iArr2, i, map);
        if (jCreate == 0) {
            return null;
        }
        if (iArr != null && iArr.length == 3) {
            System.arraycopy(iArr3, 0, iArr, 0, 3);
        }
        return new RLottieNative(jCreate, iArr3);
    }

    public static RLottieNative createFromFile(String str) {
        return createFromFile(str, null, null, null, 0, null);
    }

    public static RLottieNative createFromRawJson(String str, int[] iArr, int[] iArr2, Map<String, Integer> map) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        int[] iArr3 = new int[3];
        String[] strArr = map == null ? null : (String[]) map.keySet().toArray(new String[0]);
        long jCreateWithJson = createWithJson(str, iArr3, iArr2, strArr, map == null ? null : layerNamesToColors(strArr, map));
        if (jCreateWithJson == 0) {
            return null;
        }
        if (iArr != null && iArr.length == 3) {
            System.arraycopy(iArr3, 0, iArr, 0, 3);
        }
        return new RLottieNative(jCreateWithJson, iArr3);
    }

    public static RLottieNative createFromRawJson(String str) {
        return createFromRawJson(str, null, null, null);
    }

    public static RLottieNative createFromRawJson(String str, int[] iArr) {
        return createFromRawJson(str, iArr, null, null);
    }

    public int getFrame(int i, Bitmap bitmap, boolean z) {
        checkNotRecycled();
        return getFrame(this.mNativePtr, i, bitmap, z);
    }

    public int getFrameCount() {
        return this.mMetaData[0];
    }

    public int getFps() {
        return this.mMetaData[1];
    }

    public void recycle() {
        if (this.mRecycled.compareAndSet(false, true)) {
            long j = this.mNativePtr;
            this.mNativePtr = 0L;
            if (j != 0) {
                destroy(j);
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

    private void checkNotRecycled() {
        if (this.mRecycled.get()) {
            Segment$$ExternalSyntheticBUOutline1.m925m("Called method on a recycled RLottie instance");
        }
    }

    private static long create(String str, String str2, int[] iArr, int[] iArr2, int i, Map<String, Integer> map) {
        String[] strArr;
        Trace.beginSection("RLottieNative#create");
        if (map == null) {
            strArr = null;
        } else {
            try {
                strArr = (String[]) map.keySet().toArray(new String[0]);
            } finally {
                Trace.endSection();
            }
        }
        return nCreate(str, str2, iArr, iArr2, i, strArr, map != null ? layerNamesToColors(strArr, map) : null);
    }

    private static long createWithJson(String str, int[] iArr, int[] iArr2, String[] strArr, int[] iArr3) {
        Trace.beginSection("RLottieNative#createWithJson");
        try {
            return nCreateWithJson(str, iArr, iArr2, strArr, iArr3);
        } finally {
            Trace.endSection();
        }
    }

    private static int getFrame(long j, int i, Bitmap bitmap, boolean z) {
        Trace.beginSection("RLottieNative#getFrame");
        try {
            return nGetFrame(j, i, bitmap, z);
        } finally {
            Trace.endSection();
        }
    }

    private static int[] layerNamesToColors(String[] strArr, Map<String, Integer> map) {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            iArr[i] = map.get(strArr[i]).intValue();
        }
        return iArr;
    }

    private static void destroy(long j) {
        Trace.beginSection("RLottieNative#destroy");
        try {
            nDestroy(j);
        } finally {
            Trace.endSection();
        }
    }

    public static long getFramesCount(String str, String str2) {
        RLottieNative rLottieNativeCreateFromFile = createFromFile(str, str2, null, null, 0, null);
        if (rLottieNativeCreateFromFile == null) {
            return 0L;
        }
        int frameCount = rLottieNativeCreateFromFile.getFrameCount();
        rLottieNativeCreateFromFile.recycle();
        return frameCount;
    }

    public static double getDuration(String str, String str2) {
        RLottieNative rLottieNativeCreateFromFile = createFromFile(str, str2, null, null, 0, null);
        if (rLottieNativeCreateFromFile == null) {
            return 0.0d;
        }
        int frameCount = rLottieNativeCreateFromFile.getFrameCount();
        int fps = rLottieNativeCreateFromFile.getFps();
        rLottieNativeCreateFromFile.recycle();
        return ((double) frameCount) / ((double) fps);
    }
}
