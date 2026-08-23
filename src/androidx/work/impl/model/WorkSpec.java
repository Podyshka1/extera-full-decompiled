package androidx.work.impl.model;

import androidx.appcompat.app.WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.adapter.EvCompValue$$ExternalSyntheticBackport0;
import androidx.camera.camera2.pipe.CameraTimestamp$$ExternalSyntheticBackport0;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo$State;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes.dex */
public final class WorkSpec {
    public static final Companion Companion = new Companion(null);
    private static final String TAG;
    public static final Function WORK_INFO_MAPPER;
    private Boolean backOffOnSystemInterruptions;
    public long backoffDelayDuration;
    public BackoffPolicy backoffPolicy;
    public Constraints constraints;
    public boolean expedited;
    public long flexDuration;
    private final int generation;

    /* JADX INFO: renamed from: id */
    public final String f76id;
    public long initialDelay;
    public Data input;
    public String inputMergerClassName;
    public long intervalDuration;
    public long lastEnqueueTime;
    public long minimumRetentionDuration;
    private long nextScheduleTimeOverride;
    private int nextScheduleTimeOverrideGeneration;
    public OutOfQuotaPolicy outOfQuotaPolicy;
    public Data output;
    private int periodCount;
    public int runAttemptCount;
    public long scheduleRequestedAt;
    public WorkInfo$State state;
    private final int stopReason;
    private String traceTag;
    public String workerClassName;

    public static /* synthetic */ WorkSpec copy$default(WorkSpec workSpec, String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, Object obj) {
        Boolean bool2;
        String str5;
        long j9;
        long j10;
        long j11;
        long j12;
        OutOfQuotaPolicy outOfQuotaPolicy2;
        int i7;
        int i8;
        long j13;
        int i9;
        WorkInfo$State workInfo$State2;
        int i10;
        boolean z2;
        String str6;
        String str7;
        Data data3;
        Data data4;
        long j14;
        long j15;
        long j16;
        Constraints constraints2;
        int i11;
        BackoffPolicy backoffPolicy2;
        String str8 = (i6 & 1) != 0 ? workSpec.f76id : str;
        WorkInfo$State workInfo$State3 = (i6 & 2) != 0 ? workSpec.state : workInfo$State;
        String str9 = (i6 & 4) != 0 ? workSpec.workerClassName : str2;
        String str10 = (i6 & 8) != 0 ? workSpec.inputMergerClassName : str3;
        Data data5 = (i6 & 16) != 0 ? workSpec.input : data;
        Data data6 = (i6 & 32) != 0 ? workSpec.output : data2;
        long j17 = (i6 & 64) != 0 ? workSpec.initialDelay : j;
        long j18 = (i6 & 128) != 0 ? workSpec.intervalDuration : j2;
        long j19 = (i6 & 256) != 0 ? workSpec.flexDuration : j3;
        Constraints constraints3 = (i6 & 512) != 0 ? workSpec.constraints : constraints;
        int i12 = (i6 & 1024) != 0 ? workSpec.runAttemptCount : i;
        String str11 = str8;
        BackoffPolicy backoffPolicy3 = (i6 & 2048) != 0 ? workSpec.backoffPolicy : backoffPolicy;
        WorkInfo$State workInfo$State4 = workInfo$State3;
        long j20 = (i6 & 4096) != 0 ? workSpec.backoffDelayDuration : j4;
        long j21 = (i6 & 8192) != 0 ? workSpec.lastEnqueueTime : j5;
        long j22 = (i6 & 16384) != 0 ? workSpec.minimumRetentionDuration : j6;
        long j23 = (i6 & 32768) != 0 ? workSpec.scheduleRequestedAt : j7;
        boolean z3 = (i6 & 65536) != 0 ? workSpec.expedited : z;
        long j24 = j23;
        OutOfQuotaPolicy outOfQuotaPolicy3 = (i6 & 131072) != 0 ? workSpec.outOfQuotaPolicy : outOfQuotaPolicy;
        int i13 = (i6 & 262144) != 0 ? workSpec.periodCount : i2;
        OutOfQuotaPolicy outOfQuotaPolicy4 = outOfQuotaPolicy3;
        int i14 = (i6 & 524288) != 0 ? workSpec.generation : i3;
        int i15 = i13;
        long j25 = (i6 & 1048576) != 0 ? workSpec.nextScheduleTimeOverride : j8;
        int i16 = (i6 & TLObject.FLAG_21) != 0 ? workSpec.nextScheduleTimeOverrideGeneration : i4;
        int i17 = (i6 & 4194304) != 0 ? workSpec.stopReason : i5;
        int i18 = i16;
        String str12 = (i6 & 8388608) != 0 ? workSpec.traceTag : str4;
        if ((i6 & 16777216) != 0) {
            str5 = str12;
            bool2 = workSpec.backOffOnSystemInterruptions;
            j10 = j21;
            j11 = j22;
            j12 = j24;
            outOfQuotaPolicy2 = outOfQuotaPolicy4;
            i7 = i15;
            i8 = i14;
            j13 = j25;
            i9 = i18;
            i10 = i17;
            z2 = z3;
            str7 = str10;
            data3 = data5;
            data4 = data6;
            j14 = j17;
            j15 = j18;
            j16 = j19;
            constraints2 = constraints3;
            i11 = i12;
            backoffPolicy2 = backoffPolicy3;
            j9 = j20;
            workInfo$State2 = workInfo$State4;
            str6 = str9;
        } else {
            bool2 = bool;
            str5 = str12;
            j9 = j20;
            j10 = j21;
            j11 = j22;
            j12 = j24;
            outOfQuotaPolicy2 = outOfQuotaPolicy4;
            i7 = i15;
            i8 = i14;
            j13 = j25;
            i9 = i18;
            workInfo$State2 = workInfo$State4;
            i10 = i17;
            z2 = z3;
            str6 = str9;
            str7 = str10;
            data3 = data5;
            data4 = data6;
            j14 = j17;
            j15 = j18;
            j16 = j19;
            constraints2 = constraints3;
            i11 = i12;
            backoffPolicy2 = backoffPolicy3;
        }
        return workSpec.copy(str11, workInfo$State2, str6, str7, data3, data4, j14, j15, j16, constraints2, i11, backoffPolicy2, j9, j10, j11, j12, z2, outOfQuotaPolicy2, i7, i8, j13, i9, i10, str5, bool2);
    }

    public final WorkSpec copy(String id, WorkInfo$State state, String workerClassName, String inputMergerClassName, Data input, Data output, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str, Boolean bool) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        return new WorkSpec(id, state, workerClassName, inputMergerClassName, input, output, j, j2, j3, constraints, i, backoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicy, i2, i3, j8, i4, i5, str, bool);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        return Intrinsics.areEqual(this.f76id, workSpec.f76id) && this.state == workSpec.state && Intrinsics.areEqual(this.workerClassName, workSpec.workerClassName) && Intrinsics.areEqual(this.inputMergerClassName, workSpec.inputMergerClassName) && Intrinsics.areEqual(this.input, workSpec.input) && Intrinsics.areEqual(this.output, workSpec.output) && this.initialDelay == workSpec.initialDelay && this.intervalDuration == workSpec.intervalDuration && this.flexDuration == workSpec.flexDuration && Intrinsics.areEqual(this.constraints, workSpec.constraints) && this.runAttemptCount == workSpec.runAttemptCount && this.backoffPolicy == workSpec.backoffPolicy && this.backoffDelayDuration == workSpec.backoffDelayDuration && this.lastEnqueueTime == workSpec.lastEnqueueTime && this.minimumRetentionDuration == workSpec.minimumRetentionDuration && this.scheduleRequestedAt == workSpec.scheduleRequestedAt && this.expedited == workSpec.expedited && this.outOfQuotaPolicy == workSpec.outOfQuotaPolicy && this.periodCount == workSpec.periodCount && this.generation == workSpec.generation && this.nextScheduleTimeOverride == workSpec.nextScheduleTimeOverride && this.nextScheduleTimeOverrideGeneration == workSpec.nextScheduleTimeOverrideGeneration && this.stopReason == workSpec.stopReason && Intrinsics.areEqual(this.traceTag, workSpec.traceTag) && Intrinsics.areEqual(this.backOffOnSystemInterruptions, workSpec.backOffOnSystemInterruptions);
    }

    public int hashCode() {
        int iHashCode = ((((((((((((((((((((((((((((((((((((((((((((this.f76id.hashCode() * 31) + this.state.hashCode()) * 31) + this.workerClassName.hashCode()) * 31) + this.inputMergerClassName.hashCode()) * 31) + this.input.hashCode()) * 31) + this.output.hashCode()) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.initialDelay)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.intervalDuration)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.flexDuration)) * 31) + this.constraints.hashCode()) * 31) + this.runAttemptCount) * 31) + this.backoffPolicy.hashCode()) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.backoffDelayDuration)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.lastEnqueueTime)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.minimumRetentionDuration)) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.scheduleRequestedAt)) * 31) + EvCompValue$$ExternalSyntheticBackport0.m10m(this.expedited)) * 31) + this.outOfQuotaPolicy.hashCode()) * 31) + this.periodCount) * 31) + this.generation) * 31) + CameraTimestamp$$ExternalSyntheticBackport0.m47m(this.nextScheduleTimeOverride)) * 31) + this.nextScheduleTimeOverrideGeneration) * 31) + this.stopReason) * 31;
        String str = this.traceTag;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Boolean bool = this.backOffOnSystemInterruptions;
        return iHashCode2 + (bool != null ? bool.hashCode() : 0);
    }

    public WorkSpec(String id, WorkInfo$State state, String workerClassName, String inputMergerClassName, Data input, Data output, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str, Boolean bool) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(inputMergerClassName, "inputMergerClassName");
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(output, "output");
        Intrinsics.checkNotNullParameter(constraints, "constraints");
        Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
        Intrinsics.checkNotNullParameter(outOfQuotaPolicy, "outOfQuotaPolicy");
        this.f76id = id;
        this.state = state;
        this.workerClassName = workerClassName;
        this.inputMergerClassName = inputMergerClassName;
        this.input = input;
        this.output = output;
        this.initialDelay = j;
        this.intervalDuration = j2;
        this.flexDuration = j3;
        this.constraints = constraints;
        this.runAttemptCount = i;
        this.backoffPolicy = backoffPolicy;
        this.backoffDelayDuration = j4;
        this.lastEnqueueTime = j5;
        this.minimumRetentionDuration = j6;
        this.scheduleRequestedAt = j7;
        this.expedited = z;
        this.outOfQuotaPolicy = outOfQuotaPolicy;
        this.periodCount = i2;
        this.generation = i3;
        this.nextScheduleTimeOverride = j8;
        this.nextScheduleTimeOverrideGeneration = i4;
        this.stopReason = i5;
        this.traceTag = str;
        this.backOffOnSystemInterruptions = bool;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool, int i6, DefaultConstructorMarker defaultConstructorMarker) {
        String str5;
        WorkInfo$State workInfo$State2 = (i6 & 2) != 0 ? WorkInfo$State.ENQUEUED : workInfo$State;
        if ((i6 & 8) != 0) {
            String name = OverwritingInputMerger.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            str5 = name;
        } else {
            str5 = str3;
        }
        this(str, workInfo$State2, str2, str5, (i6 & 16) != 0 ? Data.EMPTY : data, (i6 & 32) != 0 ? Data.EMPTY : data2, (i6 & 64) != 0 ? 0L : j, (i6 & 128) != 0 ? 0L : j2, (i6 & 256) != 0 ? 0L : j3, (i6 & 512) != 0 ? Constraints.NONE : constraints, (i6 & 1024) != 0 ? 0 : i, (i6 & 2048) != 0 ? BackoffPolicy.EXPONENTIAL : backoffPolicy, (i6 & 4096) != 0 ? 30000L : j4, (i6 & 8192) != 0 ? -1L : j5, (i6 & 16384) == 0 ? j6 : 0L, (32768 & i6) != 0 ? -1L : j7, (65536 & i6) != 0 ? false : z, (131072 & i6) != 0 ? OutOfQuotaPolicy.RUN_AS_NON_EXPEDITED_WORK_REQUEST : outOfQuotaPolicy, (262144 & i6) != 0 ? 0 : i2, (524288 & i6) != 0 ? 0 : i3, (1048576 & i6) != 0 ? Long.MAX_VALUE : j8, (2097152 & i6) != 0 ? 0 : i4, (4194304 & i6) != 0 ? -256 : i5, (8388608 & i6) != 0 ? null : str4, (i6 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public final int getPeriodCount() {
        return this.periodCount;
    }

    public final int getGeneration() {
        return this.generation;
    }

    public final long getNextScheduleTimeOverride() {
        return this.nextScheduleTimeOverride;
    }

    public final void setNextScheduleTimeOverride(long j) {
        this.nextScheduleTimeOverride = j;
    }

    public final int getNextScheduleTimeOverrideGeneration() {
        return this.nextScheduleTimeOverrideGeneration;
    }

    public final void setNextScheduleTimeOverrideGeneration(int i) {
        this.nextScheduleTimeOverrideGeneration = i;
    }

    public final int getStopReason() {
        return this.stopReason;
    }

    public final String getTraceTag() {
        return this.traceTag;
    }

    public final void setTraceTag(String str) {
        this.traceTag = str;
    }

    public final Boolean getBackOffOnSystemInterruptions() {
        return this.backOffOnSystemInterruptions;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String id, String workerClassName_) {
        this(id, null, workerClassName_, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, null, 33554426, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workerClassName_, "workerClassName_");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WorkSpec(String newId, WorkSpec other) {
        this(newId, other.state, other.workerClassName, other.inputMergerClassName, new Data(other.input), new Data(other.output), other.initialDelay, other.intervalDuration, other.flexDuration, new Constraints(other.constraints), other.runAttemptCount, other.backoffPolicy, other.backoffDelayDuration, other.lastEnqueueTime, other.minimumRetentionDuration, other.scheduleRequestedAt, other.expedited, other.outOfQuotaPolicy, other.periodCount, 0, other.nextScheduleTimeOverride, other.nextScheduleTimeOverrideGeneration, other.stopReason, other.traceTag, other.backOffOnSystemInterruptions, 524288, null);
        Intrinsics.checkNotNullParameter(newId, "newId");
        Intrinsics.checkNotNullParameter(other, "other");
    }

    public final boolean isPeriodic() {
        return this.intervalDuration != 0;
    }

    public final boolean isBackedOff() {
        return this.state == WorkInfo$State.ENQUEUED && this.runAttemptCount > 0;
    }

    public final void setPeriodic(long j) {
        if (j < 900000) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        setPeriodic(RangesKt.coerceAtLeast(j, 900000L), RangesKt.coerceAtLeast(j, 900000L));
    }

    public final void setPeriodic(long j, long j2) {
        if (j < 900000) {
            Logger.get().warning(TAG, "Interval duration lesser than minimum allowed value; Changed to 900000");
        }
        this.intervalDuration = RangesKt.coerceAtLeast(j, 900000L);
        if (j2 < 300000) {
            Logger.get().warning(TAG, "Flex duration lesser than minimum allowed value; Changed to 300000");
        }
        if (j2 > this.intervalDuration) {
            Logger.get().warning(TAG, "Flex duration greater than interval duration; Changed to " + j);
        }
        this.flexDuration = RangesKt.coerceIn(j2, 300000L, this.intervalDuration);
    }

    public final long calculateNextRunTime() {
        return Companion.calculateNextRunTime(isBackedOff(), this.runAttemptCount, this.backoffPolicy, this.backoffDelayDuration, this.lastEnqueueTime, this.periodCount, isPeriodic(), this.initialDelay, this.flexDuration, this.intervalDuration, this.nextScheduleTimeOverride);
    }

    public final boolean hasConstraints() {
        return !Intrinsics.areEqual(Constraints.NONE, this.constraints);
    }

    public String toString() {
        return "{WorkSpec: " + this.f76id + '}';
    }

    public static final class IdAndState {

        /* JADX INFO: renamed from: id */
        public String f77id;
        public WorkInfo$State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            return Intrinsics.areEqual(this.f77id, idAndState.f77id) && this.state == idAndState.state;
        }

        public int hashCode() {
            return (this.f77id.hashCode() * 31) + this.state.hashCode();
        }

        public String toString() {
            return "IdAndState(id=" + this.f77id + ", state=" + this.state + ')';
        }

        public IdAndState(String id, WorkInfo$State state) {
            Intrinsics.checkNotNullParameter(id, "id");
            Intrinsics.checkNotNullParameter(state, "state");
            this.f77id = id;
            this.state = state;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final long calculateNextRunTime(boolean z, int i, BackoffPolicy backoffPolicy, long j, long j2, int i2, boolean z2, long j3, long j4, long j5, long j6) {
            Intrinsics.checkNotNullParameter(backoffPolicy, "backoffPolicy");
            if (j6 != Long.MAX_VALUE && z2) {
                return i2 == 0 ? j6 : RangesKt.coerceAtLeast(j6, 900000 + j2);
            }
            if (z) {
                return RangesKt.coerceAtMost(backoffPolicy == BackoffPolicy.LINEAR ? j * ((long) i) : (long) Math.scalb(j, i - 1), 18000000L) + j2;
            }
            if (z2) {
                long j7 = i2 == 0 ? j2 + j3 : j2 + j5;
                return (j4 == j5 || i2 != 0) ? j7 : j7 + (j5 - j4);
            }
            if (j2 == -1) {
                return Long.MAX_VALUE;
            }
            return j2 + j3;
        }
    }

    static {
        String strTagWithPrefix = Logger.tagWithPrefix("WorkSpec");
        Intrinsics.checkNotNullExpressionValue(strTagWithPrefix, "tagWithPrefix(...)");
        TAG = strTagWithPrefix;
        WORK_INFO_MAPPER = new Function() { // from class: androidx.work.impl.model.WorkSpec$$ExternalSyntheticLambda0
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                return WorkSpec.WORK_INFO_MAPPER$lambda$1((List) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List WORK_INFO_MAPPER$lambda$1(List list) {
        if (list == null) {
            return null;
        }
        List list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator it = list2.iterator();
        if (!it.hasNext()) {
            return arrayList;
        }
        WindowDecorActionBar$$ExternalSyntheticThrowCCEIfNotNull0.m4m(it.next());
        throw null;
    }
}
