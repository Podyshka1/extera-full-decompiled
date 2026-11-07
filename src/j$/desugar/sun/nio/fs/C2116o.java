package j$.desugar.sun.nio.fs;

import j$.nio.file.C2148b;
import j$.nio.file.C2174x;
import j$.nio.file.EnumC2121a;
import j$.nio.file.FileSystem;
import j$.nio.file.LinkOption;
import j$.nio.file.Path;
import j$.nio.file.n0;
import j$.nio.file.o0;
import j$.nio.file.p0;
import j$.nio.file.q0;
import j$.util.stream.AbstractC2286f;
import j$.util.stream.C2281a;
import j$.util.stream.C2282b;
import j$.util.stream.C2283c;
import j$.util.stream.C2284d;
import j$.util.stream.C2285e;
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
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2116o implements Path {

    /* JADX INFO: renamed from: h */
    public static final Pattern f472h = Pattern.compile("/+");

    /* JADX INFO: renamed from: a */
    public final FileSystem f473a;

    /* JADX INFO: renamed from: b */
    public final String f474b;

    /* JADX INFO: renamed from: c */
    public final List f475c;

    /* JADX INFO: renamed from: d */
    public final boolean f476d;

    /* JADX INFO: renamed from: e */
    public final String f477e;

    /* JADX INFO: renamed from: f */
    public final String f478f;

    /* JADX INFO: renamed from: g */
    public volatile byte[] f479g;

    public C2116o(FileSystem fileSystem, String str, String str2, String str3) {
        this(fileSystem, str.startsWith("/"), str.isEmpty() ? Collections.singletonList(_UrlKt.FRAGMENT_ENCODE_SET) : (List) Arrays.stream(f472h.split(str)).filter(new C2115n()).collect(new C2285e(new C2281a(), new C2282b(), new C2283c(), new C2284d(), AbstractC2286f.f903a)), str2, str3);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public final C2116o getParent() {
        int size = this.f475c.size();
        if (size == 0) {
            return null;
        }
        if (size == 1 && !this.f476d) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f476d) {
            sb.append("/");
        }
        sb.append(AbstractC2108g.m518o(this.f475c.subList(0, size - 1)));
        return new C2116o(this.f473a, sb.toString(), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public final C2116o resolve(Path path) {
        if (!(path instanceof C2116o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (((C2116o) path).f476d) {
            return (C2116o) path;
        }
        return new C2116o(this.f473a, this.f474b + "/" + path, this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: K, reason: merged with bridge method [inline-methods] */
    public final C2116o mo577z(Path path) {
        Objects.requireNonNull(path);
        if (!(path instanceof C2116o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        C2116o parent = getParent();
        return parent == null ? (C2116o) path : parent.resolve(path);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public final C2116o toAbsolutePath() {
        if (this.f476d) {
            return this;
        }
        FileSystem fileSystem = this.f473a;
        String str = this.f477e;
        return new C2116o(fileSystem, str, str, this.f478f).resolve(this);
    }

    @Override // j$.nio.file.Path
    public final boolean endsWith(String str) {
        return mo576y(new C2116o(this.f473a, str, this.f477e, this.f478f));
    }

    @Override // j$.nio.file.Path
    public final boolean equals(Object obj) {
        return (obj instanceof C2116o) && compareTo((C2116o) obj) == 0;
    }

    @Override // j$.nio.file.Path
    public final Path getFileName() {
        if (this.f475c.isEmpty()) {
            if (this.f476d) {
                return null;
            }
            return this;
        }
        return new C2116o(this.f473a, (String) this.f475c.get(r2.size() - 1), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    public final FileSystem getFileSystem() {
        return this.f473a;
    }

    @Override // j$.nio.file.Path
    public final int getNameCount() {
        return this.f475c.size();
    }

    @Override // j$.nio.file.Path
    public final Path getRoot() {
        if (!this.f476d) {
            return null;
        }
        FileSystem fileSystem = this.f473a;
        String str = this.f478f;
        return new C2116o(fileSystem, str, this.f477e, str);
    }

    public final int hashCode() {
        return this.f474b.hashCode();
    }

    @Override // j$.nio.file.Path
    public final boolean isAbsolute() {
        return this.f476d;
    }

    @Override // j$.nio.file.Path, java.lang.Iterable
    public final Iterator iterator() {
        return new C2174x(this);
    }

    @Override // j$.nio.file.Path
    public final Path normalize() {
        ArrayDeque arrayDeque = new ArrayDeque();
        for (String str : this.f475c) {
            str.getClass();
            if (!str.equals(".")) {
                if (str.equals("..")) {
                    arrayDeque.removeLast();
                } else {
                    arrayDeque.add(str);
                }
            }
        }
        return new C2116o(this.f473a, (this.f476d ? "/" : _UrlKt.FRAGMENT_ENCODE_SET).concat(AbstractC2108g.m518o(arrayDeque)), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: q */
    public final p0 mo573q(q0 q0Var, n0[] n0VarArr, o0... o0VarArr) {
        throw new UnsupportedOperationException("Watch Service is not supported");
    }

    @Override // j$.nio.file.Path
    public final Path relativize(Path path) {
        if (!(path instanceof C2116o)) {
            throw new IllegalArgumentException(String.format("Expected to resolve paths on the same file system as DesugarUnixPath, but gets %s (%s).", path, path.getFileSystem()));
        }
        if (this.f476d != ((C2116o) path).f476d) {
            C2148b.m608a("'other' is different type of Path in absolute property.");
            return null;
        }
        List list = ((C2116o) path).f475c;
        int size = this.f475c.size();
        int size2 = list.size();
        int i = 0;
        while (i < size && i < size2 && ((String) this.f475c.get(i)).equals(list.get(i))) {
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
        return new C2116o(this.f473a, false, arrayList, this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    public final Path resolveSibling(String str) {
        return mo577z(new C2116o(this.f473a, str, this.f477e, this.f478f));
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public final C2116o getName(int i) {
        if (i < 0 || i >= this.f475c.size()) {
            throw new IllegalArgumentException(String.format("Requested name for index (%d) is out of bound in \n%s.", Integer.valueOf(i), this));
        }
        return new C2116o(this.f473a, (String) this.f475c.get(i), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    public final boolean startsWith(Path path) {
        int nameCount;
        Objects.requireNonNull(path);
        if (!(path instanceof C2116o) || this.f476d != path.isAbsolute() || this.f475c.size() < (nameCount = path.getNameCount())) {
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
        return new C2116o(this.f473a, AbstractC2108g.m518o(this.f475c.subList(i, i2)), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    public final File toFile() {
        return new File(this.f474b);
    }

    @Override // j$.nio.file.Path
    public final Path toRealPath(LinkOption[] linkOptionArr) {
        this.f473a.mo540g().mo546a(this, EnumC2121a.READ);
        return Arrays.asList(linkOptionArr).contains(LinkOption.NOFOLLOW_LINKS) ? toAbsolutePath() : new C2116o(this.f473a, toFile().getCanonicalPath(), this.f477e, this.f478f);
    }

    @Override // j$.nio.file.Path
    public final String toString() {
        return this.f474b;
    }

    @Override // j$.nio.file.Path
    public final URI toUri() {
        char[] cArr = AbstractC2117p.f482c;
        C2116o absolutePath = toAbsolutePath();
        if (absolutePath.f479g == null) {
            absolutePath.f479g = absolutePath.f474b.getBytes(AbstractC2118q.f483a);
        }
        byte[] bArr = absolutePath.f479g;
        StringBuilder sb = new StringBuilder("file:///");
        for (int i = 1; i < bArr.length; i++) {
            char c2 = (char) (bArr[i] & UByte.MAX_VALUE);
            long j = AbstractC2117p.f480a;
            long j2 = AbstractC2117p.f481b;
            if (c2 >= '@' ? c2 >= 128 || ((1 << (c2 - '@')) & j2) == 0 : (j & (1 << c2)) == 0) {
                sb.append('%');
                char[] cArr2 = AbstractC2117p.f482c;
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
        return this.f474b.compareTo(((C2116o) path).f474b);
    }

    @Override // j$.nio.file.Path
    /* JADX INFO: renamed from: y */
    public final boolean mo576y(Path path) {
        Objects.requireNonNull(path);
        if (!(path instanceof C2116o)) {
            return false;
        }
        if (path.isAbsolute()) {
            return equals(path);
        }
        int nameCount = path.getNameCount();
        if (this.f475c.size() < nameCount) {
            return false;
        }
        int size = this.f475c.size();
        for (int i = nameCount - 1; i >= 0; i--) {
            if (!getName((i - nameCount) + size).equals(path.getName(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // j$.nio.file.Path
    public final boolean startsWith(String str) {
        return startsWith(new C2116o(this.f473a, str, this.f477e, this.f478f));
    }

    public C2116o(FileSystem fileSystem, boolean z, List list, String str, String str2) {
        this.f473a = fileSystem;
        this.f476d = z;
        this.f475c = list;
        this.f474b = (z ? "/" : _UrlKt.FRAGMENT_ENCODE_SET).concat(AbstractC2108g.m518o(list));
        this.f477e = str;
        this.f478f = str2;
    }
}
