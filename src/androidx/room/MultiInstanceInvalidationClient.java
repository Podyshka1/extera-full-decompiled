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
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000}\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003*\u00010\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\fJ)\u0010\u0016\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00150\u00142\u000e\u0010\u0013\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0012¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001c\u0010\u001f\u001a\n \u001e*\u0004\u0018\u00010\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0014\u0010%\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0016\u0010(\u001a\u00020'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010+\u001a\u0004\u0018\u00010*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R \u0010.\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00150-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00101\u001a\u0002008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0014\u00104\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00107\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u00069"}, d2 = {"Landroidx/room/MultiInstanceInvalidationClient;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/content/Context;", "context", _UrlKt.FRAGMENT_ENCODE_SET, "name", "Landroidx/room/InvalidationTracker;", "invalidationTracker", "<init>", "(Landroid/content/Context;Ljava/lang/String;Landroidx/room/InvalidationTracker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "registerCallback", "()V", "Landroid/content/Intent;", "serviceIntent", "start", "(Landroid/content/Intent;)V", "stop", _UrlKt.FRAGMENT_ENCODE_SET, "resolvedTableNames", "Lkotlinx/coroutines/flow/Flow;", _UrlKt.FRAGMENT_ENCODE_SET, "createFlow", "([Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;", "Ljava/lang/String;", "getName", "()Ljava/lang/String;", "Landroidx/room/InvalidationTracker;", "getInvalidationTracker", "()Landroidx/room/InvalidationTracker;", "kotlin.jvm.PlatformType", "appContext", "Landroid/content/Context;", "Lkotlinx/coroutines/CoroutineScope;", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "stopped", "Ljava/util/concurrent/atomic/AtomicBoolean;", _UrlKt.FRAGMENT_ENCODE_SET, "clientId", "I", "Landroidx/room/IMultiInstanceInvalidationService;", "invalidationService", "Landroidx/room/IMultiInstanceInvalidationService;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "invalidatedTables", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "androidx/room/MultiInstanceInvalidationClient$observer$1", "observer", "Landroidx/room/MultiInstanceInvalidationClient$observer$1;", "Landroidx/room/IMultiInstanceInvalidationCallback;", "invalidationCallback", "Landroidx/room/IMultiInstanceInvalidationCallback;", "Landroid/content/ServiceConnection;", "serviceConnection", "Landroid/content/ServiceConnection;", "room-runtime"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMultiInstanceInvalidationClient.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 4 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 5 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,146:1\n1#2:147\n56#3:148\n59#3:152\n46#4:149\n51#4:151\n105#5:150\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n133#1:148\n133#1:152\n133#1:149\n133#1:151\n133#1:150\n*E\n"})
public final class MultiInstanceInvalidationClient {
    private final Context appContext;
    private int clientId;
    private final CoroutineScope coroutineScope;
    private final IMultiInstanceInvalidationCallback invalidationCallback;
    private IMultiInstanceInvalidationService invalidationService;
    private final InvalidationTracker invalidationTracker;
    private final String name;
    private final MultiInstanceInvalidationClient$observer$1 observer;
    private final ServiceConnection serviceConnection;
    private final AtomicBoolean stopped = new AtomicBoolean(true);
    private final MutableSharedFlow<Set<String>> invalidatedTables = SharedFlowKt.MutableSharedFlow(0, 0, BufferOverflow.SUSPEND);

    /* JADX WARN: Type inference failed for: r2v3, types: [androidx.room.MultiInstanceInvalidationClient$observer$1] */
    public MultiInstanceInvalidationClient(Context context, String str, InvalidationTracker invalidationTracker) {
        this.name = str;
        this.invalidationTracker = invalidationTracker;
        this.appContext = context.getApplicationContext();
        this.coroutineScope = invalidationTracker.getDatabase().getCoroutineScope();
        final String[] tableNames$room_runtime = invalidationTracker.getTableNames();
        this.observer = new InvalidationTracker.Observer(tableNames$room_runtime) { // from class: androidx.room.MultiInstanceInvalidationClient$observer$1
            @Override // androidx.room.InvalidationTracker.Observer
            public boolean isRemote$room_runtime() {
                return true;
            }

            @Override // androidx.room.InvalidationTracker.Observer
            public void onInvalidated(Set<String> tables) {
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
                BuildersKt__Builders_commonKt.launch$default(this.this$0.coroutineScope, null, null, new C0748x5cbf7351(tables, this.this$0, null), 3, null);
            }
        };
        this.serviceConnection = new ServiceConnection() { // from class: androidx.room.MultiInstanceInvalidationClient$serviceConnection$1
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                this.this$0.invalidationService = IMultiInstanceInvalidationService.Stub.asInterface(service);
                this.this$0.registerCallback();
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
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

    public final Flow<Set<String>> createFlow(final String[] resolvedTableNames) {
        final MutableSharedFlow<Set<String>> mutableSharedFlow = this.invalidatedTables;
        return new Flow<Set<? extends String>>() { // from class: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Set<? extends String>> flowCollector, Continuation continuation) {
                Object objCollect = mutableSharedFlow.collect(new C07472(flowCollector, resolvedTableNames), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2 */
            @Metadata(d1 = {"\u0000\f\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u0000\"\u0004\b\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"T", "R", "value", _UrlKt.FRAGMENT_ENCODE_SET, "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "<anonymous>"}, m754k = 3, mv = {2, 1, 0})
            @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n57#2:219\n58#2:235\n134#3,2:220\n136#3:223\n137#3,4:225\n141#3:230\n142#3,2:232\n13472#4:222\n13473#4:231\n1869#5:224\n1870#5:229\n1#6:234\n*S KotlinDebug\n*F\n+ 1 MultiInstanceInvalidationClient.android.kt\nandroidx/room/MultiInstanceInvalidationClient\n*L\n135#1:222\n135#1:231\n136#1:224\n136#1:229\n*E\n"})
            public static final class C07472<T> implements FlowCollector {
                final /* synthetic */ String[] $resolvedTableNames$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                @Metadata(m754k = 3, mv = {2, 1, 0}, xi = 48)
                @DebugMetadata(m765c = "androidx.room.MultiInstanceInvalidationClient$createFlow$$inlined$mapNotNull$1$2", m766f = "MultiInstanceInvalidationClient.android.kt", m767i = {}, m768l = {235}, m769m = "emit", m770n = {}, m771s = {})
                @SourceDebugExtension({"SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1$emit$1\n*L\n1#1,218:1\n*E\n"})
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
                        return C07472.this.emit(null, this);
                    }
                }

                public C07472(FlowCollector flowCollector, String[] strArr) {
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
                            Iterator<T> it = set.iterator();
                            while (it.hasNext()) {
                                if (StringsKt.equals(str, (String) it.next(), true)) {
                                    setCreateSetBuilder.add(str);
                                }
                            }
                        }
                        Set setBuild = SetsKt.build(setCreateSetBuilder);
                        Set set2 = setBuild.isEmpty() ? null : setBuild;
                        if (set2 != null) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(set2, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i2 != 1) {
                            Segment$$ExternalSyntheticBUOutline1.m848m("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }
        };
    }
}
