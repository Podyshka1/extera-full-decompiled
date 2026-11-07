package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzaed implements zzahe {
    private static final zzafh zza;

    static {
        zzafh zzafhVar = zzafh.zza;
        int i = zzaef.$r8$clinit;
        zza = zzafh.zza;
    }

    public abstract zzagx zza(byte[] bArr, int i, int i2, zzafh zzafhVar);

    @Override // com.google.android.recaptcha.internal.zzahe
    public final /* synthetic */ Object zzb(byte[] bArr) throws zzagk {
        zzagx zzagxVarZza = zza(bArr, 0, bArr.length, zza);
        if (zzagxVarZza == null || zzagxVarZza.zzab()) {
            return zzagxVarZza;
        }
        throw new zzahy((zzaec) zzagxVarZza).zza();
    }
}
