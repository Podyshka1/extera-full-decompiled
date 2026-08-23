package com.google.android.gms.internal.measurement;

import java.util.List;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzgl extends zzmf implements zznn {
    private static final zzgl zzu;
    private int zzb;
    private long zzd;
    private int zzf;
    private boolean zzk;
    private zzgf zzp;
    private zzgp zzq;
    private zzgv zzr;
    private zzgr zzs;
    private zzgn zzt;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzmo zzg = zzmf.zzcv();
    private zzmo zzh = zzmf.zzcv();
    private zzmo zzi = zzmf.zzcv();
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzmo zzl = zzmf.zzcv();
    private zzmo zzm = zzmf.zzcv();
    private String zzn = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzo = _UrlKt.FRAGMENT_ENCODE_SET;

    static {
        zzgl zzglVar = new zzgl();
        zzu = zzglVar;
        zzmf.zzcp(zzgl.class, zzglVar);
    }

    private zzgl() {
    }

    public static zzgk zzr() {
        return (zzgk) zzu.zzck();
    }

    public static zzgl zzs() {
        return zzu;
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final long zzb() {
        return this.zzd;
    }

    public final boolean zzc() {
        return (this.zzb & 2) != 0;
    }

    public final String zzd() {
        return this.zze;
    }

    public final List zze() {
        return this.zzg;
    }

    public final int zzf() {
        return this.zzh.size();
    }

    public final zzgj zzg(int i) {
        return (zzgj) this.zzh.get(i);
    }

    public final List zzh() {
        return this.zzi;
    }

    public final List zzi() {
        return this.zzl;
    }

    public final int zzj() {
        return this.zzl.size();
    }

    public final List zzk() {
        return this.zzm;
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzu, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzgt.class, "zzh", zzgj.class, "zzi", zzfd.class, "zzj", "zzk", "zzl", zzja.class, "zzm", zzgh.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt"});
        }
        if (i2 == 3) {
            return new zzgl();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzgk(bArr);
        }
        if (i2 == 5) {
            return zzu;
        }
        throw null;
    }

    public final String zzm() {
        return this.zzn;
    }

    public final boolean zzn() {
        return (this.zzb & 128) != 0;
    }

    public final zzgf zzo() {
        zzgf zzgfVar = this.zzp;
        return zzgfVar == null ? zzgf.zzg() : zzgfVar;
    }

    public final boolean zzp() {
        return (this.zzb & 512) != 0;
    }

    public final zzgv zzq() {
        zzgv zzgvVar = this.zzr;
        return zzgvVar == null ? zzgv.zze() : zzgvVar;
    }

    final /* synthetic */ void zzt(int i, zzgj zzgjVar) {
        zzgjVar.getClass();
        zzmo zzmoVar = this.zzh;
        if (!zzmoVar.zza()) {
            this.zzh = zzmf.zzcw(zzmoVar);
        }
        this.zzh.set(i, zzgjVar);
    }

    final /* synthetic */ void zzu() {
        this.zzi = zzmf.zzcv();
    }

    final /* synthetic */ void zzv() {
        this.zzl = zzmf.zzcv();
    }
}
