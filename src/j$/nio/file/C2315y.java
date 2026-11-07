package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.io.File;
import java.net.URI;
import java.nio.file.WatchEvent;
import java.nio.file.WatchService;
import java.util.Iterator;
import java.util.Spliterator;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.nio.file.y */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2315y implements Path {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ java.nio.file.Path f591a;

    public /* synthetic */ C2315y(java.nio.file.Path path) {
        this.f591a = path;
    }

    /* JADX INFO: renamed from: s */
    public static /* synthetic */ Path m659s(java.nio.file.Path path) {
        if (path == null) {
            return null;
        }
        return path instanceof C2316z ? ((C2316z) path).f592a : new C2315y(path);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: P */
    public final /* synthetic */ p0 mo622P(q0 q0Var, n0[] n0VarArr) {
        return p0.m652a(this.f591a.register(q0Var == null ? null : q0Var.f574a, AbstractC2248g.m550w(n0VarArr)));
    }

    @Override // j$.nio.file.Path, java.lang.Comparable
    public final /* synthetic */ int compareTo(Path path) {
        return this.f591a.compareTo(AbstractC2248g.m533f(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean endsWith(String str) {
        return this.f591a.endsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean equals(Object obj) {
        java.nio.file.Path path = this.f591a;
        if (obj instanceof C2315y) {
            obj = ((C2315y) obj).f591a;
        }
        return path.equals(obj);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ void forEach(Consumer<? super Path> consumer) {
        this.f591a.forEach(consumer);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getFileName() {
        return m659s(this.f591a.getFileName());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ FileSystem getFileSystem() {
        return C2293g.m644i(this.f591a.getFileSystem());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getName(int i) {
        return m659s(this.f591a.getName(i));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ int getNameCount() {
        return this.f591a.getNameCount();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getParent() {
        return m659s(this.f591a.getParent());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path getRoot() {
        return m659s(this.f591a.getRoot());
    }

    public final /* synthetic */ int hashCode() {
        return this.f591a.hashCode();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean isAbsolute() {
        return this.f591a.isAbsolute();
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new d0(this.f591a.iterator());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path normalize() {
        return m659s(this.f591a.normalize());
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: q */
    public final /* synthetic */ p0 mo597q(q0 q0Var, n0[] n0VarArr, o0[] o0VarArr) {
        java.nio.file.Path path = this.f591a;
        WatchEvent.Modifier[] modifierArr = null;
        WatchService watchService = q0Var == null ? null : q0Var.f574a;
        WatchEvent.Kind<?>[] kindArrM550w = AbstractC2248g.m550w(n0VarArr);
        if (o0VarArr != null) {
            int length = o0VarArr.length;
            WatchEvent.Modifier[] modifierArr2 = new WatchEvent.Modifier[length];
            for (int i = 0; i < length; i++) {
                o0 o0Var = o0VarArr[i];
                modifierArr2[i] = o0Var == null ? null : o0Var.f566a;
            }
            modifierArr = modifierArr2;
        }
        return p0.m652a(path.register(watchService, kindArrM550w, modifierArr));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path relativize(Path path) {
        return m659s(this.f591a.relativize(C2316z.m660s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolve(Path path) {
        return m659s(this.f591a.resolve(C2316z.m660s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolveSibling(String str) {
        return m659s(this.f591a.resolveSibling(str));
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Spliterator<Path> spliterator() {
        return this.f591a.spliterator();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean startsWith(Path path) {
        return this.f591a.startsWith(C2316z.m660s(path));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path subpath(int i, int i2) {
        return m659s(this.f591a.subpath(i, i2));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toAbsolutePath() {
        return m659s(this.f591a.toAbsolutePath());
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ File toFile() {
        return this.f591a.toFile();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path toRealPath(LinkOption[] linkOptionArr) {
        return m659s(this.f591a.toRealPath(AbstractC2248g.m549v(linkOptionArr)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ String toString() {
        return this.f591a.toString();
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ URI toUri() {
        return this.f591a.toUri();
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: u */
    public final /* synthetic */ int compareTo(Path path) {
        return this.f591a.compareTo(C2316z.m660s(path));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: y */
    public final /* synthetic */ boolean mo600y(Path path) {
        return this.f591a.endsWith(C2316z.m660s(path));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: z */
    public final /* synthetic */ Path mo601z(Path path) {
        return m659s(this.f591a.resolveSibling(C2316z.m660s(path)));
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ boolean startsWith(String str) {
        return this.f591a.startsWith(str);
    }

    @Override // j$.nio.file.Path
    public final /* synthetic */ Path resolve(String str) {
        return m659s(this.f591a.resolve(str));
    }
}
