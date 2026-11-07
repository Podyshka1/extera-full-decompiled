package j$.nio.file;

import j$.adapter.AbstractC2241b;
import j$.nio.file.spi.AbstractC2309d;
import java.security.PrivilegedAction;

/* JADX INFO: renamed from: j$.nio.file.i */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2295i implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public final Object run() {
        AbstractC2309d abstractC2309d = AbstractC2241b.f437a;
        String property = System.getProperty("java.nio.file.spi.DefaultFileSystemProvider");
        if (property != null) {
            for (String str : property.split(",")) {
                try {
                    abstractC2309d = (AbstractC2309d) Class.forName(str, true, ClassLoader.getSystemClassLoader()).getDeclaredConstructor(AbstractC2309d.class).newInstance(abstractC2309d);
                    if (!abstractC2309d.mo581l().equals("file")) {
                        throw new Error("Default provider must use scheme 'file'");
                    }
                } catch (Exception e) {
                    throw new Error(e);
                }
            }
        }
        return abstractC2309d;
    }
}
