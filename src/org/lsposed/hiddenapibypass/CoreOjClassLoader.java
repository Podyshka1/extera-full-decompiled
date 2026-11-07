package org.lsposed.hiddenapibypass;

import dalvik.system.PathClassLoader;
import okhttp3.internal.url._UrlKt;
import org.lsposed.hiddenapibypass.Helper;

/* JADX INFO: loaded from: classes.dex */
final class CoreOjClassLoader extends PathClassLoader {
    private static String getCoreOjPath() {
        return System.getProperty("java.boot.class.path", _UrlKt.FRAGMENT_ENCODE_SET).split(":", 2)[0];
    }

    public CoreOjClassLoader() {
        super(getCoreOjPath(), null);
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str) {
        if (Object.class.getName().equals(str)) {
            return Object.class;
        }
        try {
            return findClass(str);
        } catch (ClassNotFoundException unused) {
            if (CoreOjClassLoader$$ExternalSyntheticApiModelOutline0.m1001m().getName().equals(str)) {
                return Helper.Executable.class;
            }
            if (CoreOjClassLoader$$ExternalSyntheticApiModelOutline1.m1002m().getName().equals(str)) {
                return Helper.MethodHandle.class;
            }
            if (Class.class.getName().equals(str)) {
                return Helper.Class.class;
            }
            return super.loadClass(str);
        }
    }
}
