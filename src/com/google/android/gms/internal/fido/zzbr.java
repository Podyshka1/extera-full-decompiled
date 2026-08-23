package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
final class zzbr implements zzbp {
    private static final zzbp zza = new zzbp() { // from class: com.google.android.gms.internal.fido.zzbq
        @Override // com.google.android.gms.internal.fido.zzbp
        public final Object zza() {
            throw null;
        }
    };
    private volatile zzbp zzb;

    public zzbr(zzbp zzbpVar) {
        this.zzb = zzbpVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == zza) {
            obj = "<supplier that returned null>";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.fido.zzbp
    public final Object zza() {
        throw null;
    }
}
