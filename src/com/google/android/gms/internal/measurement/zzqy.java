package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqy implements Supplier {
    private static final zzqy zza = new zzqy();
    private final Supplier zzb = Suppliers.ofInstance(new zzra());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzqz get() {
        return (zzqz) this.zzb.get();
    }
}
