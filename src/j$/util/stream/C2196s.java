package j$.util.stream;

import java.util.function.Consumer;

/* JADX INFO: renamed from: j$.util.stream.s */
/* JADX INFO: loaded from: classes2.dex */
public final class C2196s extends AbstractC6206g2 {

    /* JADX INFO: renamed from: s */
    public final /* synthetic */ int f1230s;

    /* JADX INFO: renamed from: t */
    public final /* synthetic */ Object f1231t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C2196s(AbstractC2179b abstractC2179b, int i, Object obj, int i2) {
        super(abstractC2179b, i);
        this.f1230s = i2;
        this.f1231t = obj;
    }

    @Override // j$.util.stream.AbstractC2179b
    public final InterfaceC6242p2 D0(int i, InterfaceC6242p2 interfaceC6242p2) {
        switch (this.f1230s) {
            case 0:
                return new C2195r(this, interfaceC6242p2, 0);
            case 1:
                return new C2173V(this, interfaceC6242p2, 0);
            case 2:
                return new C6196e0(this, interfaceC6242p2, 0);
            case 3:
                return new C2191n(this, interfaceC6242p2, 1);
            case 4:
                return new C2191n(this, interfaceC6242p2, 2);
            case 5:
                return new C2191n(this, interfaceC6242p2, 3);
            default:
                return new C2190m(this, interfaceC6242p2);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2196s(AbstractC6210h2 abstractC6210h2, Consumer consumer) {
        super(abstractC6210h2, 0);
        this.f1230s = 3;
        this.f1231t = consumer;
    }
}
