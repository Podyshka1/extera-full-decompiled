package com.google.android.recaptcha.internal;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import okio.Segment$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzoq {
    public static void zza(boolean z) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m924m();
    }

    public static void zzb(boolean z, String str, char c2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m(zzot.zza(str, Character.valueOf(c2)));
    }

    public static void zzc(boolean z, Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m((String) obj);
    }

    public static void zzd(boolean z, String str, int i) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m(zzot.zza(str, Integer.valueOf(i)));
    }

    public static int zze(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzot.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
                return 0;
            }
            strZza = zzot.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzf(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m228m(zzh(i, i2, "index"));
        return 0;
    }

    public static void zzg(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzh(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzh(i2, i3, "end index") : zzot.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zzh(int i, int i2, String str) {
        if (i < 0) {
            return zzot.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzot.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
        return null;
    }
}
