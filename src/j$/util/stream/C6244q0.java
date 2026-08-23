package j$.util.stream;

import java.util.function.Predicate;

/* JADX INFO: renamed from: j$.util.stream.q0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes2.dex */
public final class C6244q0 extends AbstractC6260u0 {

    /* JADX INFO: renamed from: c */
    public final /* synthetic */ EnumC6264v0 f1215c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ Predicate f1216d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6244q0(EnumC6264v0 enumC6264v0, Predicate predicate) {
        super(enumC6264v0);
        this.f1215c = enumC6264v0;
        this.f1216d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.f1247a) {
            return;
        }
        boolean zTest = this.f1216d.test(obj);
        EnumC6264v0 enumC6264v0 = this.f1215c;
        if (zTest == enumC6264v0.f1254a) {
            this.f1247a = true;
            this.f1248b = enumC6264v0.f1255b;
        }
    }
}
