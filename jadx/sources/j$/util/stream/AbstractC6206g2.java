package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.g2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6206g2 extends AbstractC6210h2 {
    @Override // j$.util.stream.AbstractC2179b
    public final boolean C0() {
        return false;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C6190c2(this, EnumC6195d3.f1112r);
    }
}
