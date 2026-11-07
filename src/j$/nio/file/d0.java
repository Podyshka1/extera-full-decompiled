package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2108g;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-d770cecce19e13e7204002895f1f3846e7cae954646f7ef2982ee0cbc1d920c0 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Iterator {

    /* JADX INFO: renamed from: a */
    public final Iterator f530a;

    public d0(Iterator it) {
        this.f530a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f530a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return AbstractC2108g.m509f(this.f530a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f530a.remove();
    }
}
