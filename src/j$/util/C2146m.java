package j$.util;

import j$.com.android.tools.r8.AbstractC1965a;
import j$.time.C2045s;
import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2146m implements Iterator, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f831a = 0;

    /* JADX INFO: renamed from: b */
    public final Iterator f832b;

    public C2146m(C2147n c2147n) {
        this.f832b = c2147n.f833a.iterator();
    }

    public C2146m(C2152s c2152s) {
        this.f832b = c2152s.f833a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f831a) {
        }
        return this.f832b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f831a) {
            case 0:
                return this.f832b.next();
            default:
                return new C2150q((Map.Entry) this.f832b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f831a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Iterator, j$.util.InterfaceC2209y
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f831a) {
            case 0:
                AbstractC1965a.m407M(this.f832b, consumer);
                break;
            default:
                AbstractC1965a.m407M(this.f832b, new C2045s(1, consumer));
                break;
        }
    }
}
