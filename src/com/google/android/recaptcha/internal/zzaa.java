package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaa {
    public int zza;
    public zzv zzb;
    public zzj zzc;
    public zzm zzd;

    public zzaa(zzm zzmVar) {
        this(zzv.zzb, 0, new zzk());
        this.zzd = zzmVar;
    }

    private zzaa(zzv zzvVar, int i, zzj zzjVar) {
        this.zzb = zzvVar;
        this.zza = i;
        this.zzc = zzjVar;
    }

    public zzaa(zzv zzvVar, int i, zzj zzjVar, zzm zzmVar) {
        this(zzvVar, i, zzjVar);
        this.zzd = zzmVar;
    }

    private final long zzg() throws zzz, zzx {
        int i = ((((~331557302) & 571573523) | 420425807) + ((331557302 & 592744208) | 1374505641)) - (-2021079919);
        int i2 = 397977904 % 305425913;
        int i3 = ((((~1403997111) & 186192065) | 1317897081) + ((1403997111 & 567545984) | 552504370)) - 1817959444;
        int i4 = 810882584 % 74061048;
        int i5 = ((((~217704412) & 144255265) | 1174857682) + ((217704412 & 1788447267) | 1667270218)) - (-1441824145);
        int i6 = 1234644696 % 220282619;
        int i7 = ((((~1632565483) & 1076483137) | 412004146) + ((1632565483 & 1110536289) | 177384740)) - 1619753338;
        int i8 = 1600243658 % 310936585;
        int i9 = ((((~2022337363) & 1106608128) | 27043809) + ((2022337363 & 1080115328) | 638477452)) - 1605484050;
        int i10 = 813592586 % 336728279;
        int i11 = 0;
        long j = 0;
        while (i11 < (i ^ i2)) {
            try {
                zzj zzjVar = this.zzc;
                zzv zzvVar = this.zzb;
                int i12 = i;
                int i13 = this.zza;
                int i14 = i2;
                this.zza = i13 + 1;
                byte bZza = zzjVar.zza(zzvVar, i13);
                int i15 = i5 ^ i6;
                j |= ((long) ((i3 ^ i4) & bZza)) << i11;
                if (i11 == i15) {
                    if (bZza > 1) {
                        throw new zzx();
                    }
                    i11 = i15;
                }
                if ((bZza & (i7 ^ i8)) == 0) {
                    return (j >>> 1) ^ (-(1 & j));
                }
                i11 += i9 ^ i10;
                i = i12;
                i2 = i14;
            } catch (IndexOutOfBoundsException e) {
                throw new zzz(e);
            }
        }
        throw new zzx();
    }

    private static final void zzh(long j) throws zzy {
        long[] jArr = {1239547247, 271084552, 603409185, 805905448, 612732982, 1384275531, 148774773, 1155505365, 905894996};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        if (j % ((jArr[6] + (((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7)) ^ (jArr[7] % 905894996)) != 0) {
            throw new zzy();
        }
    }

    public final void zza(long j) throws zzz, zzy {
        long[] jArr = {1540846267, 571107382, 1484708369, 709108262, 1568035521, 3652851584L, 192048860, 2037335344, 1874960596};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        zzh(j);
        long j10 = j / ((j8 + (((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7)) ^ (j9 % 1874960596));
        if (j10 < 0 || j10 > this.zzb.zza.length) {
            throw new zzz();
        }
        this.zza = (int) j10;
    }

    public final long zzb() {
        long[] jArr = {1714636915, 1758565436, 174653550, 1653642768, 38095596, 2318926016L, 596516649, 1804289383, 846930886};
        long j = jArr[0];
        long j2 = jArr[1];
        long j3 = jArr[2];
        long j4 = jArr[3];
        long j5 = jArr[4];
        long j6 = jArr[5];
        return ((long) this.zza) * ((jArr[6] + (((((~j) & j2) | j3) + ((j & j4) | j5)) - j6)) ^ (jArr[7] % 846930886));
    }

    public final long zzc() throws zzz {
        try {
            zzj zzjVar = this.zzc;
            zzv zzvVar = this.zzb;
            this.zza = this.zza + 1;
            return zzjVar.zza(zzvVar, r2);
        } catch (IndexOutOfBoundsException e) {
            throw new zzz(e);
        }
    }

    public final int zzd() throws zzz {
        int i = ((((~1900553541) & 81494563) | 1076390106) + ((1900553541 & 1156827749) | 1781026244)) - (-1841277372);
        int i2 = 1887658390 % 1402961682;
        int i3 = ((((~2137100237) & 243279587) | 1476690354) + ((2137100237 & 1182836297) | 1215531406)) - (-1785612177);
        int i4 = 1251300606 % 959372260;
        int i5 = ((((~427355115) & 404248060) | 1318670750) + ((427355115 & 874677344) | 1819730563)) - (-1096413178);
        int i6 = 1858504292 % 235745791;
        int i7 = ((((~2143124030) & 85005397) | 430547098) + ((2143124030 & 878451813) | 1894615584)) - (-2031609849);
        int i8 = 1747844822 % 1617876982;
        try {
            zzj zzjVar = this.zzc;
            zzv zzvVar = this.zzb;
            int i9 = this.zza;
            this.zza = i9 + 1;
            int i10 = i ^ i2;
            int iZza = zzjVar.zza(zzvVar, i9) & i10;
            zzj zzjVar2 = this.zzc;
            zzv zzvVar2 = this.zzb;
            int i11 = this.zza;
            this.zza = i11 + 1;
            int iZza2 = iZza | ((zzjVar2.zza(zzvVar2, i11) & i10) << (i3 ^ i4));
            zzj zzjVar3 = this.zzc;
            zzv zzvVar3 = this.zzb;
            int i12 = this.zza;
            this.zza = i12 + 1;
            int iZza3 = iZza2 | ((i10 & zzjVar3.zza(zzvVar3, i12)) << (i5 ^ i6));
            zzj zzjVar4 = this.zzc;
            zzv zzvVar4 = this.zzb;
            int i13 = this.zza;
            this.zza = i13 + 1;
            return (zzjVar4.zza(zzvVar4, i13) << (i7 ^ i8)) | iZza3;
        } catch (IndexOutOfBoundsException e) {
            throw new zzz(e);
        }
    }

    public final long zze() {
        return zzg();
    }

    public final zzv zzf(long j) throws zzz, zzy {
        int[] iArr = {2004270296, 933109376, 745751825, 330111618, 543277087, 1377683891, 125737768, 1632381616, 422449966};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzh(zzb() + j);
        int i10 = this.zza;
        long j2 = i10;
        zzv zzvVar = this.zzb;
        long j3 = (j >> ((i8 % 422449966) ^ i9)) + j2;
        if (j3 > zzvVar.zza.length || j3 < j2) {
            throw new zzz();
        }
        try {
            int i11 = (int) j3;
            zzv zzvVarZzb = this.zzc.zzb(zzvVar, i10, i11);
            this.zza = i11;
            return zzvVarZzb;
        } catch (IndexOutOfBoundsException e) {
            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
        }
    }
}
