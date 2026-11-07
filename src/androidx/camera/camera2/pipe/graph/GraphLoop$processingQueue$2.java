package androidx.camera.camera2.pipe.graph;

import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendFunction;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m862k = 3, mv = {2, 1, 0}, xi = 48)
public final /* synthetic */ class GraphLoop$processingQueue$2 extends FunctionReferenceImpl implements Function2<List<GraphCommand>, Continuation<? super Unit>, Object>, SuspendFunction {
    public GraphLoop$processingQueue$2(Object obj) {
        super(2, obj, GraphLoop.class, "process", "process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(List<GraphCommand> list, Continuation<? super Unit> continuation) {
        return ((GraphLoop) this.receiver).process(list, continuation);
    }
}
