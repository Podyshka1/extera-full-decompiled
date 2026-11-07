package com.google.android.gms.internal.play_billing;

/* JADX INFO: loaded from: classes5.dex */
final class zzgd implements zzgw {
    private static final zzgj zza = new zzgb();
    private final zzgj zzb;

    public zzgd() {
        zzfd zzfdVarZza = zzfd.zza();
        int i = zzgs.$r8$clinit;
        zzgc zzgcVar = new zzgc(zzfdVarZza, zza);
        byte[] bArr = zzfo.zzb;
        this.zzb = zzgcVar;
    }

    @Override // com.google.android.gms.internal.play_billing.zzgw
    public final zzgv zza(Class cls) {
        int i = zzgx.$r8$clinit;
        if (!zzfi.class.isAssignableFrom(cls)) {
            int i2 = zzgs.$r8$clinit;
        }
        zzgi zzgiVarZzb = this.zzb.zzb(cls);
        if (zzgiVarZzb.zzb()) {
            int i3 = zzgs.$r8$clinit;
            return zzgp.zzc(zzgx.zzm(), zzex.zza(), zzgiVarZzb.zza());
        }
        int i4 = zzgs.$r8$clinit;
        return zzgo.zzl(cls, zzgiVarZzb, zzgr.zza(), zzfz.zza(), zzgx.zzm(), zzgiVarZzb.zzc() + (-1) != 1 ? zzex.zza() : null, zzgh.zza());
    }
}
