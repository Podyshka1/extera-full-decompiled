package j$.nio.file;

import j$.desugar.sun.nio.fs.C2249h;
import j$.nio.file.attribute.PosixFilePermission;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j0 {

    /* JADX INFO: renamed from: a */
    public static final C2249h f546a;

    /* JADX INFO: renamed from: b */
    public static final C2249h f547b;

    static {
        PosixFilePermission posixFilePermission = PosixFilePermission.OWNER_READ;
        PosixFilePermission posixFilePermission2 = PosixFilePermission.OWNER_WRITE;
        HashSet hashSet = new HashSet(EnumSet.of(posixFilePermission, posixFilePermission2));
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ((PosixFilePermission) it.next()).getClass();
        }
        f546a = new C2249h(hashSet, 4);
        HashSet hashSet2 = new HashSet(EnumSet.of(posixFilePermission, posixFilePermission2, PosixFilePermission.OWNER_EXECUTE));
        Iterator it2 = hashSet2.iterator();
        while (it2.hasNext()) {
            ((PosixFilePermission) it2.next()).getClass();
        }
        f547b = new C2249h(hashSet2, 4);
    }
}
