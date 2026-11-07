package androidx.room;

import android.content.Context;
import android.content.Intent;
import androidx.room.coroutines.RunBlockingUninterruptible_androidKt;
import androidx.room.support.AutoCloser;
import androidx.sqlite.SQLiteConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000®\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u0000 d2\u00020\u0001:\u0002edBX\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u001d\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\b0\u0004\u0012\u0012\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u0005¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0016\u0010\u0015J\u0015\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u001d\u0010\u001c\u001a\u00020\u000e2\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0007H\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001f\u001a\u00020\u001eH\u0000¢\u0006\u0004\b \u0010!J\u0017\u0010'\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020#H\u0000¢\u0006\u0004\b%\u0010&J\u0010\u0010*\u001a\u00020\u000eH\u0080@¢\u0006\u0004\b(\u0010)J\u000f\u0010,\u001a\u00020\u000eH\u0001¢\u0006\u0004\b+\u0010\u0010J\r\u0010-\u001a\u00020\u000e¢\u0006\u0004\b-\u0010\u0010J9\u00101\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0007002\u0012\u0010.\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n\"\u00020\u00052\b\b\u0002\u0010/\u001a\u00020\u0013H\u0007¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0000¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u00020\u000e2\u0006\u0010\u0012\u001a\u00020\u0011H\u0017¢\u0006\u0004\b6\u00104J\u000f\u00107\u001a\u00020\u000eH\u0016¢\u0006\u0004\b7\u0010\u0010J\u001d\u00109\u001a\u00020\u000e2\f\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0000¢\u0006\u0004\b8\u0010\u001dJ'\u0010A\u001a\u00020\u000e2\u0006\u0010;\u001a\u00020:2\u0006\u0010<\u001a\u00020\u00052\u0006\u0010>\u001a\u00020=H\u0000¢\u0006\u0004\b?\u0010@J\u000f\u0010C\u001a\u00020\u000eH\u0000¢\u0006\u0004\bB\u0010\u0010R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0003\u0010D\u001a\u0004\bE\u0010FR \u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010GR+\u0010\t\u001a\u0019\u0012\u0004\u0012\u00020\u0005\u0012\u000f\u0012\r\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\b\b0\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010GR\"\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\n8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u000b\u0010H\u001a\u0004\bI\u0010JR\u0014\u0010L\u001a\u00020K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR \u0010P\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020O0N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bP\u0010GR\u0018\u0010S\u001a\u00060Qj\u0002`R8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bS\u0010TR\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010UR\u001a\u0010W\u001a\b\u0012\u0004\u0012\u00020\u000e0V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bW\u0010XR\u001a\u0010Y\u001a\b\u0012\u0004\u0012\u00020\u000e0V8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bY\u0010XR\u0014\u0010[\u001a\u00020Z8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010]\u001a\u0004\u0018\u00010=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010`\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0014\u0010b\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bb\u0010c¨\u0006f"}, d2 = {"Landroidx/room/InvalidationTracker;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/RoomDatabase;", "database", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "shadowTablesMap", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/jvm/JvmSuppressWildcards;", "viewTables", _UrlKt.FRAGMENT_ENCODE_SET, "tableNames", "<init>", "(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, "onAutoCloseCallback", "()V", "Landroidx/room/InvalidationTracker$Observer;", "observer", _UrlKt.FRAGMENT_ENCODE_SET, "addObserverOnly", "(Landroidx/room/InvalidationTracker$Observer;)Z", "removeObserverOnly", _UrlKt.FRAGMENT_ENCODE_SET, "getAllObservers", "()Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "tableIds", "notifyInvalidatedObservers", "(Ljava/util/Set;)V", "Landroidx/room/support/AutoCloser;", "autoCloser", "setAutoCloser$room_runtime", "(Landroidx/room/support/AutoCloser;)V", "setAutoCloser", "Landroidx/sqlite/SQLiteConnection;", "connection", "internalInit$room_runtime", "(Landroidx/sqlite/SQLiteConnection;)V", "internalInit", "sync$room_runtime", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sync", "syncBlocking$room_runtime", "syncBlocking", "refreshAsync", "tables", "emitInitialState", "Lkotlinx/coroutines/flow/Flow;", "createFlow", "([Ljava/lang/String;Z)Lkotlinx/coroutines/flow/Flow;", "addRemoteObserver$room_runtime", "(Landroidx/room/InvalidationTracker$Observer;)V", "addRemoteObserver", "removeObserver", "refreshVersionsAsync", "notifyObserversByTableNames$room_runtime", "notifyObserversByTableNames", "Landroid/content/Context;", "context", "name", "Landroid/content/Intent;", "serviceIntent", "initMultiInstanceInvalidation$room_runtime", "(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V", "initMultiInstanceInvalidation", "stop$room_runtime", "stop", "Landroidx/room/RoomDatabase;", "getDatabase$room_runtime", "()Landroidx/room/RoomDatabase;", "Ljava/util/Map;", "[Ljava/lang/String;", "getTableNames$room_runtime", "()[Ljava/lang/String;", "Landroidx/room/TriggerBasedInvalidationTracker;", "implementation", "Landroidx/room/TriggerBasedInvalidationTracker;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/room/ObserverWrapper;", "observerMap", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroidx/room/concurrent/ReentrantLock;", "observerMapLock", "Ljava/util/concurrent/locks/ReentrantLock;", "Landroidx/room/support/AutoCloser;", "Lkotlin/Function0;", "onRefreshScheduled", "Lkotlin/jvm/functions/Function0;", "onRefreshCompleted", "Landroidx/room/InvalidationLiveDataContainer;", "invalidationLiveDataContainer", "Landroidx/room/InvalidationLiveDataContainer;", "multiInstanceInvalidationIntent", "Landroid/content/Intent;", "Landroidx/room/MultiInstanceInvalidationClient;", "multiInstanceInvalidationClient", "Landroidx/room/MultiInstanceInvalidationClient;", "trackerLock", "Ljava/lang/Object;", "Companion", "Observer", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nInvalidationTracker.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/InvalidationTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ReentrantLock.kt\nandroidx/room/concurrent/ReentrantLockKt\n*L\n1#1,592:1\n827#2:593\n855#2,2:594\n1869#2,2:617\n1869#2,2:624\n1#3:596\n28#4,5:597\n28#4,5:602\n28#4,5:607\n28#4,5:612\n28#4,5:619\n*S KotlinDebug\n*F\n+ 1 InvalidationTracker.android.kt\nandroidx/room/InvalidationTracker\n*L\n183#1:593\n183#1:594,2\n351#1:617,2\n365#1:624,2\n274#1:597,5\n318#1:602,5\n322#1:607,5\n350#1:612,5\n364#1:619,5\n*E\n"})
public class InvalidationTracker {
    private AutoCloser autoCloser;
    private final RoomDatabase database;
    private final TriggerBasedInvalidationTracker implementation;
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;
    private Intent multiInstanceInvalidationIntent;
    private final Map<Observer, ObserverWrapper> observerMap;
    private final ReentrantLock observerMapLock;
    private final Function0<Unit> onRefreshCompleted;
    private final Function0<Unit> onRefreshScheduled;
    private final Map<String, String> shadowTablesMap;
    private final String[] tableNames;
    private final Object trackerLock;
    private final Map<String, Set<String>> viewTables;

    public InvalidationTracker(RoomDatabase roomDatabase, Map<String, String> map, Map<String, Set<String>> map2, String... strArr) {
        this.database = roomDatabase;
        this.shadowTablesMap = map;
        this.viewTables = map2;
        this.tableNames = strArr;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(roomDatabase, map, map2, strArr, roomDatabase.getUseTempTrackingTable(), new InvalidationTracker$implementation$1(this));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.$r8$lambda$z_vz9Tqx65AifWN0It6OfeI4bTk(this.f$0);
            }
        };
        this.onRefreshCompleted = new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.m2078$r8$lambda$S0GAeZVlYzHdkENrWOBCuj8x5g(this.f$0);
            }
        };
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(roomDatabase);
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.setOnAllowRefresh$room_runtime(new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(InvalidationTracker.$r8$lambda$rV938R3HpEbbZMJ5mxkZVyQwHqY(this.f$0));
            }
        });
    }

    /* JADX INFO: renamed from: getDatabase$room_runtime, reason: from getter */
    public final RoomDatabase getDatabase() {
        return this.database;
    }

    /* JADX INFO: renamed from: getTableNames$room_runtime, reason: from getter */
    public final String[] getTableNames() {
        return this.tableNames;
    }

    public static Unit $r8$lambda$z_vz9Tqx65AifWN0It6OfeI4bTk(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: $r8$lambda$S0GAeZVlYzHdkENrWO-BCuj8x5g, reason: not valid java name */
    public static Unit m2078$r8$lambda$S0GAeZVlYzHdkENrWOBCuj8x5g(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.decrementCountAndScheduleClose();
        }
        return Unit.INSTANCE;
    }

    public static boolean $r8$lambda$rV938R3HpEbbZMJ5mxkZVyQwHqY(InvalidationTracker invalidationTracker) {
        return !invalidationTracker.database.inCompatibilityMode() || invalidationTracker.database.isOpenInternal$room_runtime();
    }

    public final void setAutoCloser$room_runtime(AutoCloser autoCloser) {
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void internalInit$room_runtime(SQLiteConnection connection) {
        this.implementation.configureConnection(connection);
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    Intent intent = this.multiInstanceInvalidationIntent;
                    if (intent == null) {
                        throw new IllegalStateException("Required value was null.");
                    }
                    multiInstanceInvalidationClient.start(intent);
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object sync$room_runtime(Continuation<? super Unit> continuation) throws Throwable {
        Object objSyncTriggers$room_runtime = this.implementation.syncTriggers$room_runtime(continuation);
        return objSyncTriggers$room_runtime == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objSyncTriggers$room_runtime : Unit.INSTANCE;
    }

    public final void syncBlocking$room_runtime() {
        RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new InvalidationTracker$syncBlocking$1(this, null));
    }

    public final void refreshAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAutoCloseCallback() {
        synchronized (this.trackerLock) {
            try {
                MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
                if (multiInstanceInvalidationClient != null) {
                    List<Observer> allObservers = getAllObservers();
                    ArrayList arrayList = new ArrayList();
                    for (Object obj : allObservers) {
                        if (!((Observer) obj).isRemote$room_runtime()) {
                            arrayList.add(obj);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        multiInstanceInvalidationClient.stop();
                    }
                }
                this.implementation.resetSync$room_runtime();
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @JvmOverloads
    public final Flow<Set<String>> createFlow(String[] tables, boolean emitInitialState) {
        Pair<String[], int[]> pairValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(tables);
        String[] strArrComponent1 = pairValidateTableNames$room_runtime.component1();
        Flow<Set<String>> flowCreateFlow$room_runtime = this.implementation.createFlow$room_runtime(strArrComponent1, pairValidateTableNames$room_runtime.component2(), emitInitialState);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        Flow<Set<String>> flowCreateFlow = multiInstanceInvalidationClient != null ? multiInstanceInvalidationClient.createFlow(strArrComponent1) : null;
        return flowCreateFlow != null ? FlowKt.merge(flowCreateFlow$room_runtime, flowCreateFlow) : flowCreateFlow$room_runtime;
    }

    public final void addRemoteObserver$room_runtime(Observer observer) {
        if (!observer.isRemote$room_runtime()) {
            Segment$$ExternalSyntheticBUOutline1.m973m("isRemote was false of observer argument");
        } else {
            addObserverOnly(observer);
        }
    }

    private final boolean addObserverOnly(Observer observer) {
        ObserverWrapper observerWrapperPut;
        Pair<String[], int[]> pairValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(observer.getTables());
        String[] strArrComponent1 = pairValidateTableNames$room_runtime.component1();
        int[] iArrComponent2 = pairValidateTableNames$room_runtime.component2();
        ObserverWrapper observerWrapper = new ObserverWrapper(observer, iArrComponent2, strArrComponent1);
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            boolean zContainsKey = this.observerMap.containsKey(observer);
            Map<Observer, ObserverWrapper> map = this.observerMap;
            if (zContainsKey) {
                observerWrapperPut = (ObserverWrapper) MapsKt.getValue(map, observer);
            } else {
                observerWrapperPut = map.put(observer, observerWrapper);
            }
            reentrantLock.unlock();
            return observerWrapperPut == null && this.implementation.onObserverAdded$room_runtime(iArrComponent2);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public void removeObserver(Observer observer) {
        if (removeObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C09771(null));
        }
    }

    /* JADX INFO: renamed from: androidx.room.InvalidationTracker$removeObserver$1 */
    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.room.InvalidationTracker$removeObserver$1", m921f = "InvalidationTracker.android.kt", m922i = {}, m923l = {310}, m924m = "invokeSuspend", m925n = {}, m926s = {})
    public static final class C09771 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        public C09771(Continuation<? super C09771> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return InvalidationTracker.this.new C09771(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C09771) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = InvalidationTracker.this.implementation;
                this.label = 1;
                if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    private final boolean removeObserverOnly(Observer observer) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            ObserverWrapper observerWrapperRemove = this.observerMap.remove(observer);
            return observerWrapperRemove != null && this.implementation.onObserverRemoved$room_runtime(observerWrapperRemove.getTableIds());
        } finally {
            reentrantLock.unlock();
        }
    }

    private final List<Observer> getAllObservers() {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            return CollectionsKt.toList(this.observerMap.keySet());
        } finally {
            reentrantLock.unlock();
        }
    }

    public void refreshVersionsAsync() {
        this.implementation.refreshInvalidationAsync$room_runtime(this.onRefreshScheduled, this.onRefreshCompleted);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void notifyInvalidatedObservers(Set<Integer> tableIds) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List list = CollectionsKt.toList(this.observerMap.values());
            reentrantLock.unlock();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ObserverWrapper) it.next()).notifyByTableIds$room_runtime(tableIds);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void notifyObserversByTableNames$room_runtime(Set<String> tables) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> list = CollectionsKt.toList(this.observerMap.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : list) {
                if (!observerWrapper.getObserver().isRemote$room_runtime()) {
                    observerWrapper.notifyByTableNames$room_runtime(tables);
                }
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void initMultiInstanceInvalidation$room_runtime(Context context, String name, Intent serviceIntent) {
        this.multiInstanceInvalidationIntent = serviceIntent;
        this.multiInstanceInvalidationClient = new MultiInstanceInvalidationClient(context, name, this);
    }

    public final void stop$room_runtime() {
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        if (multiInstanceInvalidationClient != null) {
            multiInstanceInvalidationClient.stop();
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001d\u0010\t\u001a\u00020\b2\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007H&¢\u0006\u0004\b\t\u0010\nR\"\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010\u000b\u001a\u0004\b\f\u0010\rR\u0014\u0010\u0011\u001a\u00020\u000e8PX\u0090\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Landroidx/room/InvalidationTracker$Observer;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "tables", "<init>", "([Ljava/lang/String;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "onInvalidated", "(Ljava/util/Set;)V", "[Ljava/lang/String;", "getTables$room_runtime", "()[Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "isRemote$room_runtime", "()Z", "isRemote", "room-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static abstract class Observer {
        private final String[] tables;

        public abstract boolean isRemote$room_runtime();

        public abstract void onInvalidated(Set<String> tables);

        public Observer(String[] strArr) {
            this.tables = strArr;
        }

        /* JADX INFO: renamed from: getTables$room_runtime, reason: from getter */
        public final String[] getTables() {
            return this.tables;
        }
    }
}
