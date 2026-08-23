package com.google.android.gms.internal.mlkit_vision_common;

import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
abstract class zze {
    private static final Logger zza = Logger.getLogger(zze.class.getName());
    private static final zzd zzb = new zzd(null);

    public static boolean zza(@CheckForNull String str) {
        return str == null || str.isEmpty();
    }
}
