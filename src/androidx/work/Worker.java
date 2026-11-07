package androidx.work;

import android.content.Context;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\b\u0010\b\u001a\u00020\tH'J\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\u000bJ\u000e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u000bH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0017¨\u0006\u000f"}, d2 = {"Landroidx/work/Worker;", "Landroidx/work/ListenableWorker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "startWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "getForegroundInfoAsync", "Landroidx/work/ForegroundInfo;", "getForegroundInfo", "work-runtime_release"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class Worker extends ListenableWorker {
    public abstract ListenableWorker.Result doWork();

    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        return WorkerKt.future(getBackgroundExecutor(), new Function0() { // from class: androidx.work.Worker$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.doWork();
            }
        });
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        return WorkerKt.future(getBackgroundExecutor(), new Function0() { // from class: androidx.work.Worker$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return this.f$0.getForegroundInfo();
            }
        });
    }

    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
    }
}
