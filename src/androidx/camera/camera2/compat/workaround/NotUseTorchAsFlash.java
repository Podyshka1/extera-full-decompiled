package androidx.camera.camera2.compat.workaround;

import androidx.camera.camera2.pipe.FrameMetadata;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u001e\u0010\u0006\u001a\u001a\b\u0001\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\b\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0096@¢\u0006\u0002\u0010\u000bJ\b\u0010\f\u001a\u00020\u0005H\u0016¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/compat/workaround/NotUseTorchAsFlash;", "Landroidx/camera/camera2/compat/workaround/UseTorchAsFlash;", "<init>", "()V", "shouldUseTorchAsFlash", _UrlKt.FRAGMENT_ENCODE_SET, "frameMetadata", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldDisableAePrecapture", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class NotUseTorchAsFlash implements UseTorchAsFlash {
    public static final NotUseTorchAsFlash INSTANCE = new NotUseTorchAsFlash();

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public boolean shouldDisableAePrecapture() {
        return false;
    }

    private NotUseTorchAsFlash() {
    }

    @Override // androidx.camera.camera2.compat.workaround.UseTorchAsFlash
    public Object shouldUseTorchAsFlash(Function1<? super Continuation<? super FrameMetadata>, ? extends Object> function1, Continuation<? super Boolean> continuation) {
        return Boxing.boxBoolean(false);
    }
}
