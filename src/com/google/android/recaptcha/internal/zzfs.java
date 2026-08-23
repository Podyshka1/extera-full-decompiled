package com.google.android.recaptcha.internal;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class zzfs {
    public static boolean zza(Collection collection, Iterator it) {
        it.getClass();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= collection.add(it.next());
        }
        return zAdd;
    }
}
