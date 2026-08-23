package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzqr extends zzyd implements zzzj {
    private static final zzqr zzaz;
    private zzum zzC;
    private int zzD;
    private int zzE;
    private zzrp zzF;
    private int zzG;
    private zzqp zzH;
    private zzrp zzJ;
    private int zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private zzvr zzQ;
    private zzqg zzR;
    private zzqz zzS;
    private zzpu zzT;
    private zzst zzU;
    private zzuk zzV;
    private zzsz zzW;
    private zzsx zzY;
    private int zzZ;
    private zztj zzaa;
    private boolean zzac;
    private boolean zzad;
    private int zzae;
    private zzpw zzaf;
    private zztr zzag;
    private zzsn zzah;
    private zzrh zzai;
    private zzth zzaj;
    private zzuu zzak;
    private zzrj zzal;
    private int zzam;
    private int zzan;
    private int zzao;
    private zzvx zzaq;
    private zzuw zzar;
    private zzus zzas;
    private zzqk zzat;
    private zzvc zzau;
    private zzug zzav;
    private zzsv zzaw;
    private zzsh zzax;
    private int zzb;
    private int zzd;
    private long zze;
    private long zzf;
    private int zzg;
    private zzsj zzh;
    private zztp zzi;
    private zzrz zzj;
    private zzrv zzk;
    private zzqn zzl;
    private zztn zzm;
    private zzqa zzn;
    private zzvi zzo;
    private zzrt zzq;
    private zzlc zzr;
    private int zzu;
    private zztf zzv;
    private byte zzay = 2;
    private String zzp = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzs = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzt = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzw = _UrlKt.FRAGMENT_ENCODE_SET;
    private zzyj zzx = zzyd.zzJ();
    private zzyl zzy = zzyd.zzM();
    private zzyl zzz = zzyd.zzM();
    private zzyl zzA = zzyd.zzM();
    private zzyl zzB = zzyd.zzM();
    private zzyl zzI = zzyd.zzM();
    private zzyl zzX = zzyd.zzM();
    private zzyl zzab = zzyd.zzM();
    private zzyl zzap = zzyd.zzM();

    static {
        zzqr zzqrVar = new zzqr();
        zzaz = zzqrVar;
        zzyd.zzG(zzqr.class, zzqrVar);
    }

    private zzqr() {
    }

    public static zzqq zzc() {
        return (zzqq) zzaz.zzB();
    }

    public static zzqq zzd(zzqr zzqrVar) {
        zzya zzyaVarZzB = zzaz.zzB();
        zzyaVarZzB.zzv(zzqrVar);
        return (zzqq) zzyaVarZzB;
    }

    public final zzqg zza() {
        zzqg zzqgVar = this.zzR;
        return zzqgVar == null ? zzqg.zzd() : zzqgVar;
    }

    public final /* synthetic */ void zze(long j) {
        this.zzb |= 2;
        this.zzf = j;
    }

    public final /* synthetic */ void zzf(String str) {
        str.getClass();
        this.zzb |= 2048;
        this.zzp = str;
    }

    public final /* synthetic */ void zzg(String str) {
        str.getClass();
        this.zzb |= 16384;
        this.zzs = str;
    }

    public final /* synthetic */ void zzh(String str) {
        str.getClass();
        this.zzb |= 32768;
        this.zzt = str;
    }

    public final /* synthetic */ void zzi(int i) {
        this.zzb |= 65536;
        this.zzu = i;
    }

    public final /* synthetic */ void zzj(String str) {
        this.zzb |= 262144;
        this.zzw = str;
    }

    public final /* synthetic */ void zzk(int i) {
        this.zzb |= Integer.MIN_VALUE;
        this.zzP = i;
    }

    public final /* synthetic */ void zzl(zzqg zzqgVar) {
        zzqgVar.getClass();
        this.zzR = zzqgVar;
        this.zzd |= 2;
    }

    public final /* synthetic */ void zzm(zzqz zzqzVar) {
        zzqzVar.getClass();
        this.zzS = zzqzVar;
        this.zzd |= 4;
    }

    public final /* synthetic */ void zzn(zzqc zzqcVar) {
        zzqcVar.getClass();
        zzyl zzylVar = this.zzX;
        if (!zzylVar.zza()) {
            this.zzX = zzyd.zzN(zzylVar);
        }
        this.zzX.add(zzqcVar);
    }

    public final /* synthetic */ void zzo(zzpw zzpwVar) {
        zzpwVar.getClass();
        this.zzaf = zzpwVar;
        this.zzd |= 8192;
    }

    public final /* synthetic */ void zzp(zzus zzusVar) {
        zzusVar.getClass();
        this.zzas = zzusVar;
        this.zzd |= 33554432;
    }

    @Override // com.google.android.gms.internal.cast.zzyd
    public final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzay);
        }
        if (i2 == 2) {
            return zzyd.zzH(zzaz, "\u0001H\u0000\u0002\u0001HH\u0000\t\u0001\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဈ\u000e\nဉ\b\u000bဉ\t\fဉ\n\rဈ\u000b\u000eဉ\f\u000fဉ\r\u0010ဉ\u0011\u0011ဈ\u0012\u0012\u0016\u0013\u001b\u0014\u001b\u0015\u001b\u0016\u001b\u0017᠌\u0014\u0018ဉ\u0018\u0019\u001b\u001aဉ\u0019\u001b᠌\u001b\u001cင\u001c\u001dင\u001d\u001eင\u001e\u001fဆ\u001f ဉ !ဉ!\"ဉ##᠌\u0015$ဉ\u0016%ᐉ$&ဉ%'ဉ&(\u001b)᠌(*ဉ)+\u001b,᠌\u001a-ဇ*.ဇ+/᠌,0ဉ-1င\u00172ဉ.3ဉ/4ဉ15ဉ26ဉ37᠌48᠌59᠌6:\u001b;ဈ\u000f<ဉ7=ဉ0>ဉ\u0013?ဉ\"@င\u0010Aဉ8Bဉ'Cဉ9Dဉ:Eဉ;Fဉ<Gဉ=Hဉ>", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", zzow.zza(), "zzh", "zzi", "zzj", "zzk", "zzl", "zzs", "zzm", "zzn", "zzo", "zzp", "zzq", "zzr", "zzv", "zzw", "zzx", "zzy", zzsl.class, "zzz", zzsp.class, "zzA", zzrl.class, "zzB", zzuo.class, "zzD", zzog.zza(), "zzH", "zzI", zzrp.class, "zzJ", "zzL", zzmu.zza(), "zzM", "zzN", "zzO", "zzP", "zzQ", "zzR", "zzT", "zzE", zzoc.zza(), "zzF", "zzU", "zzV", "zzW", "zzX", zzqc.class, "zzZ", zzoe.zza(), "zzaa", "zzab", zzqi.class, "zzK", zzms.zza(), "zzac", "zzad", "zzae", zzmo.zza(), "zzaf", "zzG", "zzag", "zzah", "zzaj", "zzak", "zzal", "zzam", zzlu.zza(), "zzan", zzno.zza(), "zzao", zzls.zza(), "zzap", zzve.class, "zzt", "zzaq", "zzai", "zzC", "zzS", "zzu", "zzar", "zzY", "zzas", "zzat", "zzau", "zzav", "zzaw", "zzax"});
        }
        if (i2 == 3) {
            return new zzqr();
        }
        byte[] bArr = null;
        if (i2 == 4) {
            return new zzqq(bArr);
        }
        if (i2 == 5) {
            return zzaz;
        }
        this.zzay = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
