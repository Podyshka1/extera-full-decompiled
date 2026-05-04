package androidx.room;

import androidx.room.concurrent.CloseBarrier;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker {
    public static final Companion Companion = new Companion(null);
    private static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};
    private final RoomDatabase database;
    private final ObservedTableStates observedTableStates;
    private final ObservedTableVersions observedTableVersions;
    private Function0 onAllowRefresh;
    private final Function1 onInvalidatedTablesIds;
    private final AtomicBoolean pendingRefresh;
    private final Map shadowTablesMap;
    private final Map tableIdLookup;
    private final String[] tablesNames;
    private final boolean useTempTable;
    private final Map viewTables;

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 */
    static final class C07611 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07611(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.checkInvalidatedTables(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$notifyInvalidation$1 */
    static final class C07641 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C07641(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.notifyInvalidation(this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$startTrackingTable$1 */
    static final class C07661 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07661(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.startTrackingTable(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$stopTrackingTable$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C07671 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C07671(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.stopTrackingTable(null, 0, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean onAllowRefresh$lambda$0() {
        return true;
    }

    public TriggerBasedInvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String[] tableNames, boolean z, Function1 onInvalidatedTablesIds) {
        String lowerCase;
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        Intrinsics.checkNotNullParameter(onInvalidatedTablesIds, "onInvalidatedTablesIds");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = onInvalidatedTablesIds;
        this.pendingRefresh = new AtomicBoolean(false);
        this.onAllowRefresh = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(TriggerBasedInvalidationTracker.onAllowRefresh$lambda$0());
            }
        };
        this.tableIdLookup = new LinkedHashMap();
        int length = tableNames.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            String str = tableNames[i];
            Locale locale = Locale.ROOT;
            String lowerCase2 = str.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            this.tableIdLookup.put(lowerCase2, Integer.valueOf(i));
            String str2 = (String) this.shadowTablesMap.get(tableNames[i]);
            if (str2 != null) {
                lowerCase = str2.toLowerCase(locale);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (lowerCase != null) {
                lowerCase2 = lowerCase;
            }
            strArr[i] = lowerCase2;
        }
        this.tablesNames = strArr;
        for (Map.Entry entry : this.shadowTablesMap.entrySet()) {
            String str3 = (String) entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = str3.toLowerCase(locale2);
            Intrinsics.checkNotNullExpressionValue(lowerCase3, "toLowerCase(...)");
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String lowerCase4 = ((String) entry.getKey()).toLowerCase(locale2);
                Intrinsics.checkNotNullExpressionValue(lowerCase4, "toLowerCase(...)");
                Map map = this.tableIdLookup;
                map.put(lowerCase4, MapsKt.getValue(map, lowerCase3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    public final void setOnAllowRefresh$room_runtime(Function0 function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onAllowRefresh = function0;
    }

    public final void configureConnection(SQLiteConnection connection) throws Exception {
        Intrinsics.checkNotNullParameter(connection, "connection");
        SQLiteStatement sQLiteStatementPrepare = connection.prepare("PRAGMA query_only");
        try {
            sQLiteStatementPrepare.step();
            boolean z = sQLiteStatementPrepare.getBoolean(0);
            AutoCloseableKt.closeFinally(sQLiteStatementPrepare, null);
            if (z) {
                return;
            }
            SQLite.execSQL(connection, "PRAGMA temp_store = MEMORY");
            SQLite.execSQL(connection, "PRAGMA recursive_triggers = 1");
            SQLite.execSQL(connection, "DROP TABLE IF EXISTS room_table_modification_log");
            if (this.useTempTable) {
                SQLite.execSQL(connection, "CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)");
            } else {
                SQLite.execSQL(connection, StringsKt.replace$default("CREATE TEMP TABLE IF NOT EXISTS room_table_modification_log (table_id INTEGER PRIMARY KEY, invalidated INTEGER NOT NULL DEFAULT 0)", "TEMP", _UrlKt.FRAGMENT_ENCODE_SET, false, 4, (Object) null));
            }
            this.observedTableStates.forceNeedSync$room_runtime();
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AutoCloseableKt.closeFinally(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final Flow createFlow$room_runtime(String[] resolvedTableNames, int[] tableIds, boolean z) {
        Intrinsics.checkNotNullParameter(resolvedTableNames, "resolvedTableNames");
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return FlowKt.flow(new TriggerBasedInvalidationTracker$createFlow$1(this, tableIds, z, resolvedTableNames, null));
    }

    public final Pair validateTableNames$room_runtime(String[] names) {
        Intrinsics.checkNotNullParameter(names, "names");
        String[] strArrResolveViews = resolveViews(names);
        int length = strArrResolveViews.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            String str = strArrResolveViews[i];
            Map map = this.tableIdLookup;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Integer num = (Integer) map.get(lowerCase);
            if (num == null) {
                throw new IllegalArgumentException("There is no table with name " + str);
            }
            iArr[i] = num.intValue();
        }
        return TuplesKt.m1081to(strArrResolveViews, iArr);
    }

    private final String[] resolveViews(String[] strArr) {
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        for (String str : strArr) {
            Map map = this.viewTables;
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            Set set = (Set) map.get(lowerCase);
            if (set != null) {
                setCreateSetBuilder.addAll(set);
            } else {
                setCreateSetBuilder.add(str);
            }
        }
        return (String[]) SetsKt.build(setCreateSetBuilder).toArray(new String[0]);
    }

    public final boolean onObserverAdded$room_runtime(int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverAdded$room_runtime(tableIds);
    }

    public final boolean onObserverRemoved$room_runtime(int[] tableIds) {
        Intrinsics.checkNotNullParameter(tableIds, "tableIds");
        return this.observedTableStates.onObserverRemoved$room_runtime(tableIds);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object syncTriggers$room_runtime(Continuation continuation) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        CloseBarrier closeBarrier;
        Throwable th;
        if (continuation instanceof TriggerBasedInvalidationTracker$syncTriggers$1) {
            triggerBasedInvalidationTracker$syncTriggers$1 = (TriggerBasedInvalidationTracker$syncTriggers$1) continuation;
            int i = triggerBasedInvalidationTracker$syncTriggers$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                triggerBasedInvalidationTracker$syncTriggers$1.label = i - Integer.MIN_VALUE;
            } else {
                triggerBasedInvalidationTracker$syncTriggers$1 = new TriggerBasedInvalidationTracker$syncTriggers$1(this, continuation);
            }
        }
        Object obj = triggerBasedInvalidationTracker$syncTriggers$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = triggerBasedInvalidationTracker$syncTriggers$1.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            CloseBarrier closeBarrier$room_runtime = this.database.getCloseBarrier$room_runtime();
            if (closeBarrier$room_runtime.block$room_runtime()) {
                try {
                    RoomDatabase roomDatabase = this.database;
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.L$0 = closeBarrier$room_runtime;
                    triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                    if (roomDatabase.useConnection(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    closeBarrier = closeBarrier$room_runtime;
                    closeBarrier.unblock$room_runtime();
                } catch (Throwable th2) {
                    closeBarrier = closeBarrier$room_runtime;
                    th = th2;
                    closeBarrier.unblock$room_runtime();
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeBarrier = (CloseBarrier) triggerBasedInvalidationTracker$syncTriggers$1.L$0;
            try {
                ResultKt.throwOnFailure(obj);
                closeBarrier.unblock$room_runtime();
            } catch (Throwable th3) {
                th = th3;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0074, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r13, r15, r0) == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00e0, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r7, r15, r0) == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00e2, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00e0 -> B:28:0x00e3). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startTrackingTable(PooledConnection pooledConnection, int i, Continuation continuation) {
        C07661 c07661;
        PooledConnection pooledConnection2;
        int length;
        String[] strArr;
        int i2;
        int i3;
        String str;
        if (continuation instanceof C07661) {
            c07661 = (C07661) continuation;
            int i4 = c07661.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c07661.label = i4 - Integer.MIN_VALUE;
            } else {
                c07661 = new C07661(continuation);
            }
        }
        Object obj = c07661.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c07661.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = "INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)";
            c07661.L$0 = pooledConnection;
            c07661.I$0 = i;
            c07661.label = 1;
        } else if (i5 == 1) {
            i = c07661.I$0;
            pooledConnection = (PooledConnection) c07661.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i5 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            length = c07661.I$2;
            i3 = c07661.I$1;
            i2 = c07661.I$0;
            strArr = (String[]) c07661.L$2;
            str = (String) c07661.L$1;
            pooledConnection2 = (PooledConnection) c07661.L$0;
            ResultKt.throwOnFailure(obj);
            i3++;
            if (i3 < length) {
                return Unit.INSTANCE;
            }
            String str3 = strArr[i3];
            String str4 = this.useTempTable ? "TEMP" : _UrlKt.FRAGMENT_ENCODE_SET;
            String str5 = "CREATE " + str4 + " TRIGGER IF NOT EXISTS `" + Companion.getTriggerName(str, str3) + "` AFTER " + str3 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i2 + " AND invalidated = 0; END";
            c07661.L$0 = pooledConnection2;
            c07661.L$1 = str;
            c07661.L$2 = strArr;
            c07661.I$0 = i2;
            c07661.I$1 = i3;
            c07661.I$2 = length;
            c07661.label = 2;
        }
        String str6 = this.tablesNames[i];
        String[] strArr2 = TRIGGERS;
        pooledConnection2 = pooledConnection;
        length = strArr2.length;
        strArr = strArr2;
        i2 = i;
        i3 = 0;
        str = str6;
        if (i3 < length) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0085 -> B:20:0x0087). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object stopTrackingTable(PooledConnection pooledConnection, int i, Continuation continuation) {
        C07671 c07671;
        int i2;
        PooledConnection pooledConnection2;
        int length;
        String[] strArr;
        String str;
        if (continuation instanceof C07671) {
            c07671 = (C07671) continuation;
            int i3 = c07671.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c07671.label = i3 - Integer.MIN_VALUE;
            } else {
                c07671 = new C07671(continuation);
            }
        }
        Object obj = c07671.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c07671.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = this.tablesNames[i];
            String[] strArr2 = TRIGGERS;
            i2 = 0;
            pooledConnection2 = pooledConnection;
            length = strArr2.length;
            strArr = strArr2;
            str = str2;
            if (i2 < length) {
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            length = c07671.I$1;
            int i5 = c07671.I$0;
            strArr = (String[]) c07671.L$2;
            String str3 = (String) c07671.L$1;
            PooledConnection pooledConnection3 = (PooledConnection) c07671.L$0;
            ResultKt.throwOnFailure(obj);
            str = str3;
            i2 = i5 + 1;
            pooledConnection2 = pooledConnection3;
            if (i2 < length) {
                String str4 = "DROP TRIGGER IF EXISTS `" + Companion.getTriggerName(str, strArr[i2]) + '`';
                c07671.L$0 = pooledConnection2;
                c07671.L$1 = str;
                c07671.L$2 = strArr;
                c07671.I$0 = i2;
                c07671.I$1 = length;
                c07671.label = 1;
                if (TransactorKt.execSQL(pooledConnection2, str4, c07671) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                pooledConnection3 = pooledConnection2;
                i5 = i2;
                i2 = i5 + 1;
                pooledConnection2 = pooledConnection3;
                if (i2 < length) {
                    return Unit.INSTANCE;
                }
            }
        }
    }

    public final void refreshInvalidationAsync$room_runtime(Function0 onRefreshScheduled, Function0 onRefreshCompleted) {
        Intrinsics.checkNotNullParameter(onRefreshScheduled, "onRefreshScheduled");
        Intrinsics.checkNotNullParameter(onRefreshCompleted, "onRefreshCompleted");
        if (this.pendingRefresh.compareAndSet(false, true)) {
            onRefreshScheduled.invoke();
            BuildersKt__Builders_commonKt.launch$default(this.database.getCoroutineScope(), new CoroutineName("Room Invalidation Tracker Refresh"), null, new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this, onRefreshCompleted, null), 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object notifyInvalidation(Continuation continuation) throws Throwable {
        C07641 c07641;
        CloseBarrier closeBarrier;
        Throwable th;
        if (continuation instanceof C07641) {
            c07641 = (C07641) continuation;
            int i = c07641.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07641.label = i - Integer.MIN_VALUE;
            } else {
                c07641 = new C07641(continuation);
            }
        }
        Object obj = c07641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07641.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            CloseBarrier closeBarrier$room_runtime = this.database.getCloseBarrier$room_runtime();
            if (closeBarrier$room_runtime.block$room_runtime()) {
                try {
                    if (!this.pendingRefresh.compareAndSet(true, false)) {
                        Set setEmptySet = SetsKt.emptySet();
                        closeBarrier$room_runtime.unblock$room_runtime();
                        return setEmptySet;
                    }
                    if (!((Boolean) this.onAllowRefresh.invoke()).booleanValue()) {
                        Set setEmptySet2 = SetsKt.emptySet();
                        closeBarrier$room_runtime.unblock$room_runtime();
                        return setEmptySet2;
                    }
                    RoomDatabase roomDatabase = this.database;
                    C0765xcf25c6f6 c0765xcf25c6f6 = new C0765xcf25c6f6(this, null);
                    c07641.L$0 = closeBarrier$room_runtime;
                    c07641.label = 1;
                    Object objUseConnection = roomDatabase.useConnection(false, c0765xcf25c6f6, c07641);
                    if (objUseConnection == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    closeBarrier = closeBarrier$room_runtime;
                    obj = objUseConnection;
                } catch (Throwable th2) {
                    closeBarrier = closeBarrier$room_runtime;
                    th = th2;
                    closeBarrier.unblock$room_runtime();
                    throw th;
                }
            } else {
                return SetsKt.emptySet();
            }
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            closeBarrier = (CloseBarrier) c07641.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th3) {
                th = th3;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        }
        Set set = (Set) obj;
        if (!set.isEmpty()) {
            this.observedTableVersions.increment(set);
            this.onInvalidatedTablesIds.invoke(set);
        }
        closeBarrier.unblock$room_runtime();
        return set;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object checkInvalidatedTables(PooledConnection pooledConnection, Continuation continuation) {
        C07611 c07611;
        if (continuation instanceof C07611) {
            c07611 = (C07611) continuation;
            int i = c07611.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07611.label = i - Integer.MIN_VALUE;
            } else {
                c07611 = new C07611(continuation);
            }
        }
        Object objUsePrepared = c07611.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c07611.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objUsePrepared);
            Function1 function1 = new Function1() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TriggerBasedInvalidationTracker.checkInvalidatedTables$lambda$14((SQLiteStatement) obj);
                }
            };
            c07611.L$0 = pooledConnection;
            c07611.label = 1;
            objUsePrepared = pooledConnection.usePrepared("SELECT * FROM room_table_modification_log WHERE invalidated = 1", function1, c07611);
            if (objUsePrepared != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Set set = (Set) c07611.L$0;
            ResultKt.throwOnFailure(objUsePrepared);
            return set;
        }
        pooledConnection = (PooledConnection) c07611.L$0;
        ResultKt.throwOnFailure(objUsePrepared);
        Set set2 = (Set) objUsePrepared;
        if (!set2.isEmpty()) {
            c07611.L$0 = set2;
            c07611.label = 2;
            if (TransactorKt.execSQL(pooledConnection, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", c07611) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return set2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Set checkInvalidatedTables$lambda$14(SQLiteStatement statement) {
        Intrinsics.checkNotNullParameter(statement, "statement");
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        while (statement.step()) {
            setCreateSetBuilder.add(Integer.valueOf((int) statement.getLong(0)));
        }
        return SetsKt.build(setCreateSetBuilder);
    }

    public final void resetSync$room_runtime() {
        this.observedTableStates.resetTriggerState$room_runtime();
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getTriggerName(String str, String str2) {
            return "room_table_modification_trigger_" + str + '_' + str2;
        }
    }
}
