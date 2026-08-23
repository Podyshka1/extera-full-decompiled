package org.mvel2.util;

/* JADX INFO: loaded from: classes5.dex */
public class JITClassLoader extends ClassLoader implements MVELClassLoader {
    public JITClassLoader(ClassLoader classLoader) {
        super(classLoader);
    }

    @Override // org.mvel2.util.MVELClassLoader
    public Class<?> defineClassX(String str, byte[] bArr, int i, int i2) {
        return super.defineClass(str, bArr, i, i2);
    }
}
