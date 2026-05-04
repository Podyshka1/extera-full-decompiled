package j$.util;

import java.security.AccessController;

/* JADX INFO: loaded from: classes2.dex */
public abstract class t0 {

    /* JADX INFO: renamed from: a */
    public static final boolean f1299a = ((Boolean) AccessController.doPrivileged(new s0(0))).booleanValue();

    /* JADX INFO: renamed from: a */
    public static void m909a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
