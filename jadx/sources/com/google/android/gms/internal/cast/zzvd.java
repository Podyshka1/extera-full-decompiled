package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzvd {
    private static final zzvc zza;
    private static final zzvc zzb;

    static {
        zzvc zzvcVar = null;
        try {
            zzvcVar = (zzvc) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zza = zzvcVar;
        zzb = new zzvc();
    }

    static zzvc zza() {
        return zza;
    }

    static zzvc zzb() {
        return zzb;
    }
}
