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
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: loaded from: classes.dex */
public class InvalidationTracker {
    public static final Companion Companion = new Companion(null);
    private AutoCloser autoCloser;
    private final RoomDatabase database;
    private final TriggerBasedInvalidationTracker implementation;
    private final InvalidationLiveDataContainer invalidationLiveDataContainer;
    private MultiInstanceInvalidationClient multiInstanceInvalidationClient;
    private Intent multiInstanceInvalidationIntent;
    private final Map observerMap;
    private final ReentrantLock observerMapLock;
    private final Function0 onRefreshCompleted;
    private final Function0 onRefreshScheduled;
    private final Map shadowTablesMap;
    private final String[] tableNames;
    private final Object trackerLock;
    private final Map viewTables;

    public InvalidationTracker(RoomDatabase database, Map shadowTablesMap, Map viewTables, String... tableNames) {
        Intrinsics.checkNotNullParameter(database, "database");
        Intrinsics.checkNotNullParameter(shadowTablesMap, "shadowTablesMap");
        Intrinsics.checkNotNullParameter(viewTables, "viewTables");
        Intrinsics.checkNotNullParameter(tableNames, "tableNames");
        this.database = database;
        this.shadowTablesMap = shadowTablesMap;
        this.viewTables = viewTables;
        this.tableNames = tableNames;
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = new TriggerBasedInvalidationTracker(database, shadowTablesMap, viewTables, tableNames, database.getUseTempTrackingTable$room_runtime(), new InvalidationTracker$implementation$1(this));
        this.implementation = triggerBasedInvalidationTracker;
        this.observerMap = new LinkedHashMap();
        this.observerMapLock = new ReentrantLock();
        this.onRefreshScheduled = new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.onRefreshScheduled$lambda$0(this.f$0);
            }
        };
        this.onRefreshCompleted = new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return InvalidationTracker.onRefreshCompleted$lambda$1(this.f$0);
            }
        };
        this.invalidationLiveDataContainer = new InvalidationLiveDataContainer(database);
        this.trackerLock = new Object();
        triggerBasedInvalidationTracker.setOnAllowRefresh$room_runtime(new Function0() { // from class: androidx.room.InvalidationTracker$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(InvalidationTracker._init_$lambda$2(this.f$0));
            }
        });
    }

    public final RoomDatabase getDatabase$room_runtime() {
        return this.database;
    }

    public final String[] getTableNames$room_runtime() {
        return this.tableNames;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onRefreshScheduled$lambda$0(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.incrementCountAndEnsureDbIsOpen();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit onRefreshCompleted$lambda$1(InvalidationTracker invalidationTracker) {
        AutoCloser autoCloser = invalidationTracker.autoCloser;
        if (autoCloser != null) {
            autoCloser.decrementCountAndScheduleClose();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$2(InvalidationTracker invalidationTracker) {
        return !invalidationTracker.database.inCompatibilityMode() || invalidationTracker.database.isOpenInternal$room_runtime();
    }

    public final void setAutoCloser$room_runtime(AutoCloser autoCloser) {
        Intrinsics.checkNotNullParameter(autoCloser, "autoCloser");
        this.autoCloser = autoCloser;
        autoCloser.setAutoCloseCallback(new InvalidationTracker$setAutoCloser$1(this));
    }

    public final void internalInit$room_runtime(SQLiteConnection connection) {
        Intrinsics.checkNotNullParameter(connection, "connection");
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

    public final Object sync$room_runtime(Continuation continuation) throws Throwable {
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
                    List allObservers = getAllObservers();
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

    public final Flow createFlow(String[] tables, boolean z) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        Pair pairValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(tables);
        String[] strArr = (String[]) pairValidateTableNames$room_runtime.component1();
        Flow flowCreateFlow$room_runtime = this.implementation.createFlow$room_runtime(strArr, (int[]) pairValidateTableNames$room_runtime.component2(), z);
        MultiInstanceInvalidationClient multiInstanceInvalidationClient = this.multiInstanceInvalidationClient;
        Flow flowCreateFlow = multiInstanceInvalidationClient != null ? multiInstanceInvalidationClient.createFlow(strArr) : null;
        return flowCreateFlow != null ? FlowKt.merge(flowCreateFlow$room_runtime, flowCreateFlow) : flowCreateFlow$room_runtime;
    }

    public final void addRemoteObserver$room_runtime(Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (!observer.isRemote$room_runtime()) {
            throw new IllegalStateException("isRemote was false of observer argument");
        }
        addObserverOnly(observer);
    }

    private final boolean addObserverOnly(Observer observer) {
        ObserverWrapper observerWrapper;
        Pair pairValidateTableNames$room_runtime = this.implementation.validateTableNames$room_runtime(observer.getTables$room_runtime());
        String[] strArr = (String[]) pairValidateTableNames$room_runtime.component1();
        int[] iArr = (int[]) pairValidateTableNames$room_runtime.component2();
        ObserverWrapper observerWrapper2 = new ObserverWrapper(observer, iArr, strArr);
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            if (this.observerMap.containsKey(observer)) {
                observerWrapper = (ObserverWrapper) MapsKt.getValue(this.observerMap, observer);
            } else {
                observerWrapper = (ObserverWrapper) this.observerMap.put(observer, observerWrapper2);
            }
            reentrantLock.unlock();
            return observerWrapper == null && this.implementation.onObserverAdded$room_runtime(iArr);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public void removeObserver(Observer observer) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        if (removeObserverOnly(observer)) {
            RunBlockingUninterruptible_androidKt.runBlockingUninterruptible(new C07541(null));
        }
    }

    /* JADX INFO: renamed from: androidx.room.InvalidationTracker$removeObserver$1 */
    /* JADX INFO: loaded from: classes4.dex */
    static final class C07541 extends SuspendLambda implements Function2 {
        int label;

        C07541(Continuation continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation create(Object obj, Continuation continuation) {
            return InvalidationTracker.this.new C07541(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation continuation) {
            return ((C07541) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
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
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
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
            ObserverWrapper observerWrapper = (ObserverWrapper) this.observerMap.remove(observer);
            return observerWrapper != null && this.implementation.onObserverRemoved$room_runtime(observerWrapper.getTableIds$room_runtime());
        } finally {
            reentrantLock.unlock();
        }
    }

    private final List getAllObservers() {
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
    public final void notifyInvalidatedObservers(Set set) {
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List list = CollectionsKt.toList(this.observerMap.values());
            reentrantLock.unlock();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((ObserverWrapper) it.next()).notifyByTableIds$room_runtime(set);
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void notifyObserversByTableNames$room_runtime(Set tables) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        ReentrantLock reentrantLock = this.observerMapLock;
        reentrantLock.lock();
        try {
            List<ObserverWrapper> list = CollectionsKt.toList(this.observerMap.values());
            reentrantLock.unlock();
            for (ObserverWrapper observerWrapper : list) {
                if (!observerWrapper.getObserver$room_runtime().isRemote$room_runtime()) {
                    observerWrapper.notifyByTableNames$room_runtime(tables);
                }
            }
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    public final void initMultiInstanceInvalidation$room_runtime(Context context, String name, Intent serviceIntent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
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
    public static abstract class Observer {
        private final String[] tables;

        public abstract boolean isRemote$room_runtime();

        public abstract void onInvalidated(Set set);

        public Observer(String[] tables) {
            Intrinsics.checkNotNullParameter(tables, "tables");
            this.tables = tables;
        }

        public final String[] getTables$room_runtime() {
            return this.tables;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
