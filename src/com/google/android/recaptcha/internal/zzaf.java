package com.google.android.recaptcha.internal;

import java.util.ArrayDeque;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class zzaf {
    public final ArrayDeque zza = new ArrayDeque();

    public zzaf(int i) {
    }

    public final void zza(long j, long j2, long j3) throws zzad {
        int[] iArr = {2077486715, 1348529152, 196553492, 1547748370, 218381171, -1556364309, 1117142618, 1713258270, 1573363368};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        int i9 = i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6);
        zzac zzacVar = new zzac(j, j2, j3);
        ArrayDeque arrayDeque = this.zza;
        if (arrayDeque.size() >= ((i8 % 1573363368) ^ i9)) {
            throw new zzad();
        }
        arrayDeque.push(zzacVar);
    }

    public final zzac zzb() {
        return (zzac) Optional.ofNullable((zzac) this.zza.peek()).orElseThrow(zzab.zza);
    }
}
