package p022j$.util;

import java.security.PrivilegedAction;

/* JADX INFO: renamed from: j$.util.s0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2310s0 implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1092a;

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.f1092a) {
            case 0:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
            case 1:
                return Boolean.valueOf(Boolean.getBoolean("java.util.secureRandomSeed"));
            default:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    }
}
