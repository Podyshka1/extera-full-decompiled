package p022j$.util.stream;

import java.util.function.IntFunction;
import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.t2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2549t2 extends AbstractC2441a0 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ long f1480s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ long f1481t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2549t2(AbstractC2453c0 abstractC2453c0, int i, long j, long j2) {
        super(abstractC2453c0, i);
        this.f1480s = j;
        this.f1481t = j2;
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: B0 */
    public final Spliterator mo930B0(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        long jMo981e0 = abstractC2446b.mo981e0(spliterator);
        if (jMo981e0 > 0 && spliterator.hasCharacteristics(16384)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC2446b.mo984u0(spliterator);
            long j = this.f1480s;
            return new C2555u3(ofInt, j, AbstractC2314A2.m879c(j, this.f1481t));
        }
        if (EnumC2462d3.ORDERED.m1001k(abstractC2446b.f1301m)) {
            return ((InterfaceC2352I0) new C2579z2(this, abstractC2446b, spliterator, new C2459d0(11), this.f1480s, this.f1481t).invoke()).spliterator();
        }
        Spliterator.OfInt ofInt2 = (Spliterator.OfInt) abstractC2446b.mo984u0(spliterator);
        long j2 = this.f1480s;
        long j3 = this.f1481t;
        if (j2 <= jMo981e0) {
            long jMin = jMo981e0 - j2;
            if (j3 >= 0) {
                jMin = Math.min(j3, jMin);
            }
            j3 = jMin;
            j2 = 0;
        }
        return new C2315A3(ofInt2, j2, j3);
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: A0 */
    public final InterfaceC2352I0 mo929A0(AbstractC2573y1 abstractC2573y1, Spliterator spliterator, IntFunction intFunction) {
        long jMin;
        long j;
        long jMo981e0 = abstractC2573y1.mo981e0(spliterator);
        if (jMo981e0 > 0 && spliterator.hasCharacteristics(16384)) {
            AbstractC2446b abstractC2446b = (AbstractC2446b) abstractC2573y1;
            while (abstractC2446b.f1300l > 0) {
                abstractC2446b = abstractC2446b.f1297i;
            }
            return AbstractC2573y1.m1058W(abstractC2573y1, AbstractC2314A2.m878b(abstractC2446b.mo903z0(), spliterator, this.f1480s, this.f1481t), true);
        }
        if (!EnumC2462d3.ORDERED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
            Spliterator.OfInt ofInt = (Spliterator.OfInt) abstractC2573y1.mo984u0(spliterator);
            long j2 = this.f1480s;
            long j3 = this.f1481t;
            if (j2 <= jMo981e0) {
                long j4 = jMo981e0 - j2;
                jMin = j3 >= 0 ? Math.min(j3, j4) : j4;
                j = 0;
            } else {
                jMin = j3;
                j = j2;
            }
            return AbstractC2573y1.m1058W(this, new C2315A3(ofInt, j, jMin), true);
        }
        return (InterfaceC2352I0) new C2579z2(this, abstractC2573y1, spliterator, intFunction, this.f1480s, this.f1481t).invoke();
    }

    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: D0 */
    public final InterfaceC2529p2 mo931D0(int i, InterfaceC2529p2 interfaceC2529p2) {
        return new C2544s2(this, interfaceC2529p2);
    }
}
