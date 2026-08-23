package com.google.android.gms.internal.cast;

import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzge {
    static int zza(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }
}
