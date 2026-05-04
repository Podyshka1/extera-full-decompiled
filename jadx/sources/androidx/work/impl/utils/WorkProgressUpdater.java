package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.Data;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkInfo$State;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkProgress;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public class WorkProgressUpdater implements ProgressUpdater {
    static final String TAG = Logger.tagWithPrefix("WorkProgressUpdater");
    final TaskExecutor mTaskExecutor;
    final WorkDatabase mWorkDatabase;

    public WorkProgressUpdater(WorkDatabase workDatabase, TaskExecutor taskExecutor) {
        this.mWorkDatabase = workDatabase;
        this.mTaskExecutor = taskExecutor;
    }

    @Override // androidx.work.ProgressUpdater
    public ListenableFuture updateProgress(Context context, final UUID uuid, final Data data) {
        return ListenableFutureKt.executeAsync(this.mTaskExecutor.getSerialTaskExecutor(), "updateProgress", new Function0() { // from class: androidx.work.impl.utils.WorkProgressUpdater$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkProgressUpdater.m2216$r8$lambda$8aYEZ3xQO44kbdDxDjbyAMTkw(this.f$0, uuid, data);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$8aYEZ3xQO44kbdD--xDjbyAMTkw, reason: not valid java name */
    public static /* synthetic */ Void m2216$r8$lambda$8aYEZ3xQO44kbdDxDjbyAMTkw(WorkProgressUpdater workProgressUpdater, UUID uuid, Data data) {
        workProgressUpdater.getClass();
        String string = uuid.toString();
        Logger logger = Logger.get();
        String str = TAG;
        logger.debug(str, "Updating progress for " + uuid + " (" + data + ")");
        workProgressUpdater.mWorkDatabase.beginTransaction();
        try {
            WorkSpec workSpec = workProgressUpdater.mWorkDatabase.workSpecDao().getWorkSpec(string);
            if (workSpec != null) {
                if (workSpec.state == WorkInfo$State.RUNNING) {
                    workProgressUpdater.mWorkDatabase.workProgressDao().insert(new WorkProgress(string, data));
                } else {
                    Logger.get().warning(str, "Ignoring setProgressAsync(...). WorkSpec (" + string + ") is not in a RUNNING state.");
                }
                workProgressUpdater.mWorkDatabase.setTransactionSuccessful();
                workProgressUpdater.mWorkDatabase.endTransaction();
                return null;
            }
            throw new IllegalStateException("Calls to setProgressAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        } catch (Throwable th) {
            try {
                Logger.get().error(TAG, "Error updating Worker progress", th);
                throw th;
            } catch (Throwable th2) {
                workProgressUpdater.mWorkDatabase.endTransaction();
                throw th2;
            }
        }
    }
}
