package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzff extends zzmf implements zznn {
    private static final zzff zzl;
    private int zzb;
    private int zzd;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzmo zzf = zzmf.zzcv();
    private boolean zzg;
    private zzfl zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        zzff zzffVar = new zzff();
        zzl = zzffVar;
        zzmf.zzcp(zzff.class, zzffVar);
    }

    private zzff() {
    }

    public static zzfe zzn() {
        return (zzfe) zzl.zzck();
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final String zzc() {
        return this.zze;
    }

    public final List zzd() {
        return this.zzf;
    }

    public final int zze() {
        return this.zzf.size();
    }

    public final zzfh zzf(int i) {
        return (zzfh) this.zzf.get(i);
    }

    public final boolean zzg() {
        return (this.zzb & 8) != 0;
    }

    public final zzfl zzh() {
        zzfl zzflVar = this.zzh;
        return zzflVar == null ? zzfl.zzj() : zzflVar;
    }

    public final boolean zzi() {
        return this.zzi;
    }

    public final boolean zzj() {
        return this.zzj;
    }

    public final boolean zzk() {
        return (this.zzb & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzl, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", zzfh.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzff();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfe(bArr);
        }
        if (i2 == 5) {
            return zzl;
        }
        throw null;
    }

    public final boolean zzm() {
        return this.zzk;
    }

    final /* synthetic */ void zzo(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    final /* synthetic */ void zzp(int i, zzfh zzfhVar) {
        zzfhVar.getClass();
        zzmo zzmoVar = this.zzf;
        if (!zzmoVar.zza()) {
            this.zzf = zzmf.zzcw(zzmoVar);
        }
        this.zzf.set(i, zzfhVar);
    }
}
