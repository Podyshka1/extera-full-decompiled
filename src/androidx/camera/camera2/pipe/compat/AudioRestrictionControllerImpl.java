package androidx.camera.camera2.pipe.compat;

import android.os.Build;
import androidx.camera.camera2.pipe.AudioRestrictionMode;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.compat.AudioRestrictionController;
import androidx.camera.camera2.pipe.core.CoroutineMutex;
import androidx.camera.camera2.pipe.core.MutexesKt;
import androidx.camera.camera2.pipe.core.Threads;
import androidx.camera.camera2.pipe.internal.CameraPipeLifetime;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0007\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B#\b\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0001\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\r\u001a\u0004\u0018\u00010\nH\u0003¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u0012\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\nH\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001aR\u0014\u0010\u001d\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R.\u0010&\u001a\u0004\u0018\u00010\n2\b\u0010%\u001a\u0004\u0018\u00010\n8V@VX\u0096\u000e¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010\f\"\u0004\b)\u0010\u0011R \u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\n0*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u001a\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00170-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/¨\u00060"}, d2 = {"Landroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl;", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController;", "Landroidx/camera/camera2/pipe/core/Threads;", "threads", "Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;", "cameraPipeLifetime", "Lkotlinx/coroutines/Job;", "cameraPipeJob", "<init>", "(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/internal/CameraPipeLifetime;Lkotlinx/coroutines/Job;)V", "Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "computeAudioRestrictionMode-4o0Og1A", "()Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "computeAudioRestrictionMode", "previousMode", _UrlKt.FRAGMENT_ENCODE_SET, "updateListenersMode-3NUV5dA", "(Landroidx/camera/camera2/pipe/AudioRestrictionMode;)V", "updateListenersMode", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", "removeCameraGraph", "(Landroidx/camera/camera2/pipe/CameraGraph;)V", "Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;", "listener", "addListener", "(Landroidx/camera/camera2/pipe/compat/AudioRestrictionController$Listener;)V", "removeListener", "Lkotlinx/coroutines/CoroutineScope;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "Landroidx/camera/camera2/pipe/core/CoroutineMutex;", "coroutineMutex", "Landroidx/camera/camera2/pipe/core/CoroutineMutex;", _UrlKt.FRAGMENT_ENCODE_SET, "lock", "Ljava/lang/Object;", "value", "globalAudioRestrictionMode", "Landroidx/camera/camera2/pipe/AudioRestrictionMode;", "getGlobalAudioRestrictionMode-4o0Og1A", "setGlobalAudioRestrictionMode-3NUV5dA", _UrlKt.FRAGMENT_ENCODE_SET, "audioRestrictionModeMap", "Ljava/util/Map;", "Ljava/util/concurrent/CopyOnWriteArrayList;", "activeListeners", "Ljava/util/concurrent/CopyOnWriteArrayList;", "camera-camera2-pipe"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAudioRestrictionController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AudioRestrictionController.kt\nandroidx/camera/camera2/pipe/compat/AudioRestrictionControllerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,189:1\n1#2:190\n*E\n"})
public final class AudioRestrictionControllerImpl implements AudioRestrictionController {
    private AudioRestrictionMode globalAudioRestrictionMode;
    private final CoroutineScope scope;
    private final CoroutineMutex coroutineMutex = new CoroutineMutex();
    private final Object lock = new Object();
    private final Map<CameraGraph, AudioRestrictionMode> audioRestrictionModeMap = new LinkedHashMap();
    private final CopyOnWriteArrayList<AudioRestrictionController.Listener> activeListeners = new CopyOnWriteArrayList<>();

    public AudioRestrictionControllerImpl(Threads threads, CameraPipeLifetime cameraPipeLifetime, Job job) {
        this.scope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(job).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-AudioRestrictionControllerImpl"))));
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Runnable() { // from class: androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                CoroutineScopeKt.cancel$default(this.f$0.scope, null, 1, null);
            }
        });
    }

    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    public AudioRestrictionMode m1407getGlobalAudioRestrictionMode4o0Og1A() {
        AudioRestrictionMode audioRestrictionMode;
        synchronized (this.lock) {
            audioRestrictionMode = this.globalAudioRestrictionMode;
        }
        return audioRestrictionMode;
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeCameraGraph(CameraGraph cameraGraph) {
        synchronized (this.lock) {
            AudioRestrictionMode audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A = m1405computeAudioRestrictionMode4o0Og1A();
            this.audioRestrictionModeMap.remove(cameraGraph);
            m1406updateListenersMode3NUV5dA(audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: computeAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    private final AudioRestrictionMode m1405computeAudioRestrictionMode4o0Og1A() {
        Map<CameraGraph, AudioRestrictionMode> map = this.audioRestrictionModeMap;
        AudioRestrictionMode.Companion companion = AudioRestrictionMode.INSTANCE;
        if (!map.containsValue(AudioRestrictionMode.m1111boximpl(companion.m1120getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
            AudioRestrictionMode audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A = m1407getGlobalAudioRestrictionMode4o0Og1A();
            if (!(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A == null ? false : AudioRestrictionMode.m1114equalsimpl0(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A.getValue(), companion.m1120getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
                if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m1111boximpl(companion.m1119getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                    AudioRestrictionMode audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A2 = m1407getGlobalAudioRestrictionMode4o0Og1A();
                    if (!(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A2 == null ? false : AudioRestrictionMode.m1114equalsimpl0(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A2.getValue(), companion.m1119getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                        if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m1111boximpl(companion.m1118getAUDIO_RESTRICTION_NONE_b5Q8KE()))) {
                            AudioRestrictionMode audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A3 = m1407getGlobalAudioRestrictionMode4o0Og1A();
                            if (!(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A3 != null ? AudioRestrictionMode.m1114equalsimpl0(audioRestrictionModeM1407getGlobalAudioRestrictionMode4o0Og1A3.getValue(), companion.m1118getAUDIO_RESTRICTION_NONE_b5Q8KE()) : false)) {
                                return null;
                            }
                        }
                        return AudioRestrictionMode.m1111boximpl(companion.m1118getAUDIO_RESTRICTION_NONE_b5Q8KE());
                    }
                }
                return AudioRestrictionMode.m1111boximpl(companion.m1119getAUDIO_RESTRICTION_VIBRATION_b5Q8KE());
            }
        }
        return AudioRestrictionMode.m1111boximpl(companion.m1120getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE());
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void addListener(AudioRestrictionController.Listener listener) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        synchronized (this.lock) {
            try {
                this.activeListeners.add(listener);
                AudioRestrictionMode audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A = m1405computeAudioRestrictionMode4o0Og1A();
                if (audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A != null) {
                    MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$addListener$1$1(listener, audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A, null));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeListener(AudioRestrictionController.Listener listener) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        this.activeListeners.remove(listener);
    }

    /* JADX INFO: renamed from: updateListenersMode-3NUV5dA, reason: not valid java name */
    private final void m1406updateListenersMode3NUV5dA(AudioRestrictionMode previousMode) {
        AudioRestrictionMode audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A = m1405computeAudioRestrictionMode4o0Og1A();
        if (audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A == null || Intrinsics.areEqual(audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A, previousMode)) {
            return;
        }
        MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$updateListenersMode$1(this, audioRestrictionModeM1405computeAudioRestrictionMode4o0Og1A, null));
    }
}
