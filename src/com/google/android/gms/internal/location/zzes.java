package com.google.android.gms.internal.location;

/* JADX INFO: loaded from: classes4.dex */
final class zzes extends zzeq {
    private final zzeu zza;

    public zzes(zzeu zzeuVar, int i) {
        super(zzeuVar.size(), i);
        this.zza = zzeuVar;
    }

    @Override // com.google.android.gms.internal.location.zzeq
    public final Object zza(int i) {
        return this.zza.get(i);
    }
}
