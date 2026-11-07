package androidx.camera.camera2.pipe.core;

import android.content.Context;
import android.os.Build;
import android.os.Trace;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\u0013\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u000b\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b\t\u0010\n¨\u0006\f"}, d2 = {"Landroidx/camera/camera2/pipe/core/Permissions;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraPipeContext", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "_hasCameraPermission", _UrlKt.FRAGMENT_ENCODE_SET, "hasCameraPermission", "getHasCameraPermission", "()Z", "checkCameraPermission", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nPermissions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Permissions.kt\nandroidx/camera/camera2/pipe/core/Permissions\n+ 2 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n1#1,66:1\n71#2,4:67\n78#2,4:71\n*S KotlinDebug\n*F\n+ 1 Permissions.kt\nandroidx/camera/camera2/pipe/core/Permissions\n*L\n54#1:67,4\n61#1:71,4\n*E\n"})
public final class Permissions {
    private volatile boolean _hasCameraPermission;
    private final Context cameraPipeContext;

    public Permissions(Context context) {
        this.cameraPipeContext = context;
    }

    public final boolean getHasCameraPermission() {
        return checkCameraPermission();
    }

    private final boolean checkCameraPermission() {
        if (Intrinsics.areEqual(Build.FINGERPRINT, "robolectric")) {
            return true;
        }
        if (!this._hasCameraPermission) {
            Debug debug = Debug.INSTANCE;
            Trace.beginSection("CXCP#checkCameraPermission");
            if (this.cameraPipeContext.checkSelfPermission("android.permission.CAMERA") == 0) {
                this._hasCameraPermission = true;
            }
            Trace.endSection();
        }
        return this._hasCameraPermission;
    }
}
