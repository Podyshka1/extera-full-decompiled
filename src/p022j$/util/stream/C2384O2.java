package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.O2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2384O2 extends AbstractC2324C2 {

    /* JADX INFO: renamed from: c */
    public int[] f1211c;

    /* JADX INFO: renamed from: d */
    public int f1212d;

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1211c = new int[(int) j];
    }

    @Override // p022j$.util.stream.AbstractC2497j2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f1211c, 0, this.f1212d);
        long j = this.f1212d;
        InterfaceC2529p2 interfaceC2529p2 = this.f1400a;
        interfaceC2529p2.mo873m(j);
        if (!this.f1106b) {
            while (i < this.f1212d) {
                interfaceC2529p2.accept(this.f1211c[i]);
                i++;
            }
        } else {
            while (i < this.f1212d && !interfaceC2529p2.mo874p()) {
                interfaceC2529p2.accept(this.f1211c[i]);
                i++;
            }
        }
        interfaceC2529p2.end();
        this.f1211c = null;
    }

    @Override // p022j$.util.stream.InterfaceC2519n2, p022j$.util.stream.InterfaceC2529p2
    public final void accept(int i) {
        int[] iArr = this.f1211c;
        int i2 = this.f1212d;
        this.f1212d = i2 + 1;
        iArr[i2] = i;
    }
}
