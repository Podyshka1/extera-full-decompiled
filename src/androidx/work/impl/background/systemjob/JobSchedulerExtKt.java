package androidx.work.impl.background.systemjob;

import android.app.job.JobScheduler;
import android.content.Context;
import android.os.Build;
import androidx.work.Configuration;
import androidx.work.Logger;
import androidx.work.impl.WorkDatabase;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public abstract class JobSchedulerExtKt {
    private static final String TAG;

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("SystemJobScheduler");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
    }

    public static final JobScheduler getWmJobScheduler(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        Object systemService = context.getSystemService("jobscheduler");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
        JobScheduler jobScheduler = (JobScheduler) systemService;
        return Build.VERSION.SDK_INT >= 34 ? JobScheduler34.INSTANCE.forNamespace(jobScheduler) : jobScheduler;
    }

    public static final List getSafePendingJobs(JobScheduler jobScheduler) {
        Intrinsics.checkNotNullParameter(jobScheduler, "<this>");
        try {
            return JobScheduler21.INSTANCE.getAllPendingJobs(jobScheduler);
        } catch (Throwable th) {
            Logger.get().error(TAG, "getAllPendingJobs() is not reliable on this device.", th);
            return null;
        }
    }

    public static final String createErrorMessage(Context context, WorkDatabase workDatabase, Configuration configuration) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        int i = Build.VERSION.SDK_INT;
        int i2 = i >= 31 ? 150 : 100;
        int size = workDatabase.workSpecDao().getScheduledWork().size();
        String strJoinToString$default = "<faulty JobScheduler failed to getPendingJobs>";
        if (i >= 34) {
            JobScheduler wmJobScheduler = getWmJobScheduler(context);
            List safePendingJobs = getSafePendingJobs(wmJobScheduler);
            if (safePendingJobs != null) {
                List pendingJobs = SystemJobScheduler.getPendingJobs(context, wmJobScheduler);
                int size2 = pendingJobs != null ? safePendingJobs.size() - pendingJobs.size() : 0;
                String str2 = null;
                if (size2 == 0) {
                    str = null;
                } else {
                    str = size2 + " of which are not owned by WorkManager";
                }
                Object systemService = context.getSystemService("jobscheduler");
                Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.job.JobScheduler");
                List pendingJobs2 = SystemJobScheduler.getPendingJobs(context, (JobScheduler) systemService);
                int size3 = pendingJobs2 != null ? pendingJobs2.size() : 0;
                if (size3 != 0) {
                    str2 = size3 + " from WorkManager in the default namespace";
                }
                strJoinToString$default = CollectionsKt.joinToString$default(CollectionsKt.listOfNotNull((Object[]) new String[]{safePendingJobs.size() + " jobs in \"androidx.work.systemjobscheduler\" namespace", str, str2}), ",\n", null, null, 0, null, null, 62, null);
            }
        } else {
            List pendingJobs3 = SystemJobScheduler.getPendingJobs(context, getWmJobScheduler(context));
            if (pendingJobs3 != null) {
                strJoinToString$default = pendingJobs3.size() + " jobs from WorkManager";
            }
        }
        return "JobScheduler " + i2 + " job limit exceeded.\nIn JobScheduler there are " + strJoinToString$default + ".\nThere are " + size + " jobs tracked by WorkManager's database;\nthe Configuration limit is " + configuration.getMaxSchedulerLimit() + '.';
    }
}
