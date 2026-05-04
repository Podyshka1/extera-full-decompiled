package androidx.work.impl;

import androidx.work.Configuration;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo$State;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class WorkerUpdater {
    private static final WorkManager.UpdateResult updateWorkImpl(Processor processor, final WorkDatabase workDatabase, Configuration configuration, final List list, final WorkSpec workSpec, final Set set) {
        final String str = workSpec.f76id;
        final WorkSpec workSpec2 = workDatabase.workSpecDao().getWorkSpec(str);
        if (workSpec2 == null) {
            throw new IllegalArgumentException("Worker with " + str + " doesn't exist");
        }
        if (workSpec2.state.isFinished()) {
            return WorkManager.UpdateResult.NOT_APPLIED;
        }
        if (workSpec2.isPeriodic() ^ workSpec.isPeriodic()) {
            Function1 function1 = new Function1() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda2
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return WorkerUpdater.updateWorkImpl$lambda$0((WorkSpec) obj);
                }
            };
            throw new UnsupportedOperationException("Can't update " + ((String) function1.invoke(workSpec2)) + " Worker to " + ((String) function1.invoke(workSpec)) + " Worker. Update operation must preserve worker's type.");
        }
        final boolean zIsEnqueued = processor.isEnqueued(str);
        if (!zIsEnqueued) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Scheduler) it.next()).cancel(str);
            }
        }
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                WorkerUpdater.updateWorkImpl$lambda$3(workDatabase, workSpec2, workSpec, list, str, set, zIsEnqueued);
            }
        });
        if (!zIsEnqueued) {
            Schedulers.schedule(configuration, workDatabase, list);
        }
        return zIsEnqueued ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String updateWorkImpl$lambda$0(WorkSpec spec) {
        Intrinsics.checkNotNullParameter(spec, "spec");
        return spec.isPeriodic() ? "Periodic" : "OneTime";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$3(WorkDatabase workDatabase, WorkSpec workSpec, WorkSpec workSpec2, List list, String str, Set set, boolean z) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkTagDao workTagDao = workDatabase.workTagDao();
        WorkSpec workSpecCopy$default = WorkSpec.copy$default(workSpec2, null, workSpec.state, null, null, null, null, 0L, 0L, 0L, null, workSpec.runAttemptCount, null, 0L, workSpec.lastEnqueueTime, 0L, 0L, false, null, workSpec.getPeriodCount(), workSpec.getGeneration() + 1, workSpec.getNextScheduleTimeOverride(), workSpec.getNextScheduleTimeOverrideGeneration(), 0, null, null, 29613053, null);
        if (workSpec2.getNextScheduleTimeOverrideGeneration() == 1) {
            workSpecCopy$default.setNextScheduleTimeOverride(workSpec2.getNextScheduleTimeOverride());
            workSpecCopy$default.setNextScheduleTimeOverrideGeneration(workSpecCopy$default.getNextScheduleTimeOverrideGeneration() + 1);
        }
        workSpecDao.updateWorkSpec(EnqueueUtilsKt.wrapWorkSpecIfNeeded(list, workSpecCopy$default));
        workTagDao.deleteByWorkSpecId(str);
        workTagDao.insertTags(str, set);
        if (z) {
            return;
        }
        workSpecDao.markWorkSpecScheduled(str, -1L);
        workDatabase.workProgressDao().delete(str);
    }

    public static final Operation enqueueUniquelyNamedPeriodic(final WorkManagerImpl workManagerImpl, final String name, final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String str = "enqueueUniquePeriodic_" + name;
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, str, serialTaskExecutor, new Function0() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$6(workManagerImpl, name, workRequest);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enqueueUniquelyNamedPeriodic$lambda$6(final WorkManagerImpl workManagerImpl, final String str, final WorkRequest workRequest) {
        Function0 function0 = new Function0() { // from class: androidx.work.impl.WorkerUpdater$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkerUpdater.enqueueUniquelyNamedPeriodic$lambda$6$lambda$5(workRequest, workManagerImpl, str);
            }
        };
        WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
        List workSpecIdAndStatesForName = workSpecDao.getWorkSpecIdAndStatesForName(str);
        if (workSpecIdAndStatesForName.size() > 1) {
            throw new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.");
        }
        WorkSpec.IdAndState idAndState = (WorkSpec.IdAndState) CollectionsKt.firstOrNull(workSpecIdAndStatesForName);
        if (idAndState == null) {
            function0.invoke();
            return Unit.INSTANCE;
        }
        WorkSpec workSpec = workSpecDao.getWorkSpec(idAndState.f77id);
        if (workSpec == null) {
            throw new IllegalStateException("WorkSpec with " + idAndState.f77id + ", that matches a name \"" + str + "\", wasn't found");
        }
        if (!workSpec.isPeriodic()) {
            throw new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
        }
        if (idAndState.state == WorkInfo$State.CANCELLED) {
            workSpecDao.delete(idAndState.f77id);
            function0.invoke();
            return Unit.INSTANCE;
        }
        WorkSpec workSpecCopy$default = WorkSpec.copy$default(workRequest.getWorkSpec(), idAndState.f77id, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554430, null);
        Processor processor = workManagerImpl.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "getProcessor(...)");
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        Configuration configuration = workManagerImpl.getConfiguration();
        Intrinsics.checkNotNullExpressionValue(configuration, "<get-configuration>(...)");
        List schedulers = workManagerImpl.getSchedulers();
        Intrinsics.checkNotNullExpressionValue(schedulers, "getSchedulers(...)");
        updateWorkImpl(processor, workDatabase, configuration, schedulers, workSpecCopy$default, workRequest.getTags());
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit enqueueUniquelyNamedPeriodic$lambda$6$lambda$5(WorkRequest workRequest, WorkManagerImpl workManagerImpl, String str) {
        EnqueueRunnable.enqueue(new WorkContinuationImpl(workManagerImpl, str, ExistingWorkPolicy.KEEP, CollectionsKt.listOf(workRequest)));
        return Unit.INSTANCE;
    }
}
