package com.google.android.recaptcha.internal;

import java.util.function.Supplier;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class zzab implements Supplier {
    private final /* synthetic */ int zzc;
    public static final /* synthetic */ zzab zzb = new zzab(1);
    static final /* synthetic */ zzab zza = new zzab(0);

    private /* synthetic */ zzab(int i) {
        this.zzc = i;
    }

    @Override // java.util.function.Supplier
    public final /* synthetic */ Object get() {
        return this.zzc != 0 ? zzar.zza(null) : new zzae();
    }
}
