package androidx.camera.core;

import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.Identifier;
import androidx.core.util.Preconditions;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class CameraIdentifier {
    private final List cameraIds;
    private final Identifier compatibilityId;

    public /* synthetic */ CameraIdentifier(List list, Identifier identifier, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, identifier);
    }

    private CameraIdentifier(List list, Identifier identifier) {
        this.cameraIds = list;
        this.compatibilityId = identifier;
        Preconditions.checkArgument(!list.isEmpty(), "Camera ID set cannot be empty.");
    }

    public final List getCameraIds() {
        return this.cameraIds;
    }

    public final String getInternalId() {
        Preconditions.checkState(this.cameraIds.size() == 1, "getInternalId() is only available for single-camera identifiers.");
        return (String) CollectionsKt.first(this.cameraIds);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CameraIdentifier)) {
            return false;
        }
        CameraIdentifier cameraIdentifier = (CameraIdentifier) obj;
        return Intrinsics.areEqual(this.cameraIds, cameraIdentifier.cameraIds) && Intrinsics.areEqual(this.compatibilityId, cameraIdentifier.compatibilityId);
    }

    public int hashCode() {
        int iHashCode = this.cameraIds.hashCode() * 31;
        Identifier identifier = this.compatibilityId;
        return iHashCode + (identifier != null ? identifier.hashCode() : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("CameraIdentifier{cameraIds=");
        sb.append(CollectionsKt.joinToString$default(this.cameraIds, ",", null, null, 0, null, null, 62, null));
        Identifier identifier = this.compatibilityId;
        if (identifier != null) {
            str = ", compatId=" + identifier;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }

    public static final class Factory {
        public static final Factory INSTANCE = new Factory();

        public static final CameraIdentifier create(String primaryCameraId) {
            Intrinsics.checkNotNullParameter(primaryCameraId, "primaryCameraId");
            return create$default(primaryCameraId, null, null, 6, null);
        }

        private Factory() {
        }

        public static final CameraIdentifier create(List cameraIds, Identifier identifier) {
            Intrinsics.checkNotNullParameter(cameraIds, "cameraIds");
            return new CameraIdentifier(cameraIds, identifier, null);
        }

        public static /* synthetic */ CameraIdentifier create$default(String str, String str2, Identifier identifier, int i, Object obj) {
            if ((i & 2) != 0) {
                str2 = null;
            }
            if ((i & 4) != 0) {
                identifier = null;
            }
            return create(str, str2, identifier);
        }

        public static final CameraIdentifier create(String primaryCameraId, String str, Identifier identifier) {
            Intrinsics.checkNotNullParameter(primaryCameraId, "primaryCameraId");
            List listMutableListOf = CollectionsKt.mutableListOf(primaryCameraId);
            if (str != null) {
                listMutableListOf.add(str);
            }
            return create(listMutableListOf, identifier);
        }

        public static final CameraIdentifier fromAdapterInfos(AdapterCameraInfo primaryInfo, AdapterCameraInfo adapterCameraInfo) {
            Intrinsics.checkNotNullParameter(primaryInfo, "primaryInfo");
            String cameraId = adapterCameraInfo != null ? adapterCameraInfo.getCameraId() : null;
            Identifier compatibilityId = primaryInfo.getCameraConfig().getCompatibilityId();
            Intrinsics.checkNotNullExpressionValue(compatibilityId, "getCompatibilityId(...)");
            String cameraId2 = primaryInfo.getCameraId();
            Intrinsics.checkNotNullExpressionValue(cameraId2, "getCameraId(...)");
            return create(cameraId2, cameraId, compatibilityId);
        }
    }
}
