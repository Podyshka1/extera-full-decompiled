package com.google.android.recaptcha.internal;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
final class zzih {
    private static final zzif zza = new zzig();
    private static final zzif zzb;

    static {
        zzif zzifVar = null;
        try {
            zzifVar = (zzif) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        zzb = zzifVar;
    }

    public static zzif zza() {
        zzif zzifVar = zzb;
        if (zzifVar != null) {
            return zzifVar;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Protobuf runtime is not correctly loaded.");
        return null;
    }

    public static zzif zzb() {
        return zza;
    }
}
