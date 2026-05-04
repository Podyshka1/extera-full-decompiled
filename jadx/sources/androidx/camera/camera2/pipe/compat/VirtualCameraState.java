package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import com.android.p003dx.p006io.Opcodes;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;

/* JADX INFO: loaded from: classes3.dex */
public final class VirtualCameraState implements VirtualCamera {
    private CameraState _lastState;
    private final MutableSharedFlow _stateFlow;
    private final Flow _states;
    private final String cameraId;
    private boolean closed;
    private VirtualAndroidCameraDevice currentVirtualAndroidCamera;
    private final int debugId;
    private final GraphListener graphListener;
    private Job job;
    private final Object lock;
    private final CoroutineScope scope;
    private Token wakelockToken;

    public /* synthetic */ VirtualCameraState(String str, GraphListener graphListener, CoroutineScope coroutineScope, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, graphListener, coroutineScope);
    }

    private VirtualCameraState(String cameraId, GraphListener graphListener, CoroutineScope scope) {
        Intrinsics.checkNotNullParameter(cameraId, "cameraId");
        Intrinsics.checkNotNullParameter(graphListener, "graphListener");
        Intrinsics.checkNotNullParameter(scope, "scope");
        this.cameraId = cameraId;
        this.graphListener = graphListener;
        this.scope = scope;
        this.debugId = VirtualCameraKt.getVirtualCameraDebugIds().incrementAndGet();
        this.lock = new Object();
        MutableSharedFlow mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(1, 3, null, 4, null);
        this._stateFlow = mutableSharedFlowMutableSharedFlow$default;
        this._states = FlowKt.distinctUntilChanged(mutableSharedFlowMutableSharedFlow$default);
        CameraStateUnopened cameraStateUnopened = CameraStateUnopened.INSTANCE;
        this._lastState = cameraStateUnopened;
        if (!mutableSharedFlowMutableSharedFlow$default.tryEmit(cameraStateUnopened)) {
            throw new IllegalStateException("Check failed.");
        }
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name */
    public final String m1869getCameraIdDz_R5H8() {
        return this.cameraId;
    }

    public final GraphListener getGraphListener() {
        return this.graphListener;
    }

    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    public Flow getState() {
        return this._states;
    }

    public CameraState getValue() {
        CameraState cameraState;
        synchronized (this.lock) {
            cameraState = this._lastState;
        }
        return cameraState;
    }

    public final Object connect$camera_camera2_pipe(Flow flow, Token token, Continuation continuation) {
        synchronized (this.lock) {
            try {
                if (!this.closed) {
                    this.job = BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new VirtualCameraState$connect$2$1(flow, this, null), 3, null);
                    this.wakelockToken = token;
                    return Unit.INSTANCE;
                }
                if (token != null) {
                    Boxing.boxBoolean(token.release());
                }
                return Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    /* JADX INFO: renamed from: disconnect-TPqeGZw */
    public void mo1867disconnectTPqeGZw(CameraError cameraError) {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                if (Log.INSTANCE.getINFO_LOGGABLE()) {
                    android.util.Log.i("CXCP", "Disconnecting " + this);
                }
                VirtualAndroidCameraDevice virtualAndroidCameraDevice = this.currentVirtualAndroidCamera;
                if (virtualAndroidCameraDevice != null) {
                    virtualAndroidCameraDevice.disconnect$camera_camera2_pipe();
                }
                Job job = this.job;
                if (job != null) {
                    Job.DefaultImpls.cancel$default(job, null, 1, null);
                }
                Token token = this.wakelockToken;
                if (token != null) {
                    token.release();
                }
                if (!(getValue() instanceof CameraStateClosed)) {
                    if (!(this._lastState instanceof CameraStateClosing)) {
                        emitState(new CameraStateClosing(null, 1, null));
                    }
                    emitState(new CameraStateClosed(this.cameraId, ClosedReason.APP_DISCONNECTED, null, null, null, null, null, null, cameraError, Opcodes.INVOKE_CUSTOM, null));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emitState(CameraState cameraState) {
        this._lastState = cameraState;
        if (this._stateFlow.tryEmit(cameraState)) {
            return;
        }
        throw new IllegalStateException(("Failed to emit " + cameraState + " in " + this).toString());
    }

    public String toString() {
        return "VirtualCamera-" + this.debugId;
    }
}
