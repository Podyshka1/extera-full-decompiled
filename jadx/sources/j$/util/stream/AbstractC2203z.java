package j$.util.stream;

import j$.util.Spliterator;

/* JADX INFO: renamed from: j$.util.stream.z */
/* JADX INFO: loaded from: classes2.dex */
public abstract class AbstractC2203z extends AbstractC2154B {
    @Override // j$.util.stream.AbstractC2179b
    public final boolean C0() {
        return true;
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E sequential() {
        this.f1061h.f1071r = false;
        return this;
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream, j$.util.stream.InterfaceC2157E
    public final InterfaceC2157E parallel() {
        this.f1061h.f1071r = true;
        return this;
    }

    @Override // j$.util.stream.BaseStream
    public final BaseStream unordered() {
        return !EnumC6195d3.ORDERED.m850k(this.f1066m) ? this : new C2197t(this, EnumC6195d3.f1112r, 1);
    }

    @Override // j$.util.stream.AbstractC2179b, j$.util.stream.BaseStream
    public final /* bridge */ /* synthetic */ Spliterator spliterator() {
        return spliterator();
    }
}
