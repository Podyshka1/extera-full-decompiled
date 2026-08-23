package androidx.camera.camera2.impl;

import androidx.camera.core.impl.Config;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class UseCaseCameraKt {
    private static final AtomicInt useCaseCameraIds = AtomicFU.atomic(0);
    private static final Config.OptionPriority defaultOptionPriority = Config.OptionPriority.OPTIONAL;

    public static final AtomicInt getUseCaseCameraIds() {
        return useCaseCameraIds;
    }

    public static final Config.OptionPriority getDefaultOptionPriority() {
        return defaultOptionPriority;
    }
}
