package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zznw implements zznj {
    private final zznm zza;
    private final String zzb;
    private final Object[] zzc;
    private final int zzd;

    zznw(zznm zznmVar, String str, Object[] objArr) {
        this.zza = zznmVar;
        this.zzb = str;
        this.zzc = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.zzd = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char cCharAt2 = str.charAt(i2);
            if (cCharAt2 < 55296) {
                this.zzd = i | (cCharAt2 << i3);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            }
        }
    }

    @Override // com.google.android.gms.internal.measurement.zznj
    public final boolean zza() {
        return (this.zzd & 2) == 2;
    }

    @Override // com.google.android.gms.internal.measurement.zznj
    public final zznm zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.measurement.zznj
    public final int zzc() {
        int i = this.zzd;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }

    final String zzd() {
        return this.zzb;
    }

    final Object[] zze() {
        return this.zzc;
    }
}
