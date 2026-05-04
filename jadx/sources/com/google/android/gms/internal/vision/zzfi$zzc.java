package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzc extends zzjb implements zzkm {
    private static final zzfi$zzc zzg;
    private static volatile zzkx zzh;
    private int zzc;
    private int zzd;
    private int zze;
    private String zzf = _UrlKt.FRAGMENT_ENCODE_SET;

    private zzfi$zzc() {
    }

    public static final class zza extends zzjb.zzb implements zzkm {
        private zza() {
            super(zzfi$zzc.zzg);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v16, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzc();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzg, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001ဌ\u0000\u0002ဌ\u0001\u0003ဈ\u0002", new Object[]{"zzc", "zzd", zzgz.zzb(), "zze", zzha.zzb(), "zzf"});
            case 4:
                return zzg;
            case 5:
                zzkx zzkxVar = zzh;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzc.class) {
                    try {
                        zzkx zzkxVar2 = zzh;
                        obj3 = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzg);
                            zzh = zzaVar;
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

    static {
        zzfi$zzc zzfi_zzc = new zzfi$zzc();
        zzg = zzfi_zzc;
        zzjb.zza(zzfi$zzc.class, zzfi_zzc);
    }
}
