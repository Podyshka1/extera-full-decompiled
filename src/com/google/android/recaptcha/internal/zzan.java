package com.google.android.recaptcha.internal;

import java.util.Comparator;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public final class zzan implements Comparator {
    private final boolean zza;

    public zzan(boolean z) {
        this.zza = z;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparator comparatorZza;
        Object objZzn;
        Object objZzn2;
        int[] iArr = {1238241306, 1544407528, 274970277, -295806647, -1552805835, 183382075, 57564258, 871328242, 247849492};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        int i10 = i8 % 247849492;
        zzar zzarVar = (zzar) obj;
        zzar zzarVar2 = (zzar) obj2;
        int i11 = zzarVar.zza;
        if (i11 != zzarVar2.zza) {
            Segment$$ExternalSyntheticBUOutline0.m924m();
            return 0;
        }
        int i12 = i10 ^ i9;
        try {
            if (i11 == 0) {
                throw null;
            }
            switch (i11 + i12) {
                case 0:
                    return 0;
                case 1:
                    if (this.zza) {
                        return zzarVar.zzl() != zzarVar2.zzl() ? 1 : 0;
                    }
                    throw new IllegalArgumentException();
                case 2:
                    return Long.compare(zzarVar.zzm(), zzarVar2.zzm());
                case 3:
                    comparatorZza = zzv.zzc;
                    objZzn = zzarVar.zzn();
                    objZzn2 = zzarVar2.zzn();
                    break;
                case 4:
                    objZzn = zzarVar.zzo();
                    objZzn2 = zzarVar2.zzo();
                    comparatorZza = zzpl.zza(this);
                    break;
                case 5:
                    if (this.zza) {
                        return zzarVar.zzp() != zzarVar2.zzp() ? 1 : 0;
                    }
                    throw new IllegalArgumentException();
                case 6:
                    return Double.compare(zzarVar.zzq(), zzarVar2.zzq());
                default:
                    return 0;
            }
            return comparatorZza.compare(objZzn, objZzn2);
        } catch (zzao e) {
            throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
        }
    }
}
