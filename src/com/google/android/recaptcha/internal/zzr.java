package com.google.android.recaptcha.internal;

import java.util.Optional;

/* JADX INFO: loaded from: classes5.dex */
public final class zzr {
    public static zzar zza(final long j) {
        return zzar.zzf(new zzaj() { // from class: com.google.android.recaptcha.internal.zzq
            @Override // java.util.function.Function
            public final /* synthetic */ Object apply(Object obj) {
                try {
                    ((zzam) obj).zzb.zzb(zzar.zzb(j));
                    return Optional.empty();
                } catch (zzah unused) {
                    return Optional.of(zzc.zza);
                }
            }
        });
    }

    public static int zzb(long j, zzaq zzaqVar, boolean z) {
        long[] jArr = {1527337001, 959997459, 671305984, 289023511, 8866124, 1524543404, 741858923, 1040759385, 213594814};
        long j2 = jArr[0];
        long j3 = jArr[1];
        long j4 = jArr[2];
        long j5 = jArr[3];
        long j6 = jArr[4];
        long j7 = jArr[5];
        long j8 = jArr[6];
        long j9 = jArr[7];
        long j10 = j8 + (((((~j2) & j3) | j4) + ((j2 & j5) | j6)) - j7);
        long j11 = j9 % 213594814;
        int i = ((((~1541787377) & 807501876) | 1768652572) + ((1541787377 & 470070696) | 1817148893)) - (-800639608);
        int i2 = 1593740418 % 411266131;
        int i3 = ((((~1273207249) & 809581705) | 523346986) + ((1273207249 & 1750604005) | 1270571892)) - 2083282137;
        int i4 = 1121147484 % 869439259;
        int i5 = ((((~1075669741) & 33686543) | 912538465) + ((1075669741 & 272507934) | 477952880)) - 1375986347;
        int i6 = 589306240 % 82095572;
        long j12 = z ? (j >> ((((((~955701520) & 1711343908) | 956198928) + ((955701520 & 1191258916) | 557348419)) - (-2009249340)) ^ (956774406 % 554472058))) ^ (j + j) : j;
        int i7 = 1;
        while (true) {
            long j13 = j10 ^ j11;
            long j14 = j12 >>> (i3 ^ i4);
            boolean z2 = j14 != 0 || i7 < 0;
            int i8 = (int) (j12 & j13);
            if (z2) {
                int i9 = i ^ i2;
                i8 = ((i8 | (i5 ^ i6)) << i9) >> i9;
            }
            zzaqVar.zza((byte) i8);
            if (!z2) {
                return i7;
            }
            i7++;
            j12 = j14;
        }
    }
}
