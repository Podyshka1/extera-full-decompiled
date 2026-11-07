package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzahy extends RuntimeException {
    public zzahy(zzagx zzagxVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzagk zza() {
        return new zzagk(getMessage());
    }
}
