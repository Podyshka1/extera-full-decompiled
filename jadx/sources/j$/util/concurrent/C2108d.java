package j$.util.concurrent;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.util.concurrent.d */
/* JADX INFO: loaded from: classes2.dex */
public final class C2108d extends AbstractC2105a implements Iterator {
    @Override // java.util.Iterator
    public final Object next() {
        C2115k c2115k = this.f744b;
        if (c2115k == null) {
            throw new NoSuchElementException();
        }
        Object obj = c2115k.f736b;
        Object obj2 = c2115k.f737c;
        this.f724j = c2115k;
        m723a();
        return new C2114j(obj, obj2, this.f723i);
    }
}
