package com.google.android.gms.internal.measurement;

import java.util.List;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgk extends zzmb implements zznn {
    /* synthetic */ zzgk(byte[] bArr) {
        super(zzgl.zzu);
    }

    public final int zza() {
        return ((zzgl) this.zza).zzf();
    }

    public final zzgj zzb(int i) {
        return ((zzgl) this.zza).zzg(i);
    }

    public final zzgk zzc(int i, zzgi zzgiVar) {
        zzaX();
        ((zzgl) this.zza).zzt(i, (zzgj) zzgiVar.zzbc());
        return this;
    }

    public final List zzd() {
        return DesugarCollections.unmodifiableList(((zzgl) this.zza).zzh());
    }

    public final zzgk zze() {
        zzaX();
        ((zzgl) this.zza).zzu();
        return this;
    }

    public final zzgk zzf() {
        zzaX();
        ((zzgl) this.zza).zzv();
        return this;
    }

    public final List zzg() {
        return DesugarCollections.unmodifiableList(((zzgl) this.zza).zzk());
    }

    public final String zzh() {
        return ((zzgl) this.zza).zzm();
    }
}
