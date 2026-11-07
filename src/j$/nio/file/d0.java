package j$.nio.file;

import j$.desugar.sun.nio.fs.AbstractC2248g;
import java.util.Iterator;

/* JADX INFO: compiled from: r8-map-id-4910828a8dc56cbd751d74065856ac3a183dfd4d6dbda867057afff82c304930 */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements Iterator {

    /* JADX INFO: renamed from: a */
    public final Iterator f531a;

    public d0(Iterator it) {
        this.f531a = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f531a.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return AbstractC2248g.m533f(this.f531a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f531a.remove();
    }
}
