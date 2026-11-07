package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
final class zzbz extends zzbu {
    private final zzcc zza;

    public zzbz(zzcc zzccVar, int i) {
        super(zzccVar.size(), i);
        this.zza = zzccVar;
    }

    @Override // com.google.android.gms.internal.fido.zzbu
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
