package j$.util.concurrent;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.util.concurrent.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2112h extends AbstractC2105a implements Iterator, Enumeration {

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ int f729k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2112h(C2115k[] c2115kArr, int i, int i2, ConcurrentHashMap concurrentHashMap, int i3) {
        super(c2115kArr, i, i2, concurrentHashMap);
        this.f729k = i3;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f729k) {
            case 0:
                C2115k c2115k = this.f744b;
                if (c2115k == null) {
                    throw new NoSuchElementException();
                }
                Object obj = c2115k.f736b;
                this.f724j = c2115k;
                m723a();
                return obj;
            default:
                C2115k c2115k2 = this.f744b;
                if (c2115k2 == null) {
                    throw new NoSuchElementException();
                }
                Object obj2 = c2115k2.f737c;
                this.f724j = c2115k2;
                m723a();
                return obj2;
        }
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        switch (this.f729k) {
        }
        return next();
    }
}
