package j$.util.stream;

import java.util.function.IntFunction;

/* JADX INFO: loaded from: classes2.dex */
public abstract class S0 extends K0 implements H0 {
    @Override // j$.util.stream.I0
    /* JADX INFO: renamed from: g */
    public final /* synthetic */ Object[] mo790g(IntFunction intFunction) {
        return AbstractC6277y1.m890I(this, intFunction);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: d */
    public final void mo785d(Object obj) {
        ((H0) this.f934a).mo785d(obj);
        ((H0) this.f935b).mo785d(obj);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: c */
    public final void mo784c(int i, Object obj) {
        I0 i0 = this.f934a;
        ((H0) i0).mo784c(i, obj);
        ((H0) this.f935b).mo784c(i + ((int) ((H0) i0).count()), obj);
    }

    @Override // j$.util.stream.H0
    /* JADX INFO: renamed from: b */
    public final Object mo783b() {
        long j = this.f936c;
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object objNewArray = newArray((int) j);
        mo784c(0, objNewArray);
        return objNewArray;
    }

    public final String toString() {
        long j = this.f936c;
        return j < 32 ? String.format("%s[%s.%s]", getClass().getName(), this.f934a, this.f935b) : String.format("%s[size=%d]", getClass().getName(), Long.valueOf(j));
    }
}
