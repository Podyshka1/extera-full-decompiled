package p022j$.util.stream;

import java.security.AccessController;
import p022j$.util.C2310s0;

/* JADX INFO: renamed from: j$.util.stream.O3 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2385O3 {

    /* JADX INFO: renamed from: a */
    public static final boolean f1213a = ((Boolean) AccessController.doPrivileged(new C2310s0(2))).booleanValue();

    /* JADX INFO: renamed from: a */
    public static void m956a(Class cls, String str) {
        throw new UnsupportedOperationException(cls + " tripwire tripped but logging not supported: " + str);
    }
}
