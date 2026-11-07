package j$.nio.file;

import java.io.UncheckedIOException;
import java.nio.file.DirectoryIteratorException;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.nio.file.q */
/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2303q implements Iterator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Iterator f573a;

    public C2303q(Iterator it) {
        this.f573a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        try {
            return this.f573a.hasNext();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            return (Path) this.f573a.next();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }
}
