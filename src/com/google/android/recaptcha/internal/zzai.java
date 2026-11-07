package com.google.android.recaptcha.internal;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final class zzai {
    public final ArrayList zza = new ArrayList();
    public int zzb = 0;

    public zzai(int i) {
    }

    public final int zza(long j) throws zzag {
        long j2;
        int[] iArr = {783368690, 2033355106, 1011212548, -1019590554, -1840431076, 450100676, 21082158, 1189641421, 1025202362};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + (((((~i) & i2) | i3) + ((i & i4) | i5)) - i6);
        int i10 = i8 % 1025202362;
        long[] jArr = {572660336, 1946443174, 827031559, -838041696, -1952800191, 225735627, 63423617, 2084420925, 1937477084};
        long j3 = jArr[0];
        long j4 = jArr[1];
        long j5 = jArr[2];
        long j6 = jArr[3];
        long j7 = jArr[4];
        long j8 = jArr[5];
        long j9 = jArr[6];
        long j10 = jArr[7];
        long j11 = j9 + (((((~j3) & j4) | j5) + ((j3 & j6) | j7)) - j8);
        long j12 = j10 % 1937477084;
        if (j >= 0) {
            j2 = ((long) (this.zzb + (i9 ^ i10))) - j;
        } else {
            j2 = (j11 ^ j12) + (-j);
        }
        if (j2 < 0 || j2 >= this.zzb) {
            throw new zzag();
        }
        return (int) j2;
    }

    public final void zzb(zzar zzarVar) throws zzah {
        int[] iArr = {619290071, 707839669, 1439652248, 1857062437, 1153777986, -1073983953, 110861465, 1431419379, 620145550};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        int i10 = this.zzb;
        if (i10 >= ((i8 % 620145550) ^ i9)) {
            throw new zzah();
        }
        ArrayList arrayList = this.zza;
        if (i10 == arrayList.size()) {
            arrayList.add(zzarVar);
        } else {
            arrayList.set(this.zzb, zzarVar);
        }
        this.zzb++;
    }

    public final zzar zzc() throws zzag {
        int[] iArr = {1246322141, 1353851113, 767563284, -47045399, -1353918698, 1098913221, 38700441, 1600766768, 649830540};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        int i10 = i8 % 649830540;
        int i11 = this.zzb;
        if (i11 <= 0) {
            throw new zzag();
        }
        int i12 = i10 ^ i9;
        ArrayList arrayList = this.zza;
        zzar zzarVar = (zzar) arrayList.get(i11 + i12);
        arrayList.set(this.zzb + i12, null);
        this.zzb += i12;
        return zzarVar;
    }

    public final zzar zzd(long j) {
        return (zzar) this.zza.get(zza(j));
    }

    public final void zze(long j, zzar zzarVar) {
        this.zza.set(zza(j), zzarVar);
    }
}
