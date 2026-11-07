package j$.nio.file.spi;

import java.security.PrivilegedAction;
import java.util.ArrayList;
import java.util.ServiceLoader;

/* JADX INFO: renamed from: j$.nio.file.spi.a */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2166a implements PrivilegedAction {
    @Override // java.security.PrivilegedAction
    public final Object run() {
        ArrayList arrayList = new ArrayList();
        for (AbstractC2169d abstractC2169d : ServiceLoader.load(AbstractC2169d.class, ClassLoader.getSystemClassLoader())) {
            String strMo557l = abstractC2169d.mo557l();
            if (!strMo557l.equalsIgnoreCase("file")) {
                int size = arrayList.size();
                int i = 0;
                while (true) {
                    if (i >= size) {
                        arrayList.add(abstractC2169d);
                        break;
                    }
                    Object obj = arrayList.get(i);
                    i++;
                    if (((AbstractC2169d) obj).mo557l().equalsIgnoreCase(strMo557l)) {
                        break;
                    }
                }
            }
        }
        return arrayList;
    }
}
