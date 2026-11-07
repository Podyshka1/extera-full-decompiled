package com.google.android.gms.internal.mlkit_genai_prompt;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.protobuf.UnsafeUtil$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaws {
    public static zzawl zzb(Class cls) {
        ClassLoader classLoader = zzaws.class.getClassLoader();
        if (cls.equals(zzawl.class)) {
            try {
                try {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Class.forName("com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader", true, classLoader).getConstructor(null).newInstance(null));
                    throw null;
                } catch (ReflectiveOperationException e) {
                    throw new IllegalStateException(e);
                }
            } catch (ClassNotFoundException unused) {
            }
        }
        Iterator it = ServiceLoader.load(zzaws.class, classLoader).iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            try {
                MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                throw null;
            } catch (ServiceConfigurationError e2) {
                Logger.getLogger(zzawf.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e2);
            }
        }
        if (arrayList.size() == 1) {
            return (zzawl) arrayList.get(0);
        }
        if (arrayList.size() == 0) {
            return null;
        }
        try {
            return (zzawl) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
        } catch (ReflectiveOperationException e3) {
            UnsafeUtil$$ExternalSyntheticBUOutline0.m483m(e3);
            return null;
        }
    }
}
