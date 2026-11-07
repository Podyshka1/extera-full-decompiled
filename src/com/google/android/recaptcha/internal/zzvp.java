package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzvp {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzvp(Class cls, Class cls2, byte[] bArr) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzvp zzc(zzvo zzvoVar, Class cls, Class cls2) {
        return new zzvn(cls, cls2, zzvoVar);
    }

    public final Class zza() {
        return this.zza;
    }

    public final Class zzb() {
        return this.zzb;
    }
}
