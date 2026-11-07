package j$.nio.file;

import java.io.UncheckedIOException;
import java.nio.file.DirectoryIteratorException;
import java.util.Iterator;

/* JADX INFO: renamed from: j$.nio.file.q */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2163q implements Iterator {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ Iterator f572a;

    public C2163q(Iterator it) {
        this.f572a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        try {
            return this.f572a.hasNext();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        try {
            return (Path) this.f572a.next();
        } catch (DirectoryIteratorException e) {
            throw new UncheckedIOException(e.getCause());
        }
    }
}
