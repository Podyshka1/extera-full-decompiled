package p022j$.util;

import java.util.Iterator;
import java.util.Map;
import java.util.function.Consumer;
import p022j$.com.android.tools.p023r8.AbstractC2104a;
import p022j$.time.C2184s;

/* JADX INFO: renamed from: j$.util.m */
/* JADX INFO: loaded from: classes2.dex */
public final class C2297m implements Iterator, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f1066a = 0;

    /* JADX INFO: renamed from: b */
    public final Iterator f1067b;

    public C2297m(C2299n c2299n) {
        this.f1067b = c2299n.f1068a.iterator();
    }

    public C2297m(C2309s c2309s) {
        this.f1067b = c2309s.f1068a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f1066a) {
        }
        return this.f1067b.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f1066a) {
            case 0:
                return this.f1067b.next();
            default:
                return new C2305q((Map.Entry) this.f1067b.next());
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f1066a) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Iterator, p022j$.util.InterfaceC2587y
    public final void forEachRemaining(Consumer consumer) {
        switch (this.f1066a) {
            case 0:
                AbstractC2104a.m527M(this.f1067b, consumer);
                break;
            default:
                AbstractC2104a.m527M(this.f1067b, new C2184s(1, consumer));
                break;
        }
    }
}
