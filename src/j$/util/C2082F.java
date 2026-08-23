package j$.util;

import java.util.PrimitiveIterator;
import java.util.function.Consumer;
import java.util.function.DoubleConsumer;

/* JADX INFO: renamed from: j$.util.F */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2082F implements PrimitiveIterator.OfDouble {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ InterfaceC2083G f667a;

    public /* synthetic */ C2082F(InterfaceC2083G interfaceC2083G) {
        this.f667a = interfaceC2083G;
    }

    public final /* synthetic */ boolean equals(Object obj) {
        InterfaceC2083G interfaceC2083G = this.f667a;
        if (obj instanceof C2082F) {
            obj = ((C2082F) obj).f667a;
        }
        return interfaceC2083G.equals(obj);
    }

    @Override // java.util.PrimitiveIterator
    public final /* synthetic */ void forEachRemaining(DoubleConsumer doubleConsumer) {
        this.f667a.forEachRemaining((Object) doubleConsumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ void forEachRemaining(Consumer consumer) {
        this.f667a.forEachRemaining(consumer);
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    /* JADX INFO: renamed from: forEachRemaining, reason: avoid collision after fix types in other method */
    public final /* synthetic */ void forEachRemaining2(DoubleConsumer doubleConsumer) {
        this.f667a.forEachRemaining(doubleConsumer);
    }

    @Override // java.util.Iterator
    public final /* synthetic */ boolean hasNext() {
        return this.f667a.hasNext();
    }

    public final /* synthetic */ int hashCode() {
        return this.f667a.hashCode();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Double next() {
        return this.f667a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f667a.next();
    }

    @Override // java.util.PrimitiveIterator.OfDouble
    public final /* synthetic */ double nextDouble() {
        return this.f667a.nextDouble();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ void remove() {
        this.f667a.remove();
    }
}
