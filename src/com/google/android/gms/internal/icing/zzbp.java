package com.google.android.gms.internal.icing;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzbp {
    public static <T> T zza(@NullableDecl T t) {
        if (t != null) {
            return t;
        }
        StringBuilder sb = new StringBuilder(29);
        sb.append((CharSequence) "expected a non-null reference", 0, 29);
        throw new zzbq(sb.toString());
    }
}
