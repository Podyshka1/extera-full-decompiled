package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzrk implements Supplier {
    private static final zzrk zza = new zzrk();
    private final Supplier zzb = Suppliers.ofInstance(new zzrm());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzrl get() {
        return (zzrl) this.zzb.get();
    }
}
