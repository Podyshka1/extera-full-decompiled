package me.vkryl.core.reference;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public interface ReferenceCreator<T> {
    default Reference<T> newReference(T t) {
        return new WeakReference(t);
    }
}
