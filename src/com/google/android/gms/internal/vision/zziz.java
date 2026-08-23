package com.google.android.gms.internal.vision;

import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import com.google.android.gms.internal.cast.zzaak$$ExternalSyntheticBUOutline0;
import com.google.android.gms.internal.vision.zzio;
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
abstract class zziz<T extends zzio> {
    private static final Logger zza = Logger.getLogger(zzii.class.getName());
    private static String zzb = "com.google.protobuf.BlazeGeneratedExtensionRegistryLiteLoader";

    public static <T extends zzio> T zza(Class<T> cls) {
        String str;
        ClassLoader classLoader = zziz.class.getClassLoader();
        if (cls.equals(zzio.class)) {
            str = zzb;
        } else {
            if (!cls.getPackage().equals(zziz.class.getPackage())) {
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
            Iterator it = ServiceLoader.load(zziz.class, classLoader).iterator();
            ArrayList arrayList = new ArrayList();
            while (it.hasNext()) {
                try {
                    MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it.next());
                    throw null;
                } catch (ServiceConfigurationError e5) {
                    Logger logger = zza;
                    Level level = Level.SEVERE;
                    String simpleName = cls.getSimpleName();
                    logger.logp(level, "com.google.protobuf.GeneratedExtensionRegistryLoader", "load", simpleName.length() != 0 ? "Unable to load ".concat(simpleName) : new String("Unable to load "), (Throwable) e5);
                }
            }
            if (arrayList.size() == 1) {
                return (T) arrayList.get(0);
            }
            if (arrayList.size() == 0) {
                return null;
            }
            try {
                return (T) cls.getMethod("combine", Collection.class).invoke(null, arrayList);
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
