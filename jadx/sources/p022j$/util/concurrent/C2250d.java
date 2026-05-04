package p022j$.util.concurrent;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.util.concurrent.d */
/* JADX INFO: loaded from: classes2.dex */
public final class C2250d extends AbstractC2247a implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        C2257k c2257k = this.f979b;
        if (c2257k == null) {
            throw new NoSuchElementException();
        }
        Object obj = c2257k.f971b;
        Object obj2 = c2257k.f972c;
        this.f959j = c2257k;
        m849a();
        return new C2256j(obj, obj2, this.f958i);
    }
}
