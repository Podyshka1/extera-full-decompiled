package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhw extends zzmf implements zznn {
    private static final zzhw zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzmo zzi = zzmf.zzcv();

    static {
        zzhw zzhwVar = new zzhw();
        zzj = zzhwVar;
        zzmf.zzcp(zzhw.class, zzhwVar);
    }

    private zzhw() {
    }

    public static zzhv zzn() {
        return (zzhv) zzj.zzck();
    }

    private final void zzz() {
        zzmo zzmoVar = this.zzi;
        if (zzmoVar.zza()) {
            return;
        }
        this.zzi = zzmf.zzcw(zzmoVar);
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final String zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final String zzd() {
        return this.zze;
    }

    public final boolean zze() {
        return (this.zzb & 4) != 0;
    }

    public final long zzf() {
        return this.zzf;
    }

    public final boolean zzg() {
        return (this.zzb & 8) != 0;
    }

    public final float zzh() {
        return this.zzg;
    }

    public final boolean zzi() {
        return (this.zzb & 16) != 0;
    }

    public final double zzj() {
        return this.zzh;
    }

    public final List zzk() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", zzhw.class});
        }
        if (i2 == 3) {
            return new zzhw();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzhv(bArr);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    public final int zzm() {
        return this.zzi.size();
    }

    final /* synthetic */ void zzo(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    final /* synthetic */ void zzp(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    final /* synthetic */ void zzq() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    final /* synthetic */ void zzr(long j) {
        this.zzb |= 4;
        this.zzf = j;
    }

    final /* synthetic */ void zzs() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    final /* synthetic */ void zzt(double d) {
        this.zzb |= 16;
        this.zzh = d;
    }

    final /* synthetic */ void zzu() {
        this.zzb &= -17;
        this.zzh = 0.0d;
    }

    final /* synthetic */ void zzv(zzhw zzhwVar) {
        zzhwVar.getClass();
        zzz();
        this.zzi.add(zzhwVar);
    }

    final /* synthetic */ void zzw(Iterable iterable) {
        zzz();
        zzks.zzce(iterable, this.zzi);
    }

    final /* synthetic */ void zzx() {
        this.zzi = zzmf.zzcv();
    }
}
