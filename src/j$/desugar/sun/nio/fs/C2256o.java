package j$.desugar.sun.nio.fs;

import j$.nio.file.C2288b;
import j$.nio.file.C2314x;
import j$.nio.file.EnumC2261a;
import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.n0;
import j$.nio.file.o0;
import j$.nio.file.p0;
import j$.nio.file.q0;
import j$.util.stream.AbstractC2425f;
import j$.util.stream.C2420a;
import j$.util.stream.C2421b;
import j$.util.stream.C2422c;
import j$.util.stream.C2423d;
import j$.util.stream.C2424e;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import kotlin.UByte;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: renamed from: j$.desugar.sun.nio.fs.o */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2256o implements Path {

    /* JADX INFO: renamed from: h */
    public static final Pattern f473h = Pattern.compile("/+");

    /* JADX INFO: renamed from: a */
    public final FileSystem f474a;

    /* JADX INFO: renamed from: b */
    public final String f475b;

    /* JADX INFO: renamed from: c */
    public final List f476c;

    /* JADX INFO: renamed from: d */
    public final boolean f477d;

    /* JADX INFO: renamed from: e */
    public final String f478e;

    /* JADX INFO: renamed from: f */
    public final String f479f;

    /* JADX INFO: renamed from: g */
    public volatile byte[] f480g;

    public C2256o(FileSystem fileSystem, String str, String str2, String str3) {
        this(fileSystem, str.startsWith("/"), str.isEmpty() ? Collections.singletonList(_UrlKt.FRAGMENT_ENCODE_SET) : (List) Arrays.stream(f473h.split(str)).filter(new C2255n()).collect(new C2424e(new C2420a(), new C2421b(), new C2422c(), new C2423d(), AbstractC2425f.f905a)), str2, str3);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final C2256o getParent() {
        int size = this.f476c.size();
        if (size == 0) {
            return null;
        }
        if (size == 1 && !this.f477d) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f477d) {
            sb.append("/");
        }
        sb.append(AbstractC2248g.m542o(this.f476c.subList(0, size - 1)));
        return new C2256o(this.f474a, sb.toString(), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2256o resolve(Path path) {
        if (!(path instanceof C2256o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (((C2256o) path).f477d) {
            return (C2256o) path;
        }
        return new C2256o(this.f474a, this.f475b + "/" + path, this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2256o mo601z(Path path) {
        Objects.requireNonNull(path);
        if (!(path instanceof C2256o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        C2256o parent = getParent();
        return parent == null ? (C2256o) path : parent.resolve(path);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: R, reason: merged with bridge method [inline-methods] */
    public final C2256o toAbsolutePath() {
        if (this.f477d) {
            return this;
        }
        FileSystem fileSystem = this.f474a;
        String str = this.f478e;
        return new C2256o(fileSystem, str, str, this.f479f).resolve(this);
    }

    @Override // j$.nio.file.Path
    public final boolean endsWith(String str) {
        return mo600y(new C2256o(this.f474a, str, this.f478e, this.f479f));
    }

    @Override // j$.nio.file.Path
    public final boolean equals(Object obj) {
        return (obj instanceof C2256o) && compareTo((C2256o) obj) == 0;
    }

    @Override // j$.nio.file.Path
    public final Path getFileName() {
        if (this.f476c.isEmpty()) {
            if (this.f477d) {
                return null;
            }
            return this;
        }
        return new C2256o(this.f474a, (String) this.f476c.get(r2.size() - 1), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    public final FileSystem getFileSystem() {
        return this.f474a;
    }

    @Override // j$.nio.file.Path
    public final int getNameCount() {
        return this.f476c.size();
    }

    @Override // j$.nio.file.Path
    public final Path getRoot() {
        if (!this.f477d) {
            return null;
        }
        FileSystem fileSystem = this.f474a;
        String str = this.f479f;
        return new C2256o(fileSystem, str, this.f478e, str);
    }

    public final int hashCode() {
        return this.f475b.hashCode();
    }

    @Override // j$.nio.file.Path
    public final boolean isAbsolute() {
        return this.f477d;
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new C2314x(this);
    }

    @Override // j$.nio.file.Path
    public final Path normalize() {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (String str : this.f476c) {
            str.getClass();
            if (!str.equals(".")) {
                if (str.equals("..")) {
                    arrayDeque.removeLast();
                } else {
                    arrayDeque.add(str);
                }
            }
        }
        return new C2256o(this.f474a, (this.f477d ? "/" : _UrlKt.FRAGMENT_ENCODE_SET).concat(AbstractC2248g.m542o(arrayDeque)), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: q */
    public final p0 mo597q(q0 q0Var, n0[] n0VarArr, o0... o0VarArr) {
        throw new UnsupportedOperationException("Watch Service is not supported");
    }

    @Override // j$.nio.file.Path
    public final Path relativize(Path path) {
        if (!(path instanceof C2256o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (this.f477d != ((C2256o) path).f477d) {
            C2288b.m632a("'other' is different type of Path in absolute property.");
            return null;
        }
        List list = ((C2256o) path).f476c;
        int size = this.f476c.size();
        int size2 = list.size();
        int i = 0;
        while (i < size && i < size2 && ((String) this.f476c.get(i)).equals(list.get(i))) {
            i++;
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = i; i2 < size; i2++) {
            arrayList.add("..");
        }
        while (i < size2) {
            arrayList.add((String) list.get(i));
            i++;
        }
        return new C2256o(this.f474a, false, arrayList, this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    public final Path resolveSibling(String str) {
        return mo601z(new C2256o(this.f474a, str, this.f478e, this.f479f));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final C2256o getName(int i) {
        if (i < 0 || i >= this.f476c.size()) {
            throw new IllegalArgumentException(String.format("Requested name for index (%d) is out of bound in \n%s.", Integer.valueOf(i), this));
        }
        return new C2256o(this.f474a, (String) this.f476c.get(i), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    public final boolean startsWith(Path path) {
        int nameCount;
        Objects.requireNonNull(path);
        if (!(path instanceof C2256o) || this.f477d != path.isAbsolute() || this.f476c.size() < (nameCount = path.getNameCount())) {
            return false;
        }
        for (int i = 0; i < nameCount; i++) {
            if (!getName(i).equals(path.getName(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.nio.file.Path
    public final Path subpath(int i, int i2) {
        return new C2256o(this.f474a, AbstractC2248g.m542o(this.f476c.subList(i, i2)), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    public final File toFile() {
        return new File(this.f475b);
    }

    @Override // j$.nio.file.Path
    public final Path toRealPath(LinkOption[] linkOptionArr) {
        this.f474a.mo564g().mo570a(this, EnumC2261a.READ);
        return Arrays.asList(linkOptionArr).contains(LinkOption.NOFOLLOW_LINKS) ? toAbsolutePath() : new C2256o(this.f474a, toFile().getCanonicalPath(), this.f478e, this.f479f);
    }

    @Override // j$.nio.file.Path
    public final String toString() {
        return this.f475b;
    }

    @Override // j$.nio.file.Path
    public final URI toUri() {
        char[] cArr = AbstractC2257p.f483c;
        C2256o absolutePath = toAbsolutePath();
        if (absolutePath.f480g == null) {
            absolutePath.f480g = absolutePath.f475b.getBytes(AbstractC2258q.f484a);
        }
        byte[] bArr = absolutePath.f480g;
        StringBuilder sb = new StringBuilder("file:///");
        for (int i = 1; i < bArr.length; i++) {
            char c2 = (char) (bArr[i] & UByte.MAX_VALUE);
            long j = AbstractC2257p.f481a;
            long j2 = AbstractC2257p.f482b;
            if (c2 >= '@' ? c2 >= 128 || ((1 << (c2 - '@')) & j2) == 0 : (j & (1 << c2)) == 0) {
                sb.append('%');
                char[] cArr2 = AbstractC2257p.f483c;
                sb.append(cArr2[(c2 >> 4) & 15]);
                sb.append(cArr2[c2 & 15]);
            } else {
                sb.append(c2);
            }
        }
        if (sb.charAt(sb.length() - 1) != '/' && toFile().isDirectory()) {
            sb.append('/');
        }
        try {
            return new URI(sb.toString());
        } catch (URISyntaxException e) {
            throw new AssertionError(e);
        }
    }

    @Override // j$.nio.file.Path, java.lang.Comparable
    /* JADX INFO: renamed from: u */
    public final int compareTo(Path path) {
        return this.f475b.compareTo(((C2256o) path).f475b);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: y */
    public final boolean mo600y(Path path) {
        Objects.requireNonNull(path);
        if (!(path instanceof C2256o)) {
            return false;
        }
        if (path.isAbsolute()) {
            return equals(path);
        }
        int nameCount = path.getNameCount();
        if (this.f476c.size() < nameCount) {
            return false;
        }
        int size = this.f476c.size();
        for (int i = nameCount - 1; i >= 0; i--) {
            if (!getName((i - nameCount) + size).equals(path.getName(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.nio.file.Path
    public final boolean startsWith(String str) {
        return startsWith(new C2256o(this.f474a, str, this.f478e, this.f479f));
    }

    public C2256o(FileSystem fileSystem, boolean z, List list, String str, String str2) {
        this.f474a = fileSystem;
        this.f477d = z;
        this.f476c = list;
        this.f475b = (z ? "/" : _UrlKt.FRAGMENT_ENCODE_SET).concat(AbstractC2248g.m542o(list));
        this.f478e = str;
        this.f479f = str2;
    }
}
