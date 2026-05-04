package com.google.android.gms.internal.cast;

import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
public final class zzno extends zztp implements zzuy {
    private static final zzno zzb;
    private zzqh zzD;
    private int zzE;
    private int zzF;
    private zzok zzG;
    private int zzH;
    private zznm zzI;
    private zzok zzK;
    private int zzL;
    private int zzM;
    private int zzN;
    private int zzO;
    private int zzP;
    private int zzQ;
    private zzqv zzR;
    private zzng zzS;
    private zznu zzT;
    private zzmv zzU;
    private zzph zzV;
    private zzqf zzW;
    private zzpl zzX;
    private int zzZ;
    private zzpt zzaa;
    private boolean zzac;
    private boolean zzad;
    private int zzae;
    private zzmy zzaf;
    private zzqb zzag;
    private zzpb zzah;
    private zzoc zzai;
    private zzpr zzaj;
    private zzqn zzak;
    private zzoe zzal;
    private int zzam;
    private int zzan;
    private int zzao;
    private zzrc zzaq;
    private int zzd;
    private int zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private zzox zzi;
    private zzpz zzj;
    private zzov zzk;
    private zzoq zzl;
    private zznk zzm;
    private zzpx zzn;
    private zznc zzo;
    private zzqt zzp;
    private zzoo zzr;
    private zzgu zzs;
    private int zzv;
    private zzpp zzw;
    private byte zzar = 2;
    private String zzq = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzt = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzu = _UrlKt.FRAGMENT_ENCODE_SET;
    private String zzx = _UrlKt.FRAGMENT_ENCODE_SET;
    private zztu zzy = zztp.zzy();
    private zztx zzz = zztp.zzA();
    private zztx zzA = zztp.zzA();
    private zztx zzB = zztp.zzA();
    private zztx zzC = zztp.zzA();
    private zztx zzJ = zztp.zzA();
    private zztx zzY = zztp.zzA();
    private zztx zzab = zztp.zzA();
    private zztx zzap = zztp.zzA();

    static {
        zzno zznoVar = new zzno();
        zzb = zznoVar;
        zztp.zzH(zzno.class, zznoVar);
    }

    private zzno() {
    }

    public static zznn zzc() {
        return (zznn) zzb.zzv();
    }

    public static zznn zzd(zzno zznoVar) {
        zztm zztmVarZzv = zzb.zzv();
        zztmVarZzv.zzp(zznoVar);
        return (zznn) zztmVarZzv;
    }

    static /* synthetic */ void zzf(zzno zznoVar, int i) {
        zznoVar.zzd |= Integer.MIN_VALUE;
        zznoVar.zzQ = i;
    }

    static /* synthetic */ void zzg(zzno zznoVar, zzng zzngVar) {
        zzngVar.getClass();
        zznoVar.zzS = zzngVar;
        zznoVar.zze |= 2;
    }

    static /* synthetic */ void zzh(zzno zznoVar, zznu zznuVar) {
        zznuVar.getClass();
        zznoVar.zzT = zznuVar;
        zznoVar.zze |= 4;
    }

    static /* synthetic */ void zzi(zzno zznoVar, zzne zzneVar) {
        zzneVar.getClass();
        zztx zztxVar = zznoVar.zzY;
        if (!zztxVar.zzc()) {
            zznoVar.zzY = zztp.zzB(zztxVar);
        }
        zznoVar.zzY.add(zzneVar);
    }

    static /* synthetic */ void zzj(zzno zznoVar, zzmy zzmyVar) {
        zzmyVar.getClass();
        zznoVar.zzaf = zzmyVar;
        zznoVar.zze |= 4096;
    }

    static /* synthetic */ void zzk(zzno zznoVar, long j) {
        zznoVar.zzd |= 2;
        zznoVar.zzg = j;
    }

    static /* synthetic */ void zzl(zzno zznoVar, String str) {
        zznoVar.zzd |= 2048;
        zznoVar.zzq = str;
    }

    static /* synthetic */ void zzm(zzno zznoVar, String str) {
        str.getClass();
        zznoVar.zzd |= 16384;
        zznoVar.zzt = str;
    }

    static /* synthetic */ void zzn(zzno zznoVar, String str) {
        str.getClass();
        zznoVar.zzd |= 32768;
        zznoVar.zzu = str;
    }

    static /* synthetic */ void zzo(zzno zznoVar, int i) {
        zznoVar.zzd |= 65536;
        zznoVar.zzv = i;
    }

    static /* synthetic */ void zzp(zzno zznoVar, String str) {
        zznoVar.zzd |= 262144;
        zznoVar.zzx = str;
    }

    public final zzng zza() {
        zzng zzngVar = this.zzS;
        return zzngVar == null ? zzng.zze() : zzngVar;
    }

    @Override // com.google.android.gms.internal.cast.zztp
    protected final Object zzb(int i, Object obj, Object obj2) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzar);
        }
        if (i2 == 2) {
            return zztp.zzE(zzb, "\u0001@\u0000\u0002\u0001@@\u0000\t\u0001\u0001ဂ\u0000\u0002ဂ\u0001\u0003᠌\u0002\u0004ဉ\u0003\u0005ဉ\u0004\u0006ဉ\u0005\u0007ဉ\u0006\bဉ\u0007\tဈ\u000e\nဉ\b\u000bဉ\t\fဉ\n\rဈ\u000b\u000eဉ\f\u000fဉ\r\u0010ဉ\u0011\u0011ဈ\u0012\u0012\u0016\u0013\u001b\u0014\u001b\u0015\u001b\u0016\u001b\u0017᠌\u0014\u0018ဉ\u0018\u0019\u001b\u001aဉ\u0019\u001b᠌\u001b\u001cင\u001c\u001dင\u001d\u001eင\u001e\u001fဆ\u001f ဉ !ဉ!\"ဉ##᠌\u0015$ဉ\u0016%ᐉ$&ဉ%'ဉ&(\u001b)᠌'*ဉ(+\u001b,᠌\u001a-ဇ).ဇ*/᠌+0ဉ,1င\u00172ဉ-3ဉ.4ဉ05ဉ16ဉ27᠌38᠌49᠌5:\u001b;ဈ\u000f<ဉ6=ဉ/>ဉ\u0013?ဉ\"@င\u0010", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zzln.zza(), "zzi", "zzj", "zzk", "zzl", "zzm", "zzt", "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzw", "zzx", "zzy", "zzz", zzoz.class, "zzA", zzpd.class, "zzB", zzog.class, "zzC", zzqj.class, "zzE", zzky.zza(), "zzI", "zzJ", zzok.class, "zzK", "zzM", zzjf.zza(), "zzN", "zzO", "zzP", "zzQ", "zzR", "zzS", "zzU", "zzF", zzks.zza(), "zzG", "zzV", "zzW", "zzX", "zzY", zzne.class, "zzZ", zzkv.zza(), "zzaa", "zzab", zzni.class, "zzL", zzjc.zza(), "zzac", "zzad", "zzae", zziw.zza(), "zzaf", "zzH", "zzag", "zzah", "zzaj", "zzak", "zzal", "zzam", zzhs.zza(), "zzan", zzjx.zza(), "zzao", zzhp.zza(), "zzap", zzqp.class, "zzu", "zzaq", "zzai", "zzD", "zzT", "zzv"});
        }
        if (i2 == 3) {
            return new zzno();
        }
        zzms zzmsVar = null;
        if (i2 == 4) {
            return new zznn(zzmsVar);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzar = obj == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
