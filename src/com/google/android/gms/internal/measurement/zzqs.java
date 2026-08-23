package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqs implements Supplier {
    private static final zzqs zza = new zzqs();
    private final Supplier zzb = Suppliers.ofInstance(new zzqu());

    public static boolean zza() {
        return zza.get().zza();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzqt get() {
        return (zzqt) this.zzb.get();
    }
}
