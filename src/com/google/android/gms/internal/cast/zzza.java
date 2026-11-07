package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzza implements zzzt {
    private static final zzzg zzb = new zzyy();
    private final zzzg zza;

    public zzza() {
        zzxz zzxzVarZza = zzxz.zza();
        int i = zzxb.$r8$clinit;
        zzyz zzyzVar = new zzyz(zzxzVarZza, zzb);
        byte[] bArr = zzym.zzb;
        this.zza = zzyzVar;
    }

    @Override // com.google.android.gms.internal.cast.zzzt
    public final zzzs zza(Class cls) {
        int i = zzzu.$r8$clinit;
        if (!zzyd.class.isAssignableFrom(cls)) {
            int i2 = zzxb.$r8$clinit;
        }
        zzzf zzzfVarZzc = this.zza.zzc(cls);
        if (zzzfVarZzc.zza()) {
            int i3 = zzxb.$r8$clinit;
            return zzzm.zzi(zzzu.zzB(), zzxu.zza(), zzzfVarZzc.zzb());
        }
        int i4 = zzxb.$r8$clinit;
        return zzzl.zzi(cls, zzzfVarZzc, zzzo.zza(), zzyw.zza(), zzzu.zzB(), zzzfVarZzc.zzc() + (-1) != 1 ? zzxu.zza() : null, zzze.zza());
    }
}
