package androidx.camera.core;

import androidx.camera.core.impl.AdapterCameraInfo;
import androidx.camera.core.impl.Identifier;
import androidx.core.util.Preconditions;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001:\u0001\u001aB!\b\u0002\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011R\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0007¢\u0006\f\n\u0004\b\u0004\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0007¢\u0006\f\n\u0004\b\u0006\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0019\u001a\u00020\u00038G¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0011¨\u0006\u001b"}, d2 = {"Landroidx/camera/core/CameraIdentifier;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "cameraIds", "Landroidx/camera/core/impl/Identifier;", "compatibilityId", "<init>", "(Ljava/util/List;Landroidx/camera/core/impl/Identifier;)V", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "toString", "()Ljava/lang/String;", "Ljava/util/List;", "getCameraIds", "()Ljava/util/List;", "Landroidx/camera/core/impl/Identifier;", "getCompatibilityId", "()Landroidx/camera/core/impl/Identifier;", "getInternalId", "internalId", "Factory", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCameraIdentifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraIdentifier.kt\nandroidx/camera/core/CameraIdentifier\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,254:1\n1#2:255\n*E\n"})
public final class CameraIdentifier {
    private final List<String> cameraIds;
    private final Identifier compatibilityId;

    public /* synthetic */ CameraIdentifier(List list, Identifier identifier, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, identifier);
    }

    private CameraIdentifier(List<String> list, Identifier identifier) {
        this.cameraIds = list;
        this.compatibilityId = identifier;
        Preconditions.checkArgument(!list.isEmpty(), "Camera ID set cannot be empty.");
    }

    public final List<String> getCameraIds() {
        return this.cameraIds;
    }

    public final String getInternalId() {
        Preconditions.checkState(this.cameraIds.size() == 1, "getInternalId() is only available for single-camera identifiers.");
        return (String) CollectionsKt.first((List) this.cameraIds);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CameraIdentifier)) {
            return false;
        }
        CameraIdentifier cameraIdentifier = (CameraIdentifier) other;
        return Intrinsics.areEqual(this.cameraIds, cameraIdentifier.cameraIds) && Intrinsics.areEqual(this.compatibilityId, cameraIdentifier.compatibilityId);
    }

    public int hashCode() {
        int iHashCode = this.cameraIds.hashCode() * 31;
        Identifier identifier = this.compatibilityId;
        return iHashCode + (identifier != null ? identifier.hashCode() : 0);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("CameraIdentifier{cameraIds=");
        sb.append(CollectionsKt.joinToString$default(this.cameraIds, ",", null, null, 0, null, null, 62, null));
        Identifier identifier = this.compatibilityId;
        if (identifier != null) {
            str = ", compatId=" + identifier;
        } else {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J(\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\nH\u0007J\u001a\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0007¨\u0006\u0011"}, d2 = {"Landroidx/camera/core/CameraIdentifier$Factory;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "create", "Landroidx/camera/core/CameraIdentifier;", "cameraIds", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "compatibilityId", "Landroidx/camera/core/impl/Identifier;", "primaryCameraId", "secondaryCameraId", "fromAdapterInfos", "primaryInfo", "Landroidx/camera/core/impl/AdapterCameraInfo;", "secondaryInfo", "camera-core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraIdentifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraIdentifier.kt\nandroidx/camera/core/CameraIdentifier$Factory\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,254:1\n1#2:255\n*E\n"})
    public static final class Factory {
        public static final Factory INSTANCE = new Factory();

        @JvmStatic
        @JvmOverloads
        public static final CameraIdentifier create(String str) {
            return create$default(str, null, null, 6, null);
        }

        private Factory() {
        }

        @JvmStatic
        @JvmOverloads
        public static final CameraIdentifier create(List<String> cameraIds, Identifier compatibilityId) {
            return new CameraIdentifier(cameraIds, compatibilityId, null);
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

        @JvmStatic
        @JvmOverloads
        public static final CameraIdentifier create(String primaryCameraId, String secondaryCameraId, Identifier compatibilityId) {
            List listMutableListOf = CollectionsKt.mutableListOf(primaryCameraId);
            if (secondaryCameraId != null) {
                listMutableListOf.add(secondaryCameraId);
            }
            return create(listMutableListOf, compatibilityId);
        }

        @JvmStatic
        public static final CameraIdentifier fromAdapterInfos(AdapterCameraInfo primaryInfo, AdapterCameraInfo secondaryInfo) {
            return create(primaryInfo.getCameraId(), secondaryInfo != null ? secondaryInfo.getCameraId() : null, primaryInfo.getCameraConfig().getCompatibilityId());
        }
    }
}
