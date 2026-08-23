package j$.util.stream;

import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public final class Q2 extends E2 {

    /* JADX INFO: renamed from: d */
    public Object[] f991d;

    /* JADX INFO: renamed from: e */
    public int f992e;

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    /* JADX INFO: renamed from: m */
    public final void mo744m(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f991d = new Object[(int) j];
    }

    @Override // j$.util.stream.AbstractC6226l2, j$.util.stream.InterfaceC6242p2
    public final void end() {
        int i = 0;
        Arrays.sort(this.f991d, 0, this.f992e, this.f887b);
        long j = this.f992e;
        InterfaceC6242p2 interfaceC6242p2 = this.f1187a;
        interfaceC6242p2.mo744m(j);
        if (!this.f888c) {
            while (i < this.f992e) {
                interfaceC6242p2.accept(this.f991d[i]);
                i++;
            }
        } else {
            while (i < this.f992e && !interfaceC6242p2.mo745p()) {
                interfaceC6242p2.accept(this.f991d[i]);
                i++;
            }
        }
        interfaceC6242p2.end();
        this.f991d = null;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.f991d;
        int i = this.f992e;
        this.f992e = i + 1;
        objArr[i] = obj;
    }
}
