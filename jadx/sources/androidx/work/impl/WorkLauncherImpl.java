package androidx.work.impl;

import androidx.work.WorkerParameters;
import androidx.work.impl.WorkLauncher;
import androidx.work.impl.utils.StopWorkRunnable;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class WorkLauncherImpl implements WorkLauncher {
    private final Processor processor;
    private final TaskExecutor workTaskExecutor;

    @Override // androidx.work.impl.WorkLauncher
    public /* synthetic */ void startWork(StartStopToken startStopToken) {
        WorkLauncher.CC.$default$startWork(this, startStopToken);
    }

    @Override // androidx.work.impl.WorkLauncher
    public /* synthetic */ void stopWork(StartStopToken startStopToken) {
        WorkLauncher.CC.$default$stopWork(this, startStopToken);
    }

    @Override // androidx.work.impl.WorkLauncher
    public /* synthetic */ void stopWorkWithReason(StartStopToken startStopToken, int i) {
        WorkLauncher.CC.$default$stopWorkWithReason(this, startStopToken, i);
    }

    public WorkLauncherImpl(Processor processor, TaskExecutor workTaskExecutor) {
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
        this.processor = processor;
        this.workTaskExecutor = workTaskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void startWork$lambda$0(WorkLauncherImpl workLauncherImpl, StartStopToken startStopToken, WorkerParameters.RuntimeExtras runtimeExtras) throws Throwable {
        workLauncherImpl.processor.startWork(startStopToken, runtimeExtras);
    }

    @Override // androidx.work.impl.WorkLauncher
    public void startWork(final StartStopToken workSpecId, final WorkerParameters.RuntimeExtras runtimeExtras) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new Runnable() { // from class: androidx.work.impl.WorkLauncherImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() throws Throwable {
                WorkLauncherImpl.startWork$lambda$0(this.f$0, workSpecId, runtimeExtras);
            }
        });
    }

    @Override // androidx.work.impl.WorkLauncher
    public void stopWork(StartStopToken workSpecId, int i) {
        Intrinsics.checkNotNullParameter(workSpecId, "workSpecId");
        this.workTaskExecutor.executeOnTaskThread(new StopWorkRunnable(this.processor, workSpecId, false, i));
    }
}
