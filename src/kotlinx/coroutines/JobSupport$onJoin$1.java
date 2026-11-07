package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.selects.SelectInstance;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(m862k = 3, mv = {2, 2, 0}, xi = 48)
public final /* synthetic */ class JobSupport$onJoin$1 extends FunctionReferenceImpl implements Function3<JobSupport, SelectInstance<?>, Object, Unit> {
    public static final JobSupport$onJoin$1 INSTANCE = new JobSupport$onJoin$1();

    public JobSupport$onJoin$1() {
        super(3, JobSupport.class, "registerSelectForOnJoin", "registerSelectForOnJoin(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
        invoke2(jobSupport, selectInstance, obj);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(JobSupport jobSupport, SelectInstance<?> selectInstance, Object obj) {
        jobSupport.registerSelectForOnJoin(selectInstance, obj);
    }
}
