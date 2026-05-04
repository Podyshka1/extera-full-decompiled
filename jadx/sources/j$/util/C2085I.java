package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.I */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2085I implements InterfaceC2087K, InterfaceC2209y {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ PrimitiveIterator.OfInt f670a;

    public /* synthetic */ C2085I(PrimitiveIterator.OfInt ofInt) {
        this.f670a = ofInt;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        PrimitiveIterator.OfInt ofInt = this.f670a;
        if (obj instanceof C2085I) {
            obj = ((C2085I) obj).f670a;
        }
        return ofInt.equals(obj);
    }

    @Override // j$.util.InterfaceC2092P
    public final /* synthetic */ void forEachRemaining(Object obj) {
        this.f670a.forEachRemaining(obj);
    }

    @Override // j$.util.InterfaceC2087K, java.util.Iterator, j$.util.InterfaceC2209y
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f670a.forEachRemaining((Consumer<? super Integer>) consumer);
    }

    @Override // j$.util.InterfaceC2087K
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f670a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f670a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f670a.hashCode();
    }

    @Override // j$.util.InterfaceC2087K, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f670a.next();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f670a.next();
    }

    @Override // j$.util.InterfaceC2087K
    public final /* synthetic */ int nextInt() {
        return this.f670a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f670a.remove();
    }
}
