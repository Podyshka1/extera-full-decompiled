package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.I */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2224I implements InterfaceC2226K, InterfaceC2587y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfInt f905a;

    public /* synthetic */ C2224I(PrimitiveIterator.OfInt ofInt) {
        this.f905a = ofInt;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f905a;
        if (obj instanceof C2224I) {
            obj = ((C2224I) obj).f905a;
        }
        return ofInt.equals(obj);
    }

    @Override // p022j$.util.InterfaceC2231P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f905a.forEachRemaining(obj);
    }

    @Override // p022j$.util.InterfaceC2226K, java.util.Iterator, p022j$.util.InterfaceC2587y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f905a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // p022j$.util.InterfaceC2226K
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f905a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f905a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f905a.hashCode();
    }

    @Override // p022j$.util.InterfaceC2226K, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f905a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f905a.next();
    }

    @Override // p022j$.util.InterfaceC2226K
    public final /* synthetic */ int nextInt() {
        return this.f905a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f905a.remove();
    }
}
