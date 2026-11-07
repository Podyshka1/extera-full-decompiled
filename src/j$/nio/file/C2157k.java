package j$.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.nio.file.k */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2157k implements Iterator, Closeable {

    /* JADX INFO: renamed from: a */
    public final C2162p f547a;

    /* JADX INFO: renamed from: b */
    public C2160n f548b;

    public C2157k(Path path, FileVisitOption... fileVisitOptionArr) throws IOException {
        C2162p c2162p = new C2162p(Arrays.asList(fileVisitOptionArr), Integer.MAX_VALUE);
        this.f547a = c2162p;
        if (c2162p.f570e) {
            throw new IllegalStateException("Closed");
        }
        C2160n c2160nM627c = c2162p.m627c(path, false);
        this.f548b = c2160nM627c;
        IOException iOException = c2160nM627c.f563d;
        if (iOException != null) {
            throw iOException;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m622a() {
        if (this.f548b == null) {
            C2160n c2160nM626b = this.f547a.m626b();
            while (c2160nM626b != null) {
                IOException iOException = c2160nM626b.f563d;
                if (iOException != null) {
                    throw new UncheckedIOException(iOException);
                }
                if (c2160nM626b.f560a != EnumC2161o.END_DIRECTORY) {
                    this.f548b = c2160nM626b;
                    return;
                }
                c2160nM626b = this.f547a.m626b();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f547a.close();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f547a.f570e) {
            throw new IllegalStateException();
        }
        m622a();
        return this.f548b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f547a.f570e) {
            throw new IllegalStateException();
        }
        m622a();
        C2160n c2160n = this.f548b;
        if (c2160n == null) {
            throw new NoSuchElementException();
        }
        this.f548b = null;
        return c2160n;
    }
}
