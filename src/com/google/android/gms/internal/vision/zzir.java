package com.google.android.gms.internal.vision;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzir {
    private static final zziq<?> zza = new zzip();
    private static final zziq<?> zzb = zzc();

    private static zziq<?> zzc() {
        try {
            return (zziq) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static zziq<?> zza() {
        return zza;
    }

    public static zziq<?> zzb() {
        zziq<?> zziqVar = zzb;
        if (zziqVar != null) {
            return zziqVar;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Protobuf runtime is not correctly loaded.");
        return null;
    }
}
