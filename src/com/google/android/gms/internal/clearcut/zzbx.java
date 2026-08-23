package com.google.android.gms.internal.clearcut;

import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzbx {
    private static final zzbu<?> zzgr = new zzbv();
    private static final zzbu<?> zzgs = zzao();

    private static zzbu<?> zzao() {
        try {
            return (zzbu) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static zzbu<?> zzap() {
        return zzgr;
    }

    public static zzbu<?> zzaq() {
        zzbu<?> zzbuVar = zzgs;
        if (zzbuVar != null) {
            return zzbuVar;
        }
        Segment$$ExternalSyntheticBUOutline1.m848m("Protobuf runtime is not correctly loaded.");
        return null;
    }
}
