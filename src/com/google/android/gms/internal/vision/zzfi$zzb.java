package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zzb extends zzjb implements zzkm {
    private static final zzji zzd = new zzfl();
    private static final zzfi$zzb zze;
    private static volatile zzkx zzf;
    private zzjj zzc = zzjb.zzn();

    private zzfi$zzb() {
    }

    public static final class zza extends zzjb.zzb implements zzkm {
        private zza() {
            super(zzfi$zzb.zze);
        }

        /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zzb();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzc", zzgz.zzb()});
            case 4:
                return zze;
            case 5:
                zzkx zzkxVar = zzf;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzb.class) {
                    try {
                        zzkx zzkxVar2 = zzf;
                        obj3 = zzkxVar2;
                        if (zzkxVar2 == null) {
                            ?? zzaVar = new zzjb.zza(zze);
                            zzf = zzaVar;
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

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.zzfl, com.google.android.gms.internal.vision.zzji] */
    static {
        zzfi$zzb zzfi_zzb = new zzfi$zzb();
        zze = zzfi_zzb;
        zzjb.zza(zzfi$zzb.class, zzfi_zzb);
    }
}
