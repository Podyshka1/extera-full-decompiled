package androidx.room;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.CancellationSignal;
import android.os.Looper;
import android.util.Log;
import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.room.Transactor;
import androidx.room.concurrent.CloseBarrier;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.support.AutoCloser;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.room.support.AutoClosingRoomOpenHelperFactory;
import androidx.room.support.PrePackagedCopyOpenHelper;
import androidx.room.support.PrePackagedCopyOpenHelperFactory;
import androidx.room.util.DBUtil;
import androidx.room.util.KClassUtil;
import androidx.room.util.MigrationUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteDriver;
import androidx.sqlite.driver.SupportSQLiteConnection;
import androidx.sqlite.p002db.SimpleSQLiteQuery;
import androidx.sqlite.p002db.SupportSQLiteDatabase;
import androidx.sqlite.p002db.SupportSQLiteOpenHelper;
import androidx.sqlite.p002db.SupportSQLiteQuery;
import androidx.sqlite.p002db.SupportSQLiteStatement;
import androidx.sqlite.p002db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import kotlin.NotImplementedError;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmClassMappingKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class RoomDatabase {
    public static final Companion Companion = new Companion(null);
    public static final int MAX_BIND_PARAMETER_CNT = 999;
    private boolean allowMainThreadQueries;
    private AutoCloser autoCloser;
    private DatabaseConfiguration configuration;
    private RoomConnectionManager connectionManager;
    private CoroutineScope coroutineScope;
    private Executor internalQueryExecutor;
    private InvalidationTracker internalTracker;
    private Executor internalTransactionExecutor;
    protected List<? extends Callback> mCallbacks;
    protected volatile SupportSQLiteDatabase mDatabase;
    private CoroutineContext transactionContext;
    private final CloseBarrier closeBarrier = new CloseBarrier(new RoomDatabase$closeBarrier$1(this));
    private final ThreadLocal<CoroutineContext> suspendingTransactionContext = new ThreadLocal<>();
    private final Map<KClass, Object> typeConverters = new LinkedHashMap();
    private boolean useTempTrackingTable = true;

    public static abstract class PrepackagedDatabaseCallback {
    }

    protected static /* synthetic */ void getMCallbacks$annotations() {
    }

    protected static /* synthetic */ void getMDatabase$annotations() {
    }

    public abstract void clearAllTables();

    protected abstract InvalidationTracker createInvalidationTracker();

    public final Cursor query(SupportSQLiteQuery query) {
        Intrinsics.checkNotNullParameter(query, "query");
        return query$default(this, query, null, 2, null);
    }

    public final String getPath() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        DatabaseConfiguration databaseConfiguration2 = null;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
            databaseConfiguration = null;
        }
        String str = databaseConfiguration.name;
        if (str == null) {
            return null;
        }
        DatabaseConfiguration databaseConfiguration3 = this.configuration;
        if (databaseConfiguration3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
        } else {
            databaseConfiguration2 = databaseConfiguration3;
        }
        return databaseConfiguration2.context.getDatabasePath(str).getPath();
    }

    public Executor getQueryExecutor() {
        Executor executor = this.internalQueryExecutor;
        if (executor != null) {
            return executor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalQueryExecutor");
        return null;
    }

    public Executor getTransactionExecutor() {
        Executor executor = this.internalTransactionExecutor;
        if (executor != null) {
            return executor;
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalTransactionExecutor");
        return null;
    }

    public SupportSQLiteOpenHelper getOpenHelper() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime != null) {
            return supportOpenHelper$room_runtime;
        }
        throw new IllegalStateException("Cannot return a SupportSQLiteOpenHelper since no SupportSQLiteOpenHelper.Factory was configured with Room.");
    }

    public final SQLiteDriver getDriver() {
        DatabaseConfiguration databaseConfiguration = this.configuration;
        if (databaseConfiguration == null) {
            Intrinsics.throwUninitializedPropertyAccessException("configuration");
            databaseConfiguration = null;
        }
        SQLiteDriver sQLiteDriver = databaseConfiguration.sqliteDriver;
        if (sQLiteDriver != null) {
            return sQLiteDriver;
        }
        throw new IllegalStateException("No SQLiteDriver was configured with Room.");
    }

    public InvalidationTracker getInvalidationTracker() {
        InvalidationTracker invalidationTracker = this.internalTracker;
        if (invalidationTracker != null) {
            return invalidationTracker;
        }
        Intrinsics.throwUninitializedPropertyAccessException("internalTracker");
        return null;
    }

    public final CloseBarrier getCloseBarrier$room_runtime() {
        return this.closeBarrier;
    }

    public final ThreadLocal<CoroutineContext> getSuspendingTransactionContext() {
        return this.suspendingTransactionContext;
    }

    private final boolean isThreadInSuspendingTransaction() {
        CoroutineContext coroutineContext = this.suspendingTransactionContext.get();
        return (coroutineContext != null ? (TransactionElement) coroutineContext.get(TransactionElement.Key) : null) != null;
    }

    public final boolean getUseTempTrackingTable$room_runtime() {
        return this.useTempTrackingTable;
    }

    public final void setUseTempTrackingTable$room_runtime(boolean z) {
        this.useTempTrackingTable = z;
    }

    public <T> T getTypeConverter(Class<T> klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        return (T) this.typeConverters.get(JvmClassMappingKt.getKotlinClass(klass));
    }

    public final <T> T getTypeConverter(KClass klass) {
        Intrinsics.checkNotNullParameter(klass, "klass");
        T t = (T) this.typeConverters.get(klass);
        Intrinsics.checkNotNull(t, "null cannot be cast to non-null type T of androidx.room.RoomDatabase.getTypeConverter");
        return t;
    }

    public final void addTypeConverter$room_runtime(KClass kclass, Object converter) {
        Intrinsics.checkNotNullParameter(kclass, "kclass");
        Intrinsics.checkNotNullParameter(converter, "converter");
        this.typeConverters.put(kclass, converter);
    }

    public void init(DatabaseConfiguration configuration) {
        CoroutineContext coroutineContext;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
        this.useTempTrackingTable = configuration.getUseTempTrackingTable$room_runtime();
        this.connectionManager = createConnectionManager$room_runtime(configuration);
        this.internalTracker = createInvalidationTracker();
        RoomDatabaseKt.validateAutoMigrations(this, configuration);
        RoomDatabaseKt.validateTypeConverters(this, configuration);
        CoroutineContext coroutineContext2 = configuration.queryCoroutineContext;
        CoroutineScope coroutineScope = null;
        if (coroutineContext2 != null) {
            CoroutineContext.Element element = coroutineContext2.get(ContinuationInterceptor.Key);
            Intrinsics.checkNotNull(element, "null cannot be cast to non-null type kotlinx.coroutines.CoroutineDispatcher");
            CoroutineDispatcher coroutineDispatcher = (CoroutineDispatcher) element;
            Executor executorAsExecutor = ExecutorsKt.asExecutor(coroutineDispatcher);
            this.internalQueryExecutor = executorAsExecutor;
            if (executorAsExecutor == null) {
                Intrinsics.throwUninitializedPropertyAccessException("internalQueryExecutor");
                executorAsExecutor = null;
            }
            this.internalTransactionExecutor = new TransactionExecutor(executorAsExecutor);
            this.coroutineScope = CoroutineScopeKt.CoroutineScope(configuration.queryCoroutineContext.plus(SupervisorKt.SupervisorJob((Job) configuration.queryCoroutineContext.get(Job.Key))));
            if (inCompatibilityMode()) {
                CoroutineScope coroutineScope2 = this.coroutineScope;
                if (coroutineScope2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    coroutineScope2 = null;
                }
                coroutineContext = coroutineScope2.getCoroutineContext().plus(coroutineDispatcher.limitedParallelism(1));
            } else {
                CoroutineScope coroutineScope3 = this.coroutineScope;
                if (coroutineScope3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                    coroutineScope3 = null;
                }
                coroutineContext = coroutineScope3.getCoroutineContext();
            }
            this.transactionContext = coroutineContext;
        } else {
            this.internalQueryExecutor = configuration.queryExecutor;
            this.internalTransactionExecutor = new TransactionExecutor(configuration.transactionExecutor);
            Executor executor = this.internalQueryExecutor;
            if (executor == null) {
                Intrinsics.throwUninitializedPropertyAccessException("internalQueryExecutor");
                executor = null;
            }
            CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ExecutorsKt.from(executor).plus(SupervisorKt.SupervisorJob$default(null, 1, null)));
            this.coroutineScope = CoroutineScope;
            if (CoroutineScope == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
                CoroutineScope = null;
            }
            CoroutineContext coroutineContext3 = CoroutineScope.getCoroutineContext();
            Executor executor2 = this.internalTransactionExecutor;
            if (executor2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("internalTransactionExecutor");
                executor2 = null;
            }
            this.transactionContext = coroutineContext3.plus(ExecutorsKt.from(executor2));
        }
        this.allowMainThreadQueries = configuration.allowMainThreadQueries;
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime = roomConnectionManager.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime != null) {
            while (!(supportOpenHelper$room_runtime instanceof PrePackagedCopyOpenHelper)) {
                if (!(supportOpenHelper$room_runtime instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime = null;
                    break;
                }
                supportOpenHelper$room_runtime = ((DelegatingOpenHelper) supportOpenHelper$room_runtime).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime = null;
            break;
        }
        PrePackagedCopyOpenHelper prePackagedCopyOpenHelper = (PrePackagedCopyOpenHelper) supportOpenHelper$room_runtime;
        if (prePackagedCopyOpenHelper != null) {
            prePackagedCopyOpenHelper.setDatabaseConfiguration(configuration);
        }
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager2 = null;
        }
        SupportSQLiteOpenHelper supportOpenHelper$room_runtime2 = roomConnectionManager2.getSupportOpenHelper$room_runtime();
        if (supportOpenHelper$room_runtime2 != null) {
            while (!(supportOpenHelper$room_runtime2 instanceof AutoClosingRoomOpenHelper)) {
                if (!(supportOpenHelper$room_runtime2 instanceof DelegatingOpenHelper)) {
                    supportOpenHelper$room_runtime2 = null;
                    break;
                }
                supportOpenHelper$room_runtime2 = ((DelegatingOpenHelper) supportOpenHelper$room_runtime2).getDelegate();
            }
        } else {
            supportOpenHelper$room_runtime2 = null;
            break;
        }
        AutoClosingRoomOpenHelper autoClosingRoomOpenHelper = (AutoClosingRoomOpenHelper) supportOpenHelper$room_runtime2;
        if (autoClosingRoomOpenHelper != null) {
            this.autoCloser = autoClosingRoomOpenHelper.getAutoCloser$room_runtime();
            AutoCloser autoCloser$room_runtime = autoClosingRoomOpenHelper.getAutoCloser$room_runtime();
            CoroutineScope coroutineScope4 = this.coroutineScope;
            if (coroutineScope4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            } else {
                coroutineScope = coroutineScope4;
            }
            autoCloser$room_runtime.initCoroutineScope(coroutineScope);
            getInvalidationTracker().setAutoCloser$room_runtime(autoClosingRoomOpenHelper.getAutoCloser$room_runtime());
        }
        if (configuration.multiInstanceInvalidationServiceIntent != null) {
            if (configuration.name == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            getInvalidationTracker().initMultiInstanceInvalidation$room_runtime(configuration.context, configuration.name, configuration.multiInstanceInvalidationServiceIntent);
        }
    }

    public final RoomConnectionManager createConnectionManager$room_runtime(DatabaseConfiguration configuration) {
        RoomOpenDelegate roomOpenDelegate;
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        try {
            RoomOpenDelegateMarker roomOpenDelegateMarkerCreateOpenDelegate = createOpenDelegate();
            Intrinsics.checkNotNull(roomOpenDelegateMarkerCreateOpenDelegate, "null cannot be cast to non-null type androidx.room.RoomOpenDelegate");
            roomOpenDelegate = (RoomOpenDelegate) roomOpenDelegateMarkerCreateOpenDelegate;
        } catch (NotImplementedError unused) {
            roomOpenDelegate = null;
        }
        if (roomOpenDelegate == null) {
            return new RoomConnectionManager(configuration, new Function1() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function1
                public final Object invoke(Object obj) {
                    return RoomDatabase.createConnectionManager$lambda$2(this.f$0, (DatabaseConfiguration) obj);
                }
            }, new RoomDatabase$createConnectionManager$2(this));
        }
        return new RoomConnectionManager(configuration, roomOpenDelegate, new RoomDatabase$createConnectionManager$3(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SupportSQLiteOpenHelper createConnectionManager$lambda$2(RoomDatabase roomDatabase, DatabaseConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return roomDatabase.createOpenHelper(config);
    }

    public List<Migration> getAutoMigrations(Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        return CollectionsKt.emptyList();
    }

    protected SupportSQLiteOpenHelper createOpenHelper(DatabaseConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        throw new NotImplementedError(null, 1, null);
    }

    protected RoomOpenDelegateMarker createOpenDelegate() {
        throw new NotImplementedError(null, 1, null);
    }

    public final CoroutineScope getCoroutineScope() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope != null) {
            return coroutineScope;
        }
        Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
        return null;
    }

    public final CoroutineContext getQueryContext() {
        CoroutineScope coroutineScope = this.coroutineScope;
        if (coroutineScope == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            coroutineScope = null;
        }
        return coroutineScope.getCoroutineContext();
    }

    public final CoroutineContext getTransactionContext$room_runtime() {
        CoroutineContext coroutineContext = this.transactionContext;
        if (coroutineContext != null) {
            return coroutineContext;
        }
        Intrinsics.throwUninitializedPropertyAccessException("transactionContext");
        return null;
    }

    protected Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        return MapsKt.emptyMap();
    }

    protected Map<KClass, List<KClass>> getRequiredTypeConverterClasses() {
        Set<Map.Entry<Class<?>, List<Class<?>>>> setEntrySet = getRequiredTypeConverters().entrySet();
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(setEntrySet, 10)), 16));
        Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            Class cls = (Class) entry.getKey();
            List list = (List) entry.getValue();
            KClass kotlinClass = JvmClassMappingKt.getKotlinClass(cls);
            List list2 = list;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList.add(JvmClassMappingKt.getKotlinClass((Class) it2.next()));
            }
            Pair pairM1081to = TuplesKt.m1081to(kotlinClass, arrayList);
            linkedHashMap.put(pairM1081to.getFirst(), pairM1081to.getSecond());
        }
        return linkedHashMap;
    }

    public final Map<KClass, List<KClass>> getRequiredTypeConverterClassesMap$room_runtime() {
        return getRequiredTypeConverterClasses();
    }

    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return SetsKt.emptySet();
    }

    public Set<KClass> getRequiredAutoMigrationSpecClasses() {
        Set<Class<? extends AutoMigrationSpec>> requiredAutoMigrationSpecs = getRequiredAutoMigrationSpecs();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(requiredAutoMigrationSpecs, 10));
        Iterator<T> it = requiredAutoMigrationSpecs.iterator();
        while (it.hasNext()) {
            arrayList.add(JvmClassMappingKt.getKotlinClass((Class) it.next()));
        }
        return CollectionsKt.toSet(arrayList);
    }

    protected final void performClear(boolean z, String... tableNames) {
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07581(z, tableNames, null));
    }

    /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C07581 extends SuspendLambda implements Function2 {
        final /* synthetic */ boolean $hasForeignKeys;
        final /* synthetic */ String[] $tableNames;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C07581(boolean z, String[] strArr, Continuation continuation) {
            super(2, continuation);
            this.$hasForeignKeys = z;
            this.$tableNames = strArr;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return RoomDatabase.this.new C07581(this.$hasForeignKeys, this.$tableNames, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07581) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1, reason: invalid class name */
        static final class AnonymousClass1 extends SuspendLambda implements Function2 {
            final /* synthetic */ boolean $hasForeignKeys;
            final /* synthetic */ String[] $tableNames;
            /* synthetic */ Object L$0;
            int label;
            final /* synthetic */ RoomDatabase this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(RoomDatabase roomDatabase, boolean z, String[] strArr, Continuation continuation) {
                super(2, continuation);
                this.this$0 = roomDatabase;
                this.$hasForeignKeys = z;
                this.$tableNames = strArr;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation create(Object obj, Continuation continuation) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$hasForeignKeys, this.$tableNames, continuation);
                anonymousClass1.L$0 = obj;
                return anonymousClass1;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Transactor transactor, Continuation continuation) {
                return ((AnonymousClass1) create(transactor, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code restructure failed: missing block: B:33:0x00b5, code lost:
            
                if (androidx.room.TransactorKt.execSQL(r1, "VACUUM", r7) != r0) goto L35;
             */
            /* JADX WARN: Removed duplicated region for block: B:18:0x005f  */
            /* JADX WARN: Removed duplicated region for block: B:21:0x0071 A[PHI: r1
  0x0071: PHI (r1v7 androidx.room.Transactor) = (r1v4 androidx.room.Transactor), (r1v4 androidx.room.Transactor), (r1v9 androidx.room.Transactor) binds: [B:17:0x005d, B:19:0x006e, B:10:0x0031] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:24:0x0088 A[PHI: r1
  0x0088: PHI (r1v10 androidx.room.Transactor) = (r1v7 androidx.room.Transactor), (r1v12 androidx.room.Transactor) binds: [B:22:0x0085, B:9:0x0029] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:27:0x0094 A[PHI: r1 r8
  0x0094: PHI (r1v13 androidx.room.Transactor) = (r1v10 androidx.room.Transactor), (r1v15 androidx.room.Transactor) binds: [B:25:0x0091, B:8:0x0020] A[DONT_GENERATE, DONT_INLINE]
  0x0094: PHI (r8v14 java.lang.Object) = (r8v13 java.lang.Object), (r8v0 java.lang.Object) binds: [B:25:0x0091, B:8:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Removed duplicated region for block: B:29:0x009c  */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object invokeSuspend(Object obj) {
                Transactor transactor;
                Transactor.SQLiteTransactionType sQLiteTransactionType;
                C75711 c75711;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                switch (this.label) {
                    case 0:
                        ResultKt.throwOnFailure(obj);
                        Transactor transactor2 = (Transactor) this.L$0;
                        this.L$0 = transactor2;
                        this.label = 1;
                        Object objInTransaction = transactor2.inTransaction(this);
                        if (objInTransaction != coroutine_suspended) {
                            transactor = transactor2;
                            obj = objInTransaction;
                            if (((Boolean) obj).booleanValue()) {
                                InvalidationTracker invalidationTracker = this.this$0.getInvalidationTracker();
                                this.L$0 = transactor;
                                this.label = 2;
                                if (invalidationTracker.sync$room_runtime(this) != coroutine_suspended) {
                                    sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                                    c75711 = new C75711(this.$hasForeignKeys, this.$tableNames, null);
                                    this.L$0 = transactor;
                                    this.label = 3;
                                    if (transactor.withTransaction(sQLiteTransactionType, c75711, this) != coroutine_suspended) {
                                        this.L$0 = transactor;
                                        this.label = 4;
                                        obj = transactor.inTransaction(this);
                                        if (obj != coroutine_suspended) {
                                            if (!((Boolean) obj).booleanValue()) {
                                                this.L$0 = transactor;
                                                this.label = 5;
                                                if (TransactorKt.execSQL(transactor, "PRAGMA wal_checkpoint(FULL)", this) != coroutine_suspended) {
                                                    this.L$0 = null;
                                                    this.label = 6;
                                                }
                                            }
                                        }
                                    }
                                }
                                break;
                            }
                            return Unit.INSTANCE;
                        }
                        return coroutine_suspended;
                    case 1:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        if (((Boolean) obj).booleanValue()) {
                        }
                        return Unit.INSTANCE;
                    case 2:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        sQLiteTransactionType = Transactor.SQLiteTransactionType.IMMEDIATE;
                        c75711 = new C75711(this.$hasForeignKeys, this.$tableNames, null);
                        this.L$0 = transactor;
                        this.label = 3;
                        if (transactor.withTransaction(sQLiteTransactionType, c75711, this) != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    case 3:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        this.L$0 = transactor;
                        this.label = 4;
                        obj = transactor.inTransaction(this);
                        if (obj != coroutine_suspended) {
                        }
                        return coroutine_suspended;
                    case 4:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        if (!((Boolean) obj).booleanValue()) {
                        }
                        return Unit.INSTANCE;
                    case 5:
                        transactor = (Transactor) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        this.L$0 = null;
                        this.label = 6;
                        break;
                    case 6:
                        ResultKt.throwOnFailure(obj);
                        this.this$0.getInvalidationTracker().refreshAsync();
                        return Unit.INSTANCE;
                    default:
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            }

            /* JADX INFO: renamed from: androidx.room.RoomDatabase$performClear$1$1$1, reason: invalid class name and collision with other inner class name */
            static final class C75711 extends SuspendLambda implements Function2 {
                final /* synthetic */ boolean $hasForeignKeys;
                final /* synthetic */ String[] $tableNames;
                int I$0;
                int I$1;
                private /* synthetic */ Object L$0;
                Object L$1;
                int label;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C75711(boolean z, String[] strArr, Continuation continuation) {
                    super(2, continuation);
                    this.$hasForeignKeys = z;
                    this.$tableNames = strArr;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation create(Object obj, Continuation continuation) {
                    C75711 c75711 = new C75711(this.$hasForeignKeys, this.$tableNames, continuation);
                    c75711.L$0 = obj;
                    return c75711;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object invoke(TransactionScope transactionScope, Continuation continuation) {
                    return ((C75711) create(transactionScope, continuation)).invokeSuspend(Unit.INSTANCE);
                }

                /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r1, "PRAGMA defer_foreign_keys = TRUE", r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:18:0x0077, code lost:
                
                    if (androidx.room.TransactorKt.execSQL(r6, r10, r9) == r0) goto L19;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:19:0x0079, code lost:
                
                    return r0;
                 */
                /* JADX WARN: Removed duplicated region for block: B:17:0x0051  */
                /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0077 -> B:20:0x007a). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object invokeSuspend(Object obj) {
                    TransactionScope transactionScope;
                    TransactionScope transactionScope2;
                    int length;
                    int i;
                    String[] strArr;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = this.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj);
                        transactionScope = (TransactionScope) this.L$0;
                        if (this.$hasForeignKeys) {
                            this.L$0 = transactionScope;
                            this.label = 1;
                        }
                    } else if (i2 == 1) {
                        transactionScope = (TransactionScope) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        if (i2 != 2) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        length = this.I$1;
                        i = this.I$0;
                        strArr = (String[]) this.L$1;
                        transactionScope2 = (TransactionScope) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        i++;
                        if (i >= length) {
                            String str = "DELETE FROM `" + strArr[i] + '`';
                            this.L$0 = transactionScope2;
                            this.L$1 = strArr;
                            this.I$0 = i;
                            this.I$1 = length;
                            this.label = 2;
                        } else {
                            return Unit.INSTANCE;
                        }
                    }
                    String[] strArr2 = this.$tableNames;
                    transactionScope2 = transactionScope;
                    length = strArr2.length;
                    i = 0;
                    strArr = strArr2;
                    if (i >= length) {
                    }
                }
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                RoomConnectionManager roomConnectionManager = RoomDatabase.this.connectionManager;
                if (roomConnectionManager == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
                    roomConnectionManager = null;
                }
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(RoomDatabase.this, this.$hasForeignKeys, this.$tableNames, null);
                this.label = 1;
                if (roomConnectionManager.useConnection(false, anonymousClass1, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    public boolean isOpen() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            return autoCloser.isActive();
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    public final boolean isOpenInternal$room_runtime() {
        AutoCloser autoCloser = this.autoCloser;
        if (autoCloser != null) {
            SupportSQLiteDatabase delegateDatabase$room_runtime = autoCloser.getDelegateDatabase$room_runtime();
            if (delegateDatabase$room_runtime != null) {
                return delegateDatabase$room_runtime.isOpen();
            }
            return false;
        }
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.isSupportDatabaseOpen();
    }

    public void close() {
        this.closeBarrier.close$room_runtime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onClosed() {
        CoroutineScope coroutineScope = this.coroutineScope;
        RoomConnectionManager roomConnectionManager = null;
        if (coroutineScope == null) {
            Intrinsics.throwUninitializedPropertyAccessException("coroutineScope");
            coroutineScope = null;
        }
        CoroutineScopeKt.cancel$default(coroutineScope, null, 1, null);
        getInvalidationTracker().stop$room_runtime();
        RoomConnectionManager roomConnectionManager2 = this.connectionManager;
        if (roomConnectionManager2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
        } else {
            roomConnectionManager = roomConnectionManager2;
        }
        roomConnectionManager.close();
    }

    public final boolean isMainThread$room_runtime() {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    public void assertNotMainThread() {
        if (!this.allowMainThreadQueries && isMainThread$room_runtime()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void assertNotSuspendingTransaction() {
        if (inCompatibilityMode() && !inTransaction() && isThreadInSuspendingTransaction()) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    public final <R> Object useConnection(boolean z, Function2<? super Transactor, ? super Continuation<? super R>, ? extends Object> function2, Continuation<? super R> continuation) {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.useConnection(z, function2, continuation);
    }

    public final boolean inCompatibilityMode() {
        RoomConnectionManager roomConnectionManager = this.connectionManager;
        if (roomConnectionManager == null) {
            Intrinsics.throwUninitializedPropertyAccessException("connectionManager");
            roomConnectionManager = null;
        }
        return roomConnectionManager.getSupportOpenHelper$room_runtime() != null;
    }

    public Cursor query(String query, Object[] objArr) {
        Intrinsics.checkNotNullParameter(query, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().query(new SimpleSQLiteQuery(query, objArr));
    }

    public static /* synthetic */ Cursor query$default(RoomDatabase roomDatabase, SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: query");
        }
        if ((i & 2) != 0) {
            cancellationSignal = null;
        }
        return roomDatabase.query(supportSQLiteQuery, cancellationSignal);
    }

    public Cursor query(SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        Intrinsics.checkNotNullParameter(query, "query");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        if (cancellationSignal != null) {
            return getOpenHelper().getWritableDatabase().query(query, cancellationSignal);
        }
        return getOpenHelper().getWritableDatabase().query(query);
    }

    public SupportSQLiteStatement compileStatement(String sql) {
        Intrinsics.checkNotNullParameter(sql, "sql");
        assertNotMainThread();
        assertNotSuspendingTransaction();
        return getOpenHelper().getWritableDatabase().compileStatement(sql);
    }

    public void beginTransaction() {
        assertNotMainThread();
        internalBeginTransaction();
    }

    private final void internalBeginTransaction() {
        assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = getOpenHelper().getWritableDatabase();
        if (!writableDatabase.inTransaction()) {
            getInvalidationTracker().syncBlocking$room_runtime();
        }
        if (writableDatabase.isWriteAheadLoggingEnabled()) {
            writableDatabase.beginTransactionNonExclusive();
        } else {
            writableDatabase.beginTransaction();
        }
    }

    public void endTransaction() {
        internalEndTransaction();
    }

    private final void internalEndTransaction() {
        getOpenHelper().getWritableDatabase().endTransaction();
        if (inTransaction()) {
            return;
        }
        getInvalidationTracker().refreshVersionsAsync();
    }

    public void setTransactionSuccessful() {
        getOpenHelper().getWritableDatabase().setTransactionSuccessful();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit runInTransaction$lambda$10(Runnable runnable) {
        runnable.run();
        return Unit.INSTANCE;
    }

    public void runInTransaction(final Runnable body) {
        Intrinsics.checkNotNullParameter(body, "body");
        runInTransaction(new Function0() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return RoomDatabase.runInTransaction$lambda$10(body);
            }
        });
    }

    public <V> V runInTransaction(final Callable<V> body) {
        Intrinsics.checkNotNullParameter(body, "body");
        return (V) runInTransaction(new Function0() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return body.call();
            }
        });
    }

    private final Object runInTransaction(final Function0 function0) {
        if (inCompatibilityMode()) {
            beginTransaction();
            try {
                Object objInvoke = function0.invoke();
                setTransactionSuccessful();
                return objInvoke;
            } finally {
                endTransaction();
            }
        }
        return DBUtil.performBlocking(this, false, true, new Function1() { // from class: androidx.room.RoomDatabase$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return RoomDatabase.runInTransaction$lambda$12(function0, (SQLiteConnection) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object runInTransaction$lambda$12(Function0 function0, SQLiteConnection it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return function0.invoke();
    }

    protected void internalInitInvalidationTracker(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
        internalInitInvalidationTracker(new SupportSQLiteConnection(db));
    }

    protected final void internalInitInvalidationTracker(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
        getInvalidationTracker().internalInit$room_runtime(connection);
    }

    public boolean inTransaction() {
        return isOpenInternal$room_runtime() && getOpenHelper().getWritableDatabase().inTransaction();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class JournalMode {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ JournalMode[] $VALUES;
        public static final JournalMode AUTOMATIC = new JournalMode("AUTOMATIC", 0);
        public static final JournalMode TRUNCATE = new JournalMode("TRUNCATE", 1);
        public static final JournalMode WRITE_AHEAD_LOGGING = new JournalMode("WRITE_AHEAD_LOGGING", 2);

        private static final /* synthetic */ JournalMode[] $values() {
            return new JournalMode[]{AUTOMATIC, TRUNCATE, WRITE_AHEAD_LOGGING};
        }

        public static JournalMode valueOf(String str) {
            return (JournalMode) Enum.valueOf(JournalMode.class, str);
        }

        public static JournalMode[] values() {
            return (JournalMode[]) $VALUES.clone();
        }

        private JournalMode(String str, int i) {
        }

        static {
            JournalMode[] journalModeArr$values = $values();
            $VALUES = journalModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(journalModeArr$values);
        }

        public final JournalMode resolve$room_runtime(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            if (this != AUTOMATIC) {
                return this;
            }
            Object systemService = context.getSystemService("activity");
            ActivityManager activityManager = systemService instanceof ActivityManager ? (ActivityManager) systemService : null;
            if (activityManager != null && !activityManager.isLowRamDevice()) {
                return WRITE_AHEAD_LOGGING;
            }
            return TRUNCATE;
        }
    }

    public static class Builder {
        private boolean allowDestructiveMigrationForAllTables;
        private boolean allowDestructiveMigrationOnDowngrade;
        private boolean allowMainThreadQueries;
        private TimeUnit autoCloseTimeUnit;
        private long autoCloseTimeout;
        private final List autoMigrationSpecs;
        private final List callbacks;
        private final Context context;
        private String copyFromAssetPath;
        private File copyFromFile;
        private Callable copyFromInputStream;
        private SQLiteDriver driver;
        private final Function0 factory;
        private boolean inMemoryTrackingTableMode;
        private JournalMode journalMode;
        private final KClass klass;
        private final MigrationContainer migrationContainer;
        private final Set migrationStartAndEndVersions;
        private Set migrationsNotRequiredFrom;
        private Intent multiInstanceInvalidationIntent;
        private final String name;
        private CoroutineContext queryCoroutineContext;
        private Executor queryExecutor;
        private boolean requireMigration;
        private SupportSQLiteOpenHelper.Factory supportOpenHelperFactory;
        private Executor transactionExecutor;
        private final List typeConverters;

        public Builder(Context context, Class klass, String str) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(klass, "klass");
            this.callbacks = new ArrayList();
            this.typeConverters = new ArrayList();
            this.journalMode = JournalMode.AUTOMATIC;
            this.autoCloseTimeout = -1L;
            this.migrationContainer = new MigrationContainer();
            this.migrationsNotRequiredFrom = new LinkedHashSet();
            this.migrationStartAndEndVersions = new LinkedHashSet();
            this.autoMigrationSpecs = new ArrayList();
            this.requireMigration = true;
            this.inMemoryTrackingTableMode = true;
            this.klass = JvmClassMappingKt.getKotlinClass(klass);
            this.context = context;
            this.name = str;
            this.factory = null;
        }

        public Builder openHelperFactory(SupportSQLiteOpenHelper.Factory factory) {
            this.supportOpenHelperFactory = factory;
            return this;
        }

        public Builder addMigrations(Migration... migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            for (Migration migration : migrations) {
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.startVersion));
                this.migrationStartAndEndVersions.add(Integer.valueOf(migration.endVersion));
            }
            this.migrationContainer.addMigrations((Migration[]) Arrays.copyOf(migrations, migrations.length));
            return this;
        }

        public Builder allowMainThreadQueries() {
            this.allowMainThreadQueries = true;
            return this;
        }

        public Builder setQueryExecutor(Executor executor) {
            Intrinsics.checkNotNullParameter(executor, "executor");
            if (this.queryCoroutineContext != null) {
                throw new IllegalArgumentException("This builder has already been configured with a CoroutineContext. A RoomDatabasecan only be configured with either an Executor or a CoroutineContext.");
            }
            this.queryExecutor = executor;
            return this;
        }

        public final Builder fallbackToDestructiveMigration(boolean z) {
            this.requireMigration = false;
            this.allowDestructiveMigrationOnDowngrade = true;
            this.allowDestructiveMigrationForAllTables = z;
            return this;
        }

        public Builder addCallback(Callback callback) {
            Intrinsics.checkNotNullParameter(callback, "callback");
            this.callbacks.add(callback);
            return this;
        }

        public RoomDatabase build() {
            SupportSQLiteOpenHelper.Factory prePackagedCopyOpenHelperFactory;
            SupportSQLiteOpenHelper.Factory factory;
            RoomDatabase roomDatabase;
            Executor executor = this.queryExecutor;
            if (executor == null && this.transactionExecutor == null) {
                Executor iOThreadExecutor = ArchTaskExecutor.getIOThreadExecutor();
                this.transactionExecutor = iOThreadExecutor;
                this.queryExecutor = iOThreadExecutor;
            } else if (executor != null && this.transactionExecutor == null) {
                this.transactionExecutor = executor;
            } else if (executor == null) {
                this.queryExecutor = this.transactionExecutor;
            }
            RoomDatabaseKt.validateMigrationsNotRequired(this.migrationStartAndEndVersions, this.migrationsNotRequiredFrom);
            SQLiteDriver sQLiteDriver = this.driver;
            if (sQLiteDriver == null && this.supportOpenHelperFactory == null) {
                prePackagedCopyOpenHelperFactory = new FrameworkSQLiteOpenHelperFactory();
            } else if (sQLiteDriver == null) {
                prePackagedCopyOpenHelperFactory = this.supportOpenHelperFactory;
            } else {
                if (this.supportOpenHelperFactory != null) {
                    throw new IllegalArgumentException("A RoomDatabase cannot be configured with both a SQLiteDriver and a SupportOpenHelper.Factory.");
                }
                prePackagedCopyOpenHelperFactory = null;
            }
            boolean z = this.autoCloseTimeout > 0;
            boolean z2 = (this.copyFromAssetPath == null && this.copyFromFile == null && this.copyFromInputStream == null) ? false : true;
            if (prePackagedCopyOpenHelperFactory != null) {
                if (z) {
                    if (this.name == null) {
                        throw new IllegalArgumentException("Cannot create auto-closing database for an in-memory database.");
                    }
                    long j = this.autoCloseTimeout;
                    TimeUnit timeUnit = this.autoCloseTimeUnit;
                    if (timeUnit == null) {
                        throw new IllegalArgumentException("Required value was null.");
                    }
                    prePackagedCopyOpenHelperFactory = new AutoClosingRoomOpenHelperFactory(prePackagedCopyOpenHelperFactory, new AutoCloser(j, timeUnit, null, 4, null));
                }
                if (z2) {
                    if (this.name == null) {
                        throw new IllegalArgumentException("Cannot create from asset or file for an in-memory database.");
                    }
                    String str = this.copyFromAssetPath;
                    int i = str == null ? 0 : 1;
                    File file = this.copyFromFile;
                    int i2 = file == null ? 0 : 1;
                    Callable callable = this.copyFromInputStream;
                    if (i + i2 + (callable != null ? 1 : 0) != 1) {
                        throw new IllegalArgumentException("More than one of createFromAsset(), createFromInputStream(), and createFromFile() were called on this Builder, but the database can only be created using one of the three configurations.");
                    }
                    prePackagedCopyOpenHelperFactory = new PrePackagedCopyOpenHelperFactory(str, file, callable, prePackagedCopyOpenHelperFactory);
                }
                factory = prePackagedCopyOpenHelperFactory;
            } else {
                factory = null;
            }
            if (factory == null) {
                if (z) {
                    throw new IllegalArgumentException("Auto Closing Database is not supported when an SQLiteDriver is configured.");
                }
                if (z2) {
                    throw new IllegalArgumentException("Pre-Package Database is not supported when an SQLiteDriver is configured.");
                }
            }
            Context context = this.context;
            String str2 = this.name;
            MigrationContainer migrationContainer = this.migrationContainer;
            List list = this.callbacks;
            boolean z3 = this.allowMainThreadQueries;
            JournalMode journalModeResolve$room_runtime = this.journalMode.resolve$room_runtime(context);
            Executor executor2 = this.queryExecutor;
            if (executor2 == null) {
                throw new IllegalArgumentException("Required value was null.");
            }
            Executor executor3 = this.transactionExecutor;
            if (executor3 != null) {
                DatabaseConfiguration databaseConfiguration = new DatabaseConfiguration(context, str2, factory, migrationContainer, list, z3, journalModeResolve$room_runtime, executor2, executor3, this.multiInstanceInvalidationIntent, this.requireMigration, this.allowDestructiveMigrationOnDowngrade, this.migrationsNotRequiredFrom, this.copyFromAssetPath, this.copyFromFile, this.copyFromInputStream, null, this.typeConverters, this.autoMigrationSpecs, this.allowDestructiveMigrationForAllTables, this.driver, this.queryCoroutineContext);
                databaseConfiguration.setUseTempTrackingTable$room_runtime(this.inMemoryTrackingTableMode);
                Function0 function0 = this.factory;
                if (function0 == null || (roomDatabase = (RoomDatabase) function0.invoke()) == null) {
                    roomDatabase = (RoomDatabase) KClassUtil.findAndInstantiateDatabaseImpl$default(JvmClassMappingKt.getJavaClass(this.klass), null, 2, null);
                }
                roomDatabase.init(databaseConfiguration);
                return roomDatabase;
            }
            throw new IllegalArgumentException("Required value was null.");
        }
    }

    public static class MigrationContainer {
        private final Map migrations = new LinkedHashMap();

        public final void addMigration(Migration migration) {
            Intrinsics.checkNotNullParameter(migration, "migration");
            int i = migration.startVersion;
            int i2 = migration.endVersion;
            Map map = this.migrations;
            Integer numValueOf = Integer.valueOf(i);
            Object treeMap = map.get(numValueOf);
            if (treeMap == null) {
                treeMap = new TreeMap();
                map.put(numValueOf, treeMap);
            }
            TreeMap treeMap2 = (TreeMap) treeMap;
            if (treeMap2.containsKey(Integer.valueOf(i2))) {
                Log.w("ROOM", "Overriding migration " + treeMap2.get(Integer.valueOf(i2)) + " with " + migration);
            }
            treeMap2.put(Integer.valueOf(i2), migration);
        }

        public Map getMigrations() {
            return this.migrations;
        }

        public List findMigrationPath(int i, int i2) {
            return MigrationUtil.findMigrationPath(this, i, i2);
        }

        public final boolean contains(int i, int i2) {
            return MigrationUtil.contains(this, i, i2);
        }

        public final Pair getSortedNodes$room_runtime(int i) {
            TreeMap treeMap = (TreeMap) this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.m1081to(treeMap, treeMap.keySet());
        }

        public final Pair getSortedDescendingNodes$room_runtime(int i) {
            TreeMap treeMap = (TreeMap) this.migrations.get(Integer.valueOf(i));
            if (treeMap == null) {
                return null;
            }
            return TuplesKt.m1081to(treeMap, treeMap.descendingKeySet());
        }

        public void addMigrations(Migration... migrations) {
            Intrinsics.checkNotNullParameter(migrations, "migrations");
            for (Migration migration : migrations) {
                addMigration(migration);
            }
        }
    }

    public static abstract class Callback {
        public void onCreate(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public void onDestructiveMigration(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public void onOpen(SupportSQLiteDatabase db) {
            Intrinsics.checkNotNullParameter(db, "db");
        }

        public void onCreate(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onCreate(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onDestructiveMigration(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onDestructiveMigration(((SupportSQLiteConnection) connection).getDb());
            }
        }

        public void onOpen(SQLiteConnection connection) {
            Intrinsics.checkNotNullParameter(connection, "connection");
            if (connection instanceof SupportSQLiteConnection) {
                onOpen(((SupportSQLiteConnection) connection).getDb());
            }
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public List<Migration> createAutoMigrations(Map<KClass, ? extends AutoMigrationSpec> autoMigrationSpecs) {
        Intrinsics.checkNotNullParameter(autoMigrationSpecs, "autoMigrationSpecs");
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(autoMigrationSpecs.size()));
        Iterator<T> it = autoMigrationSpecs.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(JvmClassMappingKt.getJavaClass((KClass) entry.getKey()), entry.getValue());
        }
        return getAutoMigrations(linkedHashMap);
    }
}
