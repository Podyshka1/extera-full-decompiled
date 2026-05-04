package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqa implements Supplier {
    private static final zzqa zza = new zzqa();
    private final Supplier zzb = Suppliers.ofInstance(new zzqc());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzqb get() {
        return (zzqb) this.zzb.get();
    }
}
