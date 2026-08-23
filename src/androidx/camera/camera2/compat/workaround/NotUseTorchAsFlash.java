package androidx.camera.camera2.compat.workaround;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final class NotUseTorchAsFlash implements UseTorchAsFlash {
    public static final NotUseTorchAsFlash INSTANCE = new NotUseTorchAsFlash();

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public boolean shouldDisableAePrecapture() {
        return false;
    }

    private NotUseTorchAsFlash() {
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public Object shouldUseTorchAsFlash(Function1 function1, Continuation continuation) {
        return Boxing.boxBoolean(false);
    }
}
