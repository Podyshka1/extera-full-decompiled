package androidx.camera.camera2.pipe;

import androidx.camera.camera2.pipe.CameraPipe;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CameraPipeKt {
    private static final AtomicInt cameraPipeIds = AtomicFU.atomic(0);

    public static final AtomicInt getCameraPipeIds() {
        return cameraPipeIds;
    }

    public static final CameraPipe CameraPipe(CameraPipe.Config config) {
        Intrinsics.checkNotNullParameter(config, "config");
        return CameraPipe.Companion.create(config);
    }
}
