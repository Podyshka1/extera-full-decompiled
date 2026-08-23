package androidx.work.impl;

import android.content.Context;
import androidx.work.Configuration;
import androidx.work.R$bool;
import androidx.work.impl.background.greedy.GreedyScheduler;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function6;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aá\u0001\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\b2\b\b\u0002\u0010\u000b\u001a\u00020\n2\u0097\u0001\b\u0002\u0010\u0012\u001a\u0090\u0001\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0001\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\fj\u0002`\u0011H\u0007¢\u0006\u0004\b\u0014\u0010\u0015\u001aE\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0017\u0010\u001d\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u0004H\u0001¢\u0006\u0004\b\u001b\u0010\u001c* \u0002\u0010\u001e\"\u008c\u0001\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0001\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\f2\u008c\u0001\u0012\u0013\u0012\u00110\u0000¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0001\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0003\u0012\u0013\u0012\u00110\u0004¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0005\u0012\u0013\u0012\u00110\u0006¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u0007\u0012\u0013\u0012\u00110\b¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\t\u0012\u0013\u0012\u00110\n¢\u0006\f\b\r\u0012\b\b\u000e\u0012\u0004\b\b(\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00100\u000f0\f¨\u0006\u001f"}, d2 = {"Landroid/content/Context;", "context", "Landroidx/work/Configuration;", "configuration", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workTaskExecutor", "Landroidx/work/impl/WorkDatabase;", "workDatabase", "Landroidx/work/impl/constraints/trackers/Trackers;", "trackers", "Landroidx/work/impl/Processor;", "processor", "Lkotlin/Function6;", "Lkotlin/ParameterName;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/impl/Scheduler;", "Landroidx/work/impl/SchedulersCreator;", "schedulersCreator", "Landroidx/work/impl/WorkManagerImpl;", "createWorkManager", "(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;Lkotlin/jvm/functions/Function6;)Landroidx/work/impl/WorkManagerImpl;", "WorkManagerImpl", "createSchedulers", "(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/constraints/trackers/Trackers;Landroidx/work/impl/Processor;)Ljava/util/List;", "taskExecutor", "Lkotlinx/coroutines/CoroutineScope;", "createWorkManagerScope", "(Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lkotlinx/coroutines/CoroutineScope;", "WorkManagerScope", "SchedulersCreator", "work-runtime_release"}, m754k = 2, mv = {2, 1, 0}, xi = 48)
public abstract class WorkManagerImplExtKt {
    @JvmOverloads
    @JvmName(name = "createWorkManager")
    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration) {
        return createWorkManager$default(context, configuration, null, null, null, null, null, 124, null);
    }

    public static /* synthetic */ WorkManagerImpl createWorkManager$default(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6 function6, int i, Object obj) {
        if ((i & 4) != 0) {
            taskExecutor = new WorkManagerTaskExecutor(configuration.getTaskExecutor());
        }
        TaskExecutor taskExecutor2 = taskExecutor;
        if ((i & 8) != 0) {
            workDatabase = WorkDatabase.INSTANCE.create(context.getApplicationContext(), taskExecutor2.getSerialTaskExecutor(), configuration.getClock(), context.getResources().getBoolean(R$bool.workmanager_test_configuration));
        }
        return createWorkManager(context, configuration, taskExecutor2, workDatabase, (i & 16) != 0 ? new Trackers(context.getApplicationContext(), taskExecutor2, null, null, null, null, 60, null) : trackers, (i & 32) != 0 ? new Processor(context.getApplicationContext(), configuration, taskExecutor2, workDatabase) : processor, (i & 64) != 0 ? WorkManagerImplExtKt$WorkManagerImpl$1.INSTANCE : function6);
    }

    @JvmOverloads
    @JvmName(name = "createWorkManager")
    public static final WorkManagerImpl createWorkManager(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor, Function6<? super Context, ? super Configuration, ? super TaskExecutor, ? super WorkDatabase, ? super Trackers, ? super Processor, ? extends List<? extends Scheduler>> function6) {
        return new WorkManagerImpl(context.getApplicationContext(), configuration, taskExecutor, workDatabase, function6.invoke(context, configuration, taskExecutor, workDatabase, trackers, processor), processor, trackers);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Scheduler> createSchedulers(Context context, Configuration configuration, TaskExecutor taskExecutor, WorkDatabase workDatabase, Trackers trackers, Processor processor) {
        return CollectionsKt.listOf((Object[]) new Scheduler[]{Schedulers.createBestAvailableBackgroundScheduler(context, workDatabase, configuration), new GreedyScheduler(context, configuration, trackers, processor, new WorkLauncherImpl(processor, taskExecutor), taskExecutor)});
    }

    @JvmName(name = "createWorkManagerScope")
    public static final CoroutineScope createWorkManagerScope(TaskExecutor taskExecutor) {
        return CoroutineScopeKt.CoroutineScope(taskExecutor.getTaskCoroutineDispatcher());
    }
}
