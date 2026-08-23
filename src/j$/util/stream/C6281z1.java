package j$.util.stream;

import java.util.function.LongBinaryOperator;

/* JADX INFO: renamed from: j$.util.stream.z1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6281z1 extends AbstractC6277y1 {

    /* JADX INFO: renamed from: h */
    public final /* synthetic */ LongBinaryOperator f1286h;

    /* JADX INFO: renamed from: i */
    public final /* synthetic */ long f1287i;

    @Override // j$.util.stream.AbstractC6277y1
    public final T1 r0() {
        return new R1(this.f1287i, this.f1286h);
    }

    public C6281z1(EnumC6199e3 enumC6199e3, LongBinaryOperator longBinaryOperator, long j) {
        this.f1286h = longBinaryOperator;
        this.f1287i = j;
    }
}
