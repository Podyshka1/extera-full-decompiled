package androidx.work.impl.model;

import androidx.room.EntityDeleteOrUpdateAdapter;
import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.coroutines.FlowUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.SQLiteConnectionUtil;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.WorkInfo$State;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KClass;
import kotlinx.coroutines.flow.Flow;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u001f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 O2\u00020\u0001:\u0001OB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u001d\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u00112\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0019\u0010\u0014J\u001d\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\f0\u00112\u0006\u0010\u0010\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001a\u0010\u0014J\u0015\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0015\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011H\u0016¢\u0006\u0004\b#\u0010$J\u001d\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010%\u001a\u00020\u001fH\u0016¢\u0006\u0004\b&\u0010\"J\u0015\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011H\u0016¢\u0006\u0004\b'\u0010$J\u0015\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00060\u0011H\u0016¢\u0006\u0004\b(\u0010$J\u001d\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00060\u00112\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u001fH\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b/\u00100J\u001f\u00102\u001a\u00020\u001f2\u0006\u00101\u001a\u00020\u00152\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b2\u00103J\u0017\u00104\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b4\u00105J\u0017\u00106\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b6\u00100J\u001f\u00108\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u00107\u001a\u00020\u0018H\u0016¢\u0006\u0004\b8\u00109J\u001f\u0010;\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010:\u001a\u00020)H\u0016¢\u0006\u0004\b;\u0010<J\u0017\u0010=\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b=\u00105J\u0017\u0010>\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b>\u00105J\u001f\u0010@\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010?\u001a\u00020\u001fH\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010C\u001a\u00020\u001f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010B\u001a\u00020)H\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020\u001fH\u0016¢\u0006\u0004\bE\u0010.J\u001f\u0010G\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010F\u001a\u00020\u001fH\u0016¢\u0006\u0004\bG\u0010AR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010HR\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00060I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u001a\u0010M\u001a\b\u0012\u0004\u0012\u00020\u00060L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010N¨\u0006P"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl;", "Landroidx/work/impl/model/WorkSpecDao;", "Landroidx/room/RoomDatabase;", "__db", "<init>", "(Landroidx/room/RoomDatabase;)V", "Landroidx/work/impl/model/WorkSpec;", "workSpec", _UrlKt.FRAGMENT_ENCODE_SET, "insertWorkSpec", "(Landroidx/work/impl/model/WorkSpec;)V", "updateWorkSpec", _UrlKt.FRAGMENT_ENCODE_SET, "id", "getWorkSpec", "(Ljava/lang/String;)Landroidx/work/impl/model/WorkSpec;", "name", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/work/impl/model/WorkSpec$IdAndState;", "getWorkSpecIdAndStatesForName", "(Ljava/lang/String;)Ljava/util/List;", "Landroidx/work/WorkInfo$State;", "getState", "(Ljava/lang/String;)Landroidx/work/WorkInfo$State;", "Landroidx/work/Data;", "getInputsFromPrerequisites", "getUnfinishedWorkWithName", "Lkotlinx/coroutines/flow/Flow;", _UrlKt.FRAGMENT_ENCODE_SET, "hasUnfinishedWorkFlow", "()Lkotlinx/coroutines/flow/Flow;", _UrlKt.FRAGMENT_ENCODE_SET, "schedulerLimit", "getEligibleWorkForScheduling", "(I)Ljava/util/List;", "getEligibleWorkForSchedulingWithContentUris", "()Ljava/util/List;", "maxLimit", "getAllEligibleWorkSpecsForScheduling", "getScheduledWork", "getRunningWork", _UrlKt.FRAGMENT_ENCODE_SET, "startingAt", "getRecentlyCompletedWork", "(J)Ljava/util/List;", "countNonFinishedContentUriTriggerWorkers", "()I", "delete", "(Ljava/lang/String;)V", "state", "setState", "(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I", "setCancelledState", "(Ljava/lang/String;)I", "incrementPeriodCount", "output", "setOutput", "(Ljava/lang/String;Landroidx/work/Data;)V", "enqueueTime", "setLastEnqueueTime", "(Ljava/lang/String;J)V", "incrementWorkSpecRunAttemptCount", "resetWorkSpecRunAttemptCount", "overrideGeneration", "resetWorkSpecNextScheduleTimeOverride", "(Ljava/lang/String;I)V", "startTime", "markWorkSpecScheduled", "(Ljava/lang/String;J)I", "resetScheduledState", "stopReason", "setStopReason", "Landroidx/room/RoomDatabase;", "Landroidx/room/EntityInsertAdapter;", "__insertAdapterOfWorkSpec", "Landroidx/room/EntityInsertAdapter;", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "__updateAdapterOfWorkSpec", "Landroidx/room/EntityDeleteOrUpdateAdapter;", "Companion", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkSpecDao_Impl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkSpecDao_Impl.kt\nandroidx/work/impl/model/WorkSpecDao_Impl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3476:1\n1#2:3477\n*E\n"})
public final class WorkSpecDao_Impl implements WorkSpecDao {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkSpec> __insertAdapterOfWorkSpec = new EntityInsertAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
        @Override // androidx.room.EntityInsertAdapter
        public String createQuery() {
            return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        }

        @Override // androidx.room.EntityInsertAdapter
        public void bind(SQLiteStatement statement, WorkSpec entity) {
            statement.bindText(1, entity.id);
            statement.bindLong(2, WorkTypeConverters.stateToInt(entity.state));
            statement.bindText(3, entity.workerClassName);
            statement.bindText(4, entity.inputMergerClassName);
            Data.Companion companion = Data.INSTANCE;
            statement.bindBlob(5, companion.toByteArrayInternalV1(entity.input));
            statement.bindBlob(6, companion.toByteArrayInternalV1(entity.output));
            statement.bindLong(7, entity.initialDelay);
            statement.bindLong(8, entity.intervalDuration);
            statement.bindLong(9, entity.flexDuration);
            statement.bindLong(10, entity.runAttemptCount);
            statement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(entity.backoffPolicy));
            statement.bindLong(12, entity.backoffDelayDuration);
            statement.bindLong(13, entity.lastEnqueueTime);
            statement.bindLong(14, entity.minimumRetentionDuration);
            statement.bindLong(15, entity.scheduleRequestedAt);
            statement.bindLong(16, entity.expedited ? 1L : 0L);
            statement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(entity.outOfQuotaPolicy));
            statement.bindLong(18, entity.getPeriodCount());
            statement.bindLong(19, entity.getGeneration());
            statement.bindLong(20, entity.getNextScheduleTimeOverride());
            statement.bindLong(21, entity.getNextScheduleTimeOverrideGeneration());
            statement.bindLong(22, entity.getStopReason());
            String traceTag = entity.getTraceTag();
            if (traceTag == null) {
                statement.bindNull(23);
            } else {
                statement.bindText(23, traceTag);
            }
            Boolean backOffOnSystemInterruptions = entity.getBackOffOnSystemInterruptions();
            if ((backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null) == null) {
                statement.bindNull(24);
            } else {
                statement.bindLong(24, r3.intValue());
            }
            Constraints constraints = entity.constraints;
            statement.bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
            statement.bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat()));
            statement.bindLong(27, constraints.getRequiresCharging() ? 1L : 0L);
            statement.bindLong(28, constraints.getRequiresDeviceIdle() ? 1L : 0L);
            statement.bindLong(29, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
            statement.bindLong(30, constraints.getRequiresStorageNotLow() ? 1L : 0L);
            statement.bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
            statement.bindLong(32, constraints.getContentTriggerMaxDelayMillis());
            statement.bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
        }
    };
    private final EntityDeleteOrUpdateAdapter<WorkSpec> __updateAdapterOfWorkSpec = new EntityDeleteOrUpdateAdapter<WorkSpec>() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public String createQuery() {
            return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
        }

        @Override // androidx.room.EntityDeleteOrUpdateAdapter
        public void bind(SQLiteStatement statement, WorkSpec entity) {
            statement.bindText(1, entity.id);
            statement.bindLong(2, WorkTypeConverters.stateToInt(entity.state));
            statement.bindText(3, entity.workerClassName);
            statement.bindText(4, entity.inputMergerClassName);
            Data.Companion companion = Data.INSTANCE;
            statement.bindBlob(5, companion.toByteArrayInternalV1(entity.input));
            statement.bindBlob(6, companion.toByteArrayInternalV1(entity.output));
            statement.bindLong(7, entity.initialDelay);
            statement.bindLong(8, entity.intervalDuration);
            statement.bindLong(9, entity.flexDuration);
            statement.bindLong(10, entity.runAttemptCount);
            statement.bindLong(11, WorkTypeConverters.backoffPolicyToInt(entity.backoffPolicy));
            statement.bindLong(12, entity.backoffDelayDuration);
            statement.bindLong(13, entity.lastEnqueueTime);
            statement.bindLong(14, entity.minimumRetentionDuration);
            statement.bindLong(15, entity.scheduleRequestedAt);
            statement.bindLong(16, entity.expedited ? 1L : 0L);
            statement.bindLong(17, WorkTypeConverters.outOfQuotaPolicyToInt(entity.outOfQuotaPolicy));
            statement.bindLong(18, entity.getPeriodCount());
            statement.bindLong(19, entity.getGeneration());
            statement.bindLong(20, entity.getNextScheduleTimeOverride());
            statement.bindLong(21, entity.getNextScheduleTimeOverrideGeneration());
            statement.bindLong(22, entity.getStopReason());
            String traceTag = entity.getTraceTag();
            if (traceTag == null) {
                statement.bindNull(23);
            } else {
                statement.bindText(23, traceTag);
            }
            Boolean backOffOnSystemInterruptions = entity.getBackOffOnSystemInterruptions();
            if ((backOffOnSystemInterruptions != null ? Integer.valueOf(backOffOnSystemInterruptions.booleanValue() ? 1 : 0) : null) == null) {
                statement.bindNull(24);
            } else {
                statement.bindLong(24, r4.intValue());
            }
            Constraints constraints = entity.constraints;
            statement.bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
            statement.bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat()));
            statement.bindLong(27, constraints.getRequiresCharging() ? 1L : 0L);
            statement.bindLong(28, constraints.getRequiresDeviceIdle() ? 1L : 0L);
            statement.bindLong(29, constraints.getRequiresBatteryNotLow() ? 1L : 0L);
            statement.bindLong(30, constraints.getRequiresStorageNotLow() ? 1L : 0L);
            statement.bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
            statement.bindLong(32, constraints.getContentTriggerMaxDelayMillis());
            statement.bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            statement.bindText(34, entity.id);
        }
    };

    public WorkSpecDao_Impl(RoomDatabase roomDatabase) {
        this.__db = roomDatabase;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(final WorkSpec workSpec) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$TcStHcTAZZVbzvOHHrrDz_mxpiM(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$TcStHcTAZZVbzvOHHrrDz_mxpiM(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) throws Exception {
        workSpecDao_Impl.__insertAdapterOfWorkSpec.insert(sQLiteConnection, workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(final WorkSpec workSpec) {
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$1dPPQOz9wdzZqLrC9ZC41PXLr2A(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$1dPPQOz9wdzZqLrC9ZC41PXLr2A(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection sQLiteConnection) throws Exception {
        workSpecDao_Impl.__updateAdapterOfWorkSpec.handle(sQLiteConnection, workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(final String id) {
        final String str = "SELECT * FROM workspec WHERE id=?";
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.m1800$r8$lambda$zaC8f9OroooJCR2QClopGXnzS4(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$zaC8f9OroooJCR2QClopG-XnzS4, reason: not valid java name */
    public static WorkSpec m1800$r8$lambda$zaC8f9OroooJCR2QClopGXnzS4(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            WorkSpec workSpec = null;
            Boolean boolValueOf = null;
            if (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(columnIndexOrThrow14);
                long j7 = sQLiteStatementPrepare.getLong(columnIndexOrThrow15);
                boolean z = ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow16)) != 0;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow17));
                int i2 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow18);
                int i3 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow19);
                long j8 = sQLiteStatementPrepare.getLong(columnIndexOrThrow20);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow21);
                int i5 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow22);
                String text4 = sQLiteStatementPrepare.isNull(columnIndexOrThrow23) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow23);
                Integer numValueOf = sQLiteStatementPrepare.isNull(columnIndexOrThrow24) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow24));
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                workSpec = new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(columnIndexOrThrow26)), WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow25)), ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow27)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow28)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow29)) != 0, ((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow30)) != 0, sQLiteStatementPrepare.getLong(columnIndexOrThrow31), sQLiteStatementPrepare.getLong(columnIndexOrThrow32), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(columnIndexOrThrow33))), i, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i2, i3, j8, i4, i5, text4, boolValueOf);
            }
            sQLiteStatementPrepare.close();
            return workSpec;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec.IdAndState> getWorkSpecIdAndStatesForName(final String name) {
        final String str = "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$hdVPv_oKlCDT6boNQXfAlJpqbeE(str, name, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$hdVPv_oKlCDT6boNQXfAlJpqbeE(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(new WorkSpec.IdAndState(sQLiteStatementPrepare.getText(0), WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(1))));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkInfo$State getState(final String id) {
        final String str = "SELECT state FROM workspec WHERE id=?";
        return (WorkInfo$State) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$V8dm0CzATZY_g4wbyyGkVh7xf2c(str, id, (SQLiteConnection) obj);
            }
        });
    }

    public static WorkInfo$State $r8$lambda$V8dm0CzATZY_g4wbyyGkVh7xf2c(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            WorkInfo$State workInfo$StateIntToState = null;
            if (sQLiteStatementPrepare.step()) {
                Integer numValueOf = sQLiteStatementPrepare.isNull(0) ? null : Integer.valueOf((int) sQLiteStatementPrepare.getLong(0));
                if (numValueOf != null) {
                    workInfo$StateIntToState = WorkTypeConverters.intToState(numValueOf.intValue());
                }
            }
            return workInfo$StateIntToState;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<Data> getInputsFromPrerequisites(final String id) {
        final String str = "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.m1799$r8$lambda$ypwWC_IQ7uVVpMML6lkqasFSrc(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$ypwWC_-IQ7uVVpMML6lkqasFSrc, reason: not valid java name */
    public static List m1799$r8$lambda$ypwWC_IQ7uVVpMML6lkqasFSrc(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(Data.INSTANCE.fromByteArray(sQLiteStatementPrepare.getBlob(0)));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<String> getUnfinishedWorkWithName(final String name) {
        final String str = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$5E9Q3WxcAEUU2AazRaO6GyVPULI(str, name, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$5E9Q3WxcAEUU2AazRaO6GyVPULI(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(sQLiteStatementPrepare.getText(0));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public Flow<Boolean> hasUnfinishedWorkFlow() {
        final String str = "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1";
        return FlowUtil.createFlow(this.__db, false, new String[]{"workspec"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(WorkSpecDao_Impl.$r8$lambda$hFo_x_SZZBoNGDTckdtCQRnSGyo(str, (SQLiteConnection) obj));
            }
        });
    }

    public static boolean $r8$lambda$hFo_x_SZZBoNGDTckdtCQRnSGyo(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            boolean z = false;
            if (sQLiteStatementPrepare.step()) {
                if (((int) sQLiteStatementPrepare.getLong(0)) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForScheduling(final int schedulerLimit) {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$fnITpoR1PO1p7_VkaDg0ZRzSZ9U(str, schedulerLimit, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$fnITpoR1PO1p7_VkaDg0ZRzSZ9U(String str, int i, SQLiteConnection sQLiteConnection) {
        int i2;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow13;
                int i4 = columnIndexOrThrow14;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i5 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(i3);
                long j6 = sQLiteStatementPrepare.getLong(i4);
                int i8 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i8);
                columnIndexOrThrow15 = i8;
                int i9 = columnIndexOrThrow16;
                int i10 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i9)) != 0;
                int i11 = columnIndexOrThrow17;
                int i12 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i11));
                int i13 = columnIndexOrThrow18;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) sQLiteStatementPrepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = (int) sQLiteStatementPrepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i22) ? null : sQLiteStatementPrepare.getText(i22);
                int i23 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i23)) {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    numValueOf = null;
                } else {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i23));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i24 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i25));
                int i26 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                int i27 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                int i28 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i28)) != 0;
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i30;
                int i32 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i29)) != 0, sQLiteStatementPrepare.getLong(i30), sQLiteStatementPrepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i32))), i5, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i14, i16, j8, i19, i21, text4, bool));
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow4 = i12;
                columnIndexOrThrow17 = i11;
                columnIndexOrThrow18 = i13;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow23 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                columnIndexOrThrow27 = i26;
                columnIndexOrThrow33 = i32;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow = i6;
                columnIndexOrThrow13 = i3;
                columnIndexOrThrow14 = i4;
                columnIndexOrThrow2 = i7;
                columnIndexOrThrow3 = i10;
                columnIndexOrThrow16 = i9;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getEligibleWorkForSchedulingWithContentUris() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.m1796$r8$lambda$WmdU6OWFKOewjuxUcOkDAId0fg(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$WmdU6OWFKOewjux-UcOkDAId0fg, reason: not valid java name */
    public static List m1796$r8$lambda$WmdU6OWFKOewjuxUcOkDAId0fg(String str, SQLiteConnection sQLiteConnection) {
        int i;
        int i2;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i9)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) sQLiteStatementPrepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) sQLiteStatementPrepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) sQLiteStatementPrepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i22) ? null : sQLiteStatementPrepare.getText(i22);
                int i23 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    numValueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i23));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                int i28 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i28)) != 0;
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i29)) != 0, sQLiteStatementPrepare.getLong(i30), sQLiteStatementPrepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i32))), i4, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i14, i16, j8, i, i21, text4, bool));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            sQLiteStatementPrepare.close();
            return arrayList3;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getAllEligibleWorkSpecsForScheduling(final int maxLimit) {
        final String str = "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$7xU4rcngjQY9wTrzM2HFSRzKlTE(str, maxLimit, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$7xU4rcngjQY9wTrzM2HFSRzKlTE(String str, int i, SQLiteConnection sQLiteConnection) {
        int i2;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, i);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow13;
                int i4 = columnIndexOrThrow14;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i5 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i6 = columnIndexOrThrow;
                int i7 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(i3);
                long j6 = sQLiteStatementPrepare.getLong(i4);
                int i8 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i8);
                columnIndexOrThrow15 = i8;
                int i9 = columnIndexOrThrow16;
                int i10 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i9)) != 0;
                int i11 = columnIndexOrThrow17;
                int i12 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i11));
                int i13 = columnIndexOrThrow18;
                int i14 = (int) sQLiteStatementPrepare.getLong(i13);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) sQLiteStatementPrepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                columnIndexOrThrow21 = i18;
                int i20 = columnIndexOrThrow22;
                int i21 = (int) sQLiteStatementPrepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i22) ? null : sQLiteStatementPrepare.getText(i22);
                int i23 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i23)) {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    numValueOf = null;
                } else {
                    i2 = i22;
                    columnIndexOrThrow22 = i20;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i23));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i24 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i25));
                int i26 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                int i27 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                int i28 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i28)) != 0;
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i30;
                int i32 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i29)) != 0, sQLiteStatementPrepare.getLong(i30), sQLiteStatementPrepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i32))), i5, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i14, i16, j8, i19, i21, text4, bool));
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow4 = i12;
                columnIndexOrThrow17 = i11;
                columnIndexOrThrow18 = i13;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow23 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                columnIndexOrThrow27 = i26;
                columnIndexOrThrow33 = i32;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow = i6;
                columnIndexOrThrow13 = i3;
                columnIndexOrThrow14 = i4;
                columnIndexOrThrow2 = i7;
                columnIndexOrThrow3 = i10;
                columnIndexOrThrow16 = i9;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getScheduledWork() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$chvsbAAJjg4lV4x5vJMY03fl4pI(str, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$chvsbAAJjg4lV4x5vJMY03fl4pI(String str, SQLiteConnection sQLiteConnection) {
        int i;
        int i2;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i9)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) sQLiteStatementPrepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) sQLiteStatementPrepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) sQLiteStatementPrepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i22) ? null : sQLiteStatementPrepare.getText(i22);
                int i23 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    numValueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i23));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                int i28 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i28)) != 0;
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i29)) != 0, sQLiteStatementPrepare.getLong(i30), sQLiteStatementPrepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i32))), i4, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i14, i16, j8, i, i21, text4, bool));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            sQLiteStatementPrepare.close();
            return arrayList3;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRunningWork() {
        final String str = "SELECT * FROM workspec WHERE state=1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$Bmk0Wb4PqGceYkMRz22vPjZLj7s(str, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$Bmk0Wb4PqGceYkMRz22vPjZLj7s(String str, SQLiteConnection sQLiteConnection) {
        int i;
        int i2;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i3 = columnIndexOrThrow14;
                ArrayList arrayList2 = arrayList;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow2;
                int i6 = columnIndexOrThrow3;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow13);
                long j6 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j7 = sQLiteStatementPrepare.getLong(i7);
                int i8 = columnIndexOrThrow;
                int i9 = columnIndexOrThrow16;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i9)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = columnIndexOrThrow5;
                int i14 = (int) sQLiteStatementPrepare.getLong(i12);
                int i15 = columnIndexOrThrow19;
                int i16 = (int) sQLiteStatementPrepare.getLong(i15);
                int i17 = columnIndexOrThrow20;
                long j8 = sQLiteStatementPrepare.getLong(i17);
                int i18 = columnIndexOrThrow21;
                int i19 = (int) sQLiteStatementPrepare.getLong(i18);
                int i20 = columnIndexOrThrow22;
                int i21 = (int) sQLiteStatementPrepare.getLong(i20);
                int i22 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i22) ? null : sQLiteStatementPrepare.getText(i22);
                int i23 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i23)) {
                    i = i19;
                    i2 = i20;
                    numValueOf = null;
                } else {
                    i = i19;
                    i2 = i20;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i23));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                int i24 = columnIndexOrThrow25;
                Boolean bool = boolValueOf;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i24));
                int i25 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i25));
                columnIndexOrThrow25 = i24;
                columnIndexOrThrow26 = i25;
                int i26 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                columnIndexOrThrow27 = i26;
                int i27 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                int i28 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i28)) != 0;
                columnIndexOrThrow29 = i28;
                int i29 = columnIndexOrThrow30;
                int i30 = columnIndexOrThrow31;
                int i31 = columnIndexOrThrow32;
                int i32 = columnIndexOrThrow33;
                columnIndexOrThrow33 = i32;
                arrayList2.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j, j2, j3, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i29)) != 0, sQLiteStatementPrepare.getLong(i30), sQLiteStatementPrepare.getLong(i31), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i32))), i4, backoffPolicyIntToBackoffPolicy, j4, j5, j6, j7, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i14, i16, j8, i, i21, text4, bool));
                columnIndexOrThrow30 = i29;
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow19 = i15;
                columnIndexOrThrow22 = i2;
                columnIndexOrThrow24 = i23;
                columnIndexOrThrow31 = i30;
                columnIndexOrThrow32 = i31;
                columnIndexOrThrow2 = i5;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow3 = i6;
                arrayList = arrayList2;
                columnIndexOrThrow = i8;
                columnIndexOrThrow15 = i7;
                columnIndexOrThrow16 = i9;
                columnIndexOrThrow20 = i17;
                columnIndexOrThrow21 = i18;
                columnIndexOrThrow23 = i22;
                columnIndexOrThrow28 = i27;
                columnIndexOrThrow5 = i13;
                columnIndexOrThrow18 = i12;
            }
            ArrayList arrayList3 = arrayList;
            sQLiteStatementPrepare.close();
            return arrayList3;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List<WorkSpec> getRecentlyCompletedWork(final long startingAt) {
        final String str = "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$l02HuTLPNONsWznK7CLIrAjqzl4(str, startingAt, (SQLiteConnection) obj);
            }
        });
    }

    public static List $r8$lambda$l02HuTLPNONsWznK7CLIrAjqzl4(String str, long j, SQLiteConnection sQLiteConnection) {
        int i;
        Integer numValueOf;
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "id");
            int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "state");
            int columnIndexOrThrow3 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "worker_class_name");
            int columnIndexOrThrow4 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input_merger_class_name");
            int columnIndexOrThrow5 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "input");
            int columnIndexOrThrow6 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "output");
            int columnIndexOrThrow7 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "initial_delay");
            int columnIndexOrThrow8 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "interval_duration");
            int columnIndexOrThrow9 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "flex_duration");
            int columnIndexOrThrow10 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_attempt_count");
            int columnIndexOrThrow11 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_policy");
            int columnIndexOrThrow12 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_delay_duration");
            int columnIndexOrThrow13 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "last_enqueue_time");
            int columnIndexOrThrow14 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "minimum_retention_duration");
            int columnIndexOrThrow15 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "schedule_requested_at");
            int columnIndexOrThrow16 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "run_in_foreground");
            int columnIndexOrThrow17 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "out_of_quota_policy");
            int columnIndexOrThrow18 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "period_count");
            int columnIndexOrThrow19 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "generation");
            int columnIndexOrThrow20 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override");
            int columnIndexOrThrow21 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "next_schedule_time_override_generation");
            int columnIndexOrThrow22 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "stop_reason");
            int columnIndexOrThrow23 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trace_tag");
            int columnIndexOrThrow24 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "backoff_on_system_interruptions");
            int columnIndexOrThrow25 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_type");
            int columnIndexOrThrow26 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "required_network_request");
            int columnIndexOrThrow27 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_charging");
            int columnIndexOrThrow28 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_device_idle");
            int columnIndexOrThrow29 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_battery_not_low");
            int columnIndexOrThrow30 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "requires_storage_not_low");
            int columnIndexOrThrow31 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_content_update_delay");
            int columnIndexOrThrow32 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "trigger_max_content_delay");
            int columnIndexOrThrow33 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "content_uri_triggers");
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                String text = sQLiteStatementPrepare.getText(columnIndexOrThrow);
                int i2 = columnIndexOrThrow13;
                int i3 = columnIndexOrThrow14;
                WorkInfo$State workInfo$StateIntToState = WorkTypeConverters.intToState((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow2));
                String text2 = sQLiteStatementPrepare.getText(columnIndexOrThrow3);
                String text3 = sQLiteStatementPrepare.getText(columnIndexOrThrow4);
                byte[] blob = sQLiteStatementPrepare.getBlob(columnIndexOrThrow5);
                Data.Companion companion = Data.INSTANCE;
                Data dataFromByteArray = companion.fromByteArray(blob);
                Data dataFromByteArray2 = companion.fromByteArray(sQLiteStatementPrepare.getBlob(columnIndexOrThrow6));
                long j2 = sQLiteStatementPrepare.getLong(columnIndexOrThrow7);
                long j3 = sQLiteStatementPrepare.getLong(columnIndexOrThrow8);
                long j4 = sQLiteStatementPrepare.getLong(columnIndexOrThrow9);
                int i4 = (int) sQLiteStatementPrepare.getLong(columnIndexOrThrow10);
                int i5 = columnIndexOrThrow;
                int i6 = columnIndexOrThrow2;
                BackoffPolicy backoffPolicyIntToBackoffPolicy = WorkTypeConverters.intToBackoffPolicy((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow11));
                long j5 = sQLiteStatementPrepare.getLong(columnIndexOrThrow12);
                long j6 = sQLiteStatementPrepare.getLong(i2);
                long j7 = sQLiteStatementPrepare.getLong(i3);
                int i7 = columnIndexOrThrow15;
                long j8 = sQLiteStatementPrepare.getLong(i7);
                columnIndexOrThrow15 = i7;
                int i8 = columnIndexOrThrow16;
                int i9 = columnIndexOrThrow3;
                boolean z = ((int) sQLiteStatementPrepare.getLong(i8)) != 0;
                int i10 = columnIndexOrThrow17;
                int i11 = columnIndexOrThrow4;
                OutOfQuotaPolicy outOfQuotaPolicyIntToOutOfQuotaPolicy = WorkTypeConverters.intToOutOfQuotaPolicy((int) sQLiteStatementPrepare.getLong(i10));
                int i12 = columnIndexOrThrow18;
                int i13 = (int) sQLiteStatementPrepare.getLong(i12);
                int i14 = columnIndexOrThrow19;
                int i15 = (int) sQLiteStatementPrepare.getLong(i14);
                int i16 = columnIndexOrThrow20;
                long j9 = sQLiteStatementPrepare.getLong(i16);
                int i17 = columnIndexOrThrow21;
                int i18 = (int) sQLiteStatementPrepare.getLong(i17);
                columnIndexOrThrow21 = i17;
                int i19 = columnIndexOrThrow22;
                int i20 = (int) sQLiteStatementPrepare.getLong(i19);
                int i21 = columnIndexOrThrow23;
                Boolean boolValueOf = null;
                String text4 = sQLiteStatementPrepare.isNull(i21) ? null : sQLiteStatementPrepare.getText(i21);
                int i22 = columnIndexOrThrow24;
                if (sQLiteStatementPrepare.isNull(i22)) {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    numValueOf = null;
                } else {
                    i = i21;
                    columnIndexOrThrow22 = i19;
                    numValueOf = Integer.valueOf((int) sQLiteStatementPrepare.getLong(i22));
                }
                if (numValueOf != null) {
                    boolValueOf = Boolean.valueOf(numValueOf.intValue() != 0);
                }
                Boolean bool = boolValueOf;
                int i23 = columnIndexOrThrow25;
                NetworkType networkTypeIntToNetworkType = WorkTypeConverters.intToNetworkType((int) sQLiteStatementPrepare.getLong(i23));
                int i24 = columnIndexOrThrow26;
                NetworkRequestCompat networkRequest$work_runtime_release = WorkTypeConverters.toNetworkRequest$work_runtime_release(sQLiteStatementPrepare.getBlob(i24));
                int i25 = columnIndexOrThrow27;
                boolean z2 = ((int) sQLiteStatementPrepare.getLong(i25)) != 0;
                int i26 = columnIndexOrThrow28;
                boolean z3 = ((int) sQLiteStatementPrepare.getLong(i26)) != 0;
                int i27 = columnIndexOrThrow29;
                boolean z4 = ((int) sQLiteStatementPrepare.getLong(i27)) != 0;
                columnIndexOrThrow29 = i27;
                int i28 = columnIndexOrThrow30;
                int i29 = columnIndexOrThrow31;
                int i30 = columnIndexOrThrow32;
                columnIndexOrThrow31 = i29;
                int i31 = columnIndexOrThrow33;
                arrayList.add(new WorkSpec(text, workInfo$StateIntToState, text2, text3, dataFromByteArray, dataFromByteArray2, j2, j3, j4, new Constraints(networkRequest$work_runtime_release, networkTypeIntToNetworkType, z2, z3, z4, ((int) sQLiteStatementPrepare.getLong(i28)) != 0, sQLiteStatementPrepare.getLong(i29), sQLiteStatementPrepare.getLong(i30), WorkTypeConverters.byteArrayToSetOfTriggers(sQLiteStatementPrepare.getBlob(i31))), i4, backoffPolicyIntToBackoffPolicy, j5, j6, j7, j8, z, outOfQuotaPolicyIntToOutOfQuotaPolicy, i13, i15, j9, i18, i20, text4, bool));
                columnIndexOrThrow4 = i11;
                columnIndexOrThrow17 = i10;
                columnIndexOrThrow18 = i12;
                columnIndexOrThrow19 = i14;
                columnIndexOrThrow20 = i16;
                columnIndexOrThrow23 = i;
                columnIndexOrThrow24 = i22;
                columnIndexOrThrow25 = i23;
                columnIndexOrThrow26 = i24;
                columnIndexOrThrow27 = i25;
                columnIndexOrThrow28 = i26;
                columnIndexOrThrow33 = i31;
                columnIndexOrThrow32 = i30;
                columnIndexOrThrow30 = i28;
                columnIndexOrThrow = i5;
                columnIndexOrThrow13 = i2;
                columnIndexOrThrow14 = i3;
                columnIndexOrThrow2 = i6;
                columnIndexOrThrow3 = i9;
                columnIndexOrThrow16 = i8;
            }
            sQLiteStatementPrepare.close();
            return arrayList;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int countNonFinishedContentUriTriggerWorkers() {
        final String str = "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)";
        return ((Number) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda4
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.m1794$r8$lambda$3IxUHjjrtvVME73wUnQxTzg1n4(str, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$3IxUHjjrtvVME73wUnQx-Tzg1n4, reason: not valid java name */
    public static int m1794$r8$lambda$3IxUHjjrtvVME73wUnQxTzg1n4(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            return sQLiteStatementPrepare.step() ? (int) sQLiteStatementPrepare.getLong(0) : 0;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(final String id) {
        final String str = "DELETE FROM workspec WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$rC9mXMIs_zeIDEgWlKpketls7QU(str, id, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$rC9mXMIs_zeIDEgWlKpketls7QU(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setState(final WorkInfo$State state, final String id) {
        final String str = "UPDATE workspec SET state=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.$r8$lambda$3YgOuD96vxpWzCW8tqVMWPtOMeA(str, state, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    public static int $r8$lambda$3YgOuD96vxpWzCW8tqVMWPtOMeA(String str, WorkInfo$State workInfo$State, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, WorkTypeConverters.stateToInt(workInfo$State));
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(final String id) {
        final String str = "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.m1795$r8$lambda$KFb3nzXfzaUaq1v3ooSxnQhpBs(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: renamed from: $r8$lambda$KFb3nzXfzaUaq1v3ooSxnQ-hpBs, reason: not valid java name */
    public static int m1795$r8$lambda$KFb3nzXfzaUaq1v3ooSxnQhpBs(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(final String id) {
        final String str = "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$D_j3iVlrhs4qIubkJxP9Pf64v1w(str, id, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$D_j3iVlrhs4qIubkJxP9Pf64v1w(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setOutput(final String id, final Data output) {
        final String str = "UPDATE workspec SET output=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.m1798$r8$lambda$uBycsnqVEM52eglkebt_v2RNeQ(str, output, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$uBy-csnqVEM52eglkebt_v2RNeQ, reason: not valid java name */
    public static Unit m1798$r8$lambda$uBycsnqVEM52eglkebt_v2RNeQ(String str, Data data, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindBlob(1, Data.INSTANCE.toByteArrayInternalV1(data));
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setLastEnqueueTime(final String id, final long enqueueTime) {
        final String str = "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.m1797$r8$lambda$_VUlGlVo31AuDORktivu9yoNtM(str, enqueueTime, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$_VUlGlVo31AuD-ORktivu9yoNtM, reason: not valid java name */
    public static Unit m1797$r8$lambda$_VUlGlVo31AuDORktivu9yoNtM(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int incrementWorkSpecRunAttemptCount(final String id) {
        final String str = "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.$r8$lambda$9icPC8zW71nSfq9GS1Jqyvbbd9I(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    public static int $r8$lambda$9icPC8zW71nSfq9GS1Jqyvbbd9I(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(final String id) {
        final String str = "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.$r8$lambda$KUcGUYGmOUPT2odFOUwBnvgk5Q0(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    public static int $r8$lambda$KUcGUYGmOUPT2odFOUwBnvgk5Q0(String str, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String id, final int overrideGeneration) {
        final String str = "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$dcBKbVNLGBPeNR9pZ6Kmf5Rcnk4(str, id, overrideGeneration, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$dcBKbVNLGBPeNR9pZ6Kmf5Rcnk4(String str, String str2, int i, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.bindLong(2, i);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int markWorkSpecScheduled(final String id, final long startTime) {
        final String str = "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.$r8$lambda$c3IlkoMXTk79d9ht9bnL8LIKQs0(str, startTime, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    public static int $r8$lambda$c3IlkoMXTk79d9ht9bnL8LIKQs0(String str, long j, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetScheduledState() {
        final String str = "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda8
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.$r8$lambda$1X8u9KRHqPGLidWnCmxbXa2nlSk(str, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    public static int $r8$lambda$1X8u9KRHqPGLidWnCmxbXa2nlSk(String str, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(sQLiteConnection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(final String id, final int stopReason) {
        final String str = "UPDATE workspec SET stop_reason=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.$r8$lambda$7qvmZJxUUMCwMeWTK5YGPSYgwI0(str, stopReason, id, (SQLiteConnection) obj);
            }
        });
    }

    public static Unit $r8$lambda$7qvmZJxUUMCwMeWTK5YGPSYgwI0(String str, int i, String str2, SQLiteConnection sQLiteConnection) {
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, i);
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            sQLiteStatementPrepare.close();
            return Unit.INSTANCE;
        } catch (Throwable th) {
            sQLiteStatementPrepare.close();
            throw th;
        }
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00060\u0005¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getRequiredConverters", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/reflect/KClass;", "work-runtime_release"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<KClass<?>> getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
