package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
public final class zzig extends zzmf implements zznn {
    private static final zzig zzf;
    private int zzb;
    private int zzd = 1;
    private zzmo zze = zzmf.zzcv();

    static {
        zzig zzigVar = new zzig();
        zzf = zzigVar;
        zzmf.zzcp(zzig.class, zzigVar);
    }

    private zzig() {
    }

    public static zzie zza() {
        return (zzie) zzf.zzck();
    }

    final /* synthetic */ void zzb(zzhu zzhuVar) {
        zzhuVar.getClass();
        zzmo zzmoVar = this.zze;
        if (!zzmoVar.zza()) {
            this.zze = zzmf.zzcw(zzmoVar);
        }
        this.zze.add(zzhuVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzmf
    protected final Object zzl(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzmf.zzcq(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzb", "zzd", zzif.zza, "zze", zzhu.class});
        }
        if (i2 == 3) {
            return new zzig();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzie(bArr);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
