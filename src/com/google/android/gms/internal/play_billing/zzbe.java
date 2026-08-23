package com.google.android.gms.internal.play_billing;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import javax.annotation.CheckForNull;
import kotlin.CharCodeKt$$ExternalSyntheticBUOutline0;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbe {
    public static int zza(int i, int i2, String str) {
        String strZza;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZza = zzbf.zza("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                CharCodeKt$$ExternalSyntheticBUOutline0.m752m("negative size: ", i2);
                return 0;
            }
            strZza = zzbf.zza("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZza);
    }

    public static int zzb(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m195m(zzf(i, i2, "index"));
        return 0;
    }

    public static Object zzc(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj != null) {
            return obj;
        }
        f$$ExternalSyntheticBUOutline2.m179m((String) obj2);
        return null;
    }

    public static void zzd(boolean z, @CheckForNull String str, @CheckForNull Object obj, @CheckForNull Object obj2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m178m(zzbf.zza(str, obj, obj2));
    }

    public static void zze(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzf(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzf(i2, i3, "end index") : zzbf.zza("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zzf(int i, int i2, String str) {
        if (i < 0) {
            return zzbf.zza("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzbf.zza("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        CharCodeKt$$ExternalSyntheticBUOutline0.m752m("negative size: ", i2);
        return null;
    }
}
