package com.google.android.recaptcha.internal;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzcb {
    public static final zzcb zza = new zzcb();
    private static Set zzb;
    private static Set zzc;
    private static Long zzd;
    private static int zze;

    private zzcb() {
    }

    public static final void zza(zznz zznzVar) {
        zzb = CollectionsKt.toSet(zznzVar.zzf().zzi());
        zzc = CollectionsKt.toSet(zznzVar.zzg().zzi());
    }

    public static final boolean zzb(String str) {
        Set set = zzb;
        if (set == null || zzc == null) {
            if (zzd == null) {
                zzd = Long.valueOf(System.currentTimeMillis());
            }
            zze++;
            return true;
        }
        if (set.isEmpty()) {
            return true;
        }
        if (zzc(str, zzc)) {
            return false;
        }
        return zzc(str, set);
    }

    private static final boolean zzc(String str, Set set) {
        Iterator it = StringsKt.split$default((CharSequence) str, new char[]{'.'}, false, 0, 6, (Object) null).iterator();
        String strConcat = _UrlKt.FRAGMENT_ENCODE_SET;
        while (it.hasNext()) {
            String strConcat2 = strConcat.concat(String.valueOf((String) it.next()));
            if (set.contains(strConcat2)) {
                return true;
            }
            strConcat = strConcat2.concat(".");
        }
        return false;
    }
}
