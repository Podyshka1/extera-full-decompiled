package p022j$.util.stream;

import p022j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.F1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2338F1 extends AbstractC2573y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f1130h;

    public /* synthetic */ C2338F1(int i) {
        this.f1130h = i;
    }

    @Override // p022j$.util.stream.AbstractC2573y1
    /* JADX INFO: renamed from: r0 */
    public final InterfaceC2407T1 mo905r0() {
        switch (this.f1130h) {
            case 0:
                return new C2427X1();
            case 1:
                return new C2417V1();
            case 2:
                return new C2432Y1();
            default:
                return new C2422W1();
        }
    }

    @Override // p022j$.util.stream.AbstractC2573y1, p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: f */
    public final Object mo859f(AbstractC2446b abstractC2446b, Spliterator spliterator) {
        switch (this.f1130h) {
            case 0:
                if (!EnumC2462d3.SIZED.m1001k(abstractC2446b.f1301m)) {
                }
                break;
            case 1:
                if (!EnumC2462d3.SIZED.m1001k(abstractC2446b.f1301m)) {
                }
                break;
            case 2:
                if (!EnumC2462d3.SIZED.m1001k(abstractC2446b.f1301m)) {
                }
                break;
            default:
                if (!EnumC2462d3.SIZED.m1001k(abstractC2446b.f1301m)) {
                }
                break;
        }
        return (Long) super.mo859f(abstractC2446b, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2573y1, p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: i */
    public final Object mo860i(AbstractC2573y1 abstractC2573y1, Spliterator spliterator) {
        switch (this.f1130h) {
            case 0:
                if (!EnumC2462d3.SIZED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
                }
                break;
            case 1:
                if (!EnumC2462d3.SIZED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
                }
                break;
            case 2:
                if (!EnumC2462d3.SIZED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
                }
                break;
            default:
                if (!EnumC2462d3.SIZED.m1001k(((AbstractC2446b) abstractC2573y1).f1301m)) {
                }
                break;
        }
        return (Long) super.mo860i(abstractC2573y1, spliterator);
    }

    @Override // p022j$.util.stream.AbstractC2573y1, p022j$.util.stream.InterfaceC2375M3
    /* JADX INFO: renamed from: u */
    public final int mo861u() {
        switch (this.f1130h) {
        }
        return EnumC2462d3.f1348r;
    }
}
