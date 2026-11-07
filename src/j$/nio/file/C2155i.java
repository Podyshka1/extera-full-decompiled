package j$.nio.file;

import j$.adapter.AbstractC2101b;
import j$.nio.file.spi.AbstractC2169d;
import java.security.PrivilegedAction;

/* JADX INFO: renamed from: j$.nio.file.i */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2155i implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public final Object run() {
        AbstractC2169d abstractC2169d = AbstractC2101b.f436a;
        String property = System.getProperty("java.nio.file.spi.DefaultFileSystemProvider");
        if (property != null) {
            for (String str : property.split(",")) {
                try {
                    abstractC2169d = (AbstractC2169d) Class.forName(str, true, ClassLoader.getSystemClassLoader()).getDeclaredConstructor(AbstractC2169d.class).newInstance(abstractC2169d);
                    if (!abstractC2169d.mo557l().equals("file")) {
                        throw new Error("Default provider must use scheme 'file'");
                    }
                } catch (Exception e) {
                    throw new Error(e);
                }
            }
        }
        return abstractC2169d;
    }
}
