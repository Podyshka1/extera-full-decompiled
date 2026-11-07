package com.google.android.gms.internal.cast;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes4.dex */
public abstract /* synthetic */ class zzwb$zzd$$ExternalSyntheticBackportWithForwarding0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ boolean m311m(Unsafe unsafe, Object obj, long j, Object obj2, Object obj3) {
        while (!unsafe.compareAndSwapObject(obj, j, obj2, obj3)) {
            if (unsafe.getObject(obj, j) != obj2) {
                return false;
            }
        }
        return true;
    }
}
