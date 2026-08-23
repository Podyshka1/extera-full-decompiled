package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.internal.cast.zzaak$$ExternalSyntheticBUOutline0;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.logging.Level;
import java.util.logging.Logger;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzhe {
    public static zzgw zzb(Class cls) {
        String str;
        ClassLoader classLoader = zzhe.class.getClassLoader();
        if (cls.equals(zzgw.class)) {
            str = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";
        } else {
            if (!cls.getPackage().equals(zzhe.class.getPackage())) {
                f$$ExternalSyntheticBUOutline1.m178m(cls.getName());
                return null;
            }
            str = String.format("%s.BlazeGenerated%sLoader", cls.getPackage().getName(), cls.getSimpleName());
        }
        try {
            try {
                try {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(Class.forName(str, true, classLoader).getConstructor(null).newInstance(null));
                    throw null;
                } catch (InstantiationException e) {
                    throw new IllegalStateException(e);
                } catch (InvocationTargetException e2) {
                    throw new IllegalStateException(e2);
                }
            } catch (IllegalAccessException e3) {
                throw new IllegalStateException(e3);
            } catch (NoSuchMethodException e4) {
                throw new IllegalStateException(e4);
            }
        } catch (ClassNotFoundException unused) {
            Iterator it = ServiceLoader.load(zzhe.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                } catch (ServiceConfigurationError e5) {
                    Logger.getLogger(zzgr.class.getName()).logp(Level.SEVERE, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", "Unable to load ".concat(cls.getSimpleName()), (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (zzgw) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (zzgw) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
            } catch (IllegalAccessException e6) {
                zzaak$$ExternalSyntheticBUOutline0.m304m(e6);
                return null;
            } catch (NoSuchMethodException e7) {
                zzaak$$ExternalSyntheticBUOutline0.m304m(e7);
                return null;
            } catch (InvocationTargetException e8) {
                zzaak$$ExternalSyntheticBUOutline0.m304m(e8);
                return null;
            }
        }
    }
}
