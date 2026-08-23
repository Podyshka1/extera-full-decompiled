package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.z2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2579z2 extends AbstractC2452c {

    /* JADX INFO: renamed from: j */
    public final AbstractC2446b f1524j;

    /* JADX INFO: renamed from: k */
    public final IntFunction f1525k;

    /* JADX INFO: renamed from: l */
    public final long f1526l;

    /* JADX INFO: renamed from: m */
    public final long f1527m;

    /* JADX INFO: renamed from: n */
    public long f1528n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f1529o;

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: f */
    public final void mo991f() {
        this.f1317i = true;
        if (this.f1529o) {
            mo990d(AbstractC2573y1.m1062c0(this.f1524j.mo903z0()));
        }
    }

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        C2579z2 c2579z2;
        InterfaceC2352I0 interfaceC2352I0M1062c0;
        AbstractC2464e abstractC2464e = this.f1364d;
        if (abstractC2464e != null) {
            this.f1528n = ((C2579z2) abstractC2464e).f1528n + ((C2579z2) this.f1365e).f1528n;
            if (this.f1317i) {
                this.f1528n = 0L;
                interfaceC2352I0M1062c0 = AbstractC2573y1.m1062c0(this.f1524j.mo903z0());
            } else {
                interfaceC2352I0M1062c0 = this.f1528n == 0 ? AbstractC2573y1.m1062c0(this.f1524j.mo903z0()) : ((C2579z2) this.f1364d).f1528n == 0 ? (InterfaceC2352I0) ((C2579z2) this.f1365e).m993i() : AbstractC2573y1.m1060Y(this.f1524j.mo903z0(), (InterfaceC2352I0) ((C2579z2) this.f1364d).m993i(), (InterfaceC2352I0) ((C2579z2) this.f1365e).m993i());
            }
            InterfaceC2352I0 interfaceC2352I0Mo925e = interfaceC2352I0M1062c0;
            if (m1004b()) {
                interfaceC2352I0Mo925e = interfaceC2352I0Mo925e.mo925e(this.f1526l, this.f1527m >= 0 ? Math.min(interfaceC2352I0Mo925e.count(), this.f1526l + this.f1527m) : this.f1528n, this.f1525k);
            }
            mo990d(interfaceC2352I0Mo925e);
            this.f1529o = true;
        }
        if (this.f1527m >= 0 && !m1004b()) {
            long j = this.f1526l + this.f1527m;
            long jM1075j = this.f1529o ? this.f1528n : m1075j(j);
            if (jM1075j >= j) {
                m992g();
            } else {
                C2579z2 c2579z22 = (C2579z2) ((AbstractC2464e) getCompleter());
                Object obj = this;
                while (true) {
                    if (c2579z22 == null) {
                        if (jM1075j >= j) {
                            break;
                        }
                    } else {
                        if (obj == c2579z22.f1365e && (c2579z2 = (C2579z2) c2579z22.f1364d) != null) {
                            long jM1075j2 = c2579z2.m1075j(j) + jM1075j;
                            if (jM1075j2 >= j) {
                                break;
                            } else {
                                jM1075j = jM1075j2;
                            }
                        }
                        obj = c2579z22;
                        c2579z22 = (C2579z2) ((AbstractC2464e) c2579z22.getCompleter());
                    }
                }
                m992g();
            }
        }
        super.onCompletion(countedCompleter);
    }

    public C2579z2(AbstractC2446b abstractC2446b, AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction, long j, long j2) {
        super(abstractC2573y1, spliterator);
        this.f1524j = abstractC2446b;
        this.f1525k = intFunction;
        this.f1526l = j;
        this.f1527m = j2;
    }

    public C2579z2(C2579z2 c2579z2, Spliterator spliterator) {
        super(c2579z2, spliterator);
        this.f1524j = c2579z2.f1524j;
        this.f1525k = c2579z2.f1525k;
        this.f1526l = c2579z2.f1526l;
        this.f1527m = c2579z2.f1527m;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2579z2(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: h */
    public final Object mo943h() {
        return AbstractC2573y1.m1062c0(this.f1524j.mo903z0());
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    public final Object mo941a() {
        if (m1004b()) {
            EnumC2462d3 enumC2462d3 = EnumC2462d3.SIZED;
            AbstractC2446b abstractC2446b = this.f1524j;
            int i = abstractC2446b.f1298j;
            int i2 = enumC2462d3.f1357e;
            InterfaceC2312A0 interfaceC2312A0Mo896p0 = this.f1524j.mo896p0((i & i2) == i2 ? abstractC2446b.mo981e0(this.f1362b) : -1L, this.f1525k);
            InterfaceC2529p2 interfaceC2529p2Mo931D0 = this.f1524j.mo931D0(((AbstractC2446b) this.f1361a).f1301m, interfaceC2312A0Mo896p0);
            AbstractC2573y1 abstractC2573y1 = this.f1361a;
            abstractC2573y1.mo979a0(this.f1362b, abstractC2573y1.mo983t0(interfaceC2529p2Mo931D0));
            return interfaceC2312A0Mo896p0.build();
        }
        InterfaceC2312A0 interfaceC2312A0Mo896p02 = this.f1524j.mo896p0(-1L, this.f1525k);
        if (this.f1526l == 0) {
            InterfaceC2529p2 interfaceC2529p2Mo931D02 = this.f1524j.mo931D0(((AbstractC2446b) this.f1361a).f1301m, interfaceC2312A0Mo896p02);
            AbstractC2573y1 abstractC2573y12 = this.f1361a;
            abstractC2573y12.mo979a0(this.f1362b, abstractC2573y12.mo983t0(interfaceC2529p2Mo931D02));
        } else {
            this.f1361a.mo982s0(this.f1362b, interfaceC2312A0Mo896p02);
        }
        InterfaceC2352I0 interfaceC2352I0Build = interfaceC2312A0Mo896p02.build();
        this.f1528n = interfaceC2352I0Build.count();
        this.f1529o = true;
        this.f1362b = null;
        return interfaceC2352I0Build;
    }

    /* JADX INFO: renamed from: j */
    public final long m1075j(long j) {
        if (this.f1529o) {
            return this.f1528n;
        }
        C2579z2 c2579z2 = (C2579z2) this.f1364d;
        C2579z2 c2579z22 = (C2579z2) this.f1365e;
        if (c2579z2 == null || c2579z22 == null) {
            return this.f1528n;
        }
        long jM1075j = c2579z2.m1075j(j);
        return jM1075j >= j ? jM1075j : c2579z22.m1075j(j) + jM1075j;
    }
}
