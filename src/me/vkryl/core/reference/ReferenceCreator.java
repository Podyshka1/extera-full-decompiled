package me.vkryl.core.reference;

import java.lang.ref.Reference;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public interface ReferenceCreator {
    Reference newReference(Object obj);

    /* JADX INFO: renamed from: me.vkryl.core.reference.ReferenceCreator$-CC, reason: invalid class name */
    public abstract /* synthetic */ class CC {
        public static Reference $default$newReference(ReferenceCreator referenceCreator, Object obj) {
            return new WeakReference(obj);
        }
    }
}
