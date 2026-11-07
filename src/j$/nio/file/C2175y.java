package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.io.File;
import java.net.URI;
import java.nio.file.WatchEvent;
import java.nio.file.WatchService;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.nio.file.y */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2175y implements Path {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.Path f590a;

    public /* synthetic */ C2175y(java.nio.file.Path path) {
        this.f590a = path;
    }

    /* JADX INFO: renamed from: s */
    public static /* synthetic */ Path m635s(java.nio.file.Path path) {
        if (path == null) {
            return null;
        }
        return path instanceof C2176z ? ((C2176z) path).f591a : new C2175y(path);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: Q */
    public final /* synthetic */ p0 mo598Q(q0 q0Var, n0[] n0VarArr) {
        return p0.m628a(this.f590a.register(q0Var == null ? null : q0Var.f573a, AbstractC2108g.m526w(n0VarArr)));
    }

    @Override // j$.nio.file.Path, java.lang.Comparable
    public final /* synthetic */ int compareTo(Path path) {
        return this.f590a.compareTo(AbstractC2108g.m509f(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean endsWith(String str) {
        return this.f590a.endsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.Path path = this.f590a;
        if (obj instanceof C2175y) {
            obj = ((C2175y) obj).f590a;
        }
        return path.equals(obj);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ void forEach(Consumer<? super Path> consumer) {
        this.f590a.forEach(consumer);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getFileName() {
        return m635s(this.f590a.getFileName());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ FileSystem getFileSystem() {
        return C2153g.m620i(this.f590a.getFileSystem());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getName(int i) {
        return m635s(this.f590a.getName(i));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ int getNameCount() {
        return this.f590a.getNameCount();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getParent() {
        return m635s(this.f590a.getParent());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getRoot() {
        return m635s(this.f590a.getRoot());
    }

    public final /* synthetic */ int hashCode() {
        return this.f590a.hashCode();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean isAbsolute() {
        return this.f590a.isAbsolute();
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this.f590a.iterator());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path normalize() {
        return m635s(this.f590a.normalize());
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ p0 mo573q(q0 q0Var, n0[] n0VarArr, o0[] o0VarArr) {
        java.nio.file.Path path = this.f590a;
        WatchEvent.Modifier[] modifierArr = null;
        WatchService watchService = q0Var == null ? null : q0Var.f573a;
        WatchEvent.Kind<?>[] kindArrM526w = AbstractC2108g.m526w(n0VarArr);
        if (o0VarArr != null) {
            int length = o0VarArr.length;
            WatchEvent.Modifier[] modifierArr2 = new WatchEvent.Modifier[length];
            for (int i = 0; i < length; i++) {
                o0 o0Var = o0VarArr[i];
                modifierArr2[i] = o0Var == null ? null : o0Var.f565a;
            }
            modifierArr = modifierArr2;
        }
        return p0.m628a(path.register(watchService, kindArrM526w, modifierArr));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path relativize(Path path) {
        return m635s(this.f590a.relativize(C2176z.m636s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolve(Path path) {
        return m635s(this.f590a.resolve(C2176z.m636s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolveSibling(String str) {
        return m635s(this.f590a.resolveSibling(str));
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator<Path> spliterator() {
        return this.f590a.spliterator();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean startsWith(Path path) {
        return this.f590a.startsWith(C2176z.m636s(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path subpath(int i, int i2) {
        return m635s(this.f590a.subpath(i, i2));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toAbsolutePath() {
        return m635s(this.f590a.toAbsolutePath());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ File toFile() {
        return this.f590a.toFile();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toRealPath(LinkOption[] linkOptionArr) {
        return m635s(this.f590a.toRealPath(AbstractC2108g.m525v(linkOptionArr)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ String toString() {
        return this.f590a.toString();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ URI toUri() {
        return this.f590a.toUri();
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: u */
    public final /* synthetic */ int compareTo(Path path) {
        return this.f590a.compareTo(C2176z.m636s(path));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ boolean mo576y(Path path) {
        return this.f590a.endsWith(C2176z.m636s(path));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ Path mo577z(Path path) {
        return m635s(this.f590a.resolveSibling(C2176z.m636s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean startsWith(String str) {
        return this.f590a.startsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolve(String str) {
        return m635s(this.f590a.resolve(str));
    }
}
