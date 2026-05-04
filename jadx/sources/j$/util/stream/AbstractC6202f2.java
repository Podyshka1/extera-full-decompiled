package j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.f2, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC6202f2 extends AbstractC6210h2 {
    @Override // j$.util.stream.AbstractC2179b
    public final boolean C0() {
        return true;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C6190c2(this, EnumC6195d3.f1112r);
    }
}
