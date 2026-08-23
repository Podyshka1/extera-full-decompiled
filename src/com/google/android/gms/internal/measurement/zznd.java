package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zznd implements zzny {
    private static final zznk zzb = new zznb();
    private final zznk zza;

    public zznd() {
        zzma zzmaVarZza = zzma.zza();
        int i = zznu.$r8$clinit;
        zznc zzncVar = new zznc(zzmaVarZza, zzb);
        byte[] bArr = zzmp.zzb;
        this.zza = zzncVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzny
    public final zznx zza(Class cls) {
        int i = zznz.$r8$clinit;
        if (!zzmf.class.isAssignableFrom(cls)) {
            int i2 = zznu.$r8$clinit;
        }
        zznj zznjVarZzc = this.zza.zzc(cls);
        if (zznjVarZzc.zza()) {
            int i3 = zznu.$r8$clinit;
            return zznq.zzg(zznz.zzA(), zzlu.zza(), zznjVarZzc.zzb());
        }
        int i4 = zznu.$r8$clinit;
        return zznp.zzl(cls, zznjVarZzc, zzns.zza(), zzmz.zza(), zznz.zzA(), zznjVarZzc.zzc() + (-1) != 1 ? zzlu.zza() : null, zzni.zza());
    }
}
