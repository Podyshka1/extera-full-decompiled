package j$.nio.file.spi;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.ServiceLoader;

/* JADX INFO: renamed from: j$.nio.file.spi.a */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2306a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public final Object run() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC2309d abstractC2309d : ServiceLoader.load(AbstractC2309d.class, ClassLoader.getSystemClassLoader())) {
            String strMo581l = abstractC2309d.mo581l();
            if (!strMo581l.equalsIgnoreCase("file")) {
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        arrayList.add(abstractC2309d);
                        break;
                    }
                    Object obj = arrayList.get(i);
                    i++;
                    if (((AbstractC2309d) obj).mo581l().equalsIgnoreCase(strMo581l)) {
                        break;
                    }
                }
            }
        }
        return arrayList;
    }
}
