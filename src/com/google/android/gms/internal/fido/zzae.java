package com.google.android.gms.internal.fido;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzae {
    private static final Object zza = new Object();
    private static final zzai zzb = new zzai();
    private static final zzbp zze = zzbt.zza(new zzbp() { // from class: com.google.android.gms.internal.fido.zzad
        @Override // com.google.android.gms.internal.fido.zzbp
        public final Object zza() {
            throw null;
        }
    });

    public static zzae zza() {
        zzah.zza();
        zzah.zzb();
        zzah.zzd();
        throw new IllegalStateException("Must call PhenotypeContext.setContext() first");
    }

    public static boolean zzb() {
        zzah.zzd();
        zzah.zzc();
        return false;
    }
}
