package j$.nio.file;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.nio.file.x */
/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2174x implements Iterator {

    /* JADX INFO: renamed from: a */
    public int f588a = 0;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ Path f589b;

    public C2174x(Path path) {
        this.f589b = path;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f588a < this.f589b.getNameCount();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f588a >= this.f589b.getNameCount()) {
            throw new NoSuchElementException();
        }
        Path name = this.f589b.getName(this.f588a);
        this.f588a++;
        return name;
    }
}
