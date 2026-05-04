package com.google.android.recaptcha.internal;

import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzfm implements Iterable {
    private final zzfe zza = zzfe.zza();

    protected zzfm() {
    }

    public final String toString() {
        Iterator it = iterator();
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        boolean z = true;
        while (it.hasNext()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(it.next());
            z = false;
        }
        sb.append(']');
        return sb.toString();
    }
}
