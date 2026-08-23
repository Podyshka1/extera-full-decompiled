package p022j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.F */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2221F implements PrimitiveIterator.OfDouble {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2222G f902a;

    public /* synthetic */ C2221F(InterfaceC2222G interfaceC2222G) {
        this.f902a = interfaceC2222G;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2222G interfaceC2222G = this.f902a;
        if (obj instanceof C2221F) {
            obj = ((C2221F) obj).f902a;
        }
        return interfaceC2222G.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f902a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f902a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f902a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f902a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f902a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f902a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f902a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.f902a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f902a.remove();
    }
}
