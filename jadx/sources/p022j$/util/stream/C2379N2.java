package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.N2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2379N2 extends AbstractC2319B2 {

    /* JADX INFO: renamed from: c */
    public double[] f1203c;

    /* JADX INFO: renamed from: d */
    public int f1204d;

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1203c = new double[(int) j];
    }

    @Override // p022j$.util.stream.AbstractC2491i2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f1203c, 0, this.f1204d);
        long j = this.f1204d;
        InterfaceC2529p2 interfaceC2529p2 = this.f1394a;
        interfaceC2529p2.mo873m(j);
        if (!this.f1100b) {
            while (i < this.f1204d) {
                interfaceC2529p2.accept(this.f1203c[i]);
                i++;
            }
        } else {
            while (i < this.f1204d && !interfaceC2529p2.mo874p()) {
                interfaceC2529p2.accept(this.f1203c[i]);
                i++;
            }
        }
        interfaceC2529p2.end();
        this.f1203c = null;
    }

    @Override // p022j$.util.stream.InterfaceC2514m2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(double d) {
        double[] dArr = this.f1203c;
        int i = this.f1204d;
        this.f1204d = i + 1;
        dArr[i] = d;
    }
}
