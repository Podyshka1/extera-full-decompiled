package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Arrays;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public final class zzkx {
    private final String zza;
    private final zzkw zzb;
    private zzkw zzc;

    private final zzkw zzd() {
        zzkw zzkwVar = new zzkw();
        this.zzc.zzc = zzkwVar;
        this.zzc = zzkwVar;
        return zzkwVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzkw zzkwVar = this.zzb.zzc;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        while (zzkwVar != null) {
            Object obj = zzkwVar.zzb;
            sb.append(str);
            String str2 = zzkwVar.zza;
            if (str2 != null) {
                sb.append(str2);
                sb.append(SignatureVisitor.INSTANCEOF);
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            zzkwVar = zzkwVar.zzc;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzkx zza(String str, Object obj) {
        zzkw zzkwVarZzd = zzd();
        zzkwVarZzd.zzb = obj;
        zzkwVarZzd.zza = str;
        return this;
    }

    public final zzkx zzb(String str, int i) {
        String strValueOf = String.valueOf(i);
        zzkv zzkvVar = new zzkv(null);
        this.zzc.zzc = zzkvVar;
        this.zzc = zzkvVar;
        zzkvVar.zzb = strValueOf;
        zzkvVar.zza = str;
        return this;
    }

    public final zzkx zzc(Object obj) {
        zzd().zzb = obj;
        return this;
    }

    public /* synthetic */ zzkx(String str, byte[] bArr) {
        zzkw zzkwVar = new zzkw();
        this.zzb = zzkwVar;
        this.zzc = zzkwVar;
        str.getClass();
        this.zza = str;
    }
}
