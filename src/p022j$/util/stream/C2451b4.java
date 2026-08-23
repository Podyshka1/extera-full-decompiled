package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;
import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.b4 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2451b4 extends AbstractC2464e {

    /* JADX INFO: renamed from: h */
    public final AbstractC2446b f1311h;

    /* JADX INFO: renamed from: i */
    public final IntFunction f1312i;

    /* JADX INFO: renamed from: j */
    public final boolean f1313j;

    /* JADX INFO: renamed from: k */
    public long f1314k;

    /* JADX INFO: renamed from: l */
    public long f1315l;

    @Override // p022j$.util.stream.AbstractC2464e, java.util.concurrent.CountedCompleter
    public final void onCompletion(CountedCompleter countedCompleter) {
        AbstractC2464e abstractC2464e = this.f1364d;
        if (abstractC2464e != null) {
            if (this.f1313j) {
                C2451b4 c2451b4 = (C2451b4) abstractC2464e;
                long j = c2451b4.f1315l;
                this.f1315l = j;
                if (j == c2451b4.f1314k) {
                    this.f1315l = j + ((C2451b4) this.f1365e).f1315l;
                }
            }
            C2451b4 c2451b42 = (C2451b4) abstractC2464e;
            long j2 = c2451b42.f1314k;
            C2451b4 c2451b43 = (C2451b4) this.f1365e;
            this.f1314k = j2 + c2451b43.f1314k;
            InterfaceC2352I0 interfaceC2352I0M1060Y = c2451b42.f1314k == 0 ? (InterfaceC2352I0) c2451b43.f1366f : c2451b43.f1314k == 0 ? (InterfaceC2352I0) c2451b42.f1366f : AbstractC2573y1.m1060Y(this.f1311h.mo903z0(), (InterfaceC2352I0) ((C2451b4) this.f1364d).f1366f, (InterfaceC2352I0) ((C2451b4) this.f1365e).f1366f);
            if (m1004b() && this.f1313j) {
                interfaceC2352I0M1060Y = interfaceC2352I0M1060Y.mo925e(this.f1315l, interfaceC2352I0M1060Y.count(), this.f1312i);
            }
            this.f1366f = interfaceC2352I0M1060Y;
        }
        super.onCompletion(countedCompleter);
    }

    public C2451b4(AbstractC2446b abstractC2446b, AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        super(abstractC2573y1, spliterator);
        this.f1311h = abstractC2446b;
        this.f1312i = intFunction;
        this.f1313j = EnumC2462d3.ORDERED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m);
    }

    public C2451b4(C2451b4 c2451b4, Spliterator spliterator) {
        super(c2451b4, spliterator);
        this.f1311h = c2451b4.f1311h;
        this.f1312i = c2451b4.f1312i;
        this.f1313j = c2451b4.f1313j;
    }

    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: c */
    public final AbstractC2464e mo942c(Spliterator spliterator) {
        return new C2451b4(this, spliterator);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001c  */
    @Override // p022j$.util.stream.AbstractC2464e
    /* JADX INFO: renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object mo941a() {
        long jMo981e0;
        boolean zM1004b = m1004b();
        if (zM1004b || !this.f1313j) {
            jMo981e0 = -1;
        } else {
            EnumC2462d3 enumC2462d3 = EnumC2462d3.SIZED;
            AbstractC2446b abstractC2446b = this.f1311h;
            int i = abstractC2446b.f1298j;
            int i2 = enumC2462d3.f1357e;
            if ((i & i2) == i2) {
                jMo981e0 = abstractC2446b.mo981e0(this.f1362b);
            }
        }
        InterfaceC2312A0 interfaceC2312A0Mo896p0 = this.f1361a.mo896p0(jMo981e0, this.f1312i);
        InterfaceC2445a4 interfaceC2445a4Mo932h = ((InterfaceC2439Z3) this.f1311h).mo932h(interfaceC2312A0Mo896p0, this.f1313j && !zM1004b);
        this.f1361a.mo982s0(this.f1362b, interfaceC2445a4Mo932h);
        InterfaceC2352I0 interfaceC2352I0Build = interfaceC2312A0Mo896p0.build();
        this.f1314k = interfaceC2352I0Build.count();
        this.f1315l = interfaceC2445a4Mo932h.mo957s();
        return interfaceC2352I0Build;
    }
}
