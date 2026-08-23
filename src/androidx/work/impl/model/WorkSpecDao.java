package androidx.work.impl.model;

import androidx.work.Data;
import androidx.work.WorkInfo$State;
import java.util.List;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes.dex */
public interface WorkSpecDao {
    int countNonFinishedContentUriTriggerWorkers();

    void delete(String str);

    List getAllEligibleWorkSpecsForScheduling(int i);

    List getEligibleWorkForScheduling(int i);

    List getEligibleWorkForSchedulingWithContentUris();

    List getInputsFromPrerequisites(String str);

    List getRecentlyCompletedWork(long j);

    List getRunningWork();

    List getScheduledWork();

    WorkInfo$State getState(String str);

    List getUnfinishedWorkWithName(String str);

    WorkSpec getWorkSpec(String str);

    List getWorkSpecIdAndStatesForName(String str);

    Flow hasUnfinishedWorkFlow();

    void incrementPeriodCount(String str);

    int incrementWorkSpecRunAttemptCount(String str);

    void insertWorkSpec(WorkSpec workSpec);

    int markWorkSpecScheduled(String str, long j);

    int resetScheduledState();

    void resetWorkSpecNextScheduleTimeOverride(String str, int i);

    int resetWorkSpecRunAttemptCount(String str);

    int setCancelledState(String str);

    void setLastEnqueueTime(String str, long j);

    void setOutput(String str, Data data);

    int setState(WorkInfo$State workInfo$State, String str);

    void setStopReason(String str, int i);

    void updateWorkSpec(WorkSpec workSpec);
}
