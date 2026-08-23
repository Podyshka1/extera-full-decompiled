package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzk extends zzjb implements zzkm {
    private static final zzfi$zzk zzj;
    private static volatile zzkx zzk;
    private int zzc;
    private long zze;
    private zzfi$zza zzf;
    private zzfi$zzg zzh;
    private zzfi$zzb zzi;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzg = _UrlKt.FRAGMENT_ENCODE_SET;

    private zzfi$zzk() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzk();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzj, "\u0001\u0006\u0000\u0001\u0001\u0011\u0006\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001\u0003ဉ\u0002\u0006ဈ\u0003\u0010ဉ\u0004\u0011ဉ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                zzkx zzkxVar = zzk;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzk.class) {
                    try {
                        zzkx zzkxVar2 = zzk;
                        obj3 = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzj);
                            zzk = zzaVar;
                            obj3 = zzaVar;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return obj3;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public static final class zza extends zzjb.zzb implements zzkm {
        private zza() {
            super(zzfi$zzk.zzj);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    static {
        zzfi$zzk zzfi_zzk = new zzfi$zzk();
        zzj = zzfi_zzk;
        zzjb.zza(zzfi$zzk.class, zzfi_zzk);
    }
}
