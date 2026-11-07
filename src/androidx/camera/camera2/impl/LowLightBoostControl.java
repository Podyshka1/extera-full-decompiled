package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureResult;
import android.os.Build;
import android.util.Log;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.FrameInfo;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.RequestMetadata;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.utils.Threads;
import androidx.view.LiveData;
import androidx.view.MutableLiveData;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B+\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0019\u0010\u000f\u001a\u00020\u000e*\b\u0012\u0004\u0012\u00020\r0\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J+\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00110\u0014*\b\u0012\u0004\u0012\u00020\u00110\u00142\n\u0010\u0017\u001a\u00060\u0015j\u0002`\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J!\u0010\u001d\u001a\u00020\u0011*\b\u0012\u0004\u0012\u00020\u001b0\u001a2\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001f\u0010\u0013J\u001b\u0010\"\u001a\u00020\u00112\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\r0 ¢\u0006\u0004\b\"\u0010#J%\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00110'2\u0006\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020$¢\u0006\u0004\b(\u0010)R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010*R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010+R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010,R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010-R\u0018\u0010/\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u0014\u00101\u001a\u00020$8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00103\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00102R\"\u00105\u001a\u0010\u0012\f\u0012\n 4*\u0004\u0018\u00010\u001b0\u001b0\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u001e\u0010:\u001a\n\u0012\u0004\u0012\u00020\u0011\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R0\u0010<\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010'8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b<\u0010=\u0012\u0004\bB\u0010\u0013\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR(\u0010H\u001a\u0004\u0018\u00010.2\b\u0010C\u001a\u0004\u0018\u00010.8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bD\u0010E\"\u0004\bF\u0010GR\u0017\u0010L\u001a\b\u0012\u0004\u0012\u00020\u001b0I8F¢\u0006\u0006\u001a\u0004\bJ\u0010K¨\u0006M"}, d2 = {"Landroidx/camera/camera2/impl/LowLightBoostControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "Landroidx/camera/camera2/impl/State3AControl;", "state3AControl", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "Landroidx/camera/camera2/impl/ComboRequestListener;", "comboRequestListener", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/impl/State3AControl;Landroidx/camera/camera2/impl/UseCaseThreads;Landroidx/camera/camera2/impl/ComboRequestListener;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "Landroidx/camera/core/impl/SessionConfig;", "getSessionConfig", "(Ljava/util/Collection;)Landroidx/camera/core/impl/SessionConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "stopRunningTaskInternal", "()V", "Lkotlinx/coroutines/CompletableDeferred;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "createFailureResult", "(Lkotlinx/coroutines/CompletableDeferred;Ljava/lang/Exception;)Lkotlinx/coroutines/CompletableDeferred;", "Landroidx/lifecycle/MutableLiveData;", _UrlKt.FRAGMENT_ENCODE_SET, "state", "setLiveDataValue", "(Landroidx/lifecycle/MutableLiveData;I)V", "reset", _UrlKt.FRAGMENT_ENCODE_SET, "useCases", "onSessionConfigChanged", "(Ljava/util/List;)V", _UrlKt.FRAGMENT_ENCODE_SET, "lowLightBoost", "cancelPreviousTask", "Lkotlinx/coroutines/Deferred;", "setLowLightBoostAsync", "(ZZ)Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroidx/camera/camera2/impl/State3AControl;", "Landroidx/camera/camera2/impl/UseCaseThreads;", "Landroidx/camera/camera2/impl/ComboRequestListener;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "isLowLightBoostSupported", "Z", "isLowLightBoostOn", "kotlin.jvm.PlatformType", "_lowLightBoostState", "Landroidx/lifecycle/MutableLiveData;", "Ljava/util/concurrent/atomic/AtomicInteger;", "lowLightBoostStateAtomic", "Ljava/util/concurrent/atomic/AtomicInteger;", "_updateSignal", "Lkotlinx/coroutines/CompletableDeferred;", "checkFrameRateJob", "Lkotlinx/coroutines/Deferred;", "getCheckFrameRateJob$camera_camera2", "()Lkotlinx/coroutines/Deferred;", "setCheckFrameRateJob$camera_camera2", "(Lkotlinx/coroutines/Deferred;)V", "getCheckFrameRateJob$camera_camera2$annotations", "value", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "requestControl", "Landroidx/lifecycle/LiveData;", "getLowLightBoostStateLiveData", "()Landroidx/lifecycle/LiveData;", "lowLightBoostStateLiveData", "camera-camera2"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLowLightBoostControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LowLightBoostControl.kt\nandroidx/camera/camera2/impl/LowLightBoostControl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n+ 5 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n*L\n1#1,257:1\n1#2:258\n1869#3,2:259\n85#4,4:261\n194#5:265\n*S KotlinDebug\n*F\n+ 1 LowLightBoostControl.kt\nandroidx/camera/camera2/impl/LowLightBoostControl\n*L\n142#1:259,2\n154#1:261,4\n166#1:265\n*E\n"})
public final class LowLightBoostControl implements UseCaseCameraControl {
    private final MutableLiveData<Integer> _lowLightBoostState;
    private UseCaseCameraRequestControl _requestControl;
    private CompletableDeferred<Unit> _updateSignal;
    private final CameraMetadata cameraMetadata;
    private Deferred<Boolean> checkFrameRateJob;
    private final ComboRequestListener comboRequestListener;
    private boolean isLowLightBoostOn;
    private final boolean isLowLightBoostSupported;
    private final AtomicInteger lowLightBoostStateAtomic;
    private final State3AControl state3AControl;
    private final UseCaseThreads threads;

    public LowLightBoostControl(CameraMetadata cameraMetadata, State3AControl state3AControl, UseCaseThreads useCaseThreads, ComboRequestListener comboRequestListener) {
        this.cameraMetadata = cameraMetadata;
        this.state3AControl = state3AControl;
        this.threads = useCaseThreads;
        this.comboRequestListener = comboRequestListener;
        boolean z = false;
        if (cameraMetadata != null && CameraMetadata.INSTANCE.getSupportsLowLightBoost(cameraMetadata)) {
            z = true;
        }
        this.isLowLightBoostSupported = z;
        this._lowLightBoostState = new MutableLiveData<>(-1);
        this.lowLightBoostStateAtomic = new AtomicInteger(-1);
        if (z) {
            comboRequestListener.addListener(new Request.Listener() { // from class: androidx.camera.camera2.impl.LowLightBoostControl.1
                @Override // androidx.camera.camera2.pipe.Request.Listener
                /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
                public void mo1139onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo totalCaptureResult) {
                    Integer num;
                    if (Build.VERSION.SDK_INT < 35 || LowLightBoostControl.this._requestControl == null || !LowLightBoostControl.this.isLowLightBoostOn || (num = (Integer) totalCaptureResult.getMetadata().get(CaptureResult.CONTROL_LOW_LIGHT_BOOST_STATE)) == null) {
                        return;
                    }
                    LowLightBoostControl lowLightBoostControl = LowLightBoostControl.this;
                    lowLightBoostControl.setLiveDataValue(lowLightBoostControl._lowLightBoostState, num.intValue() != 1 ? 0 : 1);
                }
            }, useCaseThreads.getSequentialExecutor());
        }
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        if (this.isLowLightBoostOn) {
            if (useCaseCameraRequestControl != null) {
                setLowLightBoostAsync(true, false);
            } else {
                setLiveDataValue(this._lowLightBoostState, 0);
            }
        }
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        stopRunningTaskInternal();
        setLowLightBoostAsync$default(this, false, false, 2, null);
    }

    public final LiveData<Integer> getLowLightBoostStateLiveData() {
        return this._lowLightBoostState;
    }

    public final Deferred<Boolean> getCheckFrameRateJob$camera_camera2() {
        return this.checkFrameRateJob;
    }

    public final void onSessionConfigChanged(List<? extends UseCase> useCases) {
        if (this.isLowLightBoostSupported) {
            if (useCases.isEmpty()) {
                this.checkFrameRateJob = CompletableDeferredKt.CompletableDeferred(Boolean.FALSE);
            } else {
                this.checkFrameRateJob = BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C01701(useCases, null), 3, null);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.camera.camera2.impl.LowLightBoostControl$onSessionConfigChanged$1 */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CoroutineScope;"}, m910k = 3, mv = {2, 1, 0}, xi = 48)
    @DebugMetadata(m920c = "androidx.camera.camera2.impl.LowLightBoostControl$onSessionConfigChanged$1", m921f = "LowLightBoostControl.kt", m922i = {}, m923l = {}, m924m = "invokeSuspend", m925n = {}, m926s = {}, m927v = 1)
    public static final class C01701 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ List<UseCase> $useCases;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C01701(List<? extends UseCase> list, Continuation<? super C01701> continuation) {
            super(2, continuation);
            this.$useCases = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LowLightBoostControl.this.new C01701(this.$useCases, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C01701) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                return Boxing.boxBoolean(((Number) LowLightBoostControl.this.getSessionConfig(this.$useCases).getExpectedFrameRateRange().getUpper()).intValue() > 30);
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SessionConfig getSessionConfig(Collection<? extends UseCase> collection) {
        SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            validatingBuilder.add(((UseCase) it.next()).getSessionConfig());
        }
        return validatingBuilder.build();
    }

    public static /* synthetic */ Deferred setLowLightBoostAsync$default(LowLightBoostControl lowLightBoostControl, boolean z, boolean z2, int i, Object obj) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        return lowLightBoostControl.setLowLightBoostAsync(z, z2);
    }

    public final Deferred<Unit> setLowLightBoostAsync(boolean lowLightBoost, boolean cancelPreviousTask) {
        Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "LowLightBoostControl#setLowLightBoostAsync: lowLightBoost = " + lowLightBoost);
        }
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        if (this.isLowLightBoostSupported) {
            BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C0171x5a5aefee(null, this, completableDeferredCompletableDeferred$default, lowLightBoost, cancelPreviousTask), 3, null);
            return completableDeferredCompletableDeferred$default;
        }
        return createFailureResult(completableDeferredCompletableDeferred$default, new IllegalStateException("Low Light Boost is not supported!"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopRunningTaskInternal() {
        CompletableDeferred<Unit> completableDeferred = this._updateSignal;
        if (completableDeferred != null) {
            createFailureResult(completableDeferred, new CameraControl.OperationCanceledException("There is a new enableLowLightBoost being set"));
        }
        this._updateSignal = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final CompletableDeferred<Unit> createFailureResult(CompletableDeferred<Unit> completableDeferred, Exception exc) {
        completableDeferred.completeExceptionally(exc);
        return completableDeferred;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setLiveDataValue(MutableLiveData<Integer> mutableLiveData, int i) {
        if (this.lowLightBoostStateAtomic.getAndSet(i) != i) {
            if (Threads.isMainThread()) {
                mutableLiveData.setValue(Integer.valueOf(i));
            } else {
                mutableLiveData.postValue(Integer.valueOf(i));
            }
        }
    }
}
