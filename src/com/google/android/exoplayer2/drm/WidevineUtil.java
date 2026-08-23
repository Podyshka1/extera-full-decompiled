package com.google.android.exoplayer2.drm;

import android.util.Pair;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WidevineUtil {
    public static Pair getLicenseDurationRemainingSec(DrmSession drmSession) {
        Map mapQueryKeyStatus = drmSession.queryKeyStatus();
        if (mapQueryKeyStatus == null) {
            return null;
        }
        return new Pair(Long.valueOf(getDurationRemainingSec(mapQueryKeyStatus, "LicenseDurationRemaining")), Long.valueOf(getDurationRemainingSec(mapQueryKeyStatus, "PlaybackDurationRemaining")));
    }

    private static long getDurationRemainingSec(Map map, String str) {
        if (map == null) {
            return -9223372036854775807L;
        }
        try {
            String str2 = (String) map.get(str);
            if (str2 != null) {
                return Long.parseLong(str2);
            }
            return -9223372036854775807L;
        } catch (NumberFormatException unused) {
            return -9223372036854775807L;
        }
    }
}
