package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.J */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2225J implements PrimitiveIterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2226K f906a;

    public /* synthetic */ C2225J(InterfaceC2226K interfaceC2226K) {
        this.f906a = interfaceC2226K;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2226K interfaceC2226K = this.f906a;
        if (obj instanceof C2225J) {
            obj = ((C2225J) obj).f906a;
        }
        return interfaceC2226K.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f906a.forEachRemaining((Object) intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f906a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f906a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f906a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f906a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f906a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f906a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public final /* synthetic */ int nextInt() {
        return this.f906a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f906a.remove();
    }
}
