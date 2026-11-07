package com.google.android.gms.internal.mlkit_genai_prompt;

import android.graphics.Bitmap;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhs {
    public static zzhs zzi(int i, Bitmap bitmap) {
        return new zzhd(0, null, bitmap, null, null, null, null, 1);
    }

    public static zzhs zzj(int i, String str) {
        return new zzhd(i, str, null, null, null, null, null, 0);
    }

    public abstract int zza();

    public abstract String zzb();

    public abstract Bitmap zzc();

    public abstract Uri zzd();

    public abstract Uri zze();

    public abstract zzhq zzf();

    public abstract zzhr zzg();

    public abstract int zzh();
}
