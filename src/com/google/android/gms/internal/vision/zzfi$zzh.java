package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzh extends zzjb implements zzkm {
    private static final zzfi$zzh zzj;
    private static volatile zzkx zzk;
    private int zzc;
    private float zzd;
    private float zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;

    private zzfi$zzh() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzh();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzj, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ခ\u0000\u0002ခ\u0001\u0003ခ\u0002\u0004ခ\u0003\u0005ခ\u0004\u0006ခ\u0005", new Object[]{"zzc", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzj;
            case 5:
                zzkx zzkxVar = zzk;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzh.class) {
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
            super(zzfi$zzh.zzj);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    static {
        zzfi$zzh zzfi_zzh = new zzfi$zzh();
        zzj = zzfi_zzh;
        zzjb.zza(zzfi$zzh.class, zzfi_zzh);
    }
}
