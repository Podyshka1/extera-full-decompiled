package j$.util.stream;

import j$.com.android.tools.r8.AbstractC1965a;
import java.util.function.DoubleConsumer;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class B0 implements DoubleConsumer {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ int f862a;

    public /* synthetic */ B0(int i) {
        this.f862a = i;
    }

    private final void accept$j$$util$stream$Node$OfDouble$$ExternalSyntheticLambda0(double d) {
    }

    /* JADX INFO: renamed from: accept$j$$util$stream$StreamSpliterators$SliceSpliterator$OfDouble$$ExternalSyntheticLambda0 */
    private final void m769xf5fb7952(double d) {
    }

    @Override // java.util.function.DoubleConsumer
    public final void accept(double d) {
        int i = this.f862a;
    }

    public final /* synthetic */ DoubleConsumer andThen(DoubleConsumer doubleConsumer) {
        switch (this.f862a) {
        }
        return AbstractC1965a.m419b(this, doubleConsumer);
    }
}
