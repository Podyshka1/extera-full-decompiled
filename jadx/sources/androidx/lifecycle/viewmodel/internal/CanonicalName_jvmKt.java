package androidx.lifecycle.viewmodel.internal;

import kotlin.reflect.KClass;

/* JADX INFO: loaded from: classes.dex */
public abstract class CanonicalName_jvmKt {
    public static final String getCanonicalName(KClass kClass) {
        if (kClass != null) {
            return kClass.getQualifiedName();
        }
        return null;
    }
}
