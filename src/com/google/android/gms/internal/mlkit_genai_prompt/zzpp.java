package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzpp implements zzqc {
    private static final Object zza = new Object();
    private volatile Object zzb = zza;
    private volatile zzqc zzc;

    public zzpp(zzqc zzqcVar) {
        this.zzc = zzqcVar;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzqc
    public final Object zza() {
        Object objZza;
        Object obj = this.zzb;
        Object obj2 = zza;
        if (obj != obj2) {
            return obj;
        }
        synchronized (this) {
            try {
                objZza = this.zzb;
                if (objZza == obj2) {
                    objZza = this.zzc.zza();
                    this.zzb = objZza;
                    this.zzc = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return objZza;
    }
}
