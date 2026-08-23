package com.google.android.gms.internal.vision;

import com.google.android.gms.internal.vision.zzjb;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzfi$zza extends zzjb implements zzkm {
    private static final zzfi$zza zzf;
    private static volatile zzkx zzg;
    private int zzc;
    private String zzd = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zze = _UrlKt.FRAGMENT_ENCODE_SET;

    private zzfi$zza() {
    }

    public static final class zza extends zzjb.zzb implements zzkm {
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

        /* synthetic */ zza(zzfk zzfkVar) {
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
        return (zza) zzf.zzj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.internal.vision.zzjb$zza, com.google.android.gms.internal.vision.zzkx] */
    @Override // com.google.android.gms.internal.vision.zzjb
    protected final Object zza(int i, Object obj, Object obj2) {
        Object obj3;
        zzfk zzfkVar = null;
        switch (zzfk.zza[i - 1]) {
            case 1:
                return new zzfi$zza();
            case 2:
                return new zza(zzfkVar);
            case 3:
                return zzjb.zza(zzf, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzc", "zzd", "zze"});
            case 4:
                return zzf;
            case 5:
                zzkx zzkxVar = zzg;
                if (zzkxVar != null) {
                    return zzkxVar;
                }
                synchronized (zzfi$zza.class) {
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
        zzfi$zza zzfi_zza = new zzfi$zza();
        zzf = zzfi_zza;
        zzjb.zza(zzfi$zza.class, zzfi_zza);
    }
}
