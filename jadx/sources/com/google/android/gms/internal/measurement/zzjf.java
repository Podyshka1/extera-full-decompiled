package com.google.android.gms.internal.measurement;

import android.content.ContentResolver;
import android.net.Uri;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzjf {
    private static final zzjh zza;

    static {
        Uri uri = zzjg.zza;
        zza = zzji.zzb();
    }

    public static String zza(ContentResolver contentResolver, String str, String str2) {
        return zza.zza(contentResolver, str, null);
    }
}
