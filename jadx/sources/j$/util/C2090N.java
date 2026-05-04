package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.LongConsumer;

/* JADX INFO: renamed from: j$.util.N */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2090N implements PrimitiveIterator.OfLong {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2091O f675a;

    public /* synthetic */ C2090N(InterfaceC2091O interfaceC2091O) {
        this.f675a = interfaceC2091O;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2091O interfaceC2091O = this.f675a;
        if (obj instanceof C2090N) {
            obj = ((C2090N) obj).f675a;
        }
        return interfaceC2091O.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(LongConsumer longConsumer) {
        this.f675a.forEachRemaining((Object) longConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f675a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfLong
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(LongConsumer longConsumer) {
        this.f675a.forEachRemaining(longConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f675a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f675a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Long next() {
        return this.f675a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f675a.next();
    }

    @Override // java.util.PrimitiveIterator.OfLong
    public final /* synthetic */ long nextLong() {
        return this.f675a.nextLong();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f675a.remove();
    }
}
