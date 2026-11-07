package com.google.android.recaptcha.internal;

import java.util.Objects;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes5.dex */
public final class zzajj extends zzafv implements zzagy {
    private static final zzajj zzv;
    private static volatile zzahe zzw;
    private int zza;
    private Object zze;
    private int zzf;
    private int zzg;
    private long zzl;
    private zzafe zzm;
    private int zzn;
    private zzaja zzo;
    private zzajr zzp;
    private zzahx zzr;
    private zzafe zzs;
    private int zzu;
    private int zzd = 0;
    private String zzh = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzi = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzj = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzk = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzq = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzagc zzt = zzafv.zzO();

    static {
        zzajj zzajjVar = new zzajj();
        zzv = zzajjVar;
        zzafv.zzL(zzajj.class, zzajjVar);
    }

    private zzajj() {
    }

    public static zzajh zzd() {
        return (zzajh) zzv.zzF();
    }

    public static zzajj zze() {
        return zzv;
    }

    public final zzafe zza() {
        zzafe zzafeVar = this.zzm;
        return zzafeVar == null ? zzafe.zzd() : zzafeVar;
    }

    public final /* synthetic */ void zzaa(int i) {
        this.zzn = i - 2;
    }

    public final boolean zzb() {
        return (this.zza & 32) != 0;
    }

    public final int zzc() {
        return this.zzu;
    }

    public final /* synthetic */ void zzg(String str) {
        Objects.requireNonNull(str);
        this.zzh = str;
    }

    public final /* synthetic */ void zzh(String str) {
        Objects.requireNonNull(str);
        this.zzi = str;
    }

    public final /* synthetic */ void zzi(String str) {
        Objects.requireNonNull(str);
        this.zzj = str;
    }

    public final /* synthetic */ void zzj(zzafe zzafeVar) {
        Objects.requireNonNull(zzafeVar);
        this.zzm = zzafeVar;
        this.zza |= 1;
    }

    public final /* synthetic */ void zzk(zzaja zzajaVar) {
        Objects.requireNonNull(zzajaVar);
        this.zzo = zzajaVar;
        this.zza |= 2;
    }

    public final /* synthetic */ void zzl(zzajr zzajrVar) {
        Objects.requireNonNull(zzajrVar);
        this.zzp = zzajrVar;
        this.zza |= 4;
    }

    public final /* synthetic */ void zzn(zzahx zzahxVar) {
        Objects.requireNonNull(zzahxVar);
        this.zzr = zzahxVar;
        this.zza |= 8;
    }

    public final /* synthetic */ void zzo(int i) {
        zzagc zzagcVar = this.zzt;
        if (!zzagcVar.zza()) {
            this.zzt = zzafv.zzP(zzagcVar);
        }
        this.zzt.zzh(0);
    }

    public final /* synthetic */ void zzp(int i) {
        this.zza |= 32;
        this.zzu = i;
    }

    public final int zzr() {
        int i;
        switch (this.zzf) {
            case 0:
                i = 2;
                break;
            case 1:
                i = 3;
                break;
            case 2:
                i = 4;
                break;
            case 3:
                i = 5;
                break;
            case 4:
                i = 6;
                break;
            case 5:
                i = 7;
                break;
            case 6:
                i = 8;
                break;
            case 7:
                i = 9;
                break;
            case 8:
                i = 10;
                break;
            case 9:
                i = 11;
                break;
            case 10:
                i = 12;
                break;
            case 11:
                i = 13;
                break;
            case 12:
                i = 14;
                break;
            case 13:
                i = 15;
                break;
            case 14:
                i = 16;
                break;
            case 15:
                i = 17;
                break;
            case 16:
                i = 18;
                break;
            case 17:
                i = 19;
                break;
            case 18:
                i = 20;
                break;
            case 19:
                i = 21;
                break;
            case 20:
                i = 22;
                break;
            case 21:
                i = 23;
                break;
            case 22:
                i = 24;
                break;
            case 23:
                i = 25;
                break;
            case 24:
                i = 26;
                break;
            case 25:
                i = 27;
                break;
            case 26:
                i = 28;
                break;
            case 27:
                i = 29;
                break;
            case 28:
                i = 30;
                break;
            case 29:
                i = 31;
                break;
            case 30:
                i = 32;
                break;
            case 31:
                i = 33;
                break;
            case 32:
                i = 34;
                break;
            case 33:
                i = 35;
                break;
            case 34:
                i = 36;
                break;
            case 35:
                i = 37;
                break;
            case 36:
                i = 38;
                break;
            case 37:
                i = 39;
                break;
            case 38:
                i = 40;
                break;
            case 39:
                i = 41;
                break;
            case 40:
                i = 42;
                break;
            case 41:
                i = 43;
                break;
            case 42:
                i = 44;
                break;
            case 43:
                i = 45;
                break;
            case 44:
                i = 46;
                break;
            case 45:
                i = 47;
                break;
            case 46:
                i = 48;
                break;
            case 47:
                i = 49;
                break;
            case 48:
                i = 50;
                break;
            case 49:
                i = 51;
                break;
            case 50:
                i = 52;
                break;
            case 51:
                i = 53;
                break;
            case 52:
                i = 54;
                break;
            case 53:
                i = 55;
                break;
            case 54:
                i = 56;
                break;
            case 55:
                i = 57;
                break;
            case 56:
                i = 58;
                break;
            case 57:
                i = 59;
                break;
            case 58:
                i = 60;
                break;
            case 59:
                i = 61;
                break;
            case 60:
                i = 62;
                break;
            case 61:
                i = 63;
                break;
            case 62:
                i = 64;
                break;
            case 63:
                i = 65;
                break;
            case 64:
                i = 66;
                break;
            case 65:
                i = 67;
                break;
            case 66:
                i = 68;
                break;
            case 67:
                i = 69;
                break;
            case 68:
                i = 70;
                break;
            case 69:
                i = 71;
                break;
            case 70:
                i = 72;
                break;
            case 71:
                i = 73;
                break;
            case 72:
                i = 74;
                break;
            case 73:
                i = 75;
                break;
            case 74:
                i = 76;
                break;
            case 75:
                i = 77;
                break;
            case 76:
                i = 78;
                break;
            case 77:
                i = 79;
                break;
            case 78:
                i = 80;
                break;
            case 79:
                i = 81;
                break;
            case 80:
                i = 82;
                break;
            case 81:
                i = 83;
                break;
            case 82:
                i = 84;
                break;
            case 83:
                i = 85;
                break;
            case 84:
                i = 86;
                break;
            case 85:
                i = 87;
                break;
            case 86:
                i = 88;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    public final /* synthetic */ void zzt(int i) {
        this.zzf = zzaji.zza(i);
    }

    public final /* synthetic */ void zzu(int i) {
        this.zzg = i - 2;
    }

    @Override // com.google.android.recaptcha.internal.zzafv
    public final Object zzf(int i, Object obj, Object obj2) {
        zzahe zzafrVar;
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return zzafv.zzM(zzv, "\u0000\u0011\u0001\u0001\u0001\u0013\u0011\u0000\u0001\u0000\u0001\f\u0002Ȉ\u0003\u0003\u0004\f\u0005ဉ\u0001\u0006ဉ\u0002\u0007Ȉ\bȈ\tȈ\nဉ\u0000\u000bဉ\u0003\rဉ\u0004\u000eȈ\u000f<\u0000\u0011'\u0012င\u0005\u0013\f", new Object[]{"zze", "zzd", "zza", "zzf", "zzi", "zzl", "zzn", "zzo", "zzp", "zzq", "zzj", "zzk", "zzm", "zzr", "zzs", "zzh", zzait.class, "zzt", "zzu", "zzg"});
        }
        if (i2 == 3) {
            return new zzajj();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzajh(bArr);
        }
        if (i2 == 5) {
            return zzv;
        }
        if (i2 != 6) {
            throw null;
        }
        zzahe zzaheVar = zzw;
        if (zzaheVar != null) {
            return zzaheVar;
        }
        synchronized (zzajj.class) {
            try {
                zzafrVar = zzw;
                if (zzafrVar == null) {
                    zzafrVar = new zzafr(zzv);
                    zzw = zzafrVar;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzafrVar;
    }
}
