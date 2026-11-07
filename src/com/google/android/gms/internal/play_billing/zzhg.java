package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes.dex */
public final class zzhg extends RuntimeException {
    public zzhg(zzgl zzglVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzfq zza() {
        return new zzfq(getMessage());
    }
}
