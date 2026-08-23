package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.Type$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zza extends zzjb<zzfi$zza, zza> implements zzkm {
    private static final zzfi$zza zzf;
    private static volatile zzkx<zzfi$zza> zzg;
    private int zzc;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    private zzfi$zza() {
    }

    public static final class zza extends zzjb.zzb<zzfi$zza, zza> implements zzkm {
        private zza() {
            super(zzfi$zza.zzf);
        }

        public final zza zza(String str) {
            if (this.zzb) {
                zzb();
                this.zzb = false;
            }
            ((zzfi$zza) this.zza).zza(str);
            return this;
        }

        public final zza zzb(String str) {
            if (this.zzb) {
                zzb();
                this.zzb = false;
            }
            ((zzfi$zza) this.zza).zzb(str);
            return this;
        }

        public /* synthetic */ zza(zzfk zzfkVar) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(String str) {
        str.getClass();
        this.zzc |= 1;
        this.zzd = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(String str) {
        str.getClass();
        this.zzc |= 2;
        this.zze = str;
    }

    public static zza zza() {
        return zzf.zzj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx<com.google.android.gms.internal.vision.zzfi$zza>] */
    @Override // com.google.android.gms.internal.vision.zzjb
    public final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        int i2 = zzfk.zza[i - 1];
        zzfk zzfkVar = null;
        switch (i2) {
            case 1:
                return new zzfi$zza();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx<zzfi$zza> zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zza.class) {
                    try {
                        zzkx<zzfi$zza> zzkxVar2 = zzg;
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
            default:
                Type$$ExternalSyntheticBUOutline0.m864m();
            case 7:
                return null;
        }
    }

    static {
        zzfi$zza zzfi_zza = new zzfi$zza();
        zzf = zzfi_zza;
        zzjb.zza((Class<zzfi$zza>) zzfi$zza.class, zzfi_zza);
    }
}
