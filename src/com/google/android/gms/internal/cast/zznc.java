package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zznc extends zztp implements zzuy {
    private static final zznc zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private int zzg;
    private boolean zzh;
    private zztx zzi = zztp.zzA();
    private zztx zzj = zztp.zzA();
    private String zzk = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zznc zzncVar = new zznc();
        zzb = zzncVar;
        zztp.zzH(zznc.class, zzncVar);
    }

    private zznc() {
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0002\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ဇ\u0003\u0007\u001b\b\u001b\tဈ\u0004", new Object[]{"zzd", "zze", zzgx.zza(), "zzf", "zzg", zzin.zza(), "zzh", "zzi", zzpv.class, "zzj", zzpv.class, "zzk"});
        }
        if (i2 == 3) {
            return new zznc();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznb(zzmsVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
