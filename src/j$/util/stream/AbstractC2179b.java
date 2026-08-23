package j$.util.stream;

import j$.time.format.C2009a;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.function.IntFunction;
import java.util.function.Supplier;

/* JADX INFO: renamed from: j$.util.stream.b */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2179b extends AbstractC6277y1 implements BaseStream {

    /* JADX INFO: renamed from: h */
    public final AbstractC2179b f1061h;

    /* JADX INFO: renamed from: i */
    public final AbstractC2179b f1062i;

    /* JADX INFO: renamed from: j */
    public final int f1063j;

    /* JADX INFO: renamed from: k */
    public final AbstractC2179b f1064k;

    /* JADX INFO: renamed from: l */
    public int f1065l;

    /* JADX INFO: renamed from: m */
    public int f1066m;

    /* JADX INFO: renamed from: n */
    public Spliterator f1067n;

    /* JADX INFO: renamed from: o */
    public boolean f1068o;

    /* JADX INFO: renamed from: p */
    public final boolean f1069p;

    /* JADX INFO: renamed from: q */
    public Runnable f1070q;

    /* JADX INFO: renamed from: r */
    public boolean f1071r;

    public abstract boolean C0();

    public abstract InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2);

    public abstract Spliterator G0(AbstractC2179b abstractC2179b, Supplier supplier, boolean z);

    public abstract I0 x0(AbstractC2179b abstractC2179b, Spliterator spliterator, boolean z, IntFunction intFunction);

    public abstract boolean y0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2);

    public abstract EnumC6199e3 z0();

    public AbstractC2179b(Spliterator spliterator, int i, boolean z) {
        this.f1062i = null;
        this.f1067n = spliterator;
        this.f1061h = this;
        int i2 = EnumC6195d3.f1101g & i;
        this.f1063j = i2;
        this.f1066m = (~(i2 << 1)) & EnumC6195d3.f1106l;
        this.f1065l = 0;
        this.f1071r = z;
    }

    public AbstractC2179b(AbstractC2179b abstractC2179b, int i) {
        if (abstractC2179b.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        abstractC2179b.f1068o = true;
        abstractC2179b.f1064k = this;
        this.f1062i = abstractC2179b;
        this.f1063j = EnumC6195d3.f1102h & i;
        this.f1066m = EnumC6195d3.m846h(i, abstractC2179b.f1066m);
        AbstractC2179b abstractC2179b2 = abstractC2179b.f1061h;
        this.f1061h = abstractC2179b2;
        if (C0()) {
            abstractC2179b2.f1069p = true;
        }
        this.f1065l = abstractC2179b.f1065l + 1;
    }

    public final Object v0(M3 m3) {
        if (this.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1068o = true;
        if (this.f1061h.f1071r) {
            return m3.mo734i(this, E0(m3.mo735u()));
        }
        return m3.mo733f(this, E0(m3.mo735u()));
    }

    public final I0 w0(IntFunction intFunction) {
        if (this.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1068o = true;
        if (this.f1061h.f1071r && this.f1062i != null && C0()) {
            this.f1065l = 0;
            AbstractC2179b abstractC2179b = this.f1062i;
            return A0(abstractC2179b, abstractC2179b.E0(0), intFunction);
        }
        return d0(E0(0), true, intFunction);
    }

    public final Spliterator F0() {
        AbstractC2179b abstractC2179b = this.f1061h;
        if (this != abstractC2179b) {
            throw new IllegalStateException();
        }
        if (this.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1068o = true;
        Spliterator spliterator = abstractC2179b.f1067n;
        if (spliterator != null) {
            abstractC2179b.f1067n = null;
            return spliterator;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    public final BaseStream sequential() {
        this.f1061h.f1071r = false;
        return this;
    }

    public final BaseStream parallel() {
        this.f1061h.f1071r = true;
        return this;
    }

    @Override // j$.util.stream.BaseStream, java.lang.AutoCloseable
    public final void close() {
        this.f1068o = true;
        this.f1067n = null;
        AbstractC2179b abstractC2179b = this.f1061h;
        Runnable runnable = abstractC2179b.f1070q;
        if (runnable != null) {
            abstractC2179b.f1070q = null;
            runnable.run();
        }
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream onClose(Runnable runnable) {
        if (this.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        Objects.requireNonNull(runnable);
        AbstractC2179b abstractC2179b = this.f1061h;
        Runnable runnable2 = abstractC2179b.f1070q;
        if (runnable2 != null) {
            runnable = new J3(0, runnable2, runnable);
        }
        abstractC2179b.f1070q = runnable;
        return this;
    }

    public Spliterator spliterator() {
        if (this.f1068o) {
            throw new IllegalStateException("stream has already been operated upon or closed");
        }
        this.f1068o = true;
        AbstractC2179b abstractC2179b = this.f1061h;
        if (this == abstractC2179b) {
            Spliterator spliterator = abstractC2179b.f1067n;
            if (spliterator != null) {
                abstractC2179b.f1067n = null;
                return spliterator;
            }
            throw new IllegalStateException("source already consumed or closed");
        }
        return G0(this, new C2178a(0, this), abstractC2179b.f1071r);
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final I0 d0(Spliterator spliterator, boolean z, IntFunction intFunction) {
        if (this.f1061h.f1071r) {
            return x0(this, spliterator, z, intFunction);
        }
        A0 a0P0 = p0(e0(spliterator), intFunction);
        s0(spliterator, a0P0);
        return a0P0.build();
    }

    @Override // j$.util.stream.BaseStream
    public final boolean isParallel() {
        return this.f1061h.f1071r;
    }

    public final Spliterator E0(int i) {
        int i2;
        int i3;
        AbstractC2179b abstractC2179b = this.f1061h;
        Spliterator spliteratorB0 = abstractC2179b.f1067n;
        if (spliteratorB0 != null) {
            abstractC2179b.f1067n = null;
            if (abstractC2179b.f1071r && abstractC2179b.f1069p) {
                AbstractC2179b abstractC2179b2 = abstractC2179b.f1064k;
                int i4 = 1;
                while (abstractC2179b != this) {
                    int i5 = abstractC2179b2.f1063j;
                    if (abstractC2179b2.C0()) {
                        if (EnumC6195d3.SHORT_CIRCUIT.m850k(i5)) {
                            i5 &= ~EnumC6195d3.f1115u;
                        }
                        spliteratorB0 = abstractC2179b2.B0(abstractC2179b, spliteratorB0);
                        if (spliteratorB0.hasCharacteristics(64)) {
                            i2 = (~EnumC6195d3.f1114t) & i5;
                            i3 = EnumC6195d3.f1113s;
                        } else {
                            i2 = (~EnumC6195d3.f1113s) & i5;
                            i3 = EnumC6195d3.f1114t;
                        }
                        i5 = i2 | i3;
                        i4 = 0;
                    }
                    int i6 = i4 + 1;
                    abstractC2179b2.f1065l = i4;
                    abstractC2179b2.f1066m = EnumC6195d3.m846h(i5, abstractC2179b.f1066m);
                    AbstractC2179b abstractC2179b3 = abstractC2179b2;
                    abstractC2179b2 = abstractC2179b2.f1064k;
                    abstractC2179b = abstractC2179b3;
                    i4 = i6;
                }
            }
            if (i != 0) {
                this.f1066m = EnumC6195d3.m846h(i, this.f1066m);
            }
            return spliteratorB0;
        }
        throw new IllegalStateException("source already consumed or closed");
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final long e0(Spliterator spliterator) {
        if (EnumC6195d3.SIZED.m850k(this.f1066m)) {
            return spliterator.getExactSizeIfKnown();
        }
        return -1L;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final InterfaceC6242p2 s0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        mo836Z(spliterator, t0((InterfaceC6242p2) Objects.requireNonNull(interfaceC6242p2)));
        return interfaceC6242p2;
    }

    @Override // j$.util.stream.AbstractC6277y1
    /* JADX INFO: renamed from: Z */
    public final void mo836Z(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        Objects.requireNonNull(interfaceC6242p2);
        if (!EnumC6195d3.SHORT_CIRCUIT.m850k(this.f1066m)) {
            interfaceC6242p2.mo744m(spliterator.getExactSizeIfKnown());
            spliterator.forEachRemaining(interfaceC6242p2);
            interfaceC6242p2.end();
            return;
        }
        a0(spliterator, interfaceC6242p2);
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final boolean a0(Spliterator spliterator, InterfaceC6242p2 interfaceC6242p2) {
        AbstractC2179b abstractC2179b = this;
        while (abstractC2179b.f1065l > 0) {
            abstractC2179b = abstractC2179b.f1062i;
        }
        interfaceC6242p2.mo744m(spliterator.getExactSizeIfKnown());
        boolean zY0 = abstractC2179b.y0(spliterator, interfaceC6242p2);
        interfaceC6242p2.end();
        return zY0;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final InterfaceC6242p2 t0(InterfaceC6242p2 interfaceC6242p2) {
        Objects.requireNonNull(interfaceC6242p2);
        for (AbstractC2179b abstractC2179b = this; abstractC2179b.f1065l > 0; abstractC2179b = abstractC2179b.f1062i) {
            interfaceC6242p2 = abstractC2179b.D0(abstractC2179b.f1062i.f1066m, interfaceC6242p2);
        }
        return interfaceC6242p2;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final Spliterator u0(Spliterator spliterator) {
        return this.f1065l == 0 ? spliterator : G0(this, new C2178a(1, spliterator), this.f1061h.f1071r);
    }

    public I0 A0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, IntFunction intFunction) {
        throw new UnsupportedOperationException("Parallel evaluation is not supported");
    }

    public Spliterator B0(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        return A0(abstractC2179b, spliterator, new C2009a(9)).spliterator();
    }
}
