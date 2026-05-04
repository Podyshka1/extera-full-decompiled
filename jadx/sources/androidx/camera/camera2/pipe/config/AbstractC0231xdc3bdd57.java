package androidx.camera.camera2.pipe.config;

import androidx.camera.camera2.pipe.core.SystemClockOffsets;
import dagger.internal.Preconditions;
import dagger.internal.Provider;

/* JADX INFO: renamed from: androidx.camera.camera2.pipe.config.SharedCameraGraphModules_Companion_ProvideSystemClockOffsetsFactory */
/* JADX INFO: loaded from: classes3.dex */
public abstract class AbstractC0231xdc3bdd57 implements Provider {
    public static SystemClockOffsets provideSystemClockOffsets() {
        return (SystemClockOffsets) Preconditions.checkNotNullFromProvides(SharedCameraGraphModules.Companion.provideSystemClockOffsets());
    }
}
