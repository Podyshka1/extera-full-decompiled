package com.google.android.gms.internal.measurement;

import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzabr {
    public static Object zza(Object obj, String str) {
        if (obj != null) {
            return obj;
        }
        f$$ExternalSyntheticBUOutline2.m216m(str.concat(" must not be null"));
        return null;
    }

    public static void zzb(boolean z, String str) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(str);
    }

    public static void zzc(boolean z, String str) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m(str);
    }

    public static String zzd(String str) {
        if (!zze(str.charAt(0))) {
            f$$ExternalSyntheticBUOutline1.m215m("identifier must start with an ASCII letter: ".concat(str));
            return null;
        }
        for (int i = 1; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (!zze(cCharAt) && ((cCharAt < '0' || cCharAt > '9') && cCharAt != '_')) {
                f$$ExternalSyntheticBUOutline1.m215m("identifier must contain only ASCII letters, digits or underscore: ".concat(str));
                return null;
            }
        }
        return str;
    }

    private static boolean zze(char c2) {
        if (c2 < 'a' || c2 > 'z') {
            return c2 >= 'A' && c2 <= 'Z';
        }
        return true;
    }
}
