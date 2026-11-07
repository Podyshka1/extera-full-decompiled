package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzuh extends zzsl {
    private final String zza;
    private final zzso zzb;

    public /* synthetic */ zzuh(String str, zzso zzsoVar, byte[] bArr) {
        this.zza = str;
        this.zzb = zzsoVar;
    }

    public final String toString() {
        return String.format("(typeUrl=%s, outputPrefixType=%s)", this.zza, this.zzb.toString());
    }
}
