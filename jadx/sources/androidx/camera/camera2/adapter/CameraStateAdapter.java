package androidx.camera.camera2.adapter;

import android.os.Looper;
import android.util.Log;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.GraphState;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.core.util.Consumer;
import androidx.lifecycle.MutableLiveData;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraStateAdapter {
    public static final Companion Companion = new Companion(null);
    private final Map cameraStateListeners;
    private CameraInternal.State currentCameraInternalState;
    private CameraState.StateError currentCameraStateError;
    private CameraGraph currentGraph;
    private boolean isRemoved;
    private final Object lock = new Object();
    private final LiveDataObservable cameraInternalState = new LiveDataObservable();
    private final MutableLiveData cameraState = new MutableLiveData();

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CameraInternal.State.values().length];
            try {
                iArr[CameraInternal.State.CLOSED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CameraInternal.State.OPENING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CameraInternal.State.OPEN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CameraInternal.State.CLOSING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CameraInternal.State.PENDING_OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CameraStateAdapter() {
        CameraInternal.State state = CameraInternal.State.CLOSED;
        this.currentCameraInternalState = state;
        this.cameraStateListeners = new LinkedHashMap();
        postCameraState$default(this, state, null, 2, null);
    }

    public final MutableLiveData getCameraState$camera_camera2() {
        return this.cameraState;
    }

    public final void onRemoved() {
        CameraState.StateError stateErrorCreate = CameraState.StateError.create(8);
        Intrinsics.checkNotNullExpressionValue(stateErrorCreate, "create(...)");
        synchronized (this.lock) {
            try {
                if (this.isRemoved) {
                    return;
                }
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Camera is removed, forcing state to CLOSED.");
                }
                this.isRemoved = true;
                CameraInternal.State state = CameraInternal.State.CLOSED;
                this.currentCameraInternalState = state;
                this.currentCameraStateError = stateErrorCreate;
                postCameraState(state, stateErrorCreate);
                this.currentGraph = null;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onGraphUpdated(CameraGraph cameraGraph) {
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        synchronized (this.lock) {
            try {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isDebugEnabled("CXCP")) {
                    Log.d(Camera2Logger.TRUNCATED_TAG, "Camera graph updated from " + this.currentGraph + " to " + cameraGraph);
                }
                CameraInternal.State state = this.currentCameraInternalState;
                CameraInternal.State state2 = CameraInternal.State.CLOSED;
                if (state != state2) {
                    postCameraState$default(this, CameraInternal.State.CLOSING, null, 2, null);
                    postCameraState$default(this, state2, null, 2, null);
                }
                this.currentGraph = cameraGraph;
                this.currentCameraInternalState = state2;
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void onGraphStateUpdated(CameraGraph cameraGraph, GraphState graphState) {
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        Intrinsics.checkNotNullParameter(graphState, "graphState");
        synchronized (this.lock) {
            if (this.isRemoved) {
                Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
                if (Logger.isWarnEnabled("CXCP")) {
                    Log.w(Camera2Logger.TRUNCATED_TAG, "Ignoring graph state update " + graphState + " on removed camera.");
                }
                return;
            }
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, cameraGraph + " state updated to " + graphState);
            }
            handleStateTransition(cameraGraph, graphState);
            Unit unit = Unit.INSTANCE;
        }
    }

    private final void handleStateTransition(CameraGraph cameraGraph, GraphState graphState) {
        if (!Intrinsics.areEqual(cameraGraph, this.currentGraph)) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "Ignored stale transition " + graphState + " for " + cameraGraph);
                return;
            }
            return;
        }
        CombinedCameraState combinedCameraStateCalculateNextState$camera_camera2 = calculateNextState$camera_camera2(this.currentCameraInternalState, graphState);
        if (combinedCameraStateCalculateNextState$camera_camera2 == null) {
            Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
            if (Logger.isWarnEnabled("CXCP")) {
                Log.w(Camera2Logger.TRUNCATED_TAG, "Impermissible state transition: current camera internal state: " + this.currentCameraInternalState + ", received graph state: " + graphState);
                return;
            }
            return;
        }
        this.currentCameraInternalState = combinedCameraStateCalculateNextState$camera_camera2.getState();
        this.currentCameraStateError = combinedCameraStateCalculateNextState$camera_camera2.getError();
        Camera2Logger camera2Logger3 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "Updated current camera internal state to " + combinedCameraStateCalculateNextState$camera_camera2);
        }
        postCameraState(this.currentCameraInternalState, this.currentCameraStateError);
    }

    static /* synthetic */ void postCameraState$default(CameraStateAdapter cameraStateAdapter, CameraInternal.State state, CameraState.StateError stateError, int i, Object obj) {
        if ((i & 2) != 0) {
            stateError = null;
        }
        cameraStateAdapter.postCameraState(state, stateError);
    }

    private final void postCameraState(CameraInternal.State state, CameraState.StateError stateError) {
        List<Map.Entry> list;
        this.cameraInternalState.postValue(state);
        Companion companion = Companion;
        final CameraState cameraStateCreate = CameraState.create(companion.toCameraState$camera_camera2(state), stateError);
        Intrinsics.checkNotNullExpressionValue(cameraStateCreate, "create(...)");
        companion.setOrPostValue$camera_camera2(this.cameraState, cameraStateCreate);
        synchronized (this.lock) {
            list = CollectionsKt.toList(this.cameraStateListeners.entrySet());
        }
        for (Map.Entry entry : list) {
            final Consumer consumer = (Consumer) entry.getKey();
            ((Executor) entry.getValue()).execute(new Runnable() { // from class: androidx.camera.camera2.adapter.CameraStateAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    consumer.accept(cameraStateCreate);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CombinedCameraState calculateNextState$camera_camera2(CameraInternal.State currentState, GraphState graphState) {
        Intrinsics.checkNotNullParameter(currentState, "currentState");
        Intrinsics.checkNotNullParameter(graphState, "graphState");
        int i = WhenMappings.$EnumSwitchMapping$0[currentState.ordinal()];
        int i2 = 2;
        CameraState.StateError stateError = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        Object[] objArr5 = 0;
        Object[] objArr6 = 0;
        Object[] objArr7 = 0;
        Object[] objArr8 = 0;
        Object[] objArr9 = 0;
        Object[] objArr10 = 0;
        Object[] objArr11 = 0;
        Object[] objArr12 = 0;
        Object[] objArr13 = 0;
        Object[] objArr14 = 0;
        Object[] objArr15 = 0;
        Object[] objArr16 = 0;
        Object[] objArr17 = 0;
        Object[] objArr18 = 0;
        Object[] objArr19 = 0;
        Object[] objArr20 = 0;
        Object[] objArr21 = 0;
        if (i == 1) {
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarting.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPENING, objArr4 == true ? 1 : 0, i2, objArr3 == true ? 1 : 0);
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarted.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPEN, objArr2 == true ? 1 : 0, i2, objArr == true ? 1 : 0);
            }
            return null;
        }
        if (i == 2) {
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarted.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPEN, objArr10 == true ? 1 : 0, i2, objArr9 == true ? 1 : 0);
            }
            if (graphState instanceof GraphState.GraphStateError) {
                GraphState.GraphStateError graphStateError = (GraphState.GraphStateError) graphState;
                if (graphStateError.getWillAttemptRetry()) {
                    return new CombinedCameraState(CameraInternal.State.OPENING, Companion.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError.m1649getCameraErrorv7Vf74A()));
                }
                Companion companion = Companion;
                if (companion.m1383isRecoverableError90vkdD0$camera_camera2(graphStateError.m1649getCameraErrorv7Vf74A())) {
                    return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError.m1649getCameraErrorv7Vf74A()));
                }
                return new CombinedCameraState(CameraInternal.State.CLOSING, companion.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError.m1649getCameraErrorv7Vf74A()));
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopping.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, objArr8 == true ? 1 : 0, i2, objArr7 == true ? 1 : 0);
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr6 == true ? 1 : 0, i2, objArr5 == true ? 1 : 0);
            }
            return null;
        }
        if (i == 3) {
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopping.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, objArr14 == true ? 1 : 0, i2, objArr13 == true ? 1 : 0);
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr12 == true ? 1 : 0, i2, objArr11 == true ? 1 : 0);
            }
            if (!(graphState instanceof GraphState.GraphStateError)) {
                return null;
            }
            Companion companion2 = Companion;
            GraphState.GraphStateError graphStateError2 = (GraphState.GraphStateError) graphState;
            if (companion2.m1383isRecoverableError90vkdD0$camera_camera2(graphStateError2.m1649getCameraErrorv7Vf74A())) {
                return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion2.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError2.m1649getCameraErrorv7Vf74A()));
            }
            return new CombinedCameraState(CameraInternal.State.CLOSED, companion2.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError2.m1649getCameraErrorv7Vf74A()));
        }
        if (i == 4) {
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr18 == true ? 1 : 0, i2, objArr17 == true ? 1 : 0);
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarting.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPENING, objArr16 == true ? 1 : 0, i2, objArr15 == true ? 1 : 0);
            }
            if (graphState instanceof GraphState.GraphStateError) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, Companion.m1384toCameraStateError90vkdD0$camera_camera2(((GraphState.GraphStateError) graphState).m1649getCameraErrorv7Vf74A()));
            }
            return null;
        }
        if (i != 5) {
            return null;
        }
        if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarting.INSTANCE)) {
            return new CombinedCameraState(CameraInternal.State.OPENING, stateError, i2, objArr21 == true ? 1 : 0);
        }
        if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarted.INSTANCE)) {
            return new CombinedCameraState(CameraInternal.State.OPEN, objArr20 == true ? 1 : 0, i2, objArr19 == true ? 1 : 0);
        }
        if (!(graphState instanceof GraphState.GraphStateError)) {
            return null;
        }
        Companion companion3 = Companion;
        GraphState.GraphStateError graphStateError3 = (GraphState.GraphStateError) graphState;
        if (companion3.m1383isRecoverableError90vkdD0$camera_camera2(graphStateError3.m1649getCameraErrorv7Vf74A())) {
            return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion3.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError3.m1649getCameraErrorv7Vf74A()));
        }
        return new CombinedCameraState(CameraInternal.State.CLOSED, companion3.m1384toCameraStateError90vkdD0$camera_camera2(graphStateError3.m1649getCameraErrorv7Vf74A()));
    }

    public static final class CombinedCameraState {
        private final CameraState.StateError error;
        private final CameraInternal.State state;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CombinedCameraState)) {
                return false;
            }
            CombinedCameraState combinedCameraState = (CombinedCameraState) obj;
            return this.state == combinedCameraState.state && Intrinsics.areEqual(this.error, combinedCameraState.error);
        }

        public int hashCode() {
            int iHashCode = this.state.hashCode() * 31;
            CameraState.StateError stateError = this.error;
            return iHashCode + (stateError == null ? 0 : stateError.hashCode());
        }

        public String toString() {
            return "CombinedCameraState(state=" + this.state + ", error=" + this.error + ')';
        }

        public CombinedCameraState(CameraInternal.State state, CameraState.StateError stateError) {
            Intrinsics.checkNotNullParameter(state, "state");
            this.state = state;
            this.error = stateError;
        }

        public /* synthetic */ CombinedCameraState(CameraInternal.State state, CameraState.StateError stateError, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(state, (i & 2) != 0 ? null : stateError);
        }

        public final CameraInternal.State getState() {
            return this.state;
        }

        public final CameraState.StateError getError() {
            return this.error;
        }
    }

    public static final class Companion {

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[CameraInternal.State.values().length];
                try {
                    iArr[CameraInternal.State.CLOSED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[CameraInternal.State.OPENING.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[CameraInternal.State.OPEN.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[CameraInternal.State.CLOSING.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[CameraInternal.State.PENDING_OPEN.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x001a  */
        /* JADX INFO: renamed from: toCameraStateError-90vkdD0$camera_camera2, reason: not valid java name */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final CameraState.StateError m1384toCameraStateError90vkdD0$camera_camera2(int i) {
            CameraError.Companion companion = CameraError.Companion;
            int i2 = 6;
            if (!CameraError.m1553equalsimpl0(i, companion.m1573getERROR_UNDETERMINEDv7Vf74A())) {
                if (!CameraError.m1553equalsimpl0(i, companion.m1564getERROR_CAMERA_IN_USEv7Vf74A())) {
                    if (CameraError.m1553equalsimpl0(i, companion.m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                        i2 = 1;
                    } else if (CameraError.m1553equalsimpl0(i, companion.m1562getERROR_CAMERA_DISABLEDv7Vf74A())) {
                        i2 = 5;
                    } else if (CameraError.m1553equalsimpl0(i, companion.m1561getERROR_CAMERA_DEVICEv7Vf74A())) {
                        i2 = 3;
                    } else if (!CameraError.m1553equalsimpl0(i, companion.m1568getERROR_CAMERA_SERVICEv7Vf74A())) {
                        if (CameraError.m1553equalsimpl0(i, companion.m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A())) {
                            i2 = 2;
                        } else if (!CameraError.m1553equalsimpl0(i, companion.m1571getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A()) && !CameraError.m1553equalsimpl0(i, companion.m1572getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                            if (CameraError.m1553equalsimpl0(i, companion.m1570getERROR_GRAPH_CONFIGv7Vf74A())) {
                                i2 = 4;
                            } else if (CameraError.m1553equalsimpl0(i, companion.m1569getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                                i2 = 7;
                            } else if (!CameraError.m1553equalsimpl0(i, companion.m1574getERROR_UNKNOWN_EXCEPTIONv7Vf74A()) && !CameraError.m1553equalsimpl0(i, companion.m1566getERROR_CAMERA_OPENERv7Vf74A()) && !CameraError.m1553equalsimpl0(i, companion.m1567getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A())) {
                                throw new IllegalArgumentException("Unexpected CameraError: " + ((Object) CameraError.m1556toStringimpl(i)));
                            }
                        }
                    }
                }
            }
            CameraState.StateError stateErrorCreate = CameraState.StateError.create(i2);
            Intrinsics.checkNotNullExpressionValue(stateErrorCreate, "create(...)");
            return stateErrorCreate;
        }

        public final CameraState.Type toCameraState$camera_camera2(CameraInternal.State state) {
            Intrinsics.checkNotNullParameter(state, "<this>");
            int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
            if (i == 1) {
                return CameraState.Type.CLOSED;
            }
            if (i == 2) {
                return CameraState.Type.OPENING;
            }
            if (i == 3) {
                return CameraState.Type.OPEN;
            }
            if (i == 4) {
                return CameraState.Type.CLOSING;
            }
            if (i == 5) {
                return CameraState.Type.PENDING_OPEN;
            }
            throw new IllegalArgumentException("Unexpected CameraInternal state: " + state);
        }

        /* JADX INFO: renamed from: isRecoverableError-90vkdD0$camera_camera2, reason: not valid java name */
        public final boolean m1383isRecoverableError90vkdD0$camera_camera2(int i) {
            CameraError.Companion companion = CameraError.Companion;
            return CameraError.m1553equalsimpl0(i, companion.m1563getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1564getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1565getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m1553equalsimpl0(i, companion.m1561getERROR_CAMERA_DEVICEv7Vf74A());
        }

        public final void setOrPostValue$camera_camera2(MutableLiveData mutableLiveData, CameraState cameraState) {
            Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
            Intrinsics.checkNotNullParameter(cameraState, "cameraState");
            if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                mutableLiveData.setValue(cameraState);
            } else {
                mutableLiveData.postValue(cameraState);
            }
        }
    }
}
