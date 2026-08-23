package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.WorkInfo$State;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u001a\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0001\u001a\u00020\u0000H\u0002¢\u0006\u0004\b\u0007\u0010\b\u001a\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\f\u001a\u001d\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u001d\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0013\u0010\u0014\u001a\u001d\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, d2 = {"Landroidx/work/impl/WorkManagerImpl;", "workManagerImpl", _UrlKt.FRAGMENT_ENCODE_SET, "workSpecId", _UrlKt.FRAGMENT_ENCODE_SET, "cancel", "(Landroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V", "reschedulePendingWorkers", "(Landroidx/work/impl/WorkManagerImpl;)V", "Landroidx/work/impl/WorkDatabase;", "workDatabase", "iterativelyCancelWorkAndDependents", "(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)V", "Ljava/util/UUID;", "id", "Landroidx/work/Operation;", "forId", "(Ljava/util/UUID;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/Operation;", "name", "forName", "(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)Landroidx/work/Operation;", "forNameInline", "(Ljava/lang/String;Landroidx/work/impl/WorkManagerImpl;)V", "work-runtime_release"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
@JvmName(name = "CancelWorkRunnable")
public abstract class CancelWorkRunnable {
    /* JADX INFO: Access modifiers changed from: private */
    public static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        iterativelyCancelWorkAndDependents(workManagerImpl.getWorkDatabase(), str);
        workManagerImpl.getProcessor().stopAndCancelWork(str, 1);
        Iterator<Scheduler> it = workManagerImpl.getSchedulers().iterator();
        while (it.hasNext()) {
            it.next().cancel(str);
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

    public static final Operation forId(final UUID uuid, final WorkManagerImpl workManagerImpl) {
        return OperationKt.launchOperation(workManagerImpl.getConfiguration().getTracer(), "CancelWorkById", workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.$r8$lambda$8EsI_obE8bQExJ_QYqMsYGJK8YY(workManagerImpl, uuid);
            }
        });
    }

    public static Unit $r8$lambda$8EsI_obE8bQExJ_QYqMsYGJK8YY(final WorkManagerImpl workManagerImpl, final UUID uuid) {
        workManagerImpl.getWorkDatabase().runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.cancel(workManagerImpl, uuid.toString());
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    public static final Operation forName(final String str, final WorkManagerImpl workManagerImpl) {
        return OperationKt.launchOperation(workManagerImpl.getConfiguration().getTracer(), "CancelWorkByName_" + str, workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor(), new Function0() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return CancelWorkRunnable.$r8$lambda$4QqdN7ggcyUEiyMiYfM9Uxq5r7Q(str, workManagerImpl);
            }
        });
    }

    public static Unit $r8$lambda$4QqdN7ggcyUEiyMiYfM9Uxq5r7Q(String str, WorkManagerImpl workManagerImpl) {
        forNameInline(str, workManagerImpl);
        reschedulePendingWorkers(workManagerImpl);
        return Unit.INSTANCE;
    }

    public static final void forNameInline(final String str, final WorkManagerImpl workManagerImpl) {
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.runInTransaction(new Runnable() { // from class: androidx.work.impl.utils.CancelWorkRunnable$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.m1804$r8$lambda$7CMxqlNCknD_Q1NSUJ5L0sWGBQ(workDatabase, str, workManagerImpl);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$7CMxqlNCknD_Q1NSUJ5-L0sWGBQ, reason: not valid java name */
    public static void m1804$r8$lambda$7CMxqlNCknD_Q1NSUJ5L0sWGBQ(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getUnfinishedWorkWithName(str).iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, it.next());
        }
    }
}
