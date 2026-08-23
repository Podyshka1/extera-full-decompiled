package androidx.work.impl.utils;

import android.os.Build;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.WorkRequest;
import androidx.work.impl.Scheduler;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\u001a'\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0000¢\u0006\u0004\b\u0007\u0010\b\u001a\u0017\u0010\u000b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007¢\u0006\u0004\b\u000b\u0010\f\u001a\u0017\u0010\r\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\r\u0010\f\u001a%\u0010\u0011\u001a\u00020\t2\f\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e2\u0006\u0010\n\u001a\u00020\tH\u0000¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Landroidx/work/impl/WorkDatabase;", "workDatabase", "Landroidx/work/Configuration;", "configuration", "Landroidx/work/impl/WorkContinuationImpl;", "continuation", _UrlKt.FRAGMENT_ENCODE_SET, "checkContentUriTriggerWorkerLimits", "(Landroidx/work/impl/WorkDatabase;Landroidx/work/Configuration;Landroidx/work/impl/WorkContinuationImpl;)V", "Landroidx/work/impl/model/WorkSpec;", "workSpec", "tryDelegateRemoteListenableWorker", "(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;", "tryDelegateConstrainedWorkSpec", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/impl/Scheduler;", "schedulers", "wrapWorkSpecIfNeeded", "(Ljava/util/List;Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkSpec;", "work-runtime_release"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nEnqueueUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EnqueueUtils.kt\nandroidx/work/impl/utils/EnqueueUtilsKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Data_.kt\nandroidx/work/Data\n*L\n1#1,149:1\n1788#2,4:150\n1#3:154\n231#4:155\n231#4:156\n231#4:157\n*S KotlinDebug\n*F\n+ 1 EnqueueUtils.kt\nandroidx/work/impl/utils/EnqueueUtilsKt\n*L\n42#1:150,4\n68#1:155\n69#1:156\n70#1:157\n*E\n"})
public abstract class EnqueueUtilsKt {
    public static final void checkContentUriTriggerWorkerLimits(WorkDatabase workDatabase, Configuration configuration, WorkContinuationImpl workContinuationImpl) {
        int i;
        List listMutableListOf = CollectionsKt.mutableListOf(workContinuationImpl);
        int i2 = 0;
        while (!listMutableListOf.isEmpty()) {
            WorkContinuationImpl workContinuationImpl2 = (WorkContinuationImpl) CollectionsKt.removeLast(listMutableListOf);
            List<? extends WorkRequest> work = workContinuationImpl2.getWork();
            if ((work instanceof Collection) && work.isEmpty()) {
                i = 0;
            } else {
                Iterator<T> it = work.iterator();
                i = 0;
                while (it.hasNext()) {
                    if (((WorkRequest) it.next()).getWorkSpec().constraints.hasContentUriTriggers() && (i = i + 1) < 0) {
                        CollectionsKt.throwCountOverflow();
                    }
                }
            }
            i2 += i;
            List<WorkContinuationImpl> parents = workContinuationImpl2.getParents();
            if (parents != null) {
                listMutableListOf.addAll(parents);
            }
        }
        if (i2 == 0) {
            return;
        }
        int iCountNonFinishedContentUriTriggerWorkers = workDatabase.workSpecDao().countNonFinishedContentUriTriggerWorkers();
        int contentUriTriggerWorkersLimit = configuration.getContentUriTriggerWorkersLimit();
        if (iCountNonFinishedContentUriTriggerWorkers + i2 <= contentUriTriggerWorkersLimit) {
            return;
        }
        throw new IllegalArgumentException("Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: " + contentUriTriggerWorkersLimit + ";\nalready enqueued count: " + iCountNonFinishedContentUriTriggerWorkers + ";\ncurrent enqueue operation count: " + i2 + ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed.");
    }

    public static final WorkSpec tryDelegateRemoteListenableWorker(WorkSpec workSpec) {
        boolean zHasKeyWithValueOfType = workSpec.input.hasKeyWithValueOfType("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", String.class);
        boolean zHasKeyWithValueOfType2 = workSpec.input.hasKeyWithValueOfType("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME", String.class);
        boolean zHasKeyWithValueOfType3 = workSpec.input.hasKeyWithValueOfType("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME", String.class);
        if (zHasKeyWithValueOfType || !zHasKeyWithValueOfType2 || !zHasKeyWithValueOfType3) {
            return workSpec;
        }
        return WorkSpec.copy$default(workSpec, null, null, "androidx.work.multiprocess.RemoteListenableDelegatingWorker", null, new Data.Builder().putAll(workSpec.input).putString("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME", workSpec.workerClassName).build(), null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554411, null);
    }

    public static final WorkSpec tryDelegateConstrainedWorkSpec(WorkSpec workSpec) {
        Constraints constraints = workSpec.constraints;
        String str = workSpec.workerClassName;
        if (Intrinsics.areEqual(str, ConstraintTrackingWorker.class.getName()) || !(constraints.getRequiresBatteryNotLow() || constraints.getRequiresStorageNotLow())) {
            return workSpec;
        }
        return WorkSpec.copy$default(workSpec, null, null, ConstraintTrackingWorker.class.getName(), null, new Data.Builder().putAll(workSpec.input).putString("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str).build(), null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554411, null);
    }

    public static final WorkSpec wrapWorkSpecIfNeeded(List<? extends Scheduler> list, WorkSpec workSpec) {
        WorkSpec workSpecTryDelegateRemoteListenableWorker = tryDelegateRemoteListenableWorker(workSpec);
        return Build.VERSION.SDK_INT <= 25 ? tryDelegateConstrainedWorkSpec(workSpecTryDelegateRemoteListenableWorker) : workSpecTryDelegateRemoteListenableWorker;
    }
}
