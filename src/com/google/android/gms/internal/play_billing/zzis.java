package com.google.android.gms.internal.play_billing;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class zzis extends zzfi implements zzgm {
    private static final zzis zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;

    static {
        zzis zzisVar = new zzis();
        zzb = zzisVar;
        zzfi.zzw(zzis.class, zzisVar);
    }

    private zzis() {
    }

    public static /* synthetic */ void zzA(zzis zzisVar, int i) {
        zzisVar.zzd |= 128;
        zzisVar.zzl = i;
    }

    public static /* synthetic */ void zzB(zzis zzisVar, int i) {
        zzisVar.zzd |= 256;
        zzisVar.zzm = i;
    }

    public static /* synthetic */ void zzC(zzis zzisVar, int i) {
        zzisVar.zzd |= 8;
        zzisVar.zzh = i;
    }

    public static /* synthetic */ void zzD(zzis zzisVar, long j) {
        zzisVar.zzd |= 16;
        zzisVar.zzi = j;
    }

    public static /* synthetic */ void zzE(zzis zzisVar, long j) {
        zzisVar.zzd |= 32;
        zzisVar.zzj = j;
    }

    public static /* synthetic */ void zzF(zzis zzisVar, long j) {
        zzisVar.zzd |= 512;
        zzisVar.zzn = 772604006L;
    }

    public static /* synthetic */ void zzG(zzis zzisVar, String str) {
        str.getClass();
        zzisVar.zzd |= 4;
        zzisVar.zzg = str;
    }

    public static /* synthetic */ void zzH(zzis zzisVar, boolean z) {
        zzisVar.zzd |= 64;
        zzisVar.zzk = z;
    }

    public static /* synthetic */ void zzI(zzis zzisVar, String str) {
        str.getClass();
        zzisVar.zzd |= 1;
        zzisVar.zze = str;
    }

    public static /* synthetic */ void zzJ(zzis zzisVar, String str) {
        zzisVar.zzd |= 2;
        zzisVar.zzf = str;
    }

    public static zziq zzc() {
        return (zziq) zzb.zzl();
    }

    @Override // com.google.android.gms.internal.play_billing.zzfi
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzfi.zzt(zzb, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new zzis();
        }
        zzir zzirVar = null;
        if (i2 == 4) {
            return new zziq(zzirVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
