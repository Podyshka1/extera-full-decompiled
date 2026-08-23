package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzfe implements zzfc {
    private static final zzfc zza = new zzfc() { // from class: com.google.android.gms.internal.cast.zzfd
        @Override // com.google.android.gms.internal.cast.zzfc
        public final Object zza() {
            throw new IllegalStateException();
        }
    };
    private volatile zzfc zzb;
    private Object zzc;

    zzfe(zzfc zzfcVar) {
        this.zzb = zzfcVar;
    }

    public final String toString() {
        Object obj = this.zzb;
        if (obj == zza) {
            obj = "<supplier that returned " + String.valueOf(this.zzc) + ">";
        }
        return "Suppliers.memoize(" + String.valueOf(obj) + ")";
    }

    @Override // com.google.android.gms.internal.cast.zzfc
    public final Object zza() {
        zzfc zzfcVar = this.zzb;
        zzfc zzfcVar2 = zza;
        if (zzfcVar != zzfcVar2) {
            synchronized (this) {
                try {
                    if (this.zzb != zzfcVar2) {
                        Object objZza = this.zzb.zza();
                        this.zzc = objZza;
                        this.zzb = zzfcVar2;
                        return objZza;
                    }
                } finally {
                }
            }
        }
        return this.zzc;
    }
}
