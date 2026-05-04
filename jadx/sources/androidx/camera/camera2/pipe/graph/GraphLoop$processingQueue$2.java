package androidx.camera.camera2.pipe.graph;

import java.util.List;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes3.dex */
final /* synthetic */ class GraphLoop$processingQueue$2 extends FunctionReferenceImpl implements Function2 {
    GraphLoop$processingQueue$2(Object obj) {
        super(2, obj, GraphLoop.class, "process", "process(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(List list, Continuation continuation) {
        return ((GraphLoop) this.receiver).process(list, continuation);
    }
}
