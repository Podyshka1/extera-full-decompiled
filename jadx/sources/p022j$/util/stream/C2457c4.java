package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.c4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2457c4 extends AbstractC2452c {

    /* JADX INFO: renamed from: j */
    public final AbstractC2446b f1320j;

    /* JADX INFO: renamed from: k */
    public final IntFunction f1321k;

    /* JADX INFO: renamed from: l */
    public final boolean f1322l;

    /* JADX INFO: renamed from: m */
    public long f1323m;

    /* JADX INFO: renamed from: n */
    public boolean f1324n;

    /* JADX INFO: renamed from: o */
    public volatile boolean f1325o;

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: f */
    public final void mo991f() {
        this.f1317i = true;
        if (this.f1322l && this.f1325o) {
            mo990d(AbstractC2573y1.m1062c0(this.f1320j.mo903z0()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0041  */
    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCompletion(CountedCompleter countedCompleter) {
        Object objM1060Y;
        AbstractC2464e abstractC2464e = this.f1364d;
        if (abstractC2464e != null) {
            this.f1324n = ((C2457c4) abstractC2464e).f1324n | ((C2457c4) this.f1365e).f1324n;
            if (this.f1322l && this.f1317i) {
                this.f1323m = 0L;
                objM1060Y = AbstractC2573y1.m1062c0(this.f1320j.mo903z0());
            } else if (this.f1322l) {
                C2457c4 c2457c4 = (C2457c4) this.f1364d;
                if (c2457c4.f1324n) {
                    this.f1323m = c2457c4.f1323m;
                    objM1060Y = (InterfaceC2352I0) c2457c4.m993i();
                } else {
                    C2457c4 c2457c42 = (C2457c4) this.f1364d;
                    long j = c2457c42.f1323m;
                    C2457c4 c2457c43 = (C2457c4) this.f1365e;
                    this.f1323m = j + c2457c43.f1323m;
                    if (c2457c42.f1323m == 0) {
                        objM1060Y = (InterfaceC2352I0) c2457c43.m993i();
                    } else if (c2457c43.f1323m == 0) {
                        objM1060Y = (InterfaceC2352I0) c2457c42.m993i();
                    } else {
                        objM1060Y = AbstractC2573y1.m1060Y(this.f1320j.mo903z0(), (InterfaceC2352I0) ((C2457c4) this.f1364d).m993i(), (InterfaceC2352I0) ((C2457c4) this.f1365e).m993i());
                    }
                }
            }
            mo990d(objM1060Y);
        }
        this.f1325o = true;
        super.onCompletion(countedCompleter);
    }

    public C2457c4(AbstractC2446b abstractC2446b, AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC2573y1, spliterator);
        this.f1320j = abstractC2446b;
        this.f1321k = intFunction;
        this.f1322l = EnumC2462d3.ORDERED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m);
    }

    public C2457c4(C2457c4 c2457c4, Spliterator spliterator) {
        super(c2457c4, spliterator);
        this.f1320j = c2457c4.f1320j;
        this.f1321k = c2457c4.f1321k;
        this.f1322l = c2457c4.f1322l;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2457c4(this, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2452c
    /* JADX INFO: renamed from: h */
    public final Object mo943h() {
        return AbstractC2573y1.m1062c0(this.f1320j.mo903z0());
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    public final Object mo941a() {
        InterfaceC2312A0 interfaceC2312A0Mo896p0 = this.f1361a.mo896p0(-1L, this.f1321k);
        InterfaceC2529p2 interfaceC2529p2Mo931D0 = this.f1320j.mo931D0(((AbstractC2446b) this.f1361a).f1301m, interfaceC2312A0Mo896p0);
        AbstractC2573y1 abstractC2573y1 = this.f1361a;
        boolean zMo979a0 = abstractC2573y1.mo979a0(this.f1362b, abstractC2573y1.mo983t0(interfaceC2529p2Mo931D0));
        this.f1324n = zMo979a0;
        if (zMo979a0) {
            m992g();
        }
        InterfaceC2352I0 interfaceC2352I0Build = interfaceC2312A0Mo896p0.build();
        this.f1323m = interfaceC2352I0Build.count();
        return interfaceC2352I0Build;
    }
}
