package j$.util.stream;

import j$.util.Spliterator;

/* JADX INFO: loaded from: classes2.dex */
public final class F1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ int f895h;

    public /* synthetic */ F1(int i) {
        this.f895h = i;
    }

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        switch (this.f895h) {
            case 0:
                return new X1();
            case 1:
                return new V1();
            case 2:
                return new Y1();
            default:
                return new W1();
        }
    }

    @Override // j$.util.stream.AbstractC6277y1, j$.util.stream.M3
    /* JADX INFO: renamed from: f */
    public final Object mo733f(AbstractC2179b abstractC2179b, Spliterator spliterator) {
        switch (this.f895h) {
            case 0:
                if (!EnumC6195d3.SIZED.m850k(abstractC2179b.f1066m)) {
                }
                break;
            case 1:
                if (!EnumC6195d3.SIZED.m850k(abstractC2179b.f1066m)) {
                }
                break;
            case 2:
                if (!EnumC6195d3.SIZED.m850k(abstractC2179b.f1066m)) {
                }
                break;
            default:
                if (!EnumC6195d3.SIZED.m850k(abstractC2179b.f1066m)) {
                }
                break;
        }
        return (Long) super.mo733f(abstractC2179b, spliterator);
    }

    @Override // j$.util.stream.AbstractC6277y1, j$.util.stream.M3
    /* JADX INFO: renamed from: i */
    public final Object mo734i(AbstractC6277y1 abstractC6277y1, Spliterator spliterator) {
        switch (this.f895h) {
            case 0:
                if (!EnumC6195d3.SIZED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
                }
                break;
            case 1:
                if (!EnumC6195d3.SIZED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
                }
                break;
            case 2:
                if (!EnumC6195d3.SIZED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
                }
                break;
            default:
                if (!EnumC6195d3.SIZED.m850k(((AbstractC2179b) abstractC6277y1).f1066m)) {
                }
                break;
        }
        return (Long) super.mo734i(abstractC6277y1, spliterator);
    }

    @Override // j$.util.stream.AbstractC6277y1, j$.util.stream.M3
    /* JADX INFO: renamed from: u */
    public final int mo735u() {
        switch (this.f895h) {
        }
        return EnumC6195d3.f1112r;
    }
}
