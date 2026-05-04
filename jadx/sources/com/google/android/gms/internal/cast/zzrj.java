package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class zzrj {
    public static /* synthetic */ boolean zza(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!zzrj$$ExternalSyntheticBackportWithForwarding0.m352m(unsafe, obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
