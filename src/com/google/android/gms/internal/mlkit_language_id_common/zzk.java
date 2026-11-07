package com.google.android.gms.internal.mlkit_language_id_common;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzk {
    public static int zza(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzl.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m860m("negative size: ", i2);
                return 0;
            }
            strZza = zzl.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m228m(zzd(i, i2, "index"));
        return 0;
    }

    public static void zzc(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzd(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzd(i2, i3, "end index") : zzl.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zzd(int i, int i2, String str) {
        if (i < 0) {
            return zzl.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzl.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m860m("negative size: ", i2);
        return null;
    }
}
