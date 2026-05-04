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
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: loaded from: classes.dex */
public final class WorkSpecDao_Impl implements WorkSpecDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter __insertAdapterOfWorkSpec;
    private final EntityDeleteOrUpdateAdapter __updateAdapterOfWorkSpec;

    public WorkSpecDao_Impl(RoomDatabase __db) {
        Intrinsics.checkNotNullParameter(__db, "__db");
        this.__db = __db;
        this.__insertAdapterOfWorkSpec = new EntityInsertAdapter() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            protected String createQuery() {
                return "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`backoff_on_system_interruptions`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement statement, WorkSpec entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.f76id);
                statement.bindLong(2, WorkTypeConverters.stateToInt(entity.state));
                statement.bindText(3, entity.workerClassName);
                statement.bindText(4, entity.inputMergerClassName);
                Data.Companion companion = Data.Companion;
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
                    statement.bindLong(24, r0.intValue());
                }
                Constraints constraints = entity.constraints;
                statement.bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                statement.bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                statement.bindLong(27, constraints.requiresCharging() ? 1L : 0L);
                statement.bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
                statement.bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
                statement.bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
                statement.bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                statement.bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                statement.bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
            }
        };
        this.__updateAdapterOfWorkSpec = new EntityDeleteOrUpdateAdapter() { // from class: androidx.work.impl.model.WorkSpecDao_Impl.2
            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            protected String createQuery() {
                return "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`trace_tag` = ?,`backoff_on_system_interruptions` = ?,`required_network_type` = ?,`required_network_request` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?";
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.room.EntityDeleteOrUpdateAdapter
            public void bind(SQLiteStatement statement, WorkSpec entity) {
                Intrinsics.checkNotNullParameter(statement, "statement");
                Intrinsics.checkNotNullParameter(entity, "entity");
                statement.bindText(1, entity.f76id);
                statement.bindLong(2, WorkTypeConverters.stateToInt(entity.state));
                statement.bindText(3, entity.workerClassName);
                statement.bindText(4, entity.inputMergerClassName);
                Data.Companion companion = Data.Companion;
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
                    statement.bindLong(24, r0.intValue());
                }
                Constraints constraints = entity.constraints;
                statement.bindLong(25, WorkTypeConverters.networkTypeToInt(constraints.getRequiredNetworkType()));
                statement.bindBlob(26, WorkTypeConverters.fromNetworkRequest$work_runtime_release(constraints.getRequiredNetworkRequestCompat$work_runtime_release()));
                statement.bindLong(27, constraints.requiresCharging() ? 1L : 0L);
                statement.bindLong(28, constraints.requiresDeviceIdle() ? 1L : 0L);
                statement.bindLong(29, constraints.requiresBatteryNotLow() ? 1L : 0L);
                statement.bindLong(30, constraints.requiresStorageNotLow() ? 1L : 0L);
                statement.bindLong(31, constraints.getContentTriggerUpdateDelayMillis());
                statement.bindLong(32, constraints.getContentTriggerMaxDelayMillis());
                statement.bindBlob(33, WorkTypeConverters.setOfTriggersToByteArray(constraints.getContentUriTriggers()));
                statement.bindText(34, entity.f76id);
            }
        };
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void insertWorkSpec(final WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.insertWorkSpec$lambda$0(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit insertWorkSpec$lambda$0(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        workSpecDao_Impl.__insertAdapterOfWorkSpec.insert(_connection, workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void updateWorkSpec(final WorkSpec workSpec) {
        Intrinsics.checkNotNullParameter(workSpec, "workSpec");
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda22
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.updateWorkSpec$lambda$1(this.f$0, workSpec, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit updateWorkSpec$lambda$1(WorkSpecDao_Impl workSpecDao_Impl, WorkSpec workSpec, SQLiteConnection _connection) throws Exception {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        workSpecDao_Impl.__updateAdapterOfWorkSpec.handle(_connection, workSpec);
        return Unit.INSTANCE;
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public WorkSpec getWorkSpec(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT * FROM workspec WHERE id=?";
        return (WorkSpec) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkSpec$lambda$3(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkSpec getWorkSpec$lambda$3(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getWorkSpecIdAndStatesForName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String str = "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getWorkSpecIdAndStatesForName$lambda$4(str, name, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getWorkSpecIdAndStatesForName$lambda$4(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT state FROM workspec WHERE id=?";
        return (WorkInfo$State) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda16
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getState$lambda$7(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo$State getState$lambda$7(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
    public List getInputsFromPrerequisites(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "SELECT output FROM workspec WHERE id IN\n             (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda25
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getInputsFromPrerequisites$lambda$18(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getInputsFromPrerequisites$lambda$18(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            ArrayList arrayList = new ArrayList();
            while (sQLiteStatementPrepare.step()) {
                arrayList.add(Data.Companion.fromByteArray(sQLiteStatementPrepare.getBlob(0)));
            }
            return arrayList;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public List getUnfinishedWorkWithName(final String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        final String str = "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda17
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getUnfinishedWorkWithName$lambda$20(str, name, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getUnfinishedWorkWithName$lambda$20(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
    public Flow hasUnfinishedWorkFlow() {
        final String str = "SELECT COUNT(*) > 0 FROM workspec WHERE state NOT IN (2, 3, 5) LIMIT 1";
        return FlowUtil.createFlow(this.__db, false, new String[]{"workspec"}, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Boolean.valueOf(WorkSpecDao_Impl.hasUnfinishedWorkFlow$lambda$22(str, (SQLiteConnection) obj));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean hasUnfinishedWorkFlow$lambda$22(String str, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
    public List getEligibleWorkForScheduling(final int i) {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getEligibleWorkForScheduling$lambda$25(str, i, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getEligibleWorkForScheduling$lambda$25(String str, int i, SQLiteConnection _connection) {
        int i2;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getEligibleWorkForSchedulingWithContentUris() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getEligibleWorkForSchedulingWithContentUris$lambda$27(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getEligibleWorkForSchedulingWithContentUris$lambda$27(String str, SQLiteConnection _connection) {
        int i;
        int i2;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getAllEligibleWorkSpecsForScheduling(final int i) {
        final String str = "SELECT * FROM workspec WHERE state=0 ORDER BY last_enqueue_time LIMIT ?";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda7
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getAllEligibleWorkSpecsForScheduling$lambda$29(str, i, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getAllEligibleWorkSpecsForScheduling$lambda$29(String str, int i, SQLiteConnection _connection) {
        int i2;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getScheduledWork() {
        final String str = "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at<>-1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getScheduledWork$lambda$31(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getScheduledWork$lambda$31(String str, SQLiteConnection _connection) {
        int i;
        int i2;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getRunningWork() {
        final String str = "SELECT * FROM workspec WHERE state=1";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda14
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getRunningWork$lambda$33(str, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRunningWork$lambda$33(String str, SQLiteConnection _connection) {
        int i;
        int i2;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
    public List getRecentlyCompletedWork(final long j) {
        final String str = "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC";
        return (List) DBUtil.performBlocking(this.__db, true, false, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.getRecentlyCompletedWork$lambda$35(str, j, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List getRecentlyCompletedWork$lambda$35(String str, long j, SQLiteConnection _connection) {
        int i;
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
                Data.Companion companion = Data.Companion;
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
                return Integer.valueOf(WorkSpecDao_Impl.countNonFinishedContentUriTriggerWorkers$lambda$36(str, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int countNonFinishedContentUriTriggerWorkers$lambda$36(String str, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            return sQLiteStatementPrepare.step() ? (int) sQLiteStatementPrepare.getLong(0) : 0;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void delete(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "DELETE FROM workspec WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda5
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.delete$lambda$37(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit delete$lambda$37(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
        Intrinsics.checkNotNullParameter(state, "state");
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET state=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda15
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.setState$lambda$38(str, state, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setState$lambda$38(String str, WorkInfo$State workInfo$State, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, WorkTypeConverters.stateToInt(workInfo$State));
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int setCancelledState(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda18
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.setCancelledState$lambda$39(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int setCancelledState$lambda$39(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void incrementPeriodCount(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET period_count=period_count+1 WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda24
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.incrementPeriodCount$lambda$40(str, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit incrementPeriodCount$lambda$40(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(output, "output");
        final String str = "UPDATE workspec SET output=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda19
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setOutput$lambda$41(str, output, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setOutput$lambda$41(String str, Data data, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindBlob(1, Data.Companion.toByteArrayInternalV1(data));
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
    public void setLastEnqueueTime(final String id, final long j) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET last_enqueue_time=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda20
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setLastEnqueueTime$lambda$42(str, j, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setLastEnqueueTime$lambda$42(String str, long j, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda26
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.incrementWorkSpecRunAttemptCount$lambda$43(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int incrementWorkSpecRunAttemptCount$lambda$43(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public int resetWorkSpecRunAttemptCount(final String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET run_attempt_count=0 WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda23
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.resetWorkSpecRunAttemptCount$lambda$44(str, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int resetWorkSpecRunAttemptCount$lambda$44(String str, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindText(1, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void resetWorkSpecNextScheduleTimeOverride(final String id, final int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda21
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.resetWorkSpecNextScheduleTimeOverride$lambda$46(str, id, i, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit resetWorkSpecNextScheduleTimeOverride$lambda$46(String str, String str2, int i, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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
    public int markWorkSpecScheduled(final String id, final long j) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET schedule_requested_at=? WHERE id=?";
        return ((Number) DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Integer.valueOf(WorkSpecDao_Impl.markWorkSpecScheduled$lambda$47(str, j, id, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int markWorkSpecScheduled$lambda$47(String str, long j, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.bindLong(1, j);
            sQLiteStatementPrepare.bindText(2, str2);
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
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
                return Integer.valueOf(WorkSpecDao_Impl.resetScheduledState$lambda$48(str, (SQLiteConnection) obj));
            }
        })).intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int resetScheduledState$lambda$48(String str, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            return SQLiteConnectionUtil.getTotalChangedRows(_connection);
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    @Override // androidx.work.impl.model.WorkSpecDao
    public void setStopReason(final String id, final int i) {
        Intrinsics.checkNotNullParameter(id, "id");
        final String str = "UPDATE workspec SET stop_reason=? WHERE id=?";
        DBUtil.performBlocking(this.__db, false, true, new Function1() { // from class: androidx.work.impl.model.WorkSpecDao_Impl$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WorkSpecDao_Impl.setStopReason$lambda$51(str, i, id, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit setStopReason$lambda$51(String str, int i, String str2, SQLiteConnection _connection) {
        Intrinsics.checkNotNullParameter(_connection, "_connection");
        SQLiteStatement sQLiteStatementPrepare = _connection.prepare(str);
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

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List getRequiredConverters() {
            return CollectionsKt.emptyList();
        }
    }
}
