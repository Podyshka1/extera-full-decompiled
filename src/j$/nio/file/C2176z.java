package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.io.File;
import java.net.URI;
import java.nio.file.WatchEvent;
import java.nio.file.WatchKey;
import java.nio.file.WatchService;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.nio.file.z */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2176z implements java.nio.file.Path {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Path f591a;

    public /* synthetic */ C2176z(Path path) {
        this.f591a = path;
    }

    /* JADX INFO: renamed from: s */
    public static /* synthetic */ java.nio.file.Path m636s(Path path) {
        if (path == null) {
            return null;
        }
        return path instanceof C2175y ? ((C2175y) path).f590a : new C2176z(path);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(java.nio.file.Path path) {
        return this.f591a.compareTo(AbstractC2108g.m509f(path));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean endsWith(java.nio.file.Path path) {
        return this.f591a.mo576y(C2175y.m635s(path));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean equals(Object obj) {
        Path path = this.f591a;
        if (obj instanceof C2176z) {
            obj = ((C2176z) obj).f591a;
        }
        return path.equals(obj);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ void forEach(Consumer<? super java.nio.file.Path> consumer) {
        this.f591a.forEach(consumer);
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path getFileName() {
        return m636s(this.f591a.getFileName());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.FileSystem getFileSystem() {
        return C2154h.m621a(this.f591a.getFileSystem());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path getName(int i) {
        return m636s(this.f591a.getName(i));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ int getNameCount() {
        return this.f591a.getNameCount();
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path getParent() {
        return m636s(this.f591a.getParent());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path getRoot() {
        return m636s(this.f591a.getRoot());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ int hashCode() {
        return this.f591a.hashCode();
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean isAbsolute() {
        return this.f591a.isAbsolute();
    }

    @Override // java.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this.f591a.iterator());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path normalize() {
        return m636s(this.f591a.normalize());
    }

    @Override // java.nio.file.Path, java.nio.file.Watchable
    public final /* synthetic */ WatchKey register(WatchService watchService, WatchEvent.Kind[] kindArr, WatchEvent.Modifier[] modifierArr) {
        o0[] o0VarArr;
        Path path = this.f591a;
        q0 q0VarM629a = q0.m629a(watchService);
        n0[] n0VarArrM522s = AbstractC2108g.m522s(kindArr);
        if (modifierArr == null) {
            o0VarArr = null;
        } else {
            int length = modifierArr.length;
            o0VarArr = new o0[length];
            for (int i = 0; i < length; i++) {
                WatchEvent.Modifier modifier = modifierArr[i];
                o0VarArr[i] = modifier == null ? null : new o0(modifier);
            }
        }
        p0 p0VarMo573q = path.mo573q(q0VarM629a, n0VarArrM522s, o0VarArr);
        if (p0VarMo573q == null) {
            return null;
        }
        return p0VarMo573q.f571a;
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path relativize(java.nio.file.Path path) {
        return m636s(this.f591a.relativize(C2175y.m635s(path)));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path resolve(java.nio.file.Path path) {
        return m636s(this.f591a.resolve(C2175y.m635s(path)));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path resolveSibling(java.nio.file.Path path) {
        return m636s(this.f591a.mo577z(C2175y.m635s(path)));
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator<java.nio.file.Path> spliterator() {
        return this.f591a.spliterator();
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean startsWith(java.nio.file.Path path) {
        return this.f591a.startsWith(C2175y.m635s(path));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path subpath(int i, int i2) {
        return m636s(this.f591a.subpath(i, i2));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path toAbsolutePath() {
        return m636s(this.f591a.toAbsolutePath());
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ File toFile() {
        return this.f591a.toFile();
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path toRealPath(java.nio.file.LinkOption[] linkOptionArr) {
        return m636s(this.f591a.toRealPath(AbstractC2108g.m521r(linkOptionArr)));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ String toString() {
        return this.f591a.toString();
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ URI toUri() {
        return this.f591a.toUri();
    }

    @Override // java.nio.file.Path
    /* JADX INFO: renamed from: compareTo, reason: avoid collision after fix types in other method */
    public final /* synthetic */ int compareTo2(java.nio.file.Path path) {
        return this.f591a.compareTo(C2175y.m635s(path));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean endsWith(String str) {
        return this.f591a.endsWith(str);
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ boolean startsWith(String str) {
        return this.f591a.startsWith(str);
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path resolve(String str) {
        return m636s(this.f591a.resolve(str));
    }

    @Override // java.nio.file.Path
    public final /* synthetic */ java.nio.file.Path resolveSibling(String str) {
        return m636s(this.f591a.resolveSibling(str));
    }

    @Override // java.nio.file.Path, java.nio.file.Watchable
    public final /* synthetic */ WatchKey register(WatchService watchService, WatchEvent.Kind[] kindArr) {
        p0 p0VarMo598Q = this.f591a.mo598Q(q0.m629a(watchService), AbstractC2108g.m522s(kindArr));
        if (p0VarMo598Q == null) {
            return null;
        }
        return p0VarMo598Q.f571a;
    }
}
