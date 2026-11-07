package j$.nio.file;

import java.io.File;
import java.net.URI;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public interface Path extends Comparable<Path>, Iterable<Path> {
    /* JADX INFO: renamed from: P */
    default p0 mo622P(q0 q0Var, n0... n0VarArr) {
        return mo597q(q0Var, n0VarArr, new o0[0]);
    }

    default boolean endsWith(String str) {
        return mo600y(getFileSystem().getPath(str, new String[0]));
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
        return new C2314x(this);
    }

    Path normalize();

    /* JADX INFO: renamed from: q */
    p0 mo597q(q0 q0Var, n0[] n0VarArr, o0... o0VarArr);

    Path relativize(Path path);

    Path resolve(Path path);

    default Path resolve(String str) {
        return resolve(getFileSystem().getPath(str, new String[0]));
    }

    default Path resolveSibling(String str) {
        return mo601z(getFileSystem().getPath(str, new String[0]));
    }

    boolean startsWith(Path path);

    default boolean startsWith(String str) {
        return startsWith(getFileSystem().getPath(str, new String[0]));
    }

    Path subpath(int i, int i2);

    Path toAbsolutePath();

    default File toFile() {
        if (getFileSystem() == AbstractC2296j.f545a) {
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
    boolean mo600y(Path path);

    /* JADX INFO: renamed from: z */
    default Path mo601z(Path path) {
        path.getClass();
        Path parent = getParent();
        return parent == null ? path : parent.resolve(path);
    }
}
