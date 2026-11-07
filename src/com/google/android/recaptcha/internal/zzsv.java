package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzsv implements zzsc {
    @Override // com.google.android.recaptcha.internal.zzsc
    public final Object zzb(Class cls) {
        if (cls.equals(zzsq.class)) {
            return cls.cast(zzsx.zza);
        }
        if (!cls.equals(zzvz.class) || zztc.zza.zza()) {
            return null;
        }
        return cls.cast(new zzsu(this));
    }
}
