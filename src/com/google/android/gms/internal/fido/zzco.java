package com.google.android.gms.internal.fido;

import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzco {
    @CheckForNull
    public static Object zza(@CheckForNull Map.Entry entry) {
        if (entry == null) {
            return null;
        }
        return entry.getKey();
    }
}
