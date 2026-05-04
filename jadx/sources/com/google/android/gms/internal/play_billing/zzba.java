package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzba {
    private final String zza;
    private final zzaz zzb;
    private zzaz zzc;

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzaz zzazVar = this.zzb.zzb;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        while (zzazVar != null) {
            Object obj = zzazVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r3.length() - 1);
            }
            zzazVar = zzazVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzba zza(Object obj) {
        zzaz zzazVar = new zzaz();
        this.zzc.zzb = zzazVar;
        this.zzc = zzazVar;
        zzazVar.zza = obj;
        return this;
    }

    /* synthetic */ zzba(String str, zzbb zzbbVar) {
        zzaz zzazVar = new zzaz();
        this.zzb = zzazVar;
        this.zzc = zzazVar;
        str.getClass();
        this.zza = str;
    }
}
