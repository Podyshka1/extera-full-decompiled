package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public abstract class CancelWorkRunnable {
    private static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        iterativelyCancelWorkAndDependents(workDatabase, str);
        Processor processor = workManagerImpl.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "getProcessor(...)");
        processor.stopAndCancelWork(str, 1);
        Iterator it = workManagerImpl.getSchedulers().iterator();
        while (it.hasNext()) {
            ((Scheduler) it.next()).cancel(str);
        }
    }

    private static final void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    private static final void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        List listMutableListOf = CollectionsKt.mutableListOf(str);
        while (!listMutableListOf.isEmpty()) {
            String str2 = (String) CollectionsKt.removeLast(listMutableListOf);
            WorkInfo$State state = workSpecDao.getState(str2);
            if (state != WorkInfo$State.SUCCEEDED && state != WorkInfo$State.FAILED) {
                workSpecDao.setCancelledState(str2);
            }
            listMutableListOf.addAll(dependencyDao.getDependentWorkIds(str2));
        }
    }

    public static final Operation forId(final UUID id, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, "CancelWorkById", serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forId$lambda$1(workManagerImpl, id);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forId$lambda$1(final WorkManagerImpl workManagerImpl, final UUID uuid) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forId$lambda$1$lambda$0(workManagerImpl, uuid);
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forId$lambda$1$lambda$0(WorkManagerImpl workManagerImpl, UUID uuid) {
        String string = uuid.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        cancel(workManagerImpl, string);
    }

    public static final Operation forName(final String name, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String str = "CancelWorkByName_" + name;
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "getSerialTaskExecutor(...)");
        return OperationKt.launchOperation(tracer, str, serialTaskExecutor, new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.forName$lambda$4(name, workManagerImpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit forName$lambda$4(String str, WorkManagerImpl workManagerImpl) {
        forNameInline(str, workManagerImpl);
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    public static final void forNameInline(final String name, final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "getWorkDatabase(...)");
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forNameInline$lambda$5(workDatabase, name, workManagerImpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forNameInline$lambda$5(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator it = workDatabase.workSpecDao().getUnfinishedWorkWithName(str).iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, (String) it.next());
        }
    }
}
