package androidx.camera.camera2.impl;

import androidx.camera.camera2.impl.UseCaseCameraRequestControl;
import androidx.camera.camera2.pipe.AeMode;
import androidx.camera.camera2.pipe.Lock3ABehavior;
import androidx.camera.core.impl.Config;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.inject.Provider;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.ExecutorsKt;

/* JADX INFO: loaded from: classes3.dex */
public final class DeferredUseCaseCameraRequestControl implements UseCaseCameraRequestControl {
    private volatile UseCaseCameraRequestControlImpl impl;
    private final Provider implProvider;
    private final AtomicBoolean isClosed;
    private final UseCaseThreads threads;

    public DeferredUseCaseCameraRequestControl(Provider implProvider, UseCaseThreads threads) {
        Intrinsics.checkNotNullParameter(implProvider, "implProvider");
        Intrinsics.checkNotNullParameter(threads, "threads");
        this.implProvider = implProvider;
        this.threads = threads;
        this.isClosed = new AtomicBoolean(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final UseCaseCameraRequestControlImpl getOrCreateImpl() {
        if (this.isClosed.get()) {
            throw new CancellationException("UseCaseCameraRequestControl is closed");
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl != null) {
            return useCaseCameraRequestControlImpl;
        }
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl2 = (UseCaseCameraRequestControlImpl) this.implProvider.get();
        if (this.isClosed.get()) {
            useCaseCameraRequestControlImpl2.close();
            throw new CancellationException("UseCaseCameraRequestControl closed during initialization");
        }
        this.impl = useCaseCameraRequestControlImpl2;
        Intrinsics.checkNotNull(useCaseCameraRequestControlImpl2);
        return useCaseCameraRequestControlImpl2;
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred cancelFocusAndMeteringAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0143x29aef82c(this, null), 3, null);
        }
        return useCaseCameraRequestControlImpl.cancelFocusAndMeteringAsync();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred removeParametersAsync(List keys, UseCaseCameraRequestControl.Type type) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        Intrinsics.checkNotNullParameter(type, "type");
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0146x932bf328(this, null, keys, type), 3, null);
        }
        return useCaseCameraRequestControlImpl.removeParametersAsync(keys, type);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred setParametersAsync(Map values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(optionPriority, "optionPriority");
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0147xccc60ab4(this, null, values, type, optionPriority), 3, null);
        }
        return useCaseCameraRequestControlImpl.setParametersAsync(values, type, optionPriority);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: setTorchOffAsync-MtizInI, reason: not valid java name */
    public Deferred mo1444setTorchOffAsyncMtizInI(int i) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0148x39d4f8de(this, null, i), 3, null);
        }
        return useCaseCameraRequestControlImpl.mo1444setTorchOffAsyncMtizInI(i);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred setTorchOnAsync() {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0149x618e5c93(this, null), 3, null);
        }
        return useCaseCameraRequestControlImpl.setTorchOnAsync();
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    /* JADX INFO: renamed from: startFocusAndMeteringAsync-NxRnBj4, reason: not valid java name */
    public Deferred mo1445startFocusAndMeteringAsyncNxRnBj4(List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode, long j) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0150x8145dde9(this, null, list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j), 3, null);
        }
        return useCaseCameraRequestControlImpl.mo1445startFocusAndMeteringAsyncNxRnBj4(list, list2, list3, lock3ABehavior, lock3ABehavior2, lock3ABehavior3, aeMode, j);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred submitParameters(Map values, UseCaseCameraRequestControl.Type type, Config.OptionPriority optionPriority) {
        Intrinsics.checkNotNullParameter(values, "values");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(optionPriority, "optionPriority");
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0151xc5a54702(this, null, values, type, optionPriority), 3, null);
        }
        return useCaseCameraRequestControlImpl.submitParameters(values, type, optionPriority);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred update3aRegions(List list, List list2, List list3) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0152x40e4bc4e(this, null, list, list2, list3), 3, null);
        }
        return useCaseCameraRequestControlImpl.update3aRegions(list, list2, list3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred updateCamera2ConfigAsync(Config config, Map tags) {
        Intrinsics.checkNotNullParameter(config, "config");
        Intrinsics.checkNotNullParameter(tags, "tags");
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0153x125bb28e(this, null, config, tags), 3, null);
        }
        return useCaseCameraRequestControlImpl.updateCamera2ConfigAsync(config, tags);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Deferred updateRepeatingRequestAsync(boolean z, Collection runningUseCases) {
        Intrinsics.checkNotNullParameter(runningUseCases, "runningUseCases");
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0154xce0dd9eb(this, null, z, runningUseCases), 3, null);
        }
        return useCaseCameraRequestControlImpl.updateRepeatingRequestAsync(z, runningUseCases);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public Object awaitSurfaceSetup(Continuation continuation) {
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            return BuildersKt.withContext(ExecutorsKt.from(this.threads.getSequentialExecutor()), new C0142xb4e144e6(this, null), continuation);
        }
        return useCaseCameraRequestControlImpl.awaitSurfaceSetup(continuation);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public List issueSingleCaptureAsync(List captureSequence, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(captureSequence, "captureSequence");
        int size = captureSequence.size();
        UseCaseCameraRequestControlImpl useCaseCameraRequestControlImpl = this.impl;
        if (useCaseCameraRequestControlImpl == null) {
            Deferred deferredAsync$default = BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new C0145x85f7291d(this, null, captureSequence, i, i2, i3), 3, null);
            ArrayList arrayList = new ArrayList(size);
            for (int i4 = 0; i4 < size; i4++) {
                arrayList.add(BuildersKt__Builders_commonKt.async$default(this.threads.getSequentialScope(), null, null, new DeferredUseCaseCameraRequestControl$runOnSequentialList$2$1(deferredAsync$default, i4, null), 3, null));
            }
            return arrayList;
        }
        return useCaseCameraRequestControlImpl.issueSingleCaptureAsync(captureSequence, i, i2, i3);
    }

    @Override // androidx.camera.camera2.impl.UseCaseCameraRequestControl
    public void close() {
        if (this.isClosed.getAndSet(true)) {
            return;
        }
        BuildersKt__Builders_commonKt.launch$default(this.threads.getSequentialScope(), null, null, new C0144x4d9c11a4(null, this), 3, null);
    }
}
