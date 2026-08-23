package com.google.android.gms.internal.fido;

import java.util.Arrays;
import javax.annotation.CheckForNull;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public final class zzbi {
    private final String zza;
    private final zzbg zzb;
    private zzbg zzc;

    public /* synthetic */ zzbi(String str, zzbh zzbhVar) {
        zzbg zzbgVar = new zzbg();
        this.zzb = zzbgVar;
        this.zzc = zzbgVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzbg zzbgVar = this.zzb.zzc;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        while (zzbgVar != null) {
            Object obj = zzbgVar.zzb;
            sb.append(str);
            String str2 = zzbgVar.zza;
            if (str2 != null) {
                sb.append(str2);
                sb.append(SignatureVisitor.INSTANCEOF);
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            zzbgVar = zzbgVar.zzc;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zzbi zza(String str, int i) {
        String strValueOf = String.valueOf(i);
        zzbf zzbfVar = new zzbf(null);
        this.zzc.zzc = zzbfVar;
        this.zzc = zzbfVar;
        zzbfVar.zzb = strValueOf;
        zzbfVar.zza = "errorCode";
        return this;
    }

    public final zzbi zzb(String str, @CheckForNull Object obj) {
        zzbg zzbgVar = new zzbg();
        this.zzc.zzc = zzbgVar;
        this.zzc = zzbgVar;
        zzbgVar.zzb = obj;
        zzbgVar.zza = str;
        return this;
    }
}
