package com.google.android.recaptcha.internal;

import java.util.Objects;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
final class zzahj extends zzael {
    final zzahl zza;
    zzaen zzb;
    final /* synthetic */ zzahm zzc;

    public zzahj(zzahm zzahmVar) {
        Objects.requireNonNull(zzahmVar);
        this.zzc = zzahmVar;
        this.zza = new zzahl(zzahmVar, null);
        this.zzb = zzb();
    }

    private final zzaen zzb() {
        zzahl zzahlVar = this.zza;
        if (zzahlVar.hasNext()) {
            return zzahlVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.zzb != null;
    }

    @Override // com.google.android.recaptcha.internal.zzaen
    public final byte zza() {
        zzaen zzaenVar = this.zzb;
        if (zzaenVar == null) {
            Utils$$ExternalSyntheticBUOutline0.m1068m();
            return (byte) 0;
        }
        byte bZza = zzaenVar.zza();
        if (!this.zzb.hasNext()) {
            this.zzb = zzb();
        }
        return bZza;
    }
}
