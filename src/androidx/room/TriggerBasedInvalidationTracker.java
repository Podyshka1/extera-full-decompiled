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
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0000\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u0000 V2\u00020\u0001:\u0001VBo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0018\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u0004\u0012\u000e\u0010\n\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\t\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\u0018\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0004\b\u0011\u0010\u0012J%\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\tH\u0002¢\u0006\u0004\b\u0014\u0010\u0015J \u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000eH\u0082@¢\u0006\u0004\b\u0019\u0010\u001aJ \u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u000eH\u0082@¢\u0006\u0004\b\u001b\u0010\u001aJ\u0016\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0007H\u0082@¢\u0006\u0004\b\u001c\u0010\u001dJ\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u000e0\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0082@¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010!\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020 ¢\u0006\u0004\b!\u0010\"J9\u0010*\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070'2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\u0006\u0010%\u001a\u00020$2\u0006\u0010&\u001a\u00020\u000bH\u0000¢\u0006\u0004\b(\u0010)J1\u0010.\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\t\u0012\u0004\u0012\u00020$0+2\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\tH\u0000¢\u0006\u0004\b,\u0010-J\u0017\u00101\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0000¢\u0006\u0004\b/\u00100J\u0017\u00103\u001a\u00020\u000b2\u0006\u0010%\u001a\u00020$H\u0000¢\u0006\u0004\b2\u00100J\u0010\u00105\u001a\u00020\u000fH\u0080@¢\u0006\u0004\b4\u0010\u001dJ/\u0010;\u001a\u00020\u000f2\u000e\b\u0002\u00107\u001a\b\u0012\u0004\u0012\u00020\u000f062\u000e\b\u0002\u00108\u001a\b\u0012\u0004\u0012\u00020\u000f06H\u0000¢\u0006\u0004\b9\u0010:J\u000f\u0010>\u001a\u00020\u000fH\u0000¢\u0006\u0004\b<\u0010=R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010?R \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010@R&\u0010\b\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00070\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010@R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010AR&\u0010\u0010\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0007\u0012\u0004\u0012\u00020\u000f0\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010BR \u0010C\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bC\u0010@R\u001a\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00050\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010G\u001a\u00020F8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0014\u0010J\u001a\u00020I8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010N\u001a\u00060Lj\u0002`M8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bN\u0010OR(\u0010P\u001a\b\u0012\u0004\u0012\u00020\u000b068\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bP\u0010Q\u001a\u0004\bR\u0010S\"\u0004\bT\u0010U¨\u0006W"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/RoomDatabase;", "database", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "shadowTablesMap", _UrlKt.FRAGMENT_ENCODE_SET, "viewTables", _UrlKt.FRAGMENT_ENCODE_SET, "tableNames", _UrlKt.FRAGMENT_ENCODE_SET, "useTempTable", "Lkotlin/Function1;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onInvalidatedTablesIds", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;ZLkotlin/jvm/functions/Function1;)V", "names", "resolveViews", "([Ljava/lang/String;)[Ljava/lang/String;", "Landroidx/room/PooledConnection;", "connection", "tableId", "startTrackingTable", "(Landroidx/room/PooledConnection;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "stopTrackingTable", "notifyInvalidation", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "checkInvalidatedTables", "(Landroidx/room/PooledConnection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/sqlite/SQLiteConnection;", "configureConnection", "(Landroidx/sqlite/SQLiteConnection;)V", "resolvedTableNames", _UrlKt.FRAGMENT_ENCODE_SET, "tableIds", "emitInitialState", "Lkotlinx/coroutines/flow/Flow;", "createFlow$room_runtime", "([Ljava/lang/String;[IZ)Lkotlinx/coroutines/flow/Flow;", "createFlow", "Lkotlin/Pair;", "validateTableNames$room_runtime", "([Ljava/lang/String;)Lkotlin/Pair;", "validateTableNames", "onObserverAdded$room_runtime", "([I)Z", "onObserverAdded", "onObserverRemoved$room_runtime", "onObserverRemoved", "syncTriggers$room_runtime", "syncTriggers", "Lkotlin/Function0;", "onRefreshScheduled", "onRefreshCompleted", "refreshInvalidationAsync$room_runtime", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "refreshInvalidationAsync", "resetSync$room_runtime", "()V", "resetSync", "Landroidx/room/RoomDatabase;", "Ljava/util/Map;", "Z", "Lkotlin/jvm/functions/Function1;", "tableIdLookup", "tablesNames", "[Ljava/lang/String;", "Landroidx/room/ObservedTableStates;", "observedTableStates", "Landroidx/room/ObservedTableStates;", "Landroidx/room/ObservedTableVersions;", "observedTableVersions", "Landroidx/room/ObservedTableVersions;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Landroidx/room/concurrent/AtomicBoolean;", "pendingRefresh", "Ljava/util/concurrent/atomic/AtomicBoolean;", "onAllowRefresh", "Lkotlin/jvm/functions/Function0;", "getOnAllowRefresh$room_runtime", "()Lkotlin/jvm/functions/Function0;", "setOnAllowRefresh$room_runtime", "(Lkotlin/jvm/functions/Function0;)V", "Companion", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInvalidationTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 6 CloseBarrier.kt\nandroidx/room/concurrent/CloseBarrierKt\n*L\n1#1,640:1\n216#2,2:641\n13472#3:643\n13473#3:645\n12667#3,2:657\n1#4:644\n37#5:646\n36#5,3:647\n99#6,7:650\n99#6,5:659\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.kt\nandroidx/room/TriggerBasedInvalidationTracker\n*L\n191#1:641,2\n289#1:643\n289#1:645\n374#1:657,2\n293#1:646\n293#1:647,3\n305#1:650,7\n407#1:659,5\n*E\n"})
public final class TriggerBasedInvalidationTracker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String[] TRIGGERS = {"INSERT", "UPDATE", "DELETE"};
    private final RoomDatabase database;
    private final ObservedTableStates observedTableStates;
    private final ObservedTableVersions observedTableVersions;
    private final Function1<Set<Integer>, Unit> onInvalidatedTablesIds;
    private final Map<String, String> shadowTablesMap;
    private final String[] tablesNames;
    private final boolean useTempTable;
    private final Map<String, Set<String>> viewTables;
    private final AtomicBoolean pendingRefresh = new AtomicBoolean(false);
    private Function0<Boolean> onAllowRefresh = new Function0() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda1
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Boolean.valueOf(TriggerBasedInvalidationTracker.$r8$lambda$cM81ONhjXKWpAvdfyxzSR0BlDDY());
        }
    };
    private final Map<String, Integer> tableIdLookup = new LinkedHashMap();

    /* JADX INFO: renamed from: androidx.room.TriggerBasedInvalidationTracker$checkInvalidatedTables$1 */
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.TriggerBasedInvalidationTracker", m921f = "InvalidationTracker.kt", m922i = {0, 1}, m923l = {445, 453}, m924m = "checkInvalidatedTables", m925n = {"connection", "invalidatedTableIds"}, m926s = {"L$0", "L$0"})
    public static final class C09841 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C09841(Continuation<? super C09841> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.TriggerBasedInvalidationTracker", m921f = "InvalidationTracker.kt", m922i = {0}, m923l = {417}, m924m = "notifyInvalidation", m925n = {"$this$ifNotClosed$iv"}, m926s = {"L$0"})
    public static final class C09871 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C09871(Continuation<? super C09871> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.TriggerBasedInvalidationTracker", m921f = "InvalidationTracker.kt", m922i = {0, 0, 1, 1, 1}, m923l = {328, 333}, m924m = "startTrackingTable", m925n = {"connection", "tableId", "connection", "tableName", "tableId"}, m926s = {"L$0", "I$0", "L$0", "L$1", "I$0"})
    public static final class C09891 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C09891(Continuation<? super C09891> continuation) {
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
    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.TriggerBasedInvalidationTracker", m921f = "InvalidationTracker.kt", m922i = {0, 0}, m923l = {347}, m924m = "stopTrackingTable", m925n = {"connection", "tableName"}, m926s = {"L$0", "L$1"})
    public static final class C09901 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        public C09901(Continuation<? super C09901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return TriggerBasedInvalidationTracker.this.stopTrackingTable(null, 0, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TriggerBasedInvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, ? extends Set<String>> map2, String[] strArr, boolean z, Function1<? super Set<Integer>, Unit> function1) {
        this.database = roomDatabase;
        this.shadowTablesMap = map;
        this.viewTables = map2;
        this.useTempTable = z;
        this.onInvalidatedTablesIds = function1;
        int length = strArr.length;
        String[] strArr2 = new String[length];
        for (int i = 0; i < length; i++) {
            String str = strArr[i];
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            this.tableIdLookup.put(lowerCase, Integer.valueOf(i));
            String str2 = this.shadowTablesMap.get(strArr[i]);
            String lowerCase2 = str2 != null ? str2.toLowerCase(locale) : null;
            if (lowerCase2 != null) {
                lowerCase = lowerCase2;
            }
            strArr2[i] = lowerCase;
        }
        this.tablesNames = strArr2;
        for (Map.Entry<String, String> entry : this.shadowTablesMap.entrySet()) {
            String value = entry.getValue();
            Locale locale2 = Locale.ROOT;
            String lowerCase3 = value.toLowerCase(locale2);
            if (this.tableIdLookup.containsKey(lowerCase3)) {
                String lowerCase4 = entry.getKey().toLowerCase(locale2);
                Map<String, Integer> map3 = this.tableIdLookup;
                map3.put(lowerCase4, (Integer) MapsKt.getValue(map3, lowerCase3));
            }
        }
        this.observedTableStates = new ObservedTableStates(this.tablesNames.length);
        this.observedTableVersions = new ObservedTableVersions(this.tablesNames.length);
    }

    public static boolean $r8$lambda$cM81ONhjXKWpAvdfyxzSR0BlDDY() {
        return true;
    }

    public final void setOnAllowRefresh$room_runtime(Function0<Boolean> function0) {
        this.onAllowRefresh = function0;
    }

    public final void configureConnection(SQLiteConnection connection) throws Exception {
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

    public final Flow<Set<String>> createFlow$room_runtime(String[] resolvedTableNames, int[] tableIds, boolean emitInitialState) {
        return FlowKt.flow(new TriggerBasedInvalidationTracker$createFlow$1(this, tableIds, emitInitialState, resolvedTableNames, null));
    }

    public final Pair<String[], int[]> validateTableNames$room_runtime(String[] names) {
        String[] strArrResolveViews = resolveViews(names);
        int length = strArrResolveViews.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            String str = strArrResolveViews[i];
            Integer num = this.tableIdLookup.get(str.toLowerCase(Locale.ROOT));
            if (num == null) {
                f$$ExternalSyntheticBUOutline1.m215m("There is no table with name ".concat(str));
                return null;
            }
            iArr[i] = num.intValue();
        }
        return TuplesKt.to(strArrResolveViews, iArr);
    }

    private final String[] resolveViews(String[] names) {
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        for (String str : names) {
            Set<String> set = this.viewTables.get(str.toLowerCase(Locale.ROOT));
            if (set != null) {
                setCreateSetBuilder.addAll(set);
            } else {
                setCreateSetBuilder.add(str);
            }
        }
        return (String[]) SetsKt.build(setCreateSetBuilder).toArray(new String[0]);
    }

    public final boolean onObserverAdded$room_runtime(int[] tableIds) {
        return this.observedTableStates.onObserverAdded$room_runtime(tableIds);
    }

    public final boolean onObserverRemoved$room_runtime(int[] tableIds) {
        return this.observedTableStates.onObserverRemoved$room_runtime(tableIds);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object syncTriggers$room_runtime(Continuation<? super Unit> continuation) throws Throwable {
        TriggerBasedInvalidationTracker$syncTriggers$1 triggerBasedInvalidationTracker$syncTriggers$1;
        Throwable th;
        CloseBarrier closeBarrier;
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
            CloseBarrier closeBarrier2 = this.database.getCloseBarrier();
            if (closeBarrier2.block$room_runtime()) {
                try {
                    RoomDatabase roomDatabase = this.database;
                    TriggerBasedInvalidationTracker$syncTriggers$2$1 triggerBasedInvalidationTracker$syncTriggers$2$1 = new TriggerBasedInvalidationTracker$syncTriggers$2$1(this, null);
                    triggerBasedInvalidationTracker$syncTriggers$1.L$0 = closeBarrier2;
                    triggerBasedInvalidationTracker$syncTriggers$1.label = 1;
                    if (roomDatabase.useConnection(false, triggerBasedInvalidationTracker$syncTriggers$2$1, triggerBasedInvalidationTracker$syncTriggers$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    closeBarrier = closeBarrier2;
                    closeBarrier.unblock$room_runtime();
                } catch (Throwable th2) {
                    th = th2;
                    closeBarrier = closeBarrier2;
                    closeBarrier.unblock$room_runtime();
                    throw th;
                }
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
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
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0070, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r13, r15, r0) == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00d9, code lost:
    
        if (androidx.room.TransactorKt.execSQL(r7, r15, r0) == r1) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00db, code lost:
    
        return r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00d9 -> B:28:0x00dc). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object startTrackingTable(PooledConnection pooledConnection, int i, Continuation<? super Unit> continuation) {
        C09891 c09891;
        PooledConnection pooledConnection2;
        int length;
        String[] strArr;
        int i2;
        int i3;
        String str;
        if (continuation instanceof C09891) {
            c09891 = (C09891) continuation;
            int i4 = c09891.label;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                c09891.label = i4 - Integer.MIN_VALUE;
            } else {
                c09891 = new C09891(continuation);
            }
        }
        Object obj = c09891.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i5 = c09891.label;
        if (i5 == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = "INSERT OR IGNORE INTO room_table_modification_log VALUES(" + i + ", 0)";
            c09891.L$0 = pooledConnection;
            c09891.I$0 = i;
            c09891.label = 1;
        } else if (i5 == 1) {
            i = c09891.I$0;
            pooledConnection = (PooledConnection) c09891.L$0;
            ResultKt.throwOnFailure(obj);
        } else {
            if (i5 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            length = c09891.I$2;
            i3 = c09891.I$1;
            i2 = c09891.I$0;
            strArr = (String[]) c09891.L$2;
            str = (String) c09891.L$1;
            pooledConnection2 = (PooledConnection) c09891.L$0;
            ResultKt.throwOnFailure(obj);
            i3++;
            if (i3 < length) {
                return Unit.INSTANCE;
            }
            String str3 = strArr[i3];
            String str4 = this.useTempTable ? "TEMP" : _UrlKt.FRAGMENT_ENCODE_SET;
            String str5 = "CREATE " + str4 + " TRIGGER IF NOT EXISTS `" + INSTANCE.getTriggerName(str, str3) + "` AFTER " + str3 + " ON `" + str + "` BEGIN UPDATE room_table_modification_log SET invalidated = 1 WHERE table_id = " + i2 + " AND invalidated = 0; END";
            c09891.L$0 = pooledConnection2;
            c09891.L$1 = str;
            c09891.L$2 = strArr;
            c09891.I$0 = i2;
            c09891.I$1 = i3;
            c09891.I$2 = length;
            c09891.label = 2;
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
    /* JADX WARN: Removed duplicated region for block: B:16:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0080 -> B:19:0x0083). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object stopTrackingTable(PooledConnection pooledConnection, int i, Continuation<? super Unit> continuation) {
        C09901 c09901;
        String str;
        int length;
        String[] strArr;
        PooledConnection pooledConnection2;
        int i2;
        if (continuation instanceof C09901) {
            c09901 = (C09901) continuation;
            int i3 = c09901.label;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c09901.label = i3 - Integer.MIN_VALUE;
            } else {
                c09901 = new C09901(continuation);
            }
        }
        Object obj = c09901.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c09901.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            String str2 = this.tablesNames[i];
            String[] strArr2 = TRIGGERS;
            str = str2;
            length = strArr2.length;
            strArr = strArr2;
            pooledConnection2 = pooledConnection;
            i2 = 0;
            if (i2 < length) {
            }
        } else {
            if (i4 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            length = c09901.I$1;
            i2 = c09901.I$0;
            String[] strArr3 = (String[]) c09901.L$2;
            str = (String) c09901.L$1;
            PooledConnection pooledConnection3 = (PooledConnection) c09901.L$0;
            ResultKt.throwOnFailure(obj);
            strArr = strArr3;
            pooledConnection2 = pooledConnection3;
            i2++;
            if (i2 < length) {
                String str3 = "DROP TRIGGER IF EXISTS `" + INSTANCE.getTriggerName(str, strArr[i2]) + '`';
                c09901.L$0 = pooledConnection2;
                c09901.L$1 = str;
                c09901.L$2 = strArr;
                c09901.I$0 = i2;
                c09901.I$1 = length;
                c09901.label = 1;
                if (TransactorKt.execSQL(pooledConnection2, str3, c09901) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i2++;
                if (i2 < length) {
                    return Unit.INSTANCE;
                }
            }
        }
    }

    public final void refreshInvalidationAsync$room_runtime(Function0<Unit> onRefreshScheduled, Function0<Unit> onRefreshCompleted) {
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
    public final Object notifyInvalidation(Continuation<? super Set<Integer>> continuation) throws Throwable {
        C09871 c09871;
        CloseBarrier closeBarrier;
        if (continuation instanceof C09871) {
            c09871 = (C09871) continuation;
            int i = c09871.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09871.label = i - Integer.MIN_VALUE;
            } else {
                c09871 = new C09871(continuation);
            }
        }
        Object obj = c09871.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09871.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            CloseBarrier closeBarrier2 = this.database.getCloseBarrier();
            if (closeBarrier2.block$room_runtime()) {
                try {
                    if (!this.pendingRefresh.compareAndSet(true, false)) {
                        Set setEmptySet = SetsKt.emptySet();
                        closeBarrier2.unblock$room_runtime();
                        return setEmptySet;
                    }
                    if (!this.onAllowRefresh.invoke().booleanValue()) {
                        Set setEmptySet2 = SetsKt.emptySet();
                        closeBarrier2.unblock$room_runtime();
                        return setEmptySet2;
                    }
                    RoomDatabase roomDatabase = this.database;
                    C0988xcf25c6f6 c0988xcf25c6f6 = new C0988xcf25c6f6(this, null);
                    c09871.L$0 = closeBarrier2;
                    c09871.label = 1;
                    Object objUseConnection = roomDatabase.useConnection(false, c0988xcf25c6f6, c09871);
                    if (objUseConnection == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    closeBarrier = closeBarrier2;
                    obj = objUseConnection;
                } catch (Throwable th) {
                    th = th;
                    closeBarrier = closeBarrier2;
                    closeBarrier.unblock$room_runtime();
                    throw th;
                }
            } else {
                return SetsKt.emptySet();
            }
        } else {
            if (i2 != 1) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            closeBarrier = (CloseBarrier) c09871.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable th2) {
                th = th2;
                closeBarrier.unblock$room_runtime();
                throw th;
            }
        }
        Set<Integer> set = (Set) obj;
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
    public final Object checkInvalidatedTables(PooledConnection pooledConnection, Continuation<? super Set<Integer>> continuation) {
        C09841 c09841;
        if (continuation instanceof C09841) {
            c09841 = (C09841) continuation;
            int i = c09841.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c09841.label = i - Integer.MIN_VALUE;
            } else {
                c09841 = new C09841(continuation);
            }
        }
        Object objUsePrepared = c09841.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c09841.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(objUsePrepared);
            Function1 function1 = new Function1() { // from class: androidx.room.TriggerBasedInvalidationTracker$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return TriggerBasedInvalidationTracker.$r8$lambda$NRZHa3RQXpIcgcxW1BMkNDbO3A8((SQLiteStatement) obj);
                }
            };
            c09841.L$0 = pooledConnection;
            c09841.label = 1;
            objUsePrepared = pooledConnection.usePrepared("SELECT * FROM room_table_modification_log WHERE invalidated = 1", function1, c09841);
            if (objUsePrepared != coroutine_suspended) {
            }
            return coroutine_suspended;
        }
        if (i2 != 1) {
            if (i2 != 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            Set set = (Set) c09841.L$0;
            ResultKt.throwOnFailure(objUsePrepared);
            return set;
        }
        pooledConnection = (PooledConnection) c09841.L$0;
        ResultKt.throwOnFailure(objUsePrepared);
        Set set2 = (Set) objUsePrepared;
        if (!set2.isEmpty()) {
            c09841.L$0 = set2;
            c09841.label = 2;
            if (TransactorKt.execSQL(pooledConnection, "UPDATE room_table_modification_log SET invalidated = 0 WHERE invalidated = 1", c09841) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return set2;
    }

    public static Set $r8$lambda$NRZHa3RQXpIcgcxW1BMkNDbO3A8(SQLiteStatement sQLiteStatement) {
        Set setCreateSetBuilder = SetsKt.createSetBuilder();
        while (sQLiteStatement.step()) {
            setCreateSetBuilder.add(Integer.valueOf((int) sQLiteStatement.getLong(0)));
        }
        return SetsKt.build(setCreateSetBuilder);
    }

    public final void resetSync$room_runtime() {
        this.observedTableStates.resetTriggerState$room_runtime();
    }

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0006H\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0007R\u000e\u0010\b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/room/TriggerBasedInvalidationTracker$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "TRIGGERS", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/String;", "UPDATE_TABLE_NAME", "TABLE_ID_COLUMN_NAME", "INVALIDATED_COLUMN_NAME", "CREATE_TRACKING_TABLE_SQL", "DROP_TRACKING_TABLE_SQL", "SELECT_UPDATED_TABLES_SQL", "RESET_UPDATED_TABLES_SQL", "getTriggerName", "tableName", "triggerType", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String getTriggerName(String tableName, String triggerType) {
            return "room_table_modification_trigger_" + tableName + '_' + triggerType;
        }
    }
}
