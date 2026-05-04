package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

/* JADX INFO: renamed from: j$.util.J */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2086J implements PrimitiveIterator.OfInt {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2087K f671a;

    public /* synthetic */ C2086J(InterfaceC2087K interfaceC2087K) {
        this.f671a = interfaceC2087K;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2087K interfaceC2087K = this.f671a;
        if (obj instanceof C2086J) {
            obj = ((C2086J) obj).f671a;
        }
        return interfaceC2087K.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(IntConsumer intConsumer) {
        this.f671a.forEachRemaining((Object) intConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f671a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfInt
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(IntConsumer intConsumer) {
        this.f671a.forEachRemaining(intConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f671a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f671a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Integer next() {
        return this.f671a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f671a.next();
    }

    @Override // java.util.PrimitiveIterator.OfInt
    public final /* synthetic */ int nextInt() {
        return this.f671a.nextInt();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f671a.remove();
    }
}
