package com.google.android.recaptcha.internal;

import java.util.ArrayDeque;
import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class zzam {
    public final zzh zza;
    public final zzai zzb;
    public final zzaf zzc;
    public final zzaa zzd;

    public zzam(zzh zzhVar, zzai zzaiVar, zzaa zzaaVar) {
        int[] iArr = {574682290, 203330227, 828655681, 488281842, 1367368777, 2113644785, 73912900, 1891066487, 382926234};
        int i = iArr[0];
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = iArr[3];
        int i5 = iArr[4];
        int i6 = iArr[5];
        int i7 = iArr[6];
        int i8 = iArr[7];
        this.zza = zzhVar;
        this.zzb = zzaiVar;
        this.zzd = zzaaVar;
        this.zzc = new zzaf((i7 + ((((i2 & (~i)) | i3) + ((i & i4) | i5)) - i6)) ^ (i8 % 382926234));
    }

    public final Optional zza() {
        zzc zzcVar;
        try {
            try {
                ArrayDeque arrayDeque = this.zzc.zza;
                if (arrayDeque.isEmpty()) {
                    throw new zzae();
                }
                zzac zzacVar = (zzac) arrayDeque.pop();
                long j = zzacVar.zza;
                long j2 = zzacVar.zzb;
                long j3 = zzacVar.zzc;
                zzai zzaiVar = this.zzb;
                if (zzaiVar.zzb < j2) {
                    return Optional.of(zzc.zzG);
                }
                this.zzd.zza(j);
                if (j3 == 0) {
                    while (zzaiVar.zzb > j2) {
                        zzaiVar.zzc();
                    }
                }
                return Optional.empty();
            } catch (zzy | zzz e) {
                throw new AssertionError(zzt.zza("CEiv6BFfPnitUE+D"), e);
            }
        } catch (zzae unused) {
            zzcVar = zzc.zzw;
            return Optional.of(zzcVar);
        } catch (zzag unused2) {
            zzcVar = zzc.zzG;
            return Optional.of(zzcVar);
        }
    }
}
