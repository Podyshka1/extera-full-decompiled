package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.f2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2473f2 extends AbstractC2485h2 {
    @Override // p022j$.util.stream.AbstractC2446b
    /* JADX INFO: renamed from: C0 */
    public final boolean mo872C0() {
        return true;
    }

    @Override // p022j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC2462d3.ORDERED.m1001k(this.f1301m) ? this : new C2455c2(this, EnumC2462d3.f1348r);
    }
}
