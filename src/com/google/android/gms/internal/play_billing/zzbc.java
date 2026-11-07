package com.google.android.gms.internal.play_billing;

import java.util.Arrays;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzbc {
    private final String zza;
    private final zzbb zzb;
    private zzbb zzc;

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzbb zzbbVar = this.zzb.zzb;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        while (zzbbVar != null) {
            Object obj = zzbbVar.zza;
            sb.append(str);
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            zzbbVar = zzbbVar.zzb;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzbc zza(Object obj) {
        zzbb zzbbVar = new zzbb();
        this.zzc.zzb = zzbbVar;
        this.zzc = zzbbVar;
        zzbbVar.zza = obj;
        return this;
    }

    public /* synthetic */ zzbc(String str, zzbd zzbdVar) {
        zzbb zzbbVar = new zzbb();
        this.zzb = zzbbVar;
        this.zzc = zzbbVar;
        str.getClass();
        this.zza = str;
    }
}
