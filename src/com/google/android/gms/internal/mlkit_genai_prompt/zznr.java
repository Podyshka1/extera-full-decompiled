package com.google.android.gms.internal.mlkit_genai_prompt;

import java.util.Comparator;
import java.util.SortedSet;

/* JADX INFO: loaded from: classes5.dex */
abstract class zznr {
    public static boolean zza(Comparator comparator, Iterable iterable) {
        Comparator comparator2;
        comparator.getClass();
        iterable.getClass();
        if (iterable instanceof SortedSet) {
            comparator2 = ((SortedSet) iterable).comparator();
            if (comparator2 == null) {
                comparator2 = zzmz.zza;
            }
        } else {
            if (!(iterable instanceof zznq)) {
                return false;
            }
            comparator2 = ((zznq) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
