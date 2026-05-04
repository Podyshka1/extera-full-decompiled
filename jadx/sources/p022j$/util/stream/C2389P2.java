package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.P2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2389P2 extends AbstractC2329D2 {

    /* JADX INFO: renamed from: c */
    public long[] f1218c;

    /* JADX INFO: renamed from: d */
    public int f1219d;

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1218c = new long[(int) j];
    }

    @Override // p022j$.util.stream.AbstractC2503k2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f1218c, 0, this.f1219d);
        long j = this.f1219d;
        InterfaceC2529p2 interfaceC2529p2 = this.f1409a;
        interfaceC2529p2.mo873m(j);
        if (!this.f1117b) {
            while (i < this.f1219d) {
                interfaceC2529p2.accept(this.f1218c[i]);
                i++;
            }
        } else {
            while (i < this.f1219d && !interfaceC2529p2.mo874p()) {
                interfaceC2529p2.accept(this.f1218c[i]);
                i++;
            }
        }
        interfaceC2529p2.end();
        this.f1218c = null;
    }

    @Override // p022j$.util.stream.InterfaceC2524o2, java.util.function.LongConsumer
    public final void accept(long j) {
        long[] jArr = this.f1218c;
        int i = this.f1219d;
        this.f1219d = i + 1;
        jArr[i] = j;
    }
}
