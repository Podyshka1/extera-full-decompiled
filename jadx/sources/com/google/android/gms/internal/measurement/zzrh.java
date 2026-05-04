package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrh implements Supplier {
    private static final zzrh zza = new zzrh();
    private final Supplier zzb = Suppliers.ofInstance(new zzrj());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzri get() {
        return (zzri) this.zzb.get();
    }
}
