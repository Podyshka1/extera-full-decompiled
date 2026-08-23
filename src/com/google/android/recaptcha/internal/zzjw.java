package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzjw implements zzks {
    private static final zzkc zza = new zzju();
    private final zzkc zzb;

    public zzjw() {
        zzkc zzkcVar;
        zzim zzimVarZza = zzim.zza();
        try {
            zzkcVar = (zzkc) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
        } catch (Exception unused) {
            zzkcVar = zza;
        }
        zzjv zzjvVar = new zzjv(zzimVarZza, zzkcVar);
        byte[] bArr = zzjc.zzd;
        this.zzb = zzjvVar;
    }

    private static boolean zzb(zzkb zzkbVar) {
        return zzkbVar.zzc() + (-1) != 1;
    }

    @Override // com.google.android.recaptcha.internal.zzks
    public final zzkr zza(Class cls) {
        zzkt.zzs(cls);
        zzkb zzkbVarZzb = this.zzb.zzb(cls);
        return zzkbVarZzb.zzb() ? zzit.class.isAssignableFrom(cls) ? zzki.zzc(zzkt.zzn(), zzih.zzb(), zzkbVarZzb.zza()) : zzki.zzc(zzkt.zzm(), zzih.zza(), zzkbVarZzb.zza()) : zzit.class.isAssignableFrom(cls) ? zzb(zzkbVarZzb) ? zzkh.zzm(cls, zzkbVarZzb, zzkl.zzb(), zzjs.zze(), zzkt.zzn(), zzih.zzb(), zzka.zzb()) : zzkh.zzm(cls, zzkbVarZzb, zzkl.zzb(), zzjs.zze(), zzkt.zzn(), null, zzka.zzb()) : zzb(zzkbVarZzb) ? zzkh.zzm(cls, zzkbVarZzb, zzkl.zza(), zzjs.zzd(), zzkt.zzm(), zzih.zza(), zzka.zza()) : zzkh.zzm(cls, zzkbVarZzb, zzkl.zza(), zzjs.zzd(), zzkt.zzm(), null, zzka.zza());
    }
}
