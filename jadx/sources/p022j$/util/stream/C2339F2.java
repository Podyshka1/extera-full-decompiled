package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.F2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2339F2 extends AbstractC2319B2 {

    /* JADX INFO: renamed from: c */
    public C2408T2 f1131c;

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        C2408T2 c2408t2;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        if (j <= 0) {
            c2408t2 = new C2408T2();
        } else {
            c2408t2 = new C2408T2((int) j);
        }
        this.f1131c = c2408t2;
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        double[] dArr = (double[]) this.f1131c.mo920b();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC2529p2 interfaceC2529p2 = this.f1394a;
        interfaceC2529p2.mo873m(length);
        int i = 0;
        if (!this.f1100b) {
            int length2 = dArr.length;
            while (i < length2) {
                interfaceC2529p2.accept(dArr[i]);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                double d = dArr[i];
                if (interfaceC2529p2.mo874p()) {
                    break;
                }
                interfaceC2529p2.accept(d);
                i++;
            }
        }
        interfaceC2529p2.end();
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        this.f1131c.accept(d);
    }
}
