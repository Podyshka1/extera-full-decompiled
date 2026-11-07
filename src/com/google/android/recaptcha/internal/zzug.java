package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
public class zzug implements zzsf {
    final String zza;

    public zzug(String str, Class cls, int i, zzahe zzaheVar) {
        this.zza = str;
    }

    public static zzsm zzb(String str, Class cls, zzahe zzaheVar) {
        return new zzuf(str, cls, zzaheVar);
    }

    public static zzsf zzc(String str, Class cls, int i, zzahe zzaheVar) {
        return new zzug(str, cls, 5, zzaheVar);
    }

    @Override // com.google.android.recaptcha.internal.zzsf
    public final String zza() {
        return this.zza;
    }
}
