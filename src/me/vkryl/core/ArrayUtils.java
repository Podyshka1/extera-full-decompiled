package me.vkryl.core;

import java.util.ArrayList;
import java.util.Collections;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ArrayUtils {
    public static <T extends Comparable<T>> boolean removeSorted(ArrayList<T> arrayList, T t) {
        int iBinarySearch = Collections.binarySearch(arrayList, t);
        if (iBinarySearch < 0) {
            return false;
        }
        arrayList.remove(iBinarySearch);
        return true;
    }

    public static <T extends Comparable<T>> int addSorted(ArrayList<T> arrayList, T t) {
        int iBinarySearch = Collections.binarySearch(arrayList, t);
        if (iBinarySearch >= 0) {
            f$$ExternalSyntheticBUOutline1.m212m("Element already exists in list");
            return 0;
        }
        int i = (-iBinarySearch) - 1;
        arrayList.add(i, t);
        return i;
    }
}
