package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzth {
    private static final zztf zza = new zztg();
    private static final zztf zzb;

    static {
        zztf zztfVar = null;
        try {
            zztfVar = (zztf) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zzb = zztfVar;
    }

    static zztf zza() {
        zztf zztfVar = zzb;
        if (zztfVar != null) {
            return zztfVar;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    static zztf zzb() {
        return zza;
    }
}
