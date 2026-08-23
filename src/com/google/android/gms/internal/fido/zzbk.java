package com.google.android.gms.internal.fido;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbk extends zzbb {
    public static boolean zza(@CheckForNull Object obj, @CheckForNull Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
