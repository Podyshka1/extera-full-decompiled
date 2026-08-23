package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzoz implements Supplier {
    private static final zzoz zza = new zzoz();
    private final Supplier zzb = Suppliers.ofInstance(new zzpb());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzpa get() {
        return (zzpa) this.zzb.get();
    }
}
