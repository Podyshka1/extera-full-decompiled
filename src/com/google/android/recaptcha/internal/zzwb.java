package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzwb extends RuntimeException {
    public zzwb(Throwable th) {
        super(th);
    }

    public static Object zza(zzwa zzwaVar) {
        try {
            return zzwaVar.zza();
        } catch (Exception e) {
            throw new zzwb(e);
        }
    }
}
