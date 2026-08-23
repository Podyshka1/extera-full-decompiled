package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.cast.zzwb$zzd$$ExternalSyntheticBackportWithForwarding0;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class zzea {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!zzwb$zzd$$ExternalSyntheticBackportWithForwarding0.m305m(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
