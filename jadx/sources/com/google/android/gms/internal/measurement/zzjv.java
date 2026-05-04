package com.google.android.gms.internal.measurement;

import android.os.Binder;

/* JADX INFO: loaded from: classes4.dex */
interface zzjv {

    /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzjv$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Object zzh(zzju zzjuVar) {
            try {
                return zzjuVar.zza();
            } catch (SecurityException unused) {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    return zzjuVar.zza();
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
        }
    }

    Object zze(String str);
}
