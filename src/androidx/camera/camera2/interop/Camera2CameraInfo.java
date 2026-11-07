package androidx.camera.camera2.interop;

import android.hardware.camera2.CameraCharacteristics;
import android.util.Pair;
import androidx.camera.camera2.adapter.CameraInfoAdapter;
import androidx.camera.camera2.compat.workaround.CameraMetadataSafeGetterKt;
import androidx.camera.camera2.impl.CameraProperties;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.impl.AdapterCameraInfo;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Request$Builder$$ExternalSyntheticBUOutline0;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B3\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012 \b\u0002\u0010\u0004\u001a\u001a\u0012\u0014\u0012\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u0005¢\u0006\u0004\b\b\u0010\tJ!\u0010\f\u001a\u0004\u0018\u0001H\r\"\u0004\b\u0000\u0010\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u0002H\r0\u0007¢\u0006\u0002\u0010\u000fJ\u0006\u0010\u0010\u001a\u00020\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\u0004\u001a\u001a\u0012\u0014\u0012\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0007\u0012\u0004\u0012\u00020\u00010\u0006\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/interop/Camera2CameraInfo;", _UrlKt.FRAGMENT_ENCODE_SET, "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "extensionsSpecificChars", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Pair;", "Landroid/hardware/camera2/CameraCharacteristics$Key;", "<init>", "(Landroidx/camera/camera2/impl/CameraProperties;Ljava/util/List;)V", "cameraId", _UrlKt.FRAGMENT_ENCODE_SET, "getCameraCharacteristic", "T", PluginsConstants.Settings.KEY, "(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;", "getCameraId", "Companion", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCamera2CameraInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Camera2CameraInfo.kt\nandroidx/camera/camera2/interop/Camera2CameraInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1869#2,2:117\n*S KotlinDebug\n*F\n+ 1 Camera2CameraInfo.kt\nandroidx/camera/camera2/interop/Camera2CameraInfo\n*L\n48#1:117,2\n*E\n"})
public final class Camera2CameraInfo {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    @JvmField
    public final /* synthetic */ String cameraId;
    private final CameraProperties cameraProperties;
    private final List<Pair<CameraCharacteristics.Key<?>, Object>> extensionsSpecificChars;

    @JvmStatic
    public static final Camera2CameraInfo from(CameraInfo cameraInfo) {
        return INSTANCE.from(cameraInfo);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Camera2CameraInfo(CameraProperties cameraProperties, List<? extends Pair<CameraCharacteristics.Key<?>, Object>> list) {
        this.cameraProperties = cameraProperties;
        this.extensionsSpecificChars = list;
        this.cameraId = cameraProperties.mo1135getCameraIdDz_R5H8();
    }

    public /* synthetic */ Camera2CameraInfo(CameraProperties cameraProperties, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(cameraProperties, (i & 2) != 0 ? null : list);
    }

    public final <T> T getCameraCharacteristic(CameraCharacteristics.Key<T> key) {
        List<Pair<CameraCharacteristics.Key<?>, Object>> list = this.extensionsSpecificChars;
        if (list != null) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                if (Intrinsics.areEqual(pair.first, key)) {
                    return (T) pair.second;
                }
            }
        }
        return (T) CameraMetadataSafeGetterKt.getSafely(this.cameraProperties.getMetadata(), key);
    }

    public final String getCameraId() {
        return this.cameraId;
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u000b"}, d2 = {"Landroidx/camera/camera2/interop/Camera2CameraInfo$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "from", "Landroidx/camera/camera2/interop/Camera2CameraInfo;", "cameraInfo", "Landroidx/camera/core/CameraInfo;", "create", "cameraProperties", "Landroidx/camera/camera2/impl/CameraProperties;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final Camera2CameraInfo from(CameraInfo cameraInfo) {
            Camera2CameraInfo camera2CameraInfo = (Camera2CameraInfo) CameraInfoAdapter.INSTANCE.unwrapAs(cameraInfo, Reflection.getOrCreateKotlinClass(Camera2CameraInfo.class));
            if (camera2CameraInfo == null) {
                Request$Builder$$ExternalSyntheticBUOutline0.m904m("Could not unwrap ", cameraInfo, " as Camera2CameraInfo!");
                return null;
            }
            if (cameraInfo instanceof AdapterCameraInfo) {
                ((AdapterCameraInfo) cameraInfo).getSessionProcessor();
            }
            return camera2CameraInfo;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @JvmStatic
        public final Camera2CameraInfo create(CameraProperties cameraProperties) {
            return new Camera2CameraInfo(cameraProperties, null, 2, 0 == true ? 1 : 0);
        }
    }
}
