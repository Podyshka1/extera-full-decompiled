package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzl extends zzjb implements zzkm {
    private static final zzfi$zzl zzf;
    private static volatile zzkx zzg;
    private int zzc;
    private long zzd;
    private long zze;

    private zzfi$zzl() {
    }

    public static final class zza extends zzjb.zzb implements zzkm {
        private zza() {
            super(zzfi$zzl.zzf);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzl();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဂ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzl.class) {
                    try {
                        zzkx zzkxVar2 = zzg;
                        obj3 = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzf);
                            zzg = zzaVar;
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
        zzfi$zzl zzfi_zzl = new zzfi$zzl();
        zzf = zzfi_zzl;
        zzjb.zza(zzfi$zzl.class, zzfi_zzl);
    }
}
