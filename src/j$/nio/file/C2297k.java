package j$.nio.file;

import java.io.Closeable;
import java.io.IOException;
import java.io.UncheckedIOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.nio.file.k */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2297k implements Iterator, Closeable {

    /* JADX INFO: renamed from: a */
    public final C2302p f548a;

    /* JADX INFO: renamed from: b */
    public C2300n f549b;

    public C2297k(Path path, FileVisitOption... fileVisitOptionArr) throws IOException {
        C2302p c2302p = new C2302p(Arrays.asList(fileVisitOptionArr), Integer.MAX_VALUE);
        this.f548a = c2302p;
        if (c2302p.f571e) {
            throw new IllegalStateException("Closed");
        }
        C2300n c2300nM651c = c2302p.m651c(path, false);
        this.f549b = c2300nM651c;
        IOException iOException = c2300nM651c.f564d;
        if (iOException != null) {
            throw iOException;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m646a() {
        if (this.f549b == null) {
            C2300n c2300nM650b = this.f548a.m650b();
            while (c2300nM650b != null) {
                IOException iOException = c2300nM650b.f564d;
                if (iOException != null) {
                    throw new UncheckedIOException(iOException);
                }
                if (c2300nM650b.f561a != EnumC2301o.END_DIRECTORY) {
                    this.f549b = c2300nM650b;
                    return;
                }
                c2300nM650b = this.f548a.m650b();
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f548a.close();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f548a.f571e) {
            throw new IllegalStateException();
        }
        m646a();
        return this.f549b != null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f548a.f571e) {
            throw new IllegalStateException();
        }
        m646a();
        C2300n c2300n = this.f549b;
        if (c2300n == null) {
            throw new NoSuchElementException();
        }
        this.f549b = null;
        return c2300n;
    }
}
