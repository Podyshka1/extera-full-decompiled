package com.google.android.gms.internal.mlkit_genai_prompt;

import com.android.dx.util.IntList$$ExternalSyntheticBUOutline0;
import com.google.android.gms.cast.internal.zzar$$ExternalSyntheticBUOutline1;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline2;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzla {
    public static void zza(boolean z, Object obj) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m((String) obj);
    }

    public static void zzb(boolean z, String str, Object obj, Object obj2) {
        if (z) {
            return;
        }
        f$$ExternalSyntheticBUOutline1.m212m(zzlb.zzd(str, obj, obj2));
    }

    public static void zzc(boolean z, Object obj) {
        if (z) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m925m((String) obj);
    }

    public static Object zzd(Object obj, Object obj2) {
        if (obj != null) {
            return obj;
        }
        f$$ExternalSyntheticBUOutline2.m213m((String) obj2);
        return null;
    }

    public static Object zze(Object obj, String str, Object obj2) {
        if (obj != null) {
            return obj;
        }
        f$$ExternalSyntheticBUOutline2.m213m(zzlb.zzd("AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", obj2));
        return null;
    }

    public static int zzf(int i, int i2, String str) {
        String strZzd;
        if (i >= 0 && i < i2) {
            return i;
        }
        if (i < 0) {
            strZzd = zzlb.zzd("%s (%s) must not be negative", "index", Integer.valueOf(i));
        } else {
            if (i2 < 0) {
                zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
                return 0;
            }
            strZzd = zzlb.zzd("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(strZzd);
    }

    public static int zzg(int i, int i2, String str) {
        if (i >= 0 && i <= i2) {
            return i;
        }
        IntList$$ExternalSyntheticBUOutline0.m228m(zzi(i, i2, "index"));
        return 0;
    }

    public static void zzh(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? zzi(i, i3, "start index") : (i2 < 0 || i2 > i3) ? zzi(i2, i3, "end index") : zzlb.zzd("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    private static String zzi(int i, int i2, String str) {
        if (i < 0) {
            return zzlb.zzd("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return zzlb.zzd("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        zzar$$ExternalSyntheticBUOutline1.m297m(String.valueOf(i2).length() + 15, "negative size: ", i2);
        return null;
    }
}
