package p022j$.util.concurrent;

import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import p022j$.util.Spliterator;
import p022j$.util.function.BiConsumer$CC;
import p022j$.util.function.BiFunction$CC;
import p022j$.util.function.Consumer$CC;
import p022j$.util.stream.AbstractC2446b;
import p022j$.util.stream.AbstractC2552u0;
import p022j$.util.stream.AbstractC2573y1;
import p022j$.util.stream.C2515m3;
import p022j$.util.stream.C2562w0;
import p022j$.util.stream.EnumC2462d3;
import p022j$.util.stream.EnumC2468e3;
import p022j$.util.stream.EnumC2557v0;
import p022j$.util.stream.InterfaceC2375M3;

/* JADX INFO: renamed from: j$.util.concurrent.s */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class C2265s implements BiConsumer, BiFunction, Consumer, InterfaceC2375M3 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f996a;

    /* JADX INFO: renamed from: b */
    public final Object f997b;

    /* JADX INFO: renamed from: c */
    public final Object f998c;

    public /* synthetic */ C2265s(int i, Object obj, Object obj2) {
        this.f996a = i;
        this.f997b = obj;
        this.f998c = obj2;
    }

    public /* synthetic */ C2265s(BiFunction biFunction, Function function) {
        this.f996a = 2;
        this.f998c = biFunction;
        this.f997b = function;
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        switch (this.f996a) {
        }
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }

    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    public /* synthetic */ Consumer andThen(Consumer consumer) {
        switch (this.f996a) {
        }
        return Consumer$CC.$default$andThen(this, consumer);
    }

    @Override // java.util.function.BiFunction
    public Object apply(Object obj, Object obj2) {
        return ((Function) this.f997b).apply(((BiFunction) this.f998c).apply(obj, obj2));
    }

    @Override // java.util.function.BiConsumer
    public void accept(Object obj, Object obj2) {
        switch (this.f996a) {
            case 0:
                ConcurrentMap concurrentMap = (ConcurrentMap) this.f997b;
                BiFunction biFunction = (BiFunction) this.f998c;
                while (!concurrentMap.replace(obj, obj2, biFunction.apply(obj, obj2)) && (obj2 = concurrentMap.get(obj)) != null) {
                }
                break;
            default:
                BiConsumer biConsumer = (BiConsumer) this.f997b;
                BiConsumer biConsumer2 = (BiConsumer) this.f998c;
                biConsumer.accept(obj, obj2);
                biConsumer2.accept(obj, obj2);
                break;
        }
    }

    public C2265s(EnumC2468e3 enumC2468e3, EnumC2557v0 enumC2557v0, Supplier supplier) {
        this.f996a = 5;
        this.f997b = enumC2557v0;
        this.f998c = supplier;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public int mo861u() {
        return EnumC2462d3.f1351u | EnumC2462d3.f1348r;
    }

    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: f */
    public Object mo859f(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        AbstractC2552u0 abstractC2552u0 = (AbstractC2552u0) ((Supplier) this.f998c).get();
        abstractC2446b.mo982s0(spliterator, abstractC2552u0);
        return Boolean.valueOf(abstractC2552u0.f1484b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: i */
    public Object mo860i(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        return (Boolean) new C2562w0(this, (AbstractC2446b) abstractC2573y1, spliterator).invoke();
    }

    @Override // java.util.function.Consumer
    /* JADX INFO: renamed from: accept */
    public void m940v(Object obj) {
        switch (this.f996a) {
            case 3:
                Consumer consumer = (Consumer) this.f997b;
                Consumer consumer2 = (Consumer) this.f998c;
                consumer.m940v(obj);
                consumer2.m940v(obj);
                break;
            case 4:
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.f997b;
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) this.f998c;
                if (obj != null) {
                    concurrentHashMap.putIfAbsent(obj, Boolean.TRUE);
                } else {
                    atomicBoolean.set(true);
                }
                break;
            case 5:
            default:
                C2515m3 c2515m3 = (C2515m3) this.f997b;
                Consumer consumer3 = (Consumer) this.f998c;
                if (c2515m3.f1433b.putIfAbsent(obj != null ? obj : C2515m3.f1431d, Boolean.TRUE) == null) {
                    consumer3.m940v(obj);
                }
                break;
            case 6:
                ((BiConsumer) this.f997b).accept(this.f998c, obj);
                break;
        }
    }
}
