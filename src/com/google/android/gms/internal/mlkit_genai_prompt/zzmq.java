package com.google.android.gms.internal.mlkit_genai_prompt;

import java.io.Serializable;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class zzmq extends zzlg implements Serializable {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final zzmq zzb;
    private static final zzmq zzc;
    private final transient zzml zzd;

    static {
        int i = zzml.$r8$clinit;
        zzb = new zzmq(zzng.zza, null);
        zzc = new zzmq(zzml.zzl(zzne.zza()), null);
    }

    public zzmq(zzml zzmlVar) {
        this.zzd = zzmlVar;
    }

    private zzmq(zzml zzmlVar, zzmq zzmqVar) {
        this.zzd = zzmlVar;
    }

    public static zzmq zza() {
        return zzb;
    }

    public static zzmq zzb() {
        return zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zznf
    public final /* bridge */ /* synthetic */ Set zzc() {
        zzml zzmlVar = this.zzd;
        if (zzmlVar.isEmpty()) {
            return zznm.zza;
        }
        int i = zzne.$r8$clinit;
        return new zznn(zzmlVar, zznd.zza);
    }
}
