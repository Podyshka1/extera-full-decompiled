package p022j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: renamed from: j$.util.stream.S0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2401S0 extends AbstractC2362K0 implements InterfaceC2347H0 {
    @Override // p022j$.util.stream.InterfaceC2352I0
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ Object[] mo927g(IntFunction intFunction) {
        return AbstractC2573y1.m1044I(this, intFunction);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: d */
    public final void mo922d(Object obj) {
        ((InterfaceC2347H0) this.f1169a).mo922d(obj);
        ((InterfaceC2347H0) this.f1170b).mo922d(obj);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: c */
    public final void mo921c(int i, Object obj) {
        InterfaceC2352I0 interfaceC2352I0 = this.f1169a;
        ((InterfaceC2347H0) interfaceC2352I0).mo921c(i, obj);
        ((InterfaceC2347H0) this.f1170b).mo921c(i + ((int) ((InterfaceC2347H0) interfaceC2352I0).count()), obj);
    }

    @Override // p022j$.util.stream.InterfaceC2347H0
    /* JADX INFO: renamed from: b */
    public final Object mo920b() {
        long j = this.f1171c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objNewArray = newArray((int) j);
        mo921c(0, objNewArray);
        return objNewArray;
    }

    public final String toString() {
        long j = this.f1171c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f1169a, this.f1170b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}
