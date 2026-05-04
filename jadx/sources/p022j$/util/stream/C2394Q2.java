package p022j$.util.stream;

import java.util.Arrays;

/* JADX INFO: renamed from: j$.util.stream.Q2 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2394Q2 extends AbstractC2334E2 {

    /* JADX INFO: renamed from: d */
    public Object[] f1226d;

    /* JADX INFO: renamed from: e */
    public int f1227e;

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    /* JADX INFO: renamed from: m */
    public final void mo873m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f1226d = new Object[(int) j];
    }

    @Override // p022j$.util.stream.AbstractC2509l2, p022j$.util.stream.InterfaceC2529p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f1226d, 0, this.f1227e, this.f1122b);
        long j = this.f1227e;
        InterfaceC2529p2 interfaceC2529p2 = this.f1423a;
        interfaceC2529p2.mo873m(j);
        if (!this.f1123c) {
            while (i < this.f1227e) {
                interfaceC2529p2.accept(this.f1226d[i]);
                i++;
            }
        } else {
            while (i < this.f1227e && !interfaceC2529p2.mo874p()) {
                interfaceC2529p2.accept(this.f1226d[i]);
                i++;
            }
        }
        interfaceC2529p2.end();
        this.f1226d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.f1226d;
        int i = this.f1227e;
        this.f1227e = i + 1;
        objArr[i] = obj;
    }
}
