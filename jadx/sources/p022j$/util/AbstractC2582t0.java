package p022j$.util;

import java.security.AccessController;

/* JADX INFO: renamed from: j$.util.t0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2582t0 {

    /* JADX INFO: renamed from: a */
    public static final boolean f1535a = ((Boolean) AccessController.doPrivileged(new C2310s0(0))).booleanValue();

    /* JADX INFO: renamed from: a */
    public static void m1076a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
