package com.google.android.gms.internal.cast;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class zzwz$$ExternalSyntheticBUOutline0 {
    /* JADX INFO: renamed from: m */
    public static /* synthetic */ void m306m(int i, Object obj, Throwable th) {
        StringBuilder sb = new StringBuilder(i);
        sb.append((Object) "Serializing ");
        sb.append(obj);
        sb.append((Object) " to a byte array threw an IOException (should never happen).");
        throw new RuntimeException(sb.toString(), th);
    }
}
