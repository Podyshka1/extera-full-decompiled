package p022j$.util.stream;

import java.util.function.IntFunction;
import java.util.function.Supplier;
import p022j$.time.format.C2148a;
import p022j$.util.Objects;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.b */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2446b extends AbstractC2573y1 implements BaseStream {

    /* JADX INFO: renamed from: h */
    public final AbstractC2446b f1296h;

    /* JADX INFO: renamed from: i */
    public final AbstractC2446b f1297i;

    /* JADX INFO: renamed from: j */
    public final int f1298j;

    /* JADX INFO: renamed from: k */
    public final AbstractC2446b f1299k;

    /* JADX INFO: renamed from: l */
    public int f1300l;

    /* JADX INFO: renamed from: m */
    public int f1301m;

    /* JADX INFO: renamed from: n */
    public Spliterator f1302n;

    /* JADX INFO: renamed from: o */
    public boolean f1303o;

    /* JADX INFO: renamed from: p */
    public final boolean f1304p;

    /* JADX INFO: renamed from: q */
    public Runnable f1305q;

    /* JADX INFO: renamed from: r */
    public boolean f1306r;

    /* JADX INFO: renamed from: C0 */
    public abstract boolean mo872C0();

    /* JADX INFO: renamed from: D0 */
    public abstract InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2);

    /* JADX INFO: renamed from: G0 */
    public abstract Spliterator mo889G0(AbstractC2446b abstractC2446b, Supplier supplier, boolean z);

    /* JADX INFO: renamed from: x0 */
    public abstract InterfaceC2352I0 mo900x0(AbstractC2446b abstractC2446b, Spliterator spliterator, boolean z, IntFunction intFunction);

    /* JADX INFO: renamed from: y0 */
    public abstract boolean mo902y0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2);

    /* JADX INFO: renamed from: z0 */
    public abstract EnumC2468e3 mo903z0();

    public AbstractC2446b(Spliterator spliterator, int i, boolean z) {
        this.f1297i = null;
        this.f1302n = spliterator;
        this.f1296h = this;
        int i2 = EnumC2462d3.f1337g & i;
        this.f1298j = i2;
        this.f1301m = (~(i2 << 1)) & EnumC2462d3.f1342l;
        this.f1300l = 0;
        this.f1306r = z;
    }

    public AbstractC2446b(AbstractC2446b abstractC2446b, int i) {
        if (abstractC2446b.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2446b.f1303o = true;
        abstractC2446b.f1299k = this;
        this.f1297i = abstractC2446b;
        this.f1298j = EnumC2462d3.f1338h & i;
        this.f1301m = EnumC2462d3.m997h(i, abstractC2446b.f1301m);
        AbstractC2446b abstractC2446b2 = abstractC2446b.f1296h;
        this.f1296h = abstractC2446b2;
        if (mo872C0()) {
            abstractC2446b2.f1304p = true;
        }
        this.f1300l = abstractC2446b.f1300l + 1;
    }

    /* JADX INFO: renamed from: v0 */
    public final Object m985v0(InterfaceC2375M3 interfaceC2375M3) {
        if (this.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1303o = true;
        if (this.f1296h.f1306r) {
            return interfaceC2375M3.mo860i(this, m976E0(interfaceC2375M3.mo861u()));
        }
        return interfaceC2375M3.mo859f(this, m976E0(interfaceC2375M3.mo861u()));
    }

    /* JADX INFO: renamed from: w0 */
    public final InterfaceC2352I0 m986w0(IntFunction intFunction) {
        if (this.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1303o = true;
        if (this.f1296h.f1306r && this.f1297i != null && mo872C0()) {
            this.f1300l = 0;
            AbstractC2446b abstractC2446b = this.f1297i;
            return mo929A0(abstractC2446b, abstractC2446b.m976E0(0), intFunction);
        }
        return mo980d0(m976E0(0), true, intFunction);
    }

    /* JADX INFO: renamed from: F0 */
    public final Spliterator m977F0() {
        AbstractC2446b abstractC2446b = this.f1296h;
        if (this != abstractC2446b) {
            throw new IllegalStateException();
        }
        if (this.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1303o = true;
        Spliterator spliterator = abstractC2446b.f1302n;
        if (spliterator != null) {
            abstractC2446b.f1302n = null;
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    public final BaseStream sequential() {
        this.f1296h.f1306r = false;
        return this;
    }

    public final BaseStream parallel() {
        this.f1296h.f1306r = true;
        return this;
    }

    @Override // p022j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.f1303o = true;
        this.f1302n = null;
        AbstractC2446b abstractC2446b = this.f1296h;
        Runnable runnable = abstractC2446b.f1305q;
        if (runnable != null) {
            abstractC2446b.f1305q = null;
            runnable.run();
        }
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC2446b abstractC2446b = this.f1296h;
        Runnable runnable2 = abstractC2446b.f1305q;
        if (runnable2 != null) {
            runnable = new RunnableC2360J3(0, runnable2, runnable);
        }
        abstractC2446b.f1305q = runnable;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f1303o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1303o = true;
        AbstractC2446b abstractC2446b = this.f1296h;
        if (this == abstractC2446b) {
            Spliterator spliterator = abstractC2446b.f1302n;
            if (spliterator != null) {
                abstractC2446b.f1302n = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return mo889G0(this, new C2440a(0, this), abstractC2446b.f1306r);
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: d0 */
    public final InterfaceC2352I0 mo980d0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f1296h.f1306r) {
            return mo900x0(this, spliterator, z, intFunction);
        }
        InterfaceC2312A0 interfaceC2312A0Mo896p0 = mo896p0(mo981e0(spliterator), intFunction);
        mo982s0(spliterator, interfaceC2312A0Mo896p0);
        return interfaceC2312A0Mo896p0.build();
    }

    @Override // p022j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.f1296h.f1306r;
    }

    /* JADX INFO: renamed from: E0 */
    public final Spliterator m976E0(int i) {
        int i2;
        int i3;
        AbstractC2446b abstractC2446b = this.f1296h;
        Spliterator spliteratorMo930B0 = abstractC2446b.f1302n;
        if (spliteratorMo930B0 != null) {
            abstractC2446b.f1302n = null;
            if (abstractC2446b.f1306r && abstractC2446b.f1304p) {
                AbstractC2446b abstractC2446b2 = abstractC2446b.f1299k;
                int i4 = 1;
                while (abstractC2446b != this) {
                    int i5 = abstractC2446b2.f1298j;
                    if (abstractC2446b2.mo872C0()) {
                        if (EnumC2462d3.SHORT_CIRCUIT.m1001k(i5)) {
                            i5 &= ~EnumC2462d3.f1351u;
                        }
                        spliteratorMo930B0 = abstractC2446b2.mo930B0(abstractC2446b, spliteratorMo930B0);
                        if (spliteratorMo930B0.hasCharacteristics(64)) {
                            i2 = (~EnumC2462d3.f1350t) & i5;
                            i3 = EnumC2462d3.f1349s;
                        } else {
                            i2 = (~EnumC2462d3.f1349s) & i5;
                            i3 = EnumC2462d3.f1350t;
                        }
                        i5 = i2 | i3;
                        i4 = 0;
                    }
                    int i6 = i4 + 1;
                    abstractC2446b2.f1300l = i4;
                    abstractC2446b2.f1301m = EnumC2462d3.m997h(i5, abstractC2446b.f1301m);
                    AbstractC2446b abstractC2446b3 = abstractC2446b2;
                    abstractC2446b2 = abstractC2446b2.f1299k;
                    abstractC2446b = abstractC2446b3;
                    i4 = i6;
                }
            }
            if (i != 0) {
                this.f1301m = EnumC2462d3.m997h(i, this.f1301m);
            }
            return spliteratorMo930B0;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: e0 */
    public final long mo981e0(Spliterator spliterator) {
        if (EnumC2462d3.SIZED.m1001k(this.f1301m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: s0 */
    public final InterfaceC2529p2 mo982s0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        mo978Z(spliterator, mo983t0((InterfaceC2529p2) Objects.requireNonNull(interfaceC2529p2)));
        return interfaceC2529p2;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: Z */
    public final void mo978Z(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        Objects.requireNonNull(interfaceC2529p2);
        if (!EnumC2462d3.SHORT_CIRCUIT.m1001k(this.f1301m)) {
            interfaceC2529p2.mo873m(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(interfaceC2529p2);
            interfaceC2529p2.end();
            return;
        }
        mo979a0(spliterator, interfaceC2529p2);
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: a0 */
    public final boolean mo979a0(Spliterator spliterator, InterfaceC2529p2 interfaceC2529p2) {
        AbstractC2446b abstractC2446b = this;
        while (abstractC2446b.f1300l > 0) {
            abstractC2446b = abstractC2446b.f1297i;
        }
        interfaceC2529p2.mo873m(spliterator.getExactSizeIfKnown());
        boolean zMo902y0 = abstractC2446b.mo902y0(spliterator, interfaceC2529p2);
        interfaceC2529p2.end();
        return zMo902y0;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: t0 */
    public final InterfaceC2529p2 mo983t0(InterfaceC2529p2 interfaceC2529p2) {
        Objects.requireNonNull(interfaceC2529p2);
        for (AbstractC2446b abstractC2446b = this; abstractC2446b.f1300l > 0; abstractC2446b = abstractC2446b.f1297i) {
            interfaceC2529p2 = abstractC2446b.mo931D0(abstractC2446b.f1297i.f1301m, interfaceC2529p2);
        }
        return interfaceC2529p2;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: u0 */
    public final Spliterator mo984u0(Spliterator spliterator) {
        return this.f1300l == 0 ? spliterator : mo889G0(this, new C2440a(1, spliterator), this.f1296h.f1306r);
    }

    /* JADX INFO: renamed from: A0 */
    public InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    /* JADX INFO: renamed from: B0 */
    public Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        return mo929A0(abstractC2446b, spliterator, new C2148a(9)).spliterator();
    }
}
