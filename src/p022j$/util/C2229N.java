package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.N */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2229N implements PrimitiveIterator.OfLong {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2230O f910a;

    public /* synthetic */ C2229N(InterfaceC2230O interfaceC2230O) {
        this.f910a = interfaceC2230O;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2230O interfaceC2230O = this.f910a;
        if (obj instanceof C2229N) {
            obj = ((C2229N) obj).f910a;
        }
        return interfaceC2230O.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f910a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f910a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f910a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f910a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f910a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f910a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f910a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public final /* synthetic */ long nextLong() {
        return this.f910a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f910a.remove();
    }
}
