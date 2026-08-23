package com.google.android.gms.internal.mlkit_language_id_common;

import java.util.Arrays;
import javax.annotation.CheckForNull;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes4.dex */
public final class zze {
    private final String zza;
    private final zzd zzb;
    private zzd zzc;

    public /* synthetic */ zze(String str, zzb zzbVar) {
        zzd zzdVar = new zzd(null);
        this.zzb = zzdVar;
        this.zzc = zzdVar;
        str.getClass();
        this.zza = str;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(32);
        sb.append(this.zza);
        sb.append('{');
        zzd zzdVar = this.zzb.zzc;
        String str = _UrlKt.FRAGMENT_ENCODE_SET;
        while (zzdVar != null) {
            Object obj = zzdVar.zzb;
            sb.append(str);
            String str2 = zzdVar.zza;
            if (str2 != null) {
                sb.append(str2);
                sb.append(SignatureVisitor.INSTANCEOF);
            }
            if (obj == null || !obj.getClass().isArray()) {
                sb.append(obj);
            } else {
                sb.append((CharSequence) Arrays.deepToString(new Object[]{obj}), 1, r1.length() - 1);
            }
            zzdVar = zzdVar.zzc;
            str = ", ";
        }
        sb.append('}');
        return sb.toString();
    }

    public final zze zza(String str, float f) {
        String strValueOf = String.valueOf(f);
        zzc zzcVar = new zzc(null);
        this.zzc.zzc = zzcVar;
        this.zzc = zzcVar;
        zzcVar.zzb = strValueOf;
        zzcVar.zza = "confidence";
        return this;
    }

    public final zze zzb(String str, @CheckForNull Object obj) {
        zzd zzdVar = new zzd(null);
        this.zzc.zzc = zzdVar;
        this.zzc = zzdVar;
        zzdVar.zzb = obj;
        zzdVar.zza = "languageTag";
        return this;
    }
}
