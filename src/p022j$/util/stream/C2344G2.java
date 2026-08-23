package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.G2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2344G2 extends AbstractC2324C2 {

    /* JADX INFO: renamed from: c */
    public C2418V2 f1142c;

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        C2418V2 c2418v2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            c2418v2 = new C2418V2();
        } else {
            c2418v2 = new C2418V2((int) j);
        }
        this.f1142c = c2418v2;
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int[] iArr = (int[]) this.f1142c.mo920b();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC2529p2 interfaceC2529p2 = this.f1400a;
        interfaceC2529p2.mo873m(length);
        int i = 0;
        if (!this.f1106b) {
            int length2 = iArr.length;
            while (i < length2) {
                interfaceC2529p2.accept(iArr[i]);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                int i2 = iArr[i];
                if (interfaceC2529p2.mo874p()) {
                    break;
                }
                interfaceC2529p2.accept(i2);
                i++;
            }
        }
        interfaceC2529p2.end();
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        this.f1142c.accept(i);
    }
}
