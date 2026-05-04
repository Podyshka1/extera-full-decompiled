package p022j$.util.stream;

/* JADX INFO: renamed from: j$.util.stream.Y1 */
/* JADX INFO: loaded from: classes2.dex */
public final class C2432Y1 extends AbstractC2437Z1 {
    @Override // p022j$.util.stream.AbstractC2412U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1288b);
    }

    @Override // p022j$.util.stream.InterfaceC2407T1
    /* JADX INFO: renamed from: t */
    public final void mo875t(InterfaceC2407T1 interfaceC2407T1) {
        this.f1288b += ((AbstractC2437Z1) interfaceC2407T1).f1288b;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1288b++;
    }
}
