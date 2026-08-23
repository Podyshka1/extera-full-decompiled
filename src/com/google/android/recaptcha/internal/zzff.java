package com.google.android.recaptcha.internal;

import javax.annotation.CheckForNull;
import okio.Segment$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public final class zzff {
    public static void zza(boolean z) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m847m();
    }

    public static void zzb(boolean z, @CheckForNull Object obj) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m((String) obj);
    }

    public static void zzc(boolean z, String str, char c2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m(zzfi.zza(str, Character.valueOf(c2)));
    }

    public static void zzd(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzf(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzf(i2, i3, "end index") : zzfi.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void zze(boolean z, @CheckForNull Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m((String) obj);
    }

    private static String zzf(int i, int i2, String str) {
        return i < 0 ? zzfi.zza("%s (%s) must not be negative", str, Integer.valueOf(i)) : zzfi.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
    }
}
