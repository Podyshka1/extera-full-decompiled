package androidx.camera.camera2.pipe.graph;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class GraphLoop$processingQueue$1 extends FunctionReferenceImpl implements Function1<List<? extends GraphCommand>, Unit> {
    public GraphLoop$processingQueue$1(Object obj) {
        super(1, obj, GraphLoop.class, "finalizeUnprocessedCommands", "finalizeUnprocessedCommands(Ljava/util/List;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(List<? extends GraphCommand> list) {
        invoke2(list);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(List<? extends GraphCommand> list) {
        ((GraphLoop) this.receiver).finalizeUnprocessedCommands(list);
    }
}
