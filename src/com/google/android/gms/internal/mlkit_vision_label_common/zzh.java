package com.google.android.gms.internal.mlkit_vision_label_common;

import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
abstract class zzh {
    private static final Logger zza = Logger.getLogger(zzh.class.getName());
    private static final zzg zzb = new zzg(null);

    public static String zza(@CheckForNull String str) {
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }
}
