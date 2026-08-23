package com.google.android.gms.internal.mlkit_vision_label;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzcb {
    public static int zza(Set set) {
        Iterator it = set.iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            Object next = it.next();
            iHashCode += next != null ? next.hashCode() : 0;
        }
        return iHashCode;
    }

    public static boolean zzc(Set set, Iterator it) {
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= set.remove(it.next());
        }
        return zRemove;
    }

    public static boolean zzb(Set set, Collection collection) {
        collection.getClass();
        if (collection instanceof zzbs) {
            collection = ((zzbs) collection).zza();
        }
        if (!(collection instanceof Set) || collection.size() <= set.size()) {
            return zzc(set, collection.iterator());
        }
        Iterator it = set.iterator();
        boolean z = false;
        while (it.hasNext()) {
            if (collection.contains(it.next())) {
                it.remove();
                z = true;
            }
        }
        return z;
    }
}
