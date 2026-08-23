package j$.util;

import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class s0 implements PrivilegedAction {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f857a;

    @Override // java.security.PrivilegedAction
    public final Object run() {
        switch (this.f857a) {
            case 0:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
            case 1:
                return Boolean.valueOf(Boolean.getBoolean("java.util.secureRandomSeed"));
            default:
                return Boolean.valueOf(Boolean.getBoolean("org.openjdk.java.util.stream.tripwire"));
        }
    }
}
