package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zztx extends zzyd implements zzzj {
    private static final zztx zzr;
    private int zzb;
    private zzua zzd;
    private int zze;
    private int zzf;
    private int zzg;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private int zzi;
    private int zzj;
    private int zzk;
    private long zzl;
    private zztu zzm;
    private long zzn;
    private zzuc zzo;
    private zzue zzp;
    private int zzq;

    static {
        zztx zztxVar = new zztx();
        zzr = zztxVar;
        zzyd.zzG(zztx.class, zztxVar);
    }

    private zztx() {
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzyd.zzH(zzr, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0000\u0000\u0001ဉ\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005ဈ\u0004\u0006င\u0005\u0007င\u0006\bင\u0007\tဂ\b\nဉ\t\u000bဂ\n\fဉ\u000b\rဉ\f\u000e᠌\r", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", "zzn", "zzo", "zzp", "zzq", zztv.zza});
        }
        if (i2 == 3) {
            return new zztx();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zztw(bArr);
        }
        if (i2 == 5) {
            return zzr;
        }
        throw null;
    }
}
