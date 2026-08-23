package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;

/* JADX INFO: loaded from: classes2.dex */
public abstract class I3 {
    /* JADX INFO: renamed from: b */
    public static C6198e2 m794b(Spliterator spliterator, boolean z) {
        Objects.requireNonNull(spliterator);
        return new C6198e2(spliterator, EnumC6195d3.m848j(spliterator), z);
    }

    /* JADX INFO: renamed from: a */
    public static C2177Z m793a(Spliterator.OfInt ofInt) {
        return new C2177Z(ofInt, EnumC6195d3.m848j(ofInt), false);
    }
}
