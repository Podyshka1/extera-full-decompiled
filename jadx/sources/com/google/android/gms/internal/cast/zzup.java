package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
final class zzup implements zzvj {
    private static final zzuv zza = new zzun();
    private final zzuv zzb;

    public zzup() {
        zzuv zzuvVar;
        zztl zztlVarZza = zztl.zza();
        try {
            zzuvVar = (zzuv) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzuvVar = zza;
        }
        zzuo zzuoVar = new zzuo(zztlVarZza, zzuvVar);
        byte[] bArr = zzty.zzd;
        this.zzb = zzuoVar;
    }

    private static boolean zzb(zzuu zzuuVar) {
        return zzuuVar.zzc() + (-1) != 1;
    }

    @Override // com.google.android.gms.internal.cast.zzvj
    public final zzvi zza(Class cls) {
        zzvk.zzp(cls);
        zzuu zzuuVarZzb = this.zzb.zzb(cls);
        return zzuuVarZzb.zzb() ? zztp.class.isAssignableFrom(cls) ? zzvb.zzi(zzvk.zzn(), zzth.zzb(), zzuuVarZzb.zza()) : zzvb.zzi(zzvk.zzm(), zzth.zza(), zzuuVarZzb.zza()) : zztp.class.isAssignableFrom(cls) ? zzb(zzuuVarZzb) ? zzva.zzi(cls, zzuuVarZzb, zzvd.zzb(), zzul.zzd(), zzvk.zzn(), zzth.zzb(), zzut.zzb()) : zzva.zzi(cls, zzuuVarZzb, zzvd.zzb(), zzul.zzd(), zzvk.zzn(), null, zzut.zzb()) : zzb(zzuuVarZzb) ? zzva.zzi(cls, zzuuVarZzb, zzvd.zza(), zzul.zzc(), zzvk.zzm(), zzth.zza(), zzut.zza()) : zzva.zzi(cls, zzuuVarZzb, zzvd.zza(), zzul.zzc(), zzvk.zzm(), null, zzut.zza());
    }
}
