package j$.nio.file;

import java.io.File;
import java.net.URI;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public interface Path extends Comparable<Path>, Iterable<Path> {
    /* JADX INFO: renamed from: Q */
    default p0 mo598Q(q0 q0Var, n0... n0VarArr) {
        return mo573q(q0Var, n0VarArr, new o0[0]);
    }

    default boolean endsWith(String str) {
        return mo576y(getFileSystem().getPath(str, new String[0]));
    }

    boolean equals(Object obj);

    Path getFileName();

    FileSystem getFileSystem();

    Path getName(int i);

    int getNameCount();

    Path getParent();

    Path getRoot();

    boolean isAbsolute();

    default Iterator iterator() {
        return new C2174x(this);
    }

    Path normalize();

    /* JADX INFO: renamed from: q */
    p0 mo573q(q0 q0Var, n0[] n0VarArr, o0... o0VarArr);

    Path relativize(Path path);

    Path resolve(Path path);

    default Path resolve(String str) {
        return resolve(getFileSystem().getPath(str, new String[0]));
    }

    default Path resolveSibling(String str) {
        return mo577z(getFileSystem().getPath(str, new String[0]));
    }

    boolean startsWith(Path path);

    default boolean startsWith(String str) {
        return startsWith(getFileSystem().getPath(str, new String[0]));
    }

    Path subpath(int i, int i2);

    Path toAbsolutePath();

    default File toFile() {
        if (getFileSystem() == AbstractC2156j.f544a) {
            return new File(toString());
        }
        throw new UnsupportedOperationException("Path not associated with default file system.");
    }

    Path toRealPath(LinkOption... linkOptionArr);

    String toString();

    URI toUri();

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    int compareTo(Path path);

    /* JADX INFO: renamed from: y */
    boolean mo576y(Path path);

    /* JADX INFO: renamed from: z */
    default Path mo577z(Path path) {
        path.getClass();
        Path parent = getParent();
        return parent == null ? path : parent.resolve(path);
    }
}
