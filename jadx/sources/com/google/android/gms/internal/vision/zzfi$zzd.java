package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzd extends zzjb implements zzkm {
    private static final zzfi$zzd zzd;
    private static volatile zzkx zze;
    private zzjl zzc = zzjb.zzo();

    private zzfi$zzd() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzd();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzd, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzc", zzfi$zzm.class});
            case 4:
                return zzd;
            case 5:
                zzkx zzkxVar = zze;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzd.class) {
                    try {
                        zzkx zzkxVar2 = zze;
                        obj3 = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zzd);
                            zze = zzaVar;
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
            super(zzfi$zzd.zzd);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    static {
        zzfi$zzd zzfi_zzd = new zzfi$zzd();
        zzd = zzfi_zzd;
        zzjb.zza(zzfi$zzd.class, zzfi_zzd);
    }
}
