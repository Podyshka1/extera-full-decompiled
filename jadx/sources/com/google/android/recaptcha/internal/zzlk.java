package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlk extends RuntimeException {
    public zzlk(zzke zzkeVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzje zza() {
        return new zzje(getMessage());
    }
}
