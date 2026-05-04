package j$.util.stream;

import j$.util.Spliterator;
import java.util.function.BinaryOperator;
import java.util.function.LongFunction;

/* JADX INFO: loaded from: classes2.dex */
public final class N0 extends O0 {

    /* JADX INFO: renamed from: k */
    public final /* synthetic */ int f964k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ N0(AbstractC6277y1 abstractC6277y1, Spliterator spliterator, LongFunction longFunction, BinaryOperator binaryOperator, int i) {
        super(abstractC6277y1, spliterator, longFunction, binaryOperator);
        this.f964k = i;
    }

    @Override // j$.util.stream.O0, j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: c */
    public final AbstractC2182e mo802c(Spliterator spliterator) {
        switch (this.f964k) {
        }
        return new O0(this, spliterator);
    }

    @Override // j$.util.stream.O0, j$.util.stream.AbstractC2182e
    /* JADX INFO: renamed from: a */
    public final /* bridge */ /* synthetic */ Object mo801a() {
        switch (this.f964k) {
        }
        return mo801a();
    }
}
