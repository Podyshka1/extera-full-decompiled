package androidx.camera.camera2.impl;

import android.hardware.camera2.CaptureRequest;
import android.util.Log;
import androidx.camera.camera2.adapter.SessionConfigAdapter;
import androidx.camera.camera2.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.impl.UseCaseManager;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.UseCase;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.SessionConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u001b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001TB!\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\u000f\u001a\u00020\u000e2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001c\u001a\u00020\u00122\n\u0010\u001b\u001a\u00060\u0019j\u0002`\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ)\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u000e2\u0006\u0010 \u001a\u00020\u001f2\b\u0010!\u001a\u0004\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\"\u0010#J\u0017\u0010%\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020\u000eH\u0002¢\u0006\u0004\b%\u0010&J\u001b\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010'\u001a\u00020\u000e¢\u0006\u0004\b(\u0010)J\u001b\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010'\u001a\u00020\u001f¢\u0006\u0004\b*\u0010+J\u001d\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010'\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b,\u0010-J\u001d\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\b\u0010'\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b.\u0010-J\u000f\u0010/\u001a\u00020\u0012H\u0016¢\u0006\u0004\b/\u00100J\u001d\u00102\u001a\u00020\u00122\f\u00101\u001a\b\u0012\u0004\u0012\u00020\f0\u000bH\u0016¢\u0006\u0004\b2\u00103J\r\u00104\u001a\u00020\u000e¢\u0006\u0004\b4\u00105R\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u00106\u001a\u0004\b7\u00108R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u00109R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b<\u0010=R\u0018\u0010?\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R \u0010C\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120B0A8\u0002X\u0083\u0004¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020\u00158\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bE\u0010FR\u0016\u0010G\u001a\u00020\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010I\u001a\u00020\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bI\u0010HR\u0016\u0010J\u001a\u00020\u001f8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0018\u0010L\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010N\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0083\u000e¢\u0006\u0006\n\u0004\bN\u0010MR(\u0010S\u001a\u0004\u0018\u00010>2\b\u0010'\u001a\u0004\u0018\u00010>8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\bO\u0010P\"\u0004\bQ\u0010R¨\u0006U"}, d2 = {"Landroidx/camera/camera2/impl/State3AControl;", "Landroidx/camera/camera2/impl/UseCaseCameraControl;", "Landroidx/camera/camera2/impl/UseCaseManager$RunningUseCasesChangeListener;", "Landroidx/camera/camera2/impl/CameraProperties;", "cameraProperties", "Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;", "aeModeDisabler", "Landroidx/camera/camera2/impl/UseCaseThreads;", "threads", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;Landroidx/camera/camera2/impl/UseCaseThreads;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/core/UseCase;", "useCases", _UrlKt.FRAGMENT_ENCODE_SET, "calculateTemplateFromUseCases", "(Ljava/util/Set;)I", "Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "update", "()Lkotlinx/coroutines/Deferred;", _UrlKt.FRAGMENT_ENCODE_SET, "myRevision", "applyUpdate", "(J)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "failAllPendingSignals", "(Ljava/lang/Exception;)V", "flashMode", _UrlKt.FRAGMENT_ENCODE_SET, "tryExternalFlashAeMode", "preferredAeMode", "getFinalPreferredAeMode", "(IZLjava/lang/Integer;)I", "template", "getDefaultAfMode", "(I)I", "value", "setFlashModeAsync", "(I)Lkotlinx/coroutines/Deferred;", "setTryExternalFlashAeModeAsync", "(Z)Lkotlinx/coroutines/Deferred;", "setPreferredAeModeAsync", "(Ljava/lang/Integer;)Lkotlinx/coroutines/Deferred;", "setPreferredFocusModeAsync", "reset", "()V", "runningUseCases", "onRunningUseCasesChanged", "(Ljava/util/Set;)V", "getFinalSupportedAeMode", "()I", "Landroidx/camera/camera2/impl/CameraProperties;", "getCameraProperties", "()Landroidx/camera/camera2/impl/CameraProperties;", "Landroidx/camera/camera2/compat/workaround/AutoFlashAEModeDisabler;", "Landroidx/camera/camera2/impl/UseCaseThreads;", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "_requestControl", "Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlinx/coroutines/CompletableDeferred;", "pendingSignals", "Ljava/util/List;", "currentRevision", "J", "_flashMode", "I", "_template", "_tryExternalFlashAeMode", "Z", "_preferredAeMode", "Ljava/lang/Integer;", "_preferredFocusMode", "getRequestControl", "()Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;", "setRequestControl", "(Landroidx/camera/camera2/impl/UseCaseCameraRequestControl;)V", "requestControl", "StateSnapshot", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nState3AControl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 State3AControl.kt\nandroidx/camera/camera2/impl/State3AControl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UseCaseThreads.kt\nandroidx/camera/camera2/impl/UseCaseThreads\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,328:1\n1#2:329\n194#3:330\n194#3:331\n1869#4,2:332\n1869#4,2:342\n1869#4,2:344\n85#5,4:334\n85#5,4:338\n*S KotlinDebug\n*F\n+ 1 State3AControl.kt\nandroidx/camera/camera2/impl/State3AControl\n*L\n126#1:330\n172#1:331\n255#1:332,2\n237#1:342,2\n239#1:344,2\n294#1:334,4\n298#1:338,4\n*E\n"})
public final class State3AControl implements UseCaseCameraControl, UseCaseManager.RunningUseCasesChangeListener {
    private Integer _preferredAeMode;
    private Integer _preferredFocusMode;
    private UseCaseCameraRequestControl _requestControl;
    private boolean _tryExternalFlashAeMode;
    private final AutoFlashAEModeDisabler aeModeDisabler;
    private final CameraProperties cameraProperties;
    private long currentRevision;
    private final UseCaseThreads threads;
    private final Object lock = new Object();
    private final List<CompletableDeferred<Unit>> pendingSignals = new ArrayList();
    private int _flashMode = 2;
    private int _template = 1;

    private final int getDefaultAfMode(int template) {
        return (template == 1 || template != 3) ? 4 : 3;
    }

    public State3AControl(CameraProperties cameraProperties, AutoFlashAEModeDisabler autoFlashAEModeDisabler, UseCaseThreads useCaseThreads) {
        this.cameraProperties = cameraProperties;
        this.aeModeDisabler = autoFlashAEModeDisabler;
        this.threads = useCaseThreads;
    }

    /* JADX INFO: renamed from: getRequestControl, reason: from getter */
    public UseCaseCameraRequestControl get_requestControl() {
        return this._requestControl;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void setRequestControl(UseCaseCameraRequestControl useCaseCameraRequestControl) {
        this._requestControl = useCaseCameraRequestControl;
        update();
    }

    public final Deferred<Unit> setFlashModeAsync(int value) {
        synchronized (this.lock) {
            this._flashMode = value;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred<Unit> setTryExternalFlashAeModeAsync(boolean value) {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = value;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred<Unit> setPreferredAeModeAsync(Integer value) {
        synchronized (this.lock) {
            this._preferredAeMode = value;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    public final Deferred<Unit> setPreferredFocusModeAsync(Integer value) {
        synchronized (this.lock) {
            this._preferredFocusMode = value;
            Unit unit = Unit.INSTANCE;
        }
        return update();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraControl
    public void reset() {
        synchronized (this.lock) {
            this._tryExternalFlashAeMode = false;
            this._preferredAeMode = null;
            this._preferredFocusMode = null;
            this._flashMode = 2;
            this._template = 1;
            Unit unit = Unit.INSTANCE;
        }
        update();
    }

    @Override // androidx.camera.camera2.impl.UseCaseManager.RunningUseCasesChangeListener
    public void onRunningUseCasesChanged(Set<? extends UseCase> runningUseCases) {
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new State3AControl$onRunningUseCasesChanged$$inlined$confineLaunch$1(null, CollectionsKt.toSet(runningUseCases), this), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int calculateTemplateFromUseCases(Set<? extends UseCase> useCases) {
        CaptureConfig repeatingCaptureConfig;
        SessionConfig validSessionConfigOrNull = new SessionConfigAdapter(useCases, false, 2, null).getValidSessionConfigOrNull();
        if (validSessionConfigOrNull == null || (repeatingCaptureConfig = validSessionConfigOrNull.getRepeatingCaptureConfig()) == null) {
            return 1;
        }
        Integer numValueOf = Integer.valueOf(repeatingCaptureConfig.getTemplateType());
        Integer num = numValueOf.intValue() != -1 ? numValueOf : null;
        if (num != null) {
            return num.intValue();
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Deferred<Unit> update() {
        CompletableDeferred<Unit> completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        Ref.LongRef longRef = new Ref.LongRef();
        synchronized (this.lock) {
            this.pendingSignals.add(completableDeferredCompletableDeferred$default);
            long j = this.currentRevision + 1;
            this.currentRevision = j;
            longRef.element = j;
            Unit unit = Unit.INSTANCE;
        }
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new State3AControl$update$$inlined$confineLaunch$1(null, this, longRef), 3, null);
        return completableDeferredCompletableDeferred$default;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyUpdate(long myRevision) {
        boolean z;
        StateSnapshot stateSnapshot;
        final List list;
        UseCaseCameraRequestControl useCaseCameraRequestControl = get_requestControl();
        if (useCaseCameraRequestControl == null) {
            failAllPendingSignals(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        synchronized (this.lock) {
            z = myRevision == this.currentRevision;
        }
        if (z) {
            synchronized (this.lock) {
                stateSnapshot = new StateSnapshot(this._flashMode, this._template, this._tryExternalFlashAeMode, this._preferredAeMode, this._preferredFocusMode);
            }
            int finalPreferredAeMode = getFinalPreferredAeMode(stateSnapshot.getFlashMode(), stateSnapshot.getTryExternalFlashAeMode(), stateSnapshot.getPreferredAeMode());
            Integer preferredFocusMode = stateSnapshot.getPreferredFocusMode();
            try {
                Deferred deferredSubmitParameters$default = UseCaseCameraRequestControl.submitParameters$default(useCaseCameraRequestControl, MapsKt.mapOf(TuplesKt.to(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), finalPreferredAeMode))), TuplesKt.to(CaptureRequest.CONTROL_AF_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAfMode(this.cameraProperties.getMetadata(), preferredFocusMode != null ? preferredFocusMode.intValue() : getDefaultAfMode(stateSnapshot.getTemplate())))), TuplesKt.to(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(CameraMetadataIntegrationKt.getSupportedAwbMode(this.cameraProperties.getMetadata(), 1)))), null, null, 6, null);
                synchronized (this.lock) {
                    list = CollectionsKt.toList(this.pendingSignals);
                }
                deferredSubmitParameters$default.invokeOnCompletion(new Function1() { // from class: androidx.camera.camera2.impl.State3AControl$$ExternalSyntheticLambda0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj) {
                        return State3AControl.$r8$lambda$k1tXCgViVcdvfHU16cTrszMiFg8(list, this, (Throwable) obj);
                    }
                });
            } catch (Exception e) {
                failAllPendingSignals(e);
            }
        }
    }

    public static Unit $r8$lambda$k1tXCgViVcdvfHU16cTrszMiFg8(List list, State3AControl state3AControl, Throwable th) {
        if (th != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CompletableDeferred) it.next()).completeExceptionally(th);
            }
        } else {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                ((CompletableDeferred) it2.next()).complete(Unit.INSTANCE);
            }
        }
        synchronized (state3AControl.lock) {
            state3AControl.pendingSignals.removeAll(list);
        }
        return Unit.INSTANCE;
    }

    private final void failAllPendingSignals(Exception e) {
        List list;
        synchronized (this.lock) {
            list = CollectionsKt.toList(this.pendingSignals);
            this.pendingSignals.clear();
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((CompletableDeferred) it.next()).completeExceptionally(e);
        }
    }

    public final int getFinalSupportedAeMode() {
        int supportedAeMode;
        synchronized (this.lock) {
            supportedAeMode = CameraMetadataIntegrationKt.getSupportedAeMode(this.cameraProperties.getMetadata(), getFinalPreferredAeMode(this._flashMode, this._tryExternalFlashAeMode, this._preferredAeMode));
        }
        return supportedAeMode;
    }

    private final int getFinalPreferredAeMode(int flashMode, boolean tryExternalFlashAeMode, Integer preferredAeMode) {
        int iIntValue = preferredAeMode != null ? preferredAeMode.intValue() : flashMode != 0 ? flashMode != 1 ? 1 : 3 : this.aeModeDisabler.getCorrectedAeMode(2);
        if (tryExternalFlashAeMode && CameraMetadataIntegrationKt.isExternalFlashAeModeSupported(this.cameraProperties.getMetadata())) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (Logger.isDebugEnabled("CXCP")) {
                Log.d(Camera2Logger.TRUNCATED_TAG, "State3AControl.invalidate: trying external flash AE mode.");
            }
            iIntValue = 5;
        }
        Camera2Logger camera2Logger2 = Camera2Logger.INSTANCE;
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(Camera2Logger.TRUNCATED_TAG, "State3AControl.getFinalPreferredAeMode: preferAeMode = " + iIntValue);
        }
        return iIntValue;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0082\b\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0011\u001a\u00020\u00052\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u000fR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0013\u001a\u0004\b\u0015\u0010\u000fR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0019\u0010\b\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\b\u0010\u0019\u001a\u0004\b\u001c\u0010\u001b¨\u0006\u001d"}, d2 = {"Landroidx/camera/camera2/impl/State3AControl$StateSnapshot;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "flashMode", "template", _UrlKt.FRAGMENT_ENCODE_SET, "tryExternalFlashAeMode", "preferredAeMode", "preferredFocusMode", "<init>", "(IIZLjava/lang/Integer;Ljava/lang/Integer;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "I", "getFlashMode", "getTemplate", "Z", "getTryExternalFlashAeMode", "()Z", "Ljava/lang/Integer;", "getPreferredAeMode", "()Ljava/lang/Integer;", "getPreferredFocusMode", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class StateSnapshot {
        private final int flashMode;
        private final Integer preferredAeMode;
        private final Integer preferredFocusMode;
        private final int template;
        private final boolean tryExternalFlashAeMode;

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StateSnapshot)) {
                return false;
            }
            StateSnapshot stateSnapshot = (StateSnapshot) other;
            return this.flashMode == stateSnapshot.flashMode && this.template == stateSnapshot.template && this.tryExternalFlashAeMode == stateSnapshot.tryExternalFlashAeMode && Intrinsics.areEqual(this.preferredAeMode, stateSnapshot.preferredAeMode) && Intrinsics.areEqual(this.preferredFocusMode, stateSnapshot.preferredFocusMode);
        }

        public int hashCode() {
            int iHashCode = ((((Integer.hashCode(this.flashMode) * 31) + Integer.hashCode(this.template)) * 31) + Boolean.hashCode(this.tryExternalFlashAeMode)) * 31;
            Integer num = this.preferredAeMode;
            int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
            Integer num2 = this.preferredFocusMode;
            return iHashCode2 + (num2 != null ? num2.hashCode() : 0);
        }

        public String toString() {
            return "StateSnapshot(flashMode=" + this.flashMode + ", template=" + this.template + ", tryExternalFlashAeMode=" + this.tryExternalFlashAeMode + ", preferredAeMode=" + this.preferredAeMode + ", preferredFocusMode=" + this.preferredFocusMode + ')';
        }

        public StateSnapshot(int i, int i2, boolean z, Integer num, Integer num2) {
            this.flashMode = i;
            this.template = i2;
            this.tryExternalFlashAeMode = z;
            this.preferredAeMode = num;
            this.preferredFocusMode = num2;
        }

        public final int getFlashMode() {
            return this.flashMode;
        }

        public final int getTemplate() {
            return this.template;
        }

        public final boolean getTryExternalFlashAeMode() {
            return this.tryExternalFlashAeMode;
        }

        public final Integer getPreferredAeMode() {
            return this.preferredAeMode;
        }

        public final Integer getPreferredFocusMode() {
            return this.preferredFocusMode;
        }
    }
}
