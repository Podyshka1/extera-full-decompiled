package com.google.android.gms.internal.measurement;

/* JADX INFO: loaded from: classes4.dex */
final class zzkw {
    public int zza;
    public long zzb;
    public Object zzc;
    public final zzlr zzd;
    public int zze;

    static /* synthetic */ String zza(int i, int i2, byte b, String str, String str2) {
        StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + b + String.valueOf(i).length());
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i);
        return sb.toString();
    }

    zzkw(zzlr zzlrVar) {
        zzlrVar.getClass();
        this.zzd = zzlrVar;
    }
}
