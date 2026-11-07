package com.google.android.gms.internal.fido;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbm {
    public static int zza(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzbo.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m908m("negative size: ", i2);
                return 0;
            }
            strZza = zzbo.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m231m(zzg(i, i2, "index"));
        return 0;
    }

    public static void zzc(boolean z) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline0.m972m();
    }

    public static void zzd(boolean z, String str, char c2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m215m(zzbo.zza(str, Character.valueOf(c2)));
    }

    public static void zze(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzg(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzg(i2, i3, "end index") : zzbo.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    public static void zzf(boolean z, Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m((String) obj);
    }

    private static String zzg(int i, int i2, String str) {
        if (i < 0) {
            return zzbo.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzbo.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m908m("negative size: ", i2);
        return null;
    }
}
