package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfi$zzb extends zzjb<zzfi$zzb, zza> implements zzkm {
    private static final zzji<Integer, zzgz> zzd = new zzfl();
    private static final zzfi$zzb zze;
    private static volatile zzkx<zzfi$zzb> zzf;
    private zzjj zzc = zzjb.zzn();

    private zzfi$zzb() {
    }

    public static final class zza extends zzjb.zzb<zzfi$zzb, zza> implements zzkm {
        private zza() {
            super(zzfi$zzb.zze);
        }

        public /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zzb>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        int i2 = zzfk.zza[i - 1];
        zzfk zzfkVar = null;
        switch (i2) {
            case 1:
                return new zzfi$zzb();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zze, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e", new Object[]{"zzc", zzgz.zzb()});
            case 4:
                return zze;
            case 5:
                zzkx<zzfi$zzb> zzkxVar = zzf;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zzb.class) {
                    try {
                        zzkx<zzfi$zzb> zzkxVar2 = zzf;
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
            default:
                Type$$ExternalSyntheticBUOutline0.m960m();
            case 7:
                return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.vision.zzfl, com.google.android.gms.internal.vision.zzji<java.lang.Integer, com.google.android.gms.internal.vision.zzgz>] */
    static {
        zzfi$zzb zzfi_zzb = new zzfi$zzb();
        zze = zzfi_zzb;
        zzjb.zza((Class<zzfi$zzb>) zzfi$zzb.class, zzfi_zzb);
    }
}
