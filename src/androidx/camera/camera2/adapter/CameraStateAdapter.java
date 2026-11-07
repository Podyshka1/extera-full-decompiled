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
import androidx.view.MutableLiveData;
import com.sun.jna.Native$$ExternalSyntheticBUOutline5;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Buffer$$ExternalSyntheticBUOutline4;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 52\u00020\u0001:\u000265B\t\b\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\t\u0010\nJ#\u0010\u000f\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\b¢\u0006\u0004\b\u0011\u0010\u0003J\u0015\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\nJ!\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001a\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u000b0\u001c8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R \u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&R\u0018\u0010'\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010)\u001a\u00020\u000b8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u0018\u0010+\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010.\u001a\u00020-8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b.\u0010/R&\u00103\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\"01\u0012\u0004\u0012\u000202008\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\b3\u00104¨\u00067"}, d2 = {"Landroidx/camera/camera2/adapter/CameraStateAdapter;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", "Landroidx/camera/camera2/pipe/GraphState;", "graphState", _UrlKt.FRAGMENT_ENCODE_SET, "handleStateTransition", "(Landroidx/camera/camera2/pipe/CameraGraph;Landroidx/camera/camera2/pipe/GraphState;)V", "Landroidx/camera/core/impl/CameraInternal$State;", "internalState", "Landroidx/camera/core/CameraState$StateError;", "stateError", "postCameraState", "(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V", "onRemoved", "onGraphUpdated", "(Landroidx/camera/camera2/pipe/CameraGraph;)V", "onGraphStateUpdated", "currentState", "Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;", "calculateNextState$camera_camera2", "(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/camera2/pipe/GraphState;)Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;", "calculateNextState", "lock", "Ljava/lang/Object;", "Landroidx/camera/core/impl/LiveDataObservable;", "cameraInternalState", "Landroidx/camera/core/impl/LiveDataObservable;", "getCameraInternalState$camera_camera2", "()Landroidx/camera/core/impl/LiveDataObservable;", "Landroidx/lifecycle/MutableLiveData;", "Landroidx/camera/core/CameraState;", "cameraState", "Landroidx/lifecycle/MutableLiveData;", "getCameraState$camera_camera2", "()Landroidx/lifecycle/MutableLiveData;", "currentGraph", "Landroidx/camera/camera2/pipe/CameraGraph;", "currentCameraInternalState", "Landroidx/camera/core/impl/CameraInternal$State;", "currentCameraStateError", "Landroidx/camera/core/CameraState$StateError;", _UrlKt.FRAGMENT_ENCODE_SET, "isRemoved", "Z", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/core/util/Consumer;", "Ljava/util/concurrent/Executor;", "cameraStateListeners", "Ljava/util/Map;", "Companion", "CombinedCameraState", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraStateAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraStateAdapter.kt\nandroidx/camera/camera2/adapter/CameraStateAdapter\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,301:1\n85#2,4:302\n85#2,4:306\n119#2,4:310\n85#2,4:314\n85#2,4:318\n119#2,4:322\n85#2,4:326\n1#3:330\n1869#4,2:331\n*S KotlinDebug\n*F\n+ 1 CameraStateAdapter.kt\nandroidx/camera/camera2/adapter/CameraStateAdapter\n*L\n72#1:302,4\n85#1:306,4\n98#1:310,4\n102#1:314,4\n110#1:318,4\n116#1:322,4\n127#1:326,4\n142#1:331,2\n*E\n"})
public final class CameraStateAdapter {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final Map<Consumer<CameraState>, Executor> cameraStateListeners;
    private CameraInternal.State currentCameraInternalState;
    private CameraState.StateError currentCameraStateError;
    private CameraGraph currentGraph;
    private boolean isRemoved;
    private final Object lock = new Object();
    private final LiveDataObservable<CameraInternal.State> cameraInternalState = new LiveDataObservable<>();
    private final MutableLiveData<CameraState> cameraState = new MutableLiveData<>();

    @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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

    public final MutableLiveData<CameraState> getCameraState$camera_camera2() {
        return this.cameraState;
    }

    public final void onRemoved() {
        CameraState.StateError stateErrorCreate = CameraState.StateError.create(8);
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

    public static /* synthetic */ void postCameraState$default(CameraStateAdapter cameraStateAdapter, CameraInternal.State state, CameraState.StateError stateError, int i, Object obj) {
        if ((i & 2) != 0) {
            stateError = null;
        }
        cameraStateAdapter.postCameraState(state, stateError);
    }

    private final void postCameraState(CameraInternal.State internalState, CameraState.StateError stateError) {
        List<Map.Entry> list;
        this.cameraInternalState.postValue(internalState);
        Companion companion = INSTANCE;
        final CameraState cameraStateCreate = CameraState.create(companion.toCameraState$camera_camera2(internalState), stateError);
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
                    return new CombinedCameraState(CameraInternal.State.OPENING, INSTANCE.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError.getCameraError()));
                }
                Companion companion = INSTANCE;
                if (companion.m1133isRecoverableError90vkdD0$camera_camera2(graphStateError.getCameraError())) {
                    return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError.getCameraError()));
                }
                return new CombinedCameraState(CameraInternal.State.CLOSING, companion.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError.getCameraError()));
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
            Companion companion2 = INSTANCE;
            GraphState.GraphStateError graphStateError2 = (GraphState.GraphStateError) graphState;
            if (companion2.m1133isRecoverableError90vkdD0$camera_camera2(graphStateError2.getCameraError())) {
                return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion2.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError2.getCameraError()));
            }
            return new CombinedCameraState(CameraInternal.State.CLOSED, companion2.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError2.getCameraError()));
        }
        if (i == 4) {
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStopped.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.CLOSED, objArr18 == true ? 1 : 0, i2, objArr17 == true ? 1 : 0);
            }
            if (Intrinsics.areEqual(graphState, GraphState.GraphStateStarting.INSTANCE)) {
                return new CombinedCameraState(CameraInternal.State.OPENING, objArr16 == true ? 1 : 0, i2, objArr15 == true ? 1 : 0);
            }
            if (graphState instanceof GraphState.GraphStateError) {
                return new CombinedCameraState(CameraInternal.State.CLOSING, INSTANCE.m1134toCameraStateError90vkdD0$camera_camera2(((GraphState.GraphStateError) graphState).getCameraError()));
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
        Companion companion3 = INSTANCE;
        GraphState.GraphStateError graphStateError3 = (GraphState.GraphStateError) graphState;
        if (companion3.m1133isRecoverableError90vkdD0$camera_camera2(graphStateError3.getCameraError())) {
            return new CombinedCameraState(CameraInternal.State.PENDING_OPEN, companion3.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError3.getCameraError()));
        }
        return new CombinedCameraState(CameraInternal.State.CLOSED, companion3.m1134toCameraStateError90vkdD0$camera_camera2(graphStateError3.getCameraError()));
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0080\b\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/adapter/CameraStateAdapter$CombinedCameraState;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/impl/CameraInternal$State;", "state", "Landroidx/camera/core/CameraState$StateError;", "error", "<init>", "(Landroidx/camera/core/impl/CameraInternal$State;Landroidx/camera/core/CameraState$StateError;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Landroidx/camera/core/impl/CameraInternal$State;", "getState", "()Landroidx/camera/core/impl/CameraInternal$State;", "Landroidx/camera/core/CameraState$StateError;", "getError", "()Landroidx/camera/core/CameraState$StateError;", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class CombinedCameraState {
        private final CameraState.StateError error;
        private final CameraInternal.State state;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof CombinedCameraState)) {
                return false;
            }
            CombinedCameraState combinedCameraState = (CombinedCameraState) other;
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

    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0013\u0010\u0004\u001a\u00020\u0005*\u00020\u0006H\u0000¢\u0006\u0004\b\u0007\u0010\bJ\u0011\u0010\t\u001a\u00020\n*\u00020\u000bH\u0000¢\u0006\u0002\b\fJ\u0017\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0006H\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u001f\u0010\u0012\u001a\u00020\u0013*\b\u0012\u0004\u0012\u00020\u00150\u00142\u0006\u0010\u0016\u001a\u00020\u0015H\u0000¢\u0006\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Landroidx/camera/camera2/adapter/CameraStateAdapter$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "toCameraStateError", "Landroidx/camera/core/CameraState$StateError;", "Landroidx/camera/camera2/pipe/CameraError;", "toCameraStateError-90vkdD0$camera_camera2", "(I)Landroidx/camera/core/CameraState$StateError;", "toCameraState", "Landroidx/camera/core/CameraState$Type;", "Landroidx/camera/core/impl/CameraInternal$State;", "toCameraState$camera_camera2", "isRecoverableError", _UrlKt.FRAGMENT_ENCODE_SET, "cameraError", "isRecoverableError-90vkdD0$camera_camera2", "(I)Z", "setOrPostValue", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/lifecycle/MutableLiveData;", "Landroidx/camera/core/CameraState;", "cameraState", "setOrPostValue$camera_camera2", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {

        @Metadata(m910k = 3, mv = {2, 1, 0}, xi = 48)
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
        public final CameraState.StateError m1134toCameraStateError90vkdD0$camera_camera2(int i) {
            CameraError.Companion companion = CameraError.INSTANCE;
            int i2 = 6;
            if (!CameraError.m1302equalsimpl0(i, companion.m1322getERROR_UNDETERMINEDv7Vf74A())) {
                if (!CameraError.m1302equalsimpl0(i, companion.m1313getERROR_CAMERA_IN_USEv7Vf74A())) {
                    if (CameraError.m1302equalsimpl0(i, companion.m1314getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A())) {
                        i2 = 1;
                    } else if (CameraError.m1302equalsimpl0(i, companion.m1311getERROR_CAMERA_DISABLEDv7Vf74A())) {
                        i2 = 5;
                    } else if (CameraError.m1302equalsimpl0(i, companion.m1310getERROR_CAMERA_DEVICEv7Vf74A())) {
                        i2 = 3;
                    } else if (!CameraError.m1302equalsimpl0(i, companion.m1317getERROR_CAMERA_SERVICEv7Vf74A())) {
                        if (CameraError.m1302equalsimpl0(i, companion.m1312getERROR_CAMERA_DISCONNECTEDv7Vf74A())) {
                            i2 = 2;
                        } else if (!CameraError.m1302equalsimpl0(i, companion.m1320getERROR_ILLEGAL_ARGUMENT_EXCEPTIONv7Vf74A()) && !CameraError.m1302equalsimpl0(i, companion.m1321getERROR_SECURITY_EXCEPTIONv7Vf74A())) {
                            if (CameraError.m1302equalsimpl0(i, companion.m1319getERROR_GRAPH_CONFIGv7Vf74A())) {
                                i2 = 4;
                            } else if (CameraError.m1302equalsimpl0(i, companion.m1318getERROR_DO_NOT_DISTURB_ENABLEDv7Vf74A())) {
                                i2 = 7;
                            } else if (!CameraError.m1302equalsimpl0(i, companion.m1323getERROR_UNKNOWN_EXCEPTIONv7Vf74A()) && !CameraError.m1302equalsimpl0(i, companion.m1315getERROR_CAMERA_OPENERv7Vf74A()) && !CameraError.m1302equalsimpl0(i, companion.m1316getERROR_CAMERA_OPEN_TIMEOUTv7Vf74A())) {
                                Buffer$$ExternalSyntheticBUOutline4.m967m("Unexpected CameraError: ", CameraError.m1305toStringimpl(i));
                                return null;
                            }
                        }
                    }
                }
            }
            return CameraState.StateError.create(i2);
        }

        public final CameraState.Type toCameraState$camera_camera2(CameraInternal.State state) {
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
            Native$$ExternalSyntheticBUOutline5.m517m("Unexpected CameraInternal state: ", state);
            return null;
        }

        /* JADX INFO: renamed from: isRecoverableError-90vkdD0$camera_camera2, reason: not valid java name */
        public final boolean m1133isRecoverableError90vkdD0$camera_camera2(int cameraError) {
            CameraError.Companion companion = CameraError.INSTANCE;
            return CameraError.m1302equalsimpl0(cameraError, companion.m1312getERROR_CAMERA_DISCONNECTEDv7Vf74A()) || CameraError.m1302equalsimpl0(cameraError, companion.m1313getERROR_CAMERA_IN_USEv7Vf74A()) || CameraError.m1302equalsimpl0(cameraError, companion.m1314getERROR_CAMERA_LIMIT_EXCEEDEDv7Vf74A()) || CameraError.m1302equalsimpl0(cameraError, companion.m1310getERROR_CAMERA_DEVICEv7Vf74A());
        }

        public final void setOrPostValue$camera_camera2(MutableLiveData<CameraState> mutableLiveData, CameraState cameraState) {
            if (Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
                mutableLiveData.setValue(cameraState);
            } else {
                mutableLiveData.postValue(cameraState);
            }
        }
    }
}
