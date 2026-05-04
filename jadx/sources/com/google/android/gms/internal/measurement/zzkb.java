package com.google.android.gms.internal.measurement;

import android.net.Uri;
import androidx.collection.ArrayMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzkb {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final ArrayMap zzb = new ArrayMap();

    public static synchronized Uri zza(String str) {
        ArrayMap arrayMap = zzb;
        Uri uri = (Uri) arrayMap.get("com.google.android.gms.measurement");
        if (uri != null) {
            return uri;
        }
        Uri uri2 = Uri.parse("content://com.google.android.gms.phenotype/".concat(String.valueOf(Uri.encode("com.google.android.gms.measurement"))));
        arrayMap.put("com.google.android.gms.measurement", uri2);
        return uri2;
    }
}
