package com.google.android.recaptcha.internal;

/* JADX INFO: loaded from: classes5.dex */
final class zzaeg {
    public int zza;
    public long zzb;
    public Object zzc;
    public final zzafh zzd;
    public int zze;

    public static /* synthetic */ String zza(int i, int i2, byte b2, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + b2 + String.valueOf(i).length());
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i);
        return sb.toString();
    }

    public zzaeg(zzafh zzafhVar) {
        zzafhVar.getClass();
        this.zzd = zzafhVar;
    }
}
