package androidx.camera.camera2.pipe.graph;

import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class GraphLoop$processingQueue$1 extends FunctionReferenceImpl implements Function1 {
    GraphLoop$processingQueue$1(Object obj) {
        super(1, obj, GraphLoop.class, "finalizeUnprocessedCommands", "finalizeUnprocessedCommands(Ljava/util/List;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Object invoke(Object obj) {
        invoke((List) obj);
        return Unit.INSTANCE;
    }

    public final void invoke(List p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        ((GraphLoop) this.receiver).finalizeUnprocessedCommands(p0);
    }
}
