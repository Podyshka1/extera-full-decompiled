package me.vkryl.core.reference;

import java.lang.ref.Reference;
import java.util.List;
import okio.Segment$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ReferenceUtils {
    public static <T> boolean removeReference(List<Reference<T>> list, T t) {
        for (int size = list.size() - 1; size >= 0; size--) {
            T t2 = list.get(size).get();
            if (t2 == null || t2 == t) {
                list.remove(size);
                return true;
            }
        }
        return false;
    }

    public static <T> boolean addReference(ReferenceCreator<T> referenceCreator, List<Reference<T>> list, T t) {
        boolean z = false;
        for (int size = list.size() - 1; size >= 0; size--) {
            Reference<T> reference = list.get(size);
            T t2 = reference != null ? reference.get() : null;
            if (t2 == null) {
                list.remove(size);
            } else if (t2 == t) {
                z = true;
            }
        }
        if (!z) {
            Reference<T> referenceNewReference = referenceCreator.newReference(t);
            if (referenceNewReference == null) {
                Segment$$ExternalSyntheticBUOutline0.m972m();
            } else {
                list.add(referenceNewReference);
                return true;
            }
        }
        return false;
    }

    public static <T> void gcReferenceList(List<Reference<T>> list) {
        if (list != null) {
            for (int size = list.size() - 2; size >= 0; size--) {
                if (list.get(size).get() == null) {
                    list.remove(size);
                }
            }
        }
    }
}
