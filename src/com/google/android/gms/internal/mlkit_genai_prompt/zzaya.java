package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;

/* JADX INFO: loaded from: classes5.dex */
final class zzaya implements zzayg {
    private final zzaxw zza;
    private final zzayq zzb;
    private final boolean zzc = false;
    private final zzawm zzd;

    private zzaya(zzayq zzayqVar, zzawm zzawmVar, zzaxw zzaxwVar) {
        this.zzb = zzayqVar;
        this.zzd = zzawmVar;
        this.zza = zzaxwVar;
    }

    public static zzaya zze(zzayq zzayqVar, zzawm zzawmVar, zzaxw zzaxwVar) {
        return new zzaya(zzayqVar, zzawmVar, zzaxwVar);
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final Object zza() {
        zzaxw zzaxwVar = this.zza;
        return zzaxwVar instanceof zzawy ? ((zzawy) zzaxwVar).zzG() : zzaxwVar.zzS().zzH();
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final boolean zzb(Object obj, Object obj2) {
        if (!((zzawy) obj).zzc.equals(((zzawy) obj2).zzc)) {
            return false;
        }
        if (!this.zzc) {
            return true;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final int zzc(Object obj) {
        int iHashCode = ((zzawy) obj).zzc.hashCode();
        if (!this.zzc) {
            return iHashCode;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final void zzd(Object obj, Object obj2) {
        zzayh.zzd(this.zzb, obj, obj2);
        if (this.zzc) {
            zzayh.zzc(this.zzd, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final void zzg(Object obj, byte[] bArr, int i, int i2, zzavr zzavrVar) {
        zzawy zzawyVar = (zzawy) obj;
        if (zzawyVar.zzc == zzayr.zza()) {
            zzawyVar.zzc = zzayr.zzb();
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final void zzh(Object obj) {
        ((zzawy) obj).zzc.zzd();
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.mlkit_genai_prompt.zzayg
    public final boolean zzi(Object obj) {
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(obj);
        throw null;
    }
}
