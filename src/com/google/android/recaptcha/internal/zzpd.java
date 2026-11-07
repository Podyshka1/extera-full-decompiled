package com.google.android.recaptcha.internal;

import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
final class zzpd extends zzpf {
    final /* synthetic */ zzpj zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzpd(zzpj zzpjVar) {
        super(zzpjVar, null);
        Objects.requireNonNull(zzpjVar);
        this.zza = zzpjVar;
    }

    @Override // com.google.android.recaptcha.internal.zzpf
    public final Object zza(int i) {
        return this.zza.zzo(i);
    }
}
