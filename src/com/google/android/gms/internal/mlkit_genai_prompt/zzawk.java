package com.google.android.gms.internal.mlkit_genai_prompt;

/* JADX INFO: loaded from: classes4.dex */
final class zzawk {
    private final Object zza;
    private final int zzb;

    public zzawk(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzawk)) {
            return false;
        }
        zzawk zzawkVar = (zzawk) obj;
        return this.zza == zzawkVar.zza && this.zzb == zzawkVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
