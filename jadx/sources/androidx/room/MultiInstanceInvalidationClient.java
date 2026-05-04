package androidx.room;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.InvalidationTracker;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes4.dex */
public final class MultiInstanceInvalidationClient {
    private final Context appContext;
    private int clientId;
    private final CoroutineScope coroutineScope;
    private final MutableSharedFlow invalidatedTables;
    private final IMultiInstanceInvalidationCallback invalidationCallback;
    private IMultiInstanceInvalidationService invalidationService;
    private final InvalidationTracker invalidationTracker;
    private final String name;
    private final MultiInstanceInvalidationClient$observer$1 observer;
    private final ServiceConnection serviceConnection;
    private final AtomicBoolean stopped;

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.room.MultiInstanceInvalidationClient$observer$1] */
    public MultiInstanceInvalidationClient(Context context, String name, InvalidationTracker invalidationTracker) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(invalidationTracker, "invalidationTracker");
        this.name = name;
        this.invalidationTracker = invalidationTracker;
        this.appContext = context.getApplicationContext();
        this.coroutineScope = invalidationTracker.getDatabase$room_runtime().getCoroutineScope();
        this.stopped = new AtomicBoolean(true);
        this.invalidatedTables = SharedFlowKt.MutableSharedFlow(0, 0, BufferOverflow.SUSPEND);
        final String[] tableNames$room_runtime = invalidationTracker.getTableNames$room_runtime();
        this.observer = new InvalidationTracker.Observer(tableNames$room_runtime) { // from class: androidx.room.MultiInstanceInvalidationClient$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote$room_runtime() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(Set tables) {
                Intrinsics.checkNotNullParameter(tables, "tables");
                if (this.this$0.stopped.get()) {
                    return;
                }
                try {
                    IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.this$0.invalidationService;
                    if (iMultiInstanceInvalidationService != null) {
                        iMultiInstanceInvalidationService.broadcastInvalidation(this.this$0.clientId, (String[]) tables.toArray(new String[0]));
                    }
                } catch (RemoteException e) {
                    Log.w("ROOM", "Cannot broadcast invalidation", e);
                }
            }
        };
        this.invalidationCallback = new IMultiInstanceInvalidationCallback.Stub() { // from class: androidx.room.MultiInstanceInvalidationClient$invalidationCallback$1
            @Override // androidx.room.IMultiInstanceInvalidationCallback
            public void onInvalidation(String[] tables) {
                Intrinsics.checkNotNullParameter(tables, "tables");
                BuildersKt__Builders_commonKt.launch$default(this.this$0.coroutineScope, null, null, new C0756x5cbf7351(tables, this.this$0, null), 3, null);
            }
        };
        this.serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name2, IBinder service) {
                Intrinsics.checkNotNullParameter(name2, "name");
                Intrinsics.checkNotNullParameter(service, "service");
                this.this$0.invalidationService = IMultiInstanceInvalidationService.Stub.asInterface(service);
                this.this$0.registerCallback();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name2) {
                Intrinsics.checkNotNullParameter(name2, "name");
                this.this$0.invalidationService = null;
            }
        };
    }

    public final InvalidationTracker getInvalidationTracker() {
        return this.invalidationTracker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerCallback() {
        try {
            IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
            if (iMultiInstanceInvalidationService != null) {
                this.clientId = iMultiInstanceInvalidationService.registerCallback(this.invalidationCallback, this.name);
            }
        } catch (RemoteException e) {
            Log.w("ROOM", "Cannot register multi-instance invalidation callback", e);
        }
    }

    public final void start(Intent serviceIntent) {
        Intrinsics.checkNotNullParameter(serviceIntent, "serviceIntent");
        if (this.stopped.compareAndSet(true, false)) {
            this.appContext.bindService(serviceIntent, this.serviceConnection, 1);
            this.invalidationTracker.addRemoteObserver$room_runtime(this.observer);
        }
    }

    public final void stop() {
        if (this.stopped.compareAndSet(false, true)) {
            this.invalidationTracker.removeObserver(this.observer);
            try {
                IMultiInstanceInvalidationService iMultiInstanceInvalidationService = this.invalidationService;
                if (iMultiInstanceInvalidationService != null) {
                    iMultiInstanceInvalidationService.unregisterCallback(this.invalidationCallback, this.clientId);
                }
            } catch (RemoteException e) {
                Log.w("ROOM", "Cannot unregister multi-instance invalidation callback", e);
            }
            this.appContext.unbindService(this.serviceConnection);
        }
    }

    public final Flow createFlow(final String[] resolvedTableNames) {
        Intrinsics.checkNotNullParameter(resolvedTableNames, "resolvedTableNames");
        final MutableSharedFlow mutableSharedFlow = this.invalidatedTables;
        return new Flow() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object objCollect = mutableSharedFlow.collect(new C07552(flowCollector, resolvedTableNames), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2 */
            public static final class C07552 implements FlowCollector {
                final /* synthetic */ String[] $resolvedTableNames$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                public static final class AnonymousClass1 extends ContinuationImpl {
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C07552.this.emit(null, this);
                    }
                }

                public C07552(FlowCollector flowCollector, String[] strArr) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$resolvedTableNames$inlined = strArr;
                }

                /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
                    if (continuation instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) continuation;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(continuation);
                        }
                    }
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        Set set = (Set) obj;
                        Set setCreateSetBuilder = SetsKt.createSetBuilder();
                        for (String str : this.$resolvedTableNames$inlined) {
                            Iterator it = set.iterator();
                            while (it.hasNext()) {
                                if (StringsKt.equals(str, (String) it.next(), true)) {
                                    setCreateSetBuilder.add(str);
                                }
                            }
                        }
                        Set setBuild = SetsKt.build(setCreateSetBuilder);
                        if (setBuild.isEmpty()) {
                            setBuild = null;
                        }
                        if (setBuild != null) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(setBuild, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i2 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }
        };
    }
}
