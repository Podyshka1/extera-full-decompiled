package com.google.android.gms.internal.common;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import org.mvel2.asm.MethodWriter$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzr {
    public static void zza(boolean z) {
        if (z) {
            return;
        }
        MethodWriter$$ExternalSyntheticBUOutline0.m959m();
    }

    public static int zzb(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzx.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
                return 0;
            }
            strZza = zzx.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzc(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m228m(zze(i, i2, "index"));
        return 0;
    }

    public static void zzd(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zze(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zze(i2, i3, "end index") : zzx.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zze(int i, int i2, String str) {
        if (i < 0) {
            return zzx.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzx.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
        return null;
    }
}
