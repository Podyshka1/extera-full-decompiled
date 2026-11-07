package j$.nio.file;

import j$.desugar.sun.nio.fs.C2109h;
import j$.nio.file.attribute.PosixFilePermission;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a */
    public static final C2109h f545a;

    /* JADX INFO: renamed from: b */
    public static final C2109h f546b;

    static {
        PosixFilePermission posixFilePermission = PosixFilePermission.OWNER_READ;
        PosixFilePermission posixFilePermission2 = PosixFilePermission.OWNER_WRITE;
        HashSet hashSet = new HashSet(EnumSet.of(posixFilePermission, posixFilePermission2));
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((PosixFilePermission) it.next()).getClass();
        }
        f545a = new C2109h(hashSet, 4);
        HashSet hashSet2 = new HashSet(EnumSet.of(posixFilePermission, posixFilePermission2, PosixFilePermission.OWNER_EXECUTE));
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            ((PosixFilePermission) it2.next()).getClass();
        }
        f546b = new C2109h(hashSet2, 4);
    }
}
