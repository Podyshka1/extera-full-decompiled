package com.google.android.gms.internal.measurement;

import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: loaded from: classes4.dex */
public final class zzaif implements Supplier {
    private static final zzaif zza = new zzaif();
    private final Supplier zzb = Suppliers.ofInstance(new zzaih());

    @SideEffectFree
    public static boolean zza() {
        zza.get().zza();
        return true;
    }

    @SideEffectFree
    public static boolean zzb() {
        return zza.get().zzb();
    }

    @SideEffectFree
    public static boolean zzc() {
        return zza.get().zzc();
    }

    @SideEffectFree
    public static boolean zzd() {
        return zza.get().zzd();
    }

    @SideEffectFree
    public static boolean zze() {
        return zza.get().zze();
    }

    @SideEffectFree
    public static boolean zzf() {
        return zza.get().zzf();
    }

    @SideEffectFree
    public static boolean zzg() {
        return zza.get().zzg();
    }

    @Override // com.google.common.base.Supplier
    /* JADX INFO: renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzaig get() {
        return (zzaig) this.zzb.get();
    }
}
