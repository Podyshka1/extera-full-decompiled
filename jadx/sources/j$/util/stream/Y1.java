package j$.util.stream;

/* JADX INFO: loaded from: classes2.dex */
public final class Y1 extends Z1 {
    @Override // j$.util.stream.U1, java.util.function.Supplier
    public final Object get() {
        return Long.valueOf(this.f1053b);
    }

    @Override // j$.util.stream.T1
    /* JADX INFO: renamed from: t */
    public final void mo746t(T1 t1) {
        this.f1053b += ((Z1) t1).f1053b;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        this.f1053b++;
    }
}
