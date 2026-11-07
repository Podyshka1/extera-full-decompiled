package androidx.camera.camera2.pipe.compat;

import androidx.camera.camera2.pipe.CameraError;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.core.Token;
import androidx.camera.camera2.pipe.graph.GraphListener;
import com.android.dx.io.Opcodes;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0003¢\u0006\u0004\b\r\u0010\u000eJ(\u0010\u0014\u001a\u00020\f2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0080@¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0019\u001a\u00020\f2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u001d\u001a\u0004\b\u001e\u0010\u001cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\"\u001a\u0004\b#\u0010$R\u0014\u0010&\u001a\u00020%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\u0016\u0010,\u001a\u00020+8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b,\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00102\u001a\b\u0012\u0004\u0012\u00020\n018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\u001a\u00104\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00106\u001a\u00020\n8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u00109\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0011\u0010;R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0014\u0010@\u001a\u00020\n8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006A"}, d2 = {"Landroidx/camera/camera2/pipe/compat/VirtualCameraState;", "Landroidx/camera/camera2/pipe/compat/VirtualCamera;", "Landroidx/camera/camera2/pipe/CameraId;", "cameraId", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "graphListener", "Lkotlinx/coroutines/CoroutineScope;", "scope", "<init>", "(Ljava/lang/String;Landroidx/camera/camera2/pipe/graph/GraphListener;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "Landroidx/camera/camera2/pipe/compat/CameraState;", "state", _UrlKt.FRAGMENT_ENCODE_SET, "emitState", "(Landroidx/camera/camera2/pipe/compat/CameraState;)V", "Lkotlinx/coroutines/flow/Flow;", "Landroidx/camera/camera2/pipe/core/Token;", "wakelockToken", "connect$camera_camera2_pipe", "(Lkotlinx/coroutines/flow/Flow;Landroidx/camera/camera2/pipe/core/Token;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "connect", "Landroidx/camera/camera2/pipe/CameraError;", "lastCameraError", "disconnect-TPqeGZw", "(Landroidx/camera/camera2/pipe/CameraError;)V", "disconnect", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "Ljava/lang/String;", "getCameraId-Dz_R5H8", "Landroidx/camera/camera2/pipe/graph/GraphListener;", "getGraphListener", "()Landroidx/camera/camera2/pipe/graph/GraphListener;", "Lkotlinx/coroutines/CoroutineScope;", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", _UrlKt.FRAGMENT_ENCODE_SET, "debugId", "I", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "closed", "Z", "Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;", "currentVirtualAndroidCamera", "Landroidx/camera/camera2/pipe/compat/VirtualAndroidCameraDevice;", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "_stateFlow", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "_states", "Lkotlinx/coroutines/flow/Flow;", "_lastState", "Landroidx/camera/camera2/pipe/compat/CameraState;", "Lkotlinx/coroutines/Job;", "job", "Lkotlinx/coroutines/Job;", "Landroidx/camera/camera2/pipe/core/Token;", "getState", "()Lkotlinx/coroutines/flow/Flow;", "getValue", "()Landroidx/camera/camera2/pipe/compat/CameraState;", "value", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nVirtualCamera.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VirtualCamera.kt\nandroidx/camera/camera2/pipe/compat/VirtualCameraState\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,585:1\n1#2:586\n59#3,2:587\n*S KotlinDebug\n*F\n+ 1 VirtualCamera.kt\nandroidx/camera/camera2/pipe/compat/VirtualCameraState\n*L\n209#1:587,2\n*E\n"})
public final class VirtualCameraState implements VirtualCamera {
    private CameraState _lastState;
    private final MutableSharedFlow<CameraState> _stateFlow;
    private final Flow<CameraState> _states;
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

    private VirtualCameraState(String str, GraphListener graphListener, CoroutineScope coroutineScope) {
        this.cameraId = str;
        this.graphListener = graphListener;
        this.scope = coroutineScope;
        this.debugId = VirtualCameraKt.getVirtualCameraDebugIds().incrementAndGet();
        this.lock = new Object();
        MutableSharedFlow<CameraState> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(1, 3, null, 4, null);
        this._stateFlow = mutableSharedFlowMutableSharedFlow$default;
        this._states = FlowKt.distinctUntilChanged(mutableSharedFlowMutableSharedFlow$default);
        CameraStateUnopened cameraStateUnopened = CameraStateUnopened.INSTANCE;
        this._lastState = cameraStateUnopened;
        if (mutableSharedFlowMutableSharedFlow$default.tryEmit(cameraStateUnopened)) {
            return;
        }
        Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
        throw null;
    }

    /* JADX INFO: renamed from: getCameraId-Dz_R5H8, reason: not valid java name and from getter */
    public final String getCameraId() {
        return this.cameraId;
    }

    public final GraphListener getGraphListener() {
        return this.graphListener;
    }

    @Override // androidx.camera.camera2.pipe.compat.VirtualCamera
    public Flow<CameraState> getState() {
        return this._states;
    }

    public CameraState getValue() {
        CameraState cameraState;
        synchronized (this.lock) {
            cameraState = this._lastState;
        }
        return cameraState;
    }

    public final Object connect$camera_camera2_pipe(Flow<? extends CameraState> flow, Token token, Continuation<? super Unit> continuation) {
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
    public void mo1608disconnectTPqeGZw(CameraError lastCameraError) {
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
                    Job.cancel$default(job, null, 1, null);
                }
                Token token = this.wakelockToken;
                if (token != null) {
                    token.release();
                }
                if (!(getValue() instanceof CameraStateClosed)) {
                    if (!(this._lastState instanceof CameraStateClosing)) {
                        emitState(new CameraStateClosing(null, 1, null));
                    }
                    emitState(new CameraStateClosed(this.cameraId, ClosedReason.APP_DISCONNECTED, null, null, null, null, null, null, lastCameraError, Opcodes.INVOKE_CUSTOM, null));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void emitState(CameraState state) {
        this._lastState = state;
        if (this._stateFlow.tryEmit(state)) {
            return;
        }
        throw new IllegalStateException(("Failed to emit " + state + " in " + this).toString());
    }

    public String toString() {
        return "VirtualCamera-" + this.debugId;
    }
}
