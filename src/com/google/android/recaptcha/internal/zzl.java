package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class zzl implements zzj {
    private int zza = (((((~461273879) & 174229020) | 446042145) + ((461273879 & (-261061090)) | (-208510846))) - 434046989) ^ (1917305981 % 575705360);
    private final byte[] zzb = new byte[(((((~1967632854) & 1312378678) | 897683697) + ((1967632854 & 2054835974) | 835063985)) - (-1657540593)) ^ (1391927494 % 1051402293)];
    private final zzn zzc;

    public zzl(zzn zznVar) {
        this.zzc = zznVar;
    }

    @Override // com.google.android.recaptcha.internal.zzj
    public final byte zza(zzv zzvVar, int i) {
        int i2 = ((((~1959970879) & 1413655861) | 1940175766) + ((1959970879 & 625104105) | 2040877774)) - (-456070292);
        int i3 = 1544048623 % 665228399;
        int i4 = (((((~523465512) & 646269132) | 193241389) + ((523465512 & 1948338368) | 1538307385)) - (-2007873589)) ^ (1424627019 % 1376108019);
        int i5 = ((((~175821956) & 1754890507) | 1438001845) + ((175821956 & 672108874) | 394690288)) - (-1923654329);
        int i6 = 1178341976 % 1045251304;
        int i7 = i >>> i4;
        if (i7 != this.zza) {
            this.zzc.zza(i7, this.zzb);
            this.zza = i7;
        }
        int i8 = i5 ^ i6;
        return (byte) (((this.zzb[i % (i2 ^ i3)] ^ zzvVar.zzb(i)) << i8) >> i8);
    }

    @Override // com.google.android.recaptcha.internal.zzj
    public final zzv zzb(zzv zzvVar, int i, int i2) {
        if (i < 0 || i > i2 || i2 > zzvVar.zza.length) {
            throw new IndexOutOfBoundsException();
        }
        byte[] bArr = new byte[i2 - i];
        int i3 = 0;
        while (i < i2) {
            bArr[i3] = zza(zzvVar, i);
            i++;
            i3++;
        }
        return zzv.zze(bArr);
    }

    @Override // com.google.android.recaptcha.internal.zzj
    public final /* bridge */ /* synthetic */ zzj zzc() {
        return new zzl(this.zzc);
    }
}
