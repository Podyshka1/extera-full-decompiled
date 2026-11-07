package androidx.view;

import androidx.view.Lifecycle;
import com.android.dx.dex.code.CstInsn$$ExternalSyntheticBUOutline0;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import okhttp3.OkHttpClient$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0016\u0018\u0000 <2\u00020\u0001:\u0002=<B\u0019\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0006\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0013\u0010\bJ\u0017\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0014\u0010\bJ\u000f\u0010\u0015\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017¢\u0006\u0004\b!\u0010 R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\"R\"\u0010%\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020$0#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u001a\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010(R\u0016\u0010*\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u0010,\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010\"R\u0016\u0010-\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010\"R\u001c\u0010/\u001a\b\u0012\u0004\u0012\u00020\t0.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0016\u00101\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\t038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0014\u00106\u001a\u00020\u00048BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b6\u00107R$\u0010;\u001a\u00020\t2\u0006\u00101\u001a\u00020\t8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b8\u00109\"\u0004\b:\u0010\r¨\u0006>"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry;", "Landroidx/lifecycle/Lifecycle;", "Landroidx/lifecycle/LifecycleOwner;", "provider", _UrlKt.FRAGMENT_ENCODE_SET, "enforceMainThread", "<init>", "(Landroidx/lifecycle/LifecycleOwner;Z)V", "(Landroidx/lifecycle/LifecycleOwner;)V", "Landroidx/lifecycle/Lifecycle$State;", "next", _UrlKt.FRAGMENT_ENCODE_SET, "moveToState", "(Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleObserver;", "observer", "calculateTargetState", "(Landroidx/lifecycle/LifecycleObserver;)Landroidx/lifecycle/Lifecycle$State;", "lifecycleOwner", "forwardPass", "backwardPass", "sync", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "methodName", "enforceMainThreadIfNeeded", "(Ljava/lang/String;)V", "Landroidx/lifecycle/Lifecycle$Event;", "event", "handleLifecycleEvent", "(Landroidx/lifecycle/Lifecycle$Event;)V", "addObserver", "(Landroidx/lifecycle/LifecycleObserver;)V", "removeObserver", "Z", "Landroidx/lifecycle/FastSafeIterableMap;", "Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", "observerMap", "Landroidx/lifecycle/FastSafeIterableMap;", "Landroidx/lifecycle/WeakReference;", "Landroidx/lifecycle/WeakReference;", _UrlKt.FRAGMENT_ENCODE_SET, "addingObserverCounter", "I", "handlingEvent", "newEventOccurred", _UrlKt.FRAGMENT_ENCODE_SET, "parentStates", "Ljava/util/List;", "state", "Landroidx/lifecycle/Lifecycle$State;", "Lkotlinx/coroutines/flow/MutableStateFlow;", "_currentStateFlow", "Lkotlinx/coroutines/flow/MutableStateFlow;", "isSynced", "()Z", "getCurrentState", "()Landroidx/lifecycle/Lifecycle$State;", "setCurrentState", "currentState", "Companion", "ObserverWithState", "lifecycle-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLifecycleRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LifecycleRegistry.kt\nandroidx/lifecycle/LifecycleRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,445:1\n1#2:446\n*E\n"})
public class LifecycleRegistry extends Lifecycle {
    private final MutableStateFlow<Lifecycle.State> _currentStateFlow;
    private int addingObserverCounter;
    private final boolean enforceMainThread;
    private boolean handlingEvent;
    private final WeakReference<LifecycleOwner> lifecycleOwner;
    private boolean newEventOccurred;
    private FastSafeIterableMap<LifecycleObserver, ObserverWithState> observerMap;
    private List<Lifecycle.State> parentStates;
    private Lifecycle.State state;

    private LifecycleRegistry(LifecycleOwner lifecycleOwner, boolean z) {
        this.enforceMainThread = z;
        this.observerMap = new FastSafeIterableMap<>();
        this.lifecycleOwner = new WeakReference<>(lifecycleOwner);
        this.parentStates = new ArrayList();
        Lifecycle.State state = Lifecycle.State.INITIALIZED;
        this.state = state;
        this._currentStateFlow = StateFlowKt.MutableStateFlow(state);
    }

    public LifecycleRegistry(LifecycleOwner lifecycleOwner) {
        this(lifecycleOwner, true);
    }

    @Override // androidx.view.Lifecycle
    /* JADX INFO: renamed from: getCurrentState, reason: from getter */
    public Lifecycle.State getState() {
        return this.state;
    }

    public void setCurrentState(Lifecycle.State state) {
        enforceMainThreadIfNeeded("setCurrentState");
        moveToState(state);
    }

    public void handleLifecycleEvent(Lifecycle.Event event) {
        enforceMainThreadIfNeeded("handleLifecycleEvent");
        moveToState(event.getTargetState());
    }

    private final void moveToState(Lifecycle.State next) {
        if (this.state == next) {
            return;
        }
        LifecycleRegistryKt.checkLifecycleStateTransition(this.lifecycleOwner.get(), this.state, next);
        this.state = next;
        if (this.handlingEvent || this.addingObserverCounter != 0) {
            this.newEventOccurred = true;
            return;
        }
        this.handlingEvent = true;
        sync();
        this.handlingEvent = false;
        if (this.state == Lifecycle.State.DESTROYED) {
            this.observerMap = new FastSafeIterableMap<>();
        }
    }

    private final boolean isSynced() {
        if (this.observerMap.size() == 0) {
            return true;
        }
        Lifecycle.State state = this.observerMap.first().getValue().getState();
        Lifecycle.State state2 = this.observerMap.last().getValue().getState();
        return state == state2 && this.state == state2;
    }

    private final Lifecycle.State calculateTargetState(LifecycleObserver observer) {
        ObserverWithState value;
        Map.Entry<LifecycleObserver, ObserverWithState> entryCeil = this.observerMap.ceil(observer);
        Lifecycle.State state = null;
        Lifecycle.State state2 = (entryCeil == null || (value = entryCeil.getValue()) == null) ? null : value.getState();
        if (!this.parentStates.isEmpty()) {
            state = this.parentStates.get(r0.size() - 1);
        }
        return LifecycleRegistryKt.min(LifecycleRegistryKt.min(this.state, state2), state);
    }

    @Override // androidx.view.Lifecycle
    public void addObserver(LifecycleObserver observer) {
        LifecycleOwner lifecycleOwner;
        enforceMainThreadIfNeeded("addObserver");
        Lifecycle.State state = this.state;
        Lifecycle.State state2 = Lifecycle.State.DESTROYED;
        if (state != state2) {
            state2 = Lifecycle.State.INITIALIZED;
        }
        ObserverWithState observerWithState = new ObserverWithState(observer, state2);
        if (this.observerMap.putIfAbsent(observer, observerWithState) == null && (lifecycleOwner = this.lifecycleOwner.get()) != null) {
            boolean z = this.addingObserverCounter != 0 || this.handlingEvent;
            Lifecycle.State stateCalculateTargetState = calculateTargetState(observer);
            this.addingObserverCounter++;
            while (observerWithState.getState().compareTo(stateCalculateTargetState) < 0 && this.observerMap.contains(observer)) {
                this.parentStates.add(observerWithState.getState());
                Lifecycle.Event eventUpFrom = Lifecycle.Event.INSTANCE.upFrom(observerWithState.getState());
                if (eventUpFrom == null) {
                    CstInsn$$ExternalSyntheticBUOutline0.m225m("no event up from ", observerWithState.getState());
                    return;
                } else {
                    observerWithState.dispatchEvent(lifecycleOwner, eventUpFrom);
                    CollectionsKt.removeLastOrNull(this.parentStates);
                    stateCalculateTargetState = calculateTargetState(observer);
                }
            }
            if (!z) {
                sync();
            }
            this.addingObserverCounter--;
        }
    }

    @Override // androidx.view.Lifecycle
    public void removeObserver(LifecycleObserver observer) {
        enforceMainThreadIfNeeded("removeObserver");
        this.observerMap.remove(observer);
    }

    private final void forwardPass(final LifecycleOwner lifecycleOwner) {
        this.observerMap.forEachWithAdditions(new Function1() { // from class: androidx.lifecycle.LifecycleRegistry$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LifecycleRegistry.m1872$r8$lambda$sIRNHHyujojKOxRELgp4WNMal8(this.f$0, lifecycleOwner, (Map.Entry) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$sIRNHHyujojK-OxRELgp4WNMal8, reason: not valid java name */
    public static Unit m1872$r8$lambda$sIRNHHyujojKOxRELgp4WNMal8(LifecycleRegistry lifecycleRegistry, LifecycleOwner lifecycleOwner, Map.Entry entry) {
        LifecycleObserver lifecycleObserver = (LifecycleObserver) entry.getKey();
        ObserverWithState observerWithState = (ObserverWithState) entry.getValue();
        while (observerWithState.getState().compareTo(lifecycleRegistry.state) < 0 && !lifecycleRegistry.newEventOccurred && lifecycleRegistry.observerMap.contains(lifecycleObserver)) {
            lifecycleRegistry.parentStates.add(observerWithState.getState());
            Lifecycle.Event eventUpFrom = Lifecycle.Event.INSTANCE.upFrom(observerWithState.getState());
            if (eventUpFrom == null) {
                OkHttpClient$$ExternalSyntheticBUOutline0.m950m("no event up from ", observerWithState.getState());
                return null;
            }
            observerWithState.dispatchEvent(lifecycleOwner, eventUpFrom);
            CollectionsKt.removeLastOrNull(lifecycleRegistry.parentStates);
        }
        return Unit.INSTANCE;
    }

    private final void backwardPass(final LifecycleOwner lifecycleOwner) {
        this.observerMap.forEachReversed(new Function1() { // from class: androidx.lifecycle.LifecycleRegistry$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return LifecycleRegistry.m1871$r8$lambda$0D5eFGnUA40HVp9uW0LVcCRwjE(this.f$0, lifecycleOwner, (Map.Entry) obj);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$0D5eFGnUA40HVp-9uW0LVcCRwjE, reason: not valid java name */
    public static Unit m1871$r8$lambda$0D5eFGnUA40HVp9uW0LVcCRwjE(LifecycleRegistry lifecycleRegistry, LifecycleOwner lifecycleOwner, Map.Entry entry) {
        LifecycleObserver lifecycleObserver = (LifecycleObserver) entry.getKey();
        ObserverWithState observerWithState = (ObserverWithState) entry.getValue();
        while (observerWithState.getState().compareTo(lifecycleRegistry.state) > 0 && !lifecycleRegistry.newEventOccurred && lifecycleRegistry.observerMap.contains(lifecycleObserver)) {
            Lifecycle.Event eventDownFrom = Lifecycle.Event.INSTANCE.downFrom(observerWithState.getState());
            if (eventDownFrom == null) {
                OkHttpClient$$ExternalSyntheticBUOutline0.m950m("no event down from ", observerWithState.getState());
                return null;
            }
            lifecycleRegistry.parentStates.add(eventDownFrom.getTargetState());
            observerWithState.dispatchEvent(lifecycleOwner, eventDownFrom);
            CollectionsKt.removeLastOrNull(lifecycleRegistry.parentStates);
        }
        return Unit.INSTANCE;
    }

    private final void sync() {
        LifecycleOwner lifecycleOwner = this.lifecycleOwner.get();
        if (lifecycleOwner == null) {
            Segment$$ExternalSyntheticBUOutline1.m973m("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
            return;
        }
        LifecycleOwner lifecycleOwner2 = lifecycleOwner;
        while (!isSynced()) {
            this.newEventOccurred = false;
            if (this.state.compareTo(this.observerMap.first().getValue().getState()) < 0) {
                backwardPass(lifecycleOwner2);
            }
            Map.Entry<LifecycleObserver, ObserverWithState> entryLastOrNull = this.observerMap.lastOrNull();
            if (!this.newEventOccurred && entryLastOrNull != null && this.state.compareTo(entryLastOrNull.getValue().getState()) > 0) {
                forwardPass(lifecycleOwner2);
            }
        }
        this.newEventOccurred = false;
        this._currentStateFlow.setValue(getState());
    }

    private final void enforceMainThreadIfNeeded(String methodName) {
        if (!this.enforceMainThread || LifecycleRegistry_androidKt.isMainThread()) {
            return;
        }
        LifecycleRegistry$$ExternalSyntheticBUOutline0.m152m("Method ", methodName, " must be called on the main thread");
    }

    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\r\u001a\u00020\f2\b\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000eR\"\u0010\u000f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\"\u0010\u0016\u001a\u00020\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001c"}, d2 = {"Landroidx/lifecycle/LifecycleRegistry$ObserverWithState;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/lifecycle/LifecycleObserver;", "observer", "Landroidx/lifecycle/Lifecycle$State;", "initialState", "<init>", "(Landroidx/lifecycle/LifecycleObserver;Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleOwner;", "owner", "Landroidx/lifecycle/Lifecycle$Event;", "event", _UrlKt.FRAGMENT_ENCODE_SET, "dispatchEvent", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "state", "Landroidx/lifecycle/Lifecycle$State;", "getState", "()Landroidx/lifecycle/Lifecycle$State;", "setState", "(Landroidx/lifecycle/Lifecycle$State;)V", "Landroidx/lifecycle/LifecycleEventObserver;", "lifecycleObserver", "Landroidx/lifecycle/LifecycleEventObserver;", "getLifecycleObserver", "()Landroidx/lifecycle/LifecycleEventObserver;", "setLifecycleObserver", "(Landroidx/lifecycle/LifecycleEventObserver;)V", "lifecycle-runtime"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ObserverWithState {
        private LifecycleEventObserver lifecycleObserver;
        private Lifecycle.State state;

        public ObserverWithState(LifecycleObserver lifecycleObserver, Lifecycle.State state) {
            this.state = state;
            this.lifecycleObserver = Lifecycling.lifecycleEventObserver(lifecycleObserver);
        }

        public final Lifecycle.State getState() {
            return this.state;
        }

        public final void dispatchEvent(LifecycleOwner owner, Lifecycle.Event event) {
            Lifecycle.State targetState = event.getTargetState();
            this.state = LifecycleRegistryKt.min(this.state, targetState);
            this.lifecycleObserver.onStateChanged(owner, event);
            this.state = targetState;
        }
    }
}
