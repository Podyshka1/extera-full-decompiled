package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
final class zzh {
    private Long zzA;
    private long zzB;
    private String zzC;
    private int zzD;
    private int zzE;
    private long zzF;
    private String zzG;
    private byte[] zzH;
    private int zzI;
    private long zzJ;
    private long zzK;
    private long zzL;
    private long zzM;
    private long zzN;
    private long zzO;
    private String zzP;
    private boolean zzQ;
    private long zzR;
    private long zzS;
    private final zzic zza;
    private final String zzb;
    private String zzc;
    private String zzd;
    private String zze;
    private String zzf;
    private long zzg;
    private long zzh;
    private long zzi;
    private String zzj;
    private long zzk;
    private String zzl;
    private long zzm;
    private long zzn;
    private boolean zzo;
    private boolean zzp;
    private Boolean zzq;
    private long zzr;
    private List zzs;
    private String zzt;
    private boolean zzu;
    private long zzv;
    private long zzw;
    private int zzx;
    private boolean zzy;
    private Long zzz;

    zzh(zzic zzicVar, String str) {
        Preconditions.checkNotNull(zzicVar);
        Preconditions.checkNotEmpty(str);
        this.zza = zzicVar;
        this.zzb = str;
        zzicVar.zzaW().zzg();
    }

    public final void zzA(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzn != j;
        this.zzn = j;
    }

    public final long zzB() {
        this.zza.zzaW().zzg();
        return this.zzr;
    }

    public final void zzC(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzr != j;
        this.zzr = j;
    }

    public final boolean zzD() {
        this.zza.zzaW().zzg();
        return this.zzo;
    }

    public final void zzE(boolean z) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzo != z;
        this.zzo = z;
    }

    public final void zzF(long j) {
        Preconditions.checkArgument(j >= 0);
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzg != j;
        this.zzg = j;
    }

    public final long zzG() {
        this.zza.zzaW().zzg();
        return this.zzg;
    }

    public final long zzH() {
        this.zza.zzaW().zzg();
        return this.zzR;
    }

    public final void zzI(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzR != j;
        this.zzR = j;
    }

    public final long zzJ() {
        this.zza.zzaW().zzg();
        return this.zzS;
    }

    public final void zzK(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzS != j;
        this.zzS = j;
    }

    public final void zzL() {
        zzic zzicVar = this.zza;
        zzicVar.zzaW().zzg();
        long j = this.zzg + 1;
        if (j > 2147483647L) {
            zzicVar.zzaV().zze().zzb("Bundle index overflow. appId", zzgu.zzl(this.zzb));
            j = 0;
        }
        this.zzQ = true;
        this.zzg = j;
    }

    public final void zzM(long j) {
        zzic zzicVar = this.zza;
        zzicVar.zzaW().zzg();
        long j2 = this.zzg + j;
        if (j2 > 2147483647L) {
            zzicVar.zzaV().zze().zzb("Bundle index overflow. appId", zzgu.zzl(this.zzb));
            j2 = (-1) + j;
        }
        long j3 = this.zzF + 1;
        if (j3 > 2147483647L) {
            zzicVar.zzaV().zze().zzb("Delivery index overflow. appId", zzgu.zzl(this.zzb));
            j3 = 0;
        }
        this.zzQ = true;
        this.zzg = j2;
        this.zzF = j3;
    }

    public final long zzN() {
        this.zza.zzaW().zzg();
        return this.zzJ;
    }

    public final void zzO(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzJ != j;
        this.zzJ = j;
    }

    public final long zzP() {
        this.zza.zzaW().zzg();
        return this.zzK;
    }

    public final void zzQ(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzK != j;
        this.zzK = j;
    }

    public final long zzR() {
        this.zza.zzaW().zzg();
        return this.zzL;
    }

    public final void zzS(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzL != j;
        this.zzL = j;
    }

    public final long zzT() {
        this.zza.zzaW().zzg();
        return this.zzM;
    }

    public final void zzU(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzM != j;
        this.zzM = j;
    }

    public final long zzV() {
        this.zza.zzaW().zzg();
        return this.zzO;
    }

    public final void zzW(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzO != j;
        this.zzO = j;
    }

    public final long zzX() {
        this.zza.zzaW().zzg();
        return this.zzN;
    }

    public final void zzY(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzN != j;
        this.zzN = j;
    }

    public final String zzZ() {
        this.zza.zzaW().zzg();
        return this.zzP;
    }

    public final boolean zza() {
        this.zza.zzaW().zzg();
        return this.zzQ;
    }

    public final int zzaA() {
        this.zza.zzaW().zzg();
        return this.zzD;
    }

    public final void zzaB(int i) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzD != i;
        this.zzD = i;
    }

    public final int zzaC() {
        this.zza.zzaW().zzg();
        return this.zzE;
    }

    public final void zzaD(int i) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzE != i;
        this.zzE = i;
    }

    public final void zzaE(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzF != j;
        this.zzF = j;
    }

    public final long zzaF() {
        this.zza.zzaW().zzg();
        return this.zzF;
    }

    public final void zzaG(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzG != str;
        this.zzG = str;
    }

    public final String zzaH() {
        this.zza.zzaW().zzg();
        return this.zzG;
    }

    public final void zzaI(byte[] bArr) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzH != bArr;
        this.zzH = bArr;
    }

    public final byte[] zzaJ() {
        this.zza.zzaW().zzg();
        return this.zzH;
    }

    public final void zzaK(int i) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzI != i;
        this.zzI = i;
    }

    public final int zzaL() {
        this.zza.zzaW().zzg();
        return this.zzI;
    }

    public final String zzaa() {
        this.zza.zzaW().zzg();
        String str = this.zzP;
        zzab(null);
        return str;
    }

    public final void zzab(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzP, str);
        this.zzP = str;
    }

    public final boolean zzac() {
        this.zza.zzaW().zzg();
        return this.zzp;
    }

    public final void zzad(boolean z) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzp != z;
        this.zzp = z;
    }

    public final Boolean zzae() {
        this.zza.zzaW().zzg();
        return this.zzq;
    }

    public final void zzaf(Boolean bool) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzq, bool);
        this.zzq = bool;
    }

    public final List zzag() {
        this.zza.zzaW().zzg();
        return this.zzs;
    }

    public final void zzah(List list) {
        this.zza.zzaW().zzg();
        if (Objects.equals(this.zzs, list)) {
            return;
        }
        this.zzQ = true;
        this.zzs = list != null ? new ArrayList(list) : null;
    }

    public final boolean zzai() {
        this.zza.zzaW().zzg();
        return this.zzu;
    }

    public final void zzaj(boolean z) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzu != z;
        this.zzu = z;
    }

    public final long zzak() {
        this.zza.zzaW().zzg();
        return this.zzv;
    }

    public final void zzal(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzv != j;
        this.zzv = j;
    }

    public final long zzam() {
        this.zza.zzaW().zzg();
        return this.zzw;
    }

    public final void zzan(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzw != j;
        this.zzw = j;
    }

    public final int zzao() {
        this.zza.zzaW().zzg();
        return this.zzx;
    }

    public final void zzap(int i) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzx != i;
        this.zzx = i;
    }

    public final boolean zzaq() {
        this.zza.zzaW().zzg();
        return this.zzy;
    }

    public final void zzar(boolean z) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzy != z;
        this.zzy = z;
    }

    public final Long zzas() {
        this.zza.zzaW().zzg();
        return this.zzz;
    }

    public final void zzat(Long l) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzz, l);
        this.zzz = l;
    }

    public final Long zzau() {
        this.zza.zzaW().zzg();
        return this.zzA;
    }

    public final void zzav(Long l) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzA, l);
        this.zzA = l;
    }

    public final long zzaw() {
        this.zza.zzaW().zzg();
        return this.zzB;
    }

    public final void zzax(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzB != j;
        this.zzB = j;
    }

    public final String zzay() {
        this.zza.zzaW().zzg();
        return this.zzC;
    }

    public final void zzaz(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzC != str;
        this.zzC = str;
    }

    public final void zzb() {
        this.zza.zzaW().zzg();
        this.zzQ = false;
    }

    public final String zzc() {
        this.zza.zzaW().zzg();
        return this.zzb;
    }

    public final String zzd() {
        this.zza.zzaW().zzg();
        return this.zzc;
    }

    public final void zze(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzc, str);
        this.zzc = str;
    }

    public final String zzf() {
        this.zza.zzaW().zzg();
        return this.zzd;
    }

    public final void zzg(String str) {
        this.zza.zzaW().zzg();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.zzQ |= true ^ Objects.equals(this.zzd, str);
        this.zzd = str;
    }

    public final String zzh() {
        this.zza.zzaW().zzg();
        return this.zzt;
    }

    public final void zzi(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzt, str);
        this.zzt = str;
    }

    public final String zzj() {
        this.zza.zzaW().zzg();
        return this.zze;
    }

    public final void zzk(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zze, str);
        this.zze = str;
    }

    public final String zzl() {
        this.zza.zzaW().zzg();
        return this.zzf;
    }

    public final void zzm(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzf, str);
        this.zzf = str;
    }

    public final long zzn() {
        this.zza.zzaW().zzg();
        return this.zzh;
    }

    public final void zzo(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzh != j;
        this.zzh = j;
    }

    public final long zzp() {
        this.zza.zzaW().zzg();
        return this.zzi;
    }

    public final void zzq(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzi != j;
        this.zzi = j;
    }

    public final String zzr() {
        this.zza.zzaW().zzg();
        return this.zzj;
    }

    public final void zzs(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzj, str);
        this.zzj = str;
    }

    public final long zzt() {
        this.zza.zzaW().zzg();
        return this.zzk;
    }

    public final void zzu(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzk != j;
        this.zzk = j;
    }

    public final String zzv() {
        this.zza.zzaW().zzg();
        return this.zzl;
    }

    public final void zzw(String str) {
        this.zza.zzaW().zzg();
        this.zzQ |= !Objects.equals(this.zzl, str);
        this.zzl = str;
    }

    public final long zzx() {
        this.zza.zzaW().zzg();
        return this.zzm;
    }

    public final void zzy(long j) {
        this.zza.zzaW().zzg();
        this.zzQ |= this.zzm != j;
        this.zzm = j;
    }

    public final long zzz() {
        this.zza.zzaW().zzg();
        return this.zzn;
    }
}
