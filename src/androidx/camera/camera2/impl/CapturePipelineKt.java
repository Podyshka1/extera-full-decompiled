package androidx.camera.camera2.impl;

import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CapturePipelineKt {
    private static final long CHECK_3A_TIMEOUT_IN_NS;
    private static final long CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
    private static final long CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS;
    private static final long CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        CHECK_FLASH_REQUIRED_TIMEOUT_IN_NS = timeUnit.toNanos(1L);
        CHECK_3A_TIMEOUT_IN_NS = timeUnit.toNanos(1L);
        CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS = timeUnit.toNanos(5L);
        CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS = timeUnit.toNanos(2L);
    }
}
