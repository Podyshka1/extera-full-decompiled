package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrn implements Supplier {
    private static final zzrn zza = new zzrn();
    private final Supplier zzb = Suppliers.ofInstance(new zzrp());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final zzro get() {
        return (zzro) this.zzb.get();
    }
}
