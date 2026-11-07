package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
final class zzbr extends zzbn {
    private final zzbt zza;

    public zzbr(zzbt zzbtVar, int i) {
        super(zzbtVar.size(), i);
        this.zza = zzbtVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzbn
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
