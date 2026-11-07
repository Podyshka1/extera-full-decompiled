package org.telegram.messenger;

import android.annotation.SuppressLint;
import java.io.BufferedInputStream;
import java.io.IOException;
import org.mvel2.util.Make$Map$$ExternalSyntheticBUOutline0;
import org.telegram.tgnet.SerializedData;

/* JADX INFO: loaded from: classes6.dex */
public final class ResLottieMeta {
    private static final String ASSET_NAME = "lottie_meta.bin";
    private static final int ENTRY_SIZE = 8;
    public static final long NOT_FOUND = -1;

    public static int fpsOf(long j) {
        return (int) ((j >>> 24) & 255);
    }

    public static int frameCountOf(long j) {
        return (int) (j & 8388607);
    }

    public static boolean isMonoColorOf(long j) {
        return (j & 8388608) != 0;
    }

    public static int resIdOf(long j) {
        return (int) (j >>> 32);
    }

    private ResLottieMeta() {
    }

    public static final class Holder {
        private static final long[] DATA = ResLottieMeta.load();

        private Holder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long[] load() {
        try {
            BufferedInputStream bufferedInputStream = new BufferedInputStream(ApplicationLoader.applicationContext.getResources().getAssets().open(ASSET_NAME));
            try {
                int iAvailable = bufferedInputStream.available();
                if (iAvailable % 8 != 0) {
                    throw new IllegalStateException("lottie_meta.bin has invalid size: " + iAvailable);
                }
                int i = iAvailable / 8;
                long[] jArr = new long[i];
                SerializedData serializedData = new SerializedData(bufferedInputStream);
                for (int i2 = 0; i2 < i; i2++) {
                    jArr[i2] = serializedData.readInt64(true);
                }
                bufferedInputStream.close();
                return jArr;
            } finally {
            }
        } catch (IOException e) {
            Make$Map$$ExternalSyntheticBUOutline0.m1021m("Unable to load lottie_meta.bin", e);
            return null;
        } catch (RuntimeException e2) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1039e("Unable to load lottie_meta.bin", e2);
            }
            throw e2;
        }
    }

    @SuppressLint({"ResourceType"})
    public static long find(int i) {
        long[] jArr = Holder.DATA;
        int length = jArr.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (i2 + length) >>> 1;
            long j = jArr[i3];
            int iResIdOf = resIdOf(j);
            if (iResIdOf < i) {
                i2 = i3 + 1;
            } else {
                if (iResIdOf <= i) {
                    return j;
                }
                length = i3 - 1;
            }
        }
        return -1L;
    }
}
