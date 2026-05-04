package androidx.work.impl.background.systemjob;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
final class JobScheduler21 {
    public static final JobScheduler21 INSTANCE = new JobScheduler21();

    private JobScheduler21() {
    }

    public final List getAllPendingJobs(JobScheduler jobScheduler) {
        Intrinsics.checkNotNullParameter(jobScheduler, "jobScheduler");
        List<JobInfo> allPendingJobs = jobScheduler.getAllPendingJobs();
        Intrinsics.checkNotNullExpressionValue(allPendingJobs, "getAllPendingJobs(...)");
        return allPendingJobs;
    }
}
