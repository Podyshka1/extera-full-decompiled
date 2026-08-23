package com.google.android.gms.internal.clearcut;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzdl {
    private static final zzdj zzmf = zzce();
    private static final zzdj zzmg = new zzdk();

    static zzdj zzcc() {
        return zzmf;
    }

    static zzdj zzcd() {
        return zzmg;
    }

    private static zzdj zzce() {
        try {
            return (zzdj) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }
}
