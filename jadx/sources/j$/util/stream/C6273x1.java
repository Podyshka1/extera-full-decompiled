package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* JADX INFO: renamed from: j$.util.stream.x1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public class C6273x1 extends CountedCompleter {

    /* JADX INFO: renamed from: a */
    public final I0 f1267a;

    /* JADX INFO: renamed from: b */
    public final int f1268b;

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ int f1269c;

    /* JADX INFO: renamed from: d */
    public final Object f1270d;

    public C6273x1(I0 i0, Object obj, int i) {
        this.f1269c = i;
        this.f1267a = i0;
        this.f1268b = 0;
        this.f1270d = obj;
    }

    public C6273x1(C6273x1 c6273x1, I0 i0, int i, byte b) {
        super(c6273x1);
        this.f1267a = i0;
        this.f1268b = i;
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C6273x1 c6273x1M881a = this;
        while (c6273x1M881a.f1267a.mo791h() != 0) {
            c6273x1M881a.setPendingCount(c6273x1M881a.f1267a.mo791h() - 1);
            int i = 0;
            int iCount = 0;
            while (i < c6273x1M881a.f1267a.mo791h() - 1) {
                C6273x1 c6273x1M881a2 = c6273x1M881a.m881a(i, c6273x1M881a.f1268b + iCount);
                iCount = (int) (c6273x1M881a2.f1267a.count() + ((long) iCount));
                c6273x1M881a2.fork();
                i++;
            }
            c6273x1M881a = c6273x1M881a.m881a(i, c6273x1M881a.f1268b + iCount);
        }
        switch (c6273x1M881a.f1269c) {
            case 0:
                ((H0) c6273x1M881a.f1267a).mo784c(c6273x1M881a.f1268b, c6273x1M881a.f1270d);
                break;
            default:
                c6273x1M881a.f1267a.mo789f((Object[]) c6273x1M881a.f1270d, c6273x1M881a.f1268b);
                break;
        }
        c6273x1M881a.propagateCompletion();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C6273x1(C6273x1 c6273x1, I0 i0, int i) {
        this(c6273x1, i0, i, (byte) 0);
        this.f1269c = 1;
        this.f1270d = (Object[]) c6273x1.f1270d;
    }

    /* JADX INFO: renamed from: a */
    public final C6273x1 m881a(int i, int i2) {
        switch (this.f1269c) {
            case 0:
                return new C6273x1(this, ((H0) this.f1267a).mo782a(i), i2);
            default:
                return new C6273x1(this, this.f1267a.mo782a(i), i2);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C6273x1(C6273x1 c6273x1, H0 h0, int i) {
        this(c6273x1, h0, i, (byte) 0);
        this.f1269c = 0;
        this.f1270d = c6273x1.f1270d;
    }
}
