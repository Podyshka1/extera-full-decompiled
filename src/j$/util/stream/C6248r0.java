package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.IntConsumer;
import java.util.function.IntPredicate;

/* JADX INFO: renamed from: j$.util.stream.r0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6248r0 extends AbstractC6260u0 implements InterfaceC6234n2 {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ EnumC6264v0 f1223c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ IntPredicate f1224d;

    @Override // java.util.function.Consumer
    public final /* bridge */ /* synthetic */ void accept(Object obj) {
        mo814n((Integer) obj);
    }

    public final /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return AbstractC1965a.m420c(this, intConsumer);
    }

    @Override // j$.util.stream.InterfaceC6234n2
    /* JADX INFO: renamed from: n */
    public final /* synthetic */ void mo814n(Integer num) {
        AbstractC6277y1.m884C(this, num);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6248r0(EnumC6264v0 enumC6264v0, IntPredicate intPredicate) {
        super(enumC6264v0);
        this.f1223c = enumC6264v0;
        this.f1224d = intPredicate;
    }

    @Override // j$.util.stream.AbstractC6260u0, j$.util.stream.InterfaceC6242p2
    public final void accept(int i) {
        if (this.f1247a) {
            return;
        }
        boolean zTest = this.f1224d.test(i);
        EnumC6264v0 enumC6264v0 = this.f1223c;
        if (zTest == enumC6264v0.f1254a) {
            this.f1247a = true;
            this.f1248b = enumC6264v0.f1255b;
        }
    }
}
