package org.telegram.utils.recorder.round;

import android.content.SharedPreferences;
import com.google.android.gms.cast.CastStatusCodes;
import java.lang.reflect.Array;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.utils.recorder.round.RoundVideoSession;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes8.dex */
abstract class RoundVideoSwitchTimingStore {
    private static boolean loaded;
    private static final String[] KEYS = {"round_video_switch_back_to_front_ms", "round_video_switch_front_to_back_ms"};
    private static final int[][] samples = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 2, 8);
    private static final int[] counts = new int[2];
    private static final int[] nextIndices = new int[2];

    public static synchronized int getAverageMs(RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraFacing cameraFacing2) {
        ensureLoaded();
        return average(direction(cameraFacing, cameraFacing2));
    }

    public static synchronized int recordAndGetAverageMs(RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraFacing cameraFacing2, int i) {
        int iDirection;
        try {
            ensureLoaded();
            iDirection = direction(cameraFacing, cameraFacing2);
            int iClamp = clamp(i, 200, CastStatusCodes.AUTHENTICATION_FAILED);
            int[] iArr = samples[iDirection];
            int[] iArr2 = nextIndices;
            iArr[iArr2[iDirection]] = iClamp;
            iArr2[iDirection] = (iArr2[iDirection] + 1) % 8;
            int[] iArr3 = counts;
            int i2 = iArr3[iDirection];
            if (i2 < 8) {
                iArr3[iDirection] = i2 + 1;
            }
            persist(iDirection);
        } catch (Throwable th) {
            throw th;
        }
        return average(iDirection);
    }

    private static void ensureLoaded() {
        if (loaded) {
            return;
        }
        loaded = true;
        SharedPreferences sharedPreferencesPreferences = preferences();
        int i = 0;
        while (true) {
            String[] strArr = KEYS;
            if (i >= strArr.length) {
                return;
            }
            String string = sharedPreferencesPreferences.getString(strArr[i], null);
            if (string != null && !string.isEmpty()) {
                String[] strArrSplit = string.split(",");
                for (int iMax = Math.max(0, strArrSplit.length - 8); iMax < strArrSplit.length; iMax++) {
                    try {
                        int iClamp = clamp(Integer.parseInt(strArrSplit[iMax]), 200, CastStatusCodes.AUTHENTICATION_FAILED);
                        int[] iArr = samples[i];
                        int[] iArr2 = counts;
                        int i2 = iArr2[i];
                        iArr2[i] = i2 + 1;
                        iArr[i2] = iClamp;
                    } catch (NumberFormatException unused) {
                    }
                }
                nextIndices[i] = counts[i] % 8;
            }
            i++;
        }
    }

    private static int average(int i) {
        int i2 = counts[i];
        if (i2 == 0) {
            return i == 0 ? 680 : 630;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += samples[i][i4];
        }
        return Math.round(i3 / i2);
    }

    private static void persist(int i) {
        int i2 = counts[i];
        int i3 = i2 == 8 ? nextIndices[i] : 0;
        StringBuilder sb = new StringBuilder(i2 * 5);
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 > 0) {
                sb.append(',');
            }
            sb.append(samples[i][(i3 + i4) % 8]);
        }
        preferences().edit().putString(KEYS[i], sb.toString()).apply();
    }

    private static int direction(RoundVideoSession.CameraFacing cameraFacing, RoundVideoSession.CameraFacing cameraFacing2) {
        if (cameraFacing != cameraFacing2) {
            return cameraFacing == RoundVideoSession.CameraFacing.BACK ? 0 : 1;
        }
        f$$ExternalSyntheticBUOutline1.m215m("Camera switch direction must change");
        return 0;
    }

    private static SharedPreferences preferences() {
        return ApplicationLoader.applicationContext.getSharedPreferences("mainconfig", 0);
    }

    private static int clamp(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }
}
