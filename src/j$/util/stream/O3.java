package j$.util.stream;

import java.security.AccessController;

/* JADX INFO: loaded from: classes2.dex */
public abstract class O3 {

    /* JADX INFO: renamed from: a */
    public static final boolean f978a = ((Boolean) AccessController.doPrivileged(new j$.util.s0(2))).booleanValue();

    /* JADX INFO: renamed from: a */
    public static void m816a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
