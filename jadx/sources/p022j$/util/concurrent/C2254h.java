package p022j$.util.concurrent;

import java.util.Enumeration;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: renamed from: j$.util.concurrent.h */
/* JADX INFO: loaded from: classes2.dex */
public final class C2254h extends AbstractC2247a implements Iterator, Enumeration {

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ int f964k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2254h(C2257k[] c2257kArr, int i, int i2, ConcurrentHashMap concurrentHashMap, int i3) {
        super(c2257kArr, i, i2, concurrentHashMap);
        this.f964k = i3;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f964k) {
            case 0:
                C2257k c2257k = this.f979b;
                if (c2257k == null) {
                    throw new NoSuchElementException();
                }
                Object obj = c2257k.f971b;
                this.f959j = c2257k;
                m849a();
                return obj;
            default:
                C2257k c2257k2 = this.f979b;
                if (c2257k2 == null) {
                    throw new NoSuchElementException();
                }
                Object obj2 = c2257k2.f972c;
                this.f959j = c2257k2;
                m849a();
                return obj2;
        }
    }

    @Override // java.util.Enumeration
    public final Object nextElement() {
        switch (this.f964k) {
        }
        return next();
    }
}
