package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;

/* JADX INFO: loaded from: classes4.dex */
public final class zzpu implements Supplier {
    private static final zzpu zza = new zzpu();
    private final Supplier zzb = Suppliers.ofInstance(new zzpw());

    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    public static boolean zzb() {
        return zza.get().zzb();
    }

    public static boolean zzc() {
        return zza.get().zzc();
    }

    public static boolean zzd() {
        return zza.get().zzd();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzpv get() {
        return (zzpv) this.zzb.get();
    }
}
