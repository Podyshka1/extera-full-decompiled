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
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: loaded from: classes3.dex */
public final class AudioRestrictionControllerImpl implements AudioRestrictionController {
    private final CopyOnWriteArrayList activeListeners;
    private final Map audioRestrictionModeMap;
    private final CoroutineMutex coroutineMutex;
    private AudioRestrictionMode globalAudioRestrictionMode;
    private final Object lock;
    private final CoroutineScope scope;

    public AudioRestrictionControllerImpl(Threads threads, CameraPipeLifetime cameraPipeLifetime, Job cameraPipeJob) {
        Intrinsics.checkNotNullParameter(threads, "threads");
        Intrinsics.checkNotNullParameter(cameraPipeLifetime, "cameraPipeLifetime");
        Intrinsics.checkNotNullParameter(cameraPipeJob, "cameraPipeJob");
        this.scope = CoroutineScopeKt.CoroutineScope(SupervisorKt.SupervisorJob(cameraPipeJob).plus(threads.getLightweightDispatcher().plus(new CoroutineName("CXCP-AudioRestrictionControllerImpl"))));
        this.coroutineMutex = new CoroutineMutex();
        this.lock = new Object();
        this.audioRestrictionModeMap = new LinkedHashMap();
        this.activeListeners = new CopyOnWriteArrayList();
        cameraPipeLifetime.addShutdownAction(CameraPipeLifetime.ShutdownType.SCOPE, new Runnable() { // from class: androidx.camera.camera2.pipe.compat.AudioRestrictionControllerImpl$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                AudioRestrictionControllerImpl._init_$lambda$0(this.f$0);
            }
        });
    }

    /* JADX INFO: renamed from: getGlobalAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    public AudioRestrictionMode m1811getGlobalAudioRestrictionMode4o0Og1A() {
        AudioRestrictionMode audioRestrictionMode;
        synchronized (this.lock) {
            audioRestrictionMode = this.globalAudioRestrictionMode;
        }
        return audioRestrictionMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void _init_$lambda$0(AudioRestrictionControllerImpl audioRestrictionControllerImpl) {
        CoroutineScopeKt.cancel$default(audioRestrictionControllerImpl.scope, null, 1, null);
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeCameraGraph(CameraGraph cameraGraph) {
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        synchronized (this.lock) {
            AudioRestrictionMode audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A = m1809computeAudioRestrictionMode4o0Og1A();
            this.audioRestrictionModeMap.remove(cameraGraph);
            m1810updateListenersMode3NUV5dA(audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A);
            Unit unit = Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: computeAudioRestrictionMode-4o0Og1A, reason: not valid java name */
    private final AudioRestrictionMode m1809computeAudioRestrictionMode4o0Og1A() {
        Map map = this.audioRestrictionModeMap;
        AudioRestrictionMode.Companion companion = AudioRestrictionMode.Companion;
        if (!map.containsValue(AudioRestrictionMode.m1505boximpl(companion.m1514getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
            AudioRestrictionMode audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A = m1811getGlobalAudioRestrictionMode4o0Og1A();
            if (!(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A == null ? false : AudioRestrictionMode.m1508equalsimpl0(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A.m1511unboximpl(), companion.m1514getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE()))) {
                if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m1505boximpl(companion.m1513getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                    AudioRestrictionMode audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A2 = m1811getGlobalAudioRestrictionMode4o0Og1A();
                    if (!(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A2 == null ? false : AudioRestrictionMode.m1508equalsimpl0(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A2.m1511unboximpl(), companion.m1513getAUDIO_RESTRICTION_VIBRATION_b5Q8KE()))) {
                        if (!this.audioRestrictionModeMap.containsValue(AudioRestrictionMode.m1505boximpl(companion.m1512getAUDIO_RESTRICTION_NONE_b5Q8KE()))) {
                            AudioRestrictionMode audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A3 = m1811getGlobalAudioRestrictionMode4o0Og1A();
                            if (!(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A3 != null ? AudioRestrictionMode.m1508equalsimpl0(audioRestrictionModeM1811getGlobalAudioRestrictionMode4o0Og1A3.m1511unboximpl(), companion.m1512getAUDIO_RESTRICTION_NONE_b5Q8KE()) : false)) {
                                return null;
                            }
                        }
                        return AudioRestrictionMode.m1505boximpl(companion.m1512getAUDIO_RESTRICTION_NONE_b5Q8KE());
                    }
                }
                return AudioRestrictionMode.m1505boximpl(companion.m1513getAUDIO_RESTRICTION_VIBRATION_b5Q8KE());
            }
        }
        return AudioRestrictionMode.m1505boximpl(companion.m1514getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE());
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void addListener(AudioRestrictionController.Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        synchronized (this.lock) {
            try {
                this.activeListeners.add(listener);
                AudioRestrictionMode audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A = m1809computeAudioRestrictionMode4o0Og1A();
                if (audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A != null) {
                    MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$addListener$1$1(listener, audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A, null));
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.pipe.compat.AudioRestrictionController
    public void removeListener(AudioRestrictionController.Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        this.activeListeners.remove(listener);
    }

    /* JADX INFO: renamed from: updateListenersMode-3NUV5dA, reason: not valid java name */
    private final void m1810updateListenersMode3NUV5dA(AudioRestrictionMode audioRestrictionMode) {
        AudioRestrictionMode audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A = m1809computeAudioRestrictionMode4o0Og1A();
        if (audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A == null || Intrinsics.areEqual(audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A, audioRestrictionMode)) {
            return;
        }
        MutexesKt.withLockLaunch(this.coroutineMutex, this.scope, new AudioRestrictionControllerImpl$updateListenersMode$1(this, audioRestrictionModeM1809computeAudioRestrictionMode4o0Og1A, null));
    }
}
