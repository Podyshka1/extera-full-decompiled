package com.google.android.recaptcha.internal;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes5.dex */
public final class zzlp {
    private final zzmg zza;
    private final Integer zzb;
    private final long zzc;
    private final int zzd;

    public zzlp(zzht zzhtVar, zzmg zzmgVar, int i, Integer num) {
        this.zza = zzmgVar;
        this.zzd = i;
        this.zzb = num;
        zzaiq.zzb(zzaiq.zzc(System.currentTimeMillis()));
        this.zzc = System.currentTimeMillis();
    }

    private final zzajh zze(int i) {
        zzajh zzajhVarZzd = zzajj.zzd();
        zzajhVarZzd.zzy(this.zzd);
        zzajhVarZzd.zza(zzlj.zzd);
        zzmg zzmgVar = this.zza;
        zzajhVarZzd.zzc(zzmgVar.zzb());
        zzajhVarZzd.zzb(zzmgVar.zza().zzb());
        zzajhVarZzd.zzz(zzmgVar.zza().zzd());
        zzajhVarZzd.zzA(i);
        long j = this.zzc;
        zzajhVarZzd.zzh(zzaiq.zzc(j));
        long jCurrentTimeMillis = System.currentTimeMillis() - j;
        zzajhVarZzd.zze(zzaio.zzc(jCurrentTimeMillis / 1000, (int) ((jCurrentTimeMillis % 1000) * 1000000)));
        Integer num = this.zzb;
        if (num != null) {
            zzajhVarZzd.zzw(num.intValue());
        }
        return zzajhVarZzd;
    }

    public final zzmg zza() {
        return this.zza;
    }

    public final void zzb() {
        this.zza.zzd(zze(3), null);
    }

    public final void zzc(zzhg zzhgVar) {
        zzaiz zzaizVarZza = zzaja.zza();
        zzaizVarZza.zza(String.valueOf(zzhgVar.zza().zza()));
        zzaizVarZza.zzb(zzhgVar.zzb().zza());
        zzaizVarZza.zzd(zzhgVar.zzd().getErrorCode().getErrorCode());
        String strZzc = zzhgVar.zzc();
        if (strZzc != null) {
            zzaizVarZza.zzc(strZzc);
        }
        this.zza.zzd(zze(4), (zzaja) zzaizVarZza.zzp());
    }

    public final Object zzd(int i, Integer num, Function2 function2, Continuation continuation) {
        return new zzmb(54, function2, null).zza(this.zza, continuation);
    }
}
