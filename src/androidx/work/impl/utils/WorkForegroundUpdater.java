package androidx.work.impl.utils;

import android.content.Context;
import androidx.work.ForegroundInfo;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableFutureKt;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes4.dex */
public class WorkForegroundUpdater implements ForegroundUpdater {
    private static final String TAG = Logger.tagWithPrefix("WMFgUpdater");
    final ForegroundProcessor mForegroundProcessor;
    private final TaskExecutor mTaskExecutor;
    final WorkSpecDao mWorkSpecDao;

    public WorkForegroundUpdater(WorkDatabase workDatabase, ForegroundProcessor foregroundProcessor, TaskExecutor taskExecutor) {
        this.mForegroundProcessor = foregroundProcessor;
        this.mTaskExecutor = taskExecutor;
        this.mWorkSpecDao = workDatabase.workSpecDao();
    }

    @Override // androidx.work.ForegroundUpdater
    public ListenableFuture setForegroundAsync(final Context context, final UUID uuid, final ForegroundInfo foregroundInfo) {
        return ListenableFutureKt.executeAsync(this.mTaskExecutor.getSerialTaskExecutor(), "setForegroundAsync", new Function0() { // from class: androidx.work.impl.utils.WorkForegroundUpdater$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return WorkForegroundUpdater.m2215$r8$lambda$Ik9WYk9fFXWE3Htab7GTHBbvxc(this.f$0, uuid, foregroundInfo, context);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$Ik9WY-k9fFXWE3Htab7GTHBbvxc, reason: not valid java name */
    public static /* synthetic */ Void m2215$r8$lambda$Ik9WYk9fFXWE3Htab7GTHBbvxc(WorkForegroundUpdater workForegroundUpdater, UUID uuid, ForegroundInfo foregroundInfo, Context context) {
        workForegroundUpdater.getClass();
        String string = uuid.toString();
        WorkSpec workSpec = workForegroundUpdater.mWorkSpecDao.getWorkSpec(string);
        if (workSpec == null || workSpec.state.isFinished()) {
            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
        workForegroundUpdater.mForegroundProcessor.startForeground(string, foregroundInfo);
        context.startService(SystemForegroundDispatcher.createNotifyIntent(context, WorkSpecKt.generationalId(workSpec), foregroundInfo));
        return null;
    }
}
