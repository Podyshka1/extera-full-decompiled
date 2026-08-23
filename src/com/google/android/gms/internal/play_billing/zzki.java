package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzki extends zzhk implements zzin {
    private static final zzki zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzki zzkiVar = new zzki();
        zzb = zzkiVar;
        zzhk.zzx(zzki.class, zzkiVar);
    }

    private zzki() {
    }

    static /* synthetic */ void zzC(zzki zzkiVar, String str) {
        zzkiVar.zzd |= 8;
        zzkiVar.zzh = str;
    }

    static /* synthetic */ void zzD(zzki zzkiVar, String str) {
        str.getClass();
        zzkiVar.zzd |= 2;
        zzkiVar.zzf = str;
    }

    static /* synthetic */ void zzE(zzki zzkiVar, int i) {
        zzkiVar.zzd |= 1;
        zzkiVar.zze = i;
    }

    static /* synthetic */ void zzF(zzki zzkiVar, int i) {
        zzkiVar.zzg = i - 1;
        zzkiVar.zzd |= 4;
    }

    public static zzke zzc() {
        return (zzke) zzb.zzm();
    }

    @Override // com.google.android.gms.internal.play_billing.zzhk
    protected final Object zzd(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzhk.zzu(zzb, "\u0004\u0004\u0000\u0001\u0001\u0005\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003", new Object[]{"zzd", "zze", "zzf", "zzg", zzkf.zza, "zzh"});
        }
        if (i2 == 3) {
            return new zzki();
        }
        zzkh zzkhVar = null;
        if (i2 == 4) {
            return new zzke(zzkhVar);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
