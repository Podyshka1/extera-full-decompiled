package p022j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* JADX INFO: renamed from: j$.util.stream.x1 */
/* JADX INFO: loaded from: classes2.dex */
public class C2568x1 extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public final InterfaceC2352I0 f1503a;

    /* JADX INFO: renamed from: b */
    public final int f1504b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f1505c;

    /* JADX INFO: renamed from: d */
    public final Object f1506d;

    public C2568x1(InterfaceC2352I0 interfaceC2352I0, Object obj, int i) {
        this.f1505c = i;
        this.f1503a = interfaceC2352I0;
        this.f1504b = 0;
        this.f1506d = obj;
    }

    public C2568x1(C2568x1 c2568x1, InterfaceC2352I0 interfaceC2352I0, int i, byte b) {
        super(c2568x1);
        this.f1503a = interfaceC2352I0;
        this.f1504b = i;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C2568x1 c2568x1M1035a = this;
        while (c2568x1M1035a.f1503a.mo928h() != 0) {
            c2568x1M1035a.setPendingCount(c2568x1M1035a.f1503a.mo928h() - 1);
            int i = 0;
            int iCount = 0;
            while (i < c2568x1M1035a.f1503a.mo928h() - 1) {
                C2568x1 c2568x1M1035a2 = c2568x1M1035a.m1035a(i, c2568x1M1035a.f1504b + iCount);
                iCount = (int) (c2568x1M1035a2.f1503a.count() + ((long) iCount));
                c2568x1M1035a2.fork();
                i++;
            }
            c2568x1M1035a = c2568x1M1035a.m1035a(i, c2568x1M1035a.f1504b + iCount);
        }
        switch (c2568x1M1035a.f1505c) {
            case 0:
                ((InterfaceC2347H0) c2568x1M1035a.f1503a).mo921c(c2568x1M1035a.f1504b, c2568x1M1035a.f1506d);
                break;
            default:
                c2568x1M1035a.f1503a.mo926f((Object[]) c2568x1M1035a.f1506d, c2568x1M1035a.f1504b);
                break;
        }
        c2568x1M1035a.propagateCompletion();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2568x1(C2568x1 c2568x1, InterfaceC2352I0 interfaceC2352I0, int i) {
        this(c2568x1, interfaceC2352I0, i, (byte) 0);
        this.f1505c = 1;
        this.f1506d = (Object[]) c2568x1.f1506d;
    }

    /* JADX INFO: renamed from: a */
    public final C2568x1 m1035a(int i, int i2) {
        switch (this.f1505c) {
            case 0:
                return new C2568x1(this, ((InterfaceC2347H0) this.f1503a).mo919a(i), i2);
            default:
                return new C2568x1(this, this.f1503a.mo919a(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C2568x1(C2568x1 c2568x1, InterfaceC2347H0 interfaceC2347H0, int i) {
        this(c2568x1, interfaceC2347H0, i, (byte) 0);
        this.f1505c = 0;
        this.f1506d = c2568x1.f1506d;
    }
}
