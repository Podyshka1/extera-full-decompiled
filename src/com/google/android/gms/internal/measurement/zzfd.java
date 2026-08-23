package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfd extends zzmf implements zznn {
    private static final zzfd zzi;
    private int zzb;
    private int zzd;
    private zzmo zze = zzmf.zzcv();
    private zzmo zzf = zzmf.zzcv();
    private boolean zzg;
    private boolean zzh;

    static {
        zzfd zzfdVar = new zzfd();
        zzi = zzfdVar;
        zzmf.zzcp(zzfd.class, zzfdVar);
    }

    private zzfd() {
    }

    public final boolean zza() {
        return (this.zzb & 1) != 0;
    }

    public final int zzb() {
        return this.zzd;
    }

    public final List zzc() {
        return this.zze;
    }

    public final int zzd() {
        return this.zze.size();
    }

    public final zzfn zze(int i) {
        return (zzfn) this.zze.get(i);
    }

    public final List zzf() {
        return this.zzf;
    }

    public final int zzg() {
        return this.zzf.size();
    }

    public final zzff zzh(int i) {
        return (zzff) this.zzf.get(i);
    }

    final /* synthetic */ void zzi(int i, zzfn zzfnVar) {
        zzfnVar.getClass();
        zzmo zzmoVar = this.zze;
        if (!zzmoVar.zza()) {
            this.zze = zzmf.zzcw(zzmoVar);
        }
        this.zze.set(i, zzfnVar);
    }

    final /* synthetic */ void zzj(int i, zzff zzffVar) {
        zzffVar.getClass();
        zzmo zzmoVar = this.zzf;
        if (!zzmoVar.zza()) {
            this.zzf = zzmf.zzcw(zzmoVar);
        }
        this.zzf.set(i, zzffVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzb", "zzd", "zze", zzfn.class, "zzf", zzff.class, "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new zzfd();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzfc(bArr);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
