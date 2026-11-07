package androidx.camera.camera2.pipe;

import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.Request;
import androidx.camera.camera2.pipe.compat.Camera2Quirks;
import androidx.camera.camera2.pipe.core.Log;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmInline;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.RandomKt$$ExternalSyntheticBUOutline0;
import kotlinx.coroutines.Deferred;
import okhttp3.internal.url._UrlKt;
import okio.ByteString$$ExternalSyntheticBUOutline0;
import okio.Segment$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0007\u0004\u0005\u0006\u0007\b\t\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph;", "Landroidx/camera/camera2/pipe/CameraGraphBase;", "Landroidx/camera/camera2/pipe/CameraGraph$Session;", "Landroidx/camera/camera2/pipe/CameraControls3A;", "Config", "ConcurrentConfig", "RepeatingRequestRequirementsBeforeCapture", "Flags", "OperatingMode", "Constants3A", "Session", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
public interface CameraGraph extends CameraGraphBase<Session>, CameraControls3A {

    @kotlin.Metadata(d1 = {"\u0000\u0084\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0087\b\u0018\u00002\u00020\u0001B\u0089\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0004\u0012\u0010\b\u0002\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\u0014\b\u0002\u0010\u000e\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u000f\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u000b\u0012\u0014\b\u0002\u0010\u0012\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\u0012\u000e\b\u0002\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u0004\u0012\u000e\b\u0002\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u0004\u0012\u0014\b\u0002\u0010\u0017\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001a\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001c\u0012\b\b\u0002\u0010\u001f\u001a\u00020\u001e\u0012\n\b\u0002\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b\"\u0010#J\u0010\u0010%\u001a\u00020$HÖ\u0001¢\u0006\u0004\b%\u0010&J\u0010\u0010(\u001a\u00020'HÖ\u0001¢\u0006\u0004\b(\u0010)J\u001a\u0010,\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b,\u0010-R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010.\u001a\u0004\b/\u0010&R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u00100\u001a\u0004\b1\u00102R#\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00048\u0006¢\u0006\f\n\u0004\b\u0007\u00100\u001a\u0004\b3\u00102R\u001f\u0010\t\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\t\u00100\u001a\u0004\b4\u00102R\u0019\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006¢\u0006\f\n\u0004\b\n\u00105\u001a\u0004\b6\u00107R\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u00108\u001a\u0004\b9\u0010)R#\u0010\u000e\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r8\u0006¢\u0006\f\n\u0004\b\u000e\u0010:\u001a\u0004\b;\u0010<R\u0017\u0010\u0010\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b\u0010\u00108\u001a\u0004\b=\u0010)R\u0017\u0010\u0011\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\u0011\u00108\u001a\u0004\b>\u0010)R#\u0010\u0012\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r8\u0006¢\u0006\f\n\u0004\b\u0012\u0010:\u001a\u0004\b?\u0010<R\u001d\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00130\u00048\u0006¢\u0006\f\n\u0004\b\u0014\u00100\u001a\u0004\b@\u00102R\u001d\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00150\u00048\u0006¢\u0006\f\n\u0004\b\u0016\u00100\u001a\u0004\bA\u00102R#\u0010\u0017\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\r8\u0006¢\u0006\f\n\u0004\b\u0017\u0010:\u001a\u0004\bB\u0010<R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010.\u001a\u0004\bC\u0010&R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010D\u001a\u0004\bE\u0010FR\u0017\u0010\u001d\u001a\u00020\u001c8\u0006¢\u0006\f\n\u0004\b\u001d\u0010G\u001a\u0004\bH\u0010IR\u0017\u0010\u001f\u001a\u00020\u001e8\u0006¢\u0006\f\n\u0004\b\u001f\u0010J\u001a\u0004\bK\u0010LR\u0019\u0010!\u001a\u0004\u0018\u00010 8\u0006¢\u0006\f\n\u0004\b!\u0010.\u001a\u0004\bM\u0010&R$\u0010O\u001a\u0004\u0018\u00010N8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bO\u0010P\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010T¨\u0006U"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Config;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraId;", "camera", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream$Config;", "streams", "exclusiveStreamGroups", "Landroidx/camera/camera2/pipe/InputStream$Config;", PluginsConstants.Settings.TYPE_INPUT, "postviewStream", "Landroidx/camera/camera2/pipe/RequestTemplate;", "sessionTemplate", _UrlKt.FRAGMENT_ENCODE_SET, "sessionParameters", "Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;", "sessionMode", "defaultTemplate", "defaultParameters", "Landroidx/camera/camera2/pipe/Request$Listener;", "defaultListeners", "Landroidx/camera/camera2/pipe/GraphStateListener;", "graphStateListeners", "requiredParameters", "Landroidx/camera/camera2/pipe/CameraBackendId;", "cameraBackendId", "Landroidx/camera/camera2/pipe/CameraBackendFactory;", "customCameraBackend", "Landroidx/camera/camera2/pipe/MetadataTransform;", "metadataTransform", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "flags", "Landroidx/camera/camera2/pipe/CameraColorSpace;", "sessionColorSpace", "<init>", "(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/CameraStream$Config;ILjava/util/Map;IILjava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Landroidx/camera/camera2/pipe/CameraBackendFactory;Landroidx/camera/camera2/pipe/MetadataTransform;Landroidx/camera/camera2/pipe/CameraGraph$Flags;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", _UrlKt.FRAGMENT_ENCODE_SET, "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getCamera-Dz_R5H8", "Ljava/util/List;", "getStreams", "()Ljava/util/List;", "getExclusiveStreamGroups", "getInput", "Landroidx/camera/camera2/pipe/CameraStream$Config;", "getPostviewStream", "()Landroidx/camera/camera2/pipe/CameraStream$Config;", "I", "getSessionTemplate-fGx8uWA", "Ljava/util/Map;", "getSessionParameters", "()Ljava/util/Map;", "getSessionMode-2uNL3no", "getDefaultTemplate-fGx8uWA", "getDefaultParameters", "getDefaultListeners", "getGraphStateListeners", "getRequiredParameters", "getCameraBackendId-AKmI2lo", "Landroidx/camera/camera2/pipe/CameraBackendFactory;", "getCustomCameraBackend", "()Landroidx/camera/camera2/pipe/CameraBackendFactory;", "Landroidx/camera/camera2/pipe/MetadataTransform;", "getMetadataTransform", "()Landroidx/camera/camera2/pipe/MetadataTransform;", "Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "getFlags", "()Landroidx/camera/camera2/pipe/CameraGraph$Flags;", "getSessionColorSpace-dxVZaPA", "Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;", "concurrentCameraGraphs", "Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;", "getConcurrentCameraGraphs$camera_camera2_pipe", "()Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;", "setConcurrentCameraGraphs$camera_camera2_pipe", "(Landroidx/camera/camera2/pipe/ConcurrentCameraGraphs;)V", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Config {
        private final String camera;
        private final String cameraBackendId;
        private ConcurrentCameraGraphs concurrentCameraGraphs;
        private final CameraBackendFactory customCameraBackend;
        private final List<Request.Listener> defaultListeners;
        private final Map<?, Object> defaultParameters;
        private final int defaultTemplate;
        private final List<List<CameraStream.Config>> exclusiveStreamGroups;
        private final Flags flags;
        private final List<GraphStateListener> graphStateListeners;
        private final List<InputStream.Config> input;
        private final MetadataTransform metadataTransform;
        private final CameraStream.Config postviewStream;
        private final Map<?, Object> requiredParameters;
        private final String sessionColorSpace;
        private final int sessionMode;
        private final Map<?, Object> sessionParameters;
        private final int sessionTemplate;
        private final List<CameraStream.Config> streams;

        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, list2, list3, config, i, map, i2, i3, map2, list4, list5, map3, str2, cameraBackendFactory, metadataTransform, flags, str3);
        }

        /* JADX WARN: Removed duplicated region for block: B:51:0x00a5  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x00dc  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean equals(Object other) {
            boolean zM1278equalsimpl0;
            boolean zM1284equalsimpl0;
            if (this == other) {
                return true;
            }
            if (!(other instanceof Config)) {
                return false;
            }
            Config config = (Config) other;
            if (!CameraId.m1354equalsimpl0(this.camera, config.camera) || !Intrinsics.areEqual(this.streams, config.streams) || !Intrinsics.areEqual(this.exclusiveStreamGroups, config.exclusiveStreamGroups) || !Intrinsics.areEqual(this.input, config.input) || !Intrinsics.areEqual(this.postviewStream, config.postviewStream) || !RequestTemplate.m1497equalsimpl0(this.sessionTemplate, config.sessionTemplate) || !Intrinsics.areEqual(this.sessionParameters, config.sessionParameters) || !OperatingMode.m1340equalsimpl0(this.sessionMode, config.sessionMode) || !RequestTemplate.m1497equalsimpl0(this.defaultTemplate, config.defaultTemplate) || !Intrinsics.areEqual(this.defaultParameters, config.defaultParameters) || !Intrinsics.areEqual(this.defaultListeners, config.defaultListeners) || !Intrinsics.areEqual(this.graphStateListeners, config.graphStateListeners) || !Intrinsics.areEqual(this.requiredParameters, config.requiredParameters)) {
                return false;
            }
            String str = this.cameraBackendId;
            String str2 = config.cameraBackendId;
            if (str == null) {
                zM1278equalsimpl0 = str2 == null;
            } else if (str2 != null) {
                zM1278equalsimpl0 = CameraBackendId.m1278equalsimpl0(str, str2);
            }
            if (!zM1278equalsimpl0 || !Intrinsics.areEqual(this.customCameraBackend, config.customCameraBackend) || !Intrinsics.areEqual(this.metadataTransform, config.metadataTransform) || !Intrinsics.areEqual(this.flags, config.flags)) {
                return false;
            }
            String str3 = this.sessionColorSpace;
            String str4 = config.sessionColorSpace;
            if (str3 == null) {
                zM1284equalsimpl0 = str4 == null;
            } else if (str4 != null) {
                zM1284equalsimpl0 = CameraColorSpace.m1284equalsimpl0(str3, str4);
            }
            return zM1284equalsimpl0;
        }

        public int hashCode() {
            int iM1355hashCodeimpl = ((((CameraId.m1355hashCodeimpl(this.camera) * 31) + this.streams.hashCode()) * 31) + this.exclusiveStreamGroups.hashCode()) * 31;
            List<InputStream.Config> list = this.input;
            int iHashCode = (iM1355hashCodeimpl + (list == null ? 0 : list.hashCode())) * 31;
            CameraStream.Config config = this.postviewStream;
            int iHashCode2 = (((((((((((((((((iHashCode + (config == null ? 0 : config.hashCode())) * 31) + RequestTemplate.m1499hashCodeimpl(this.sessionTemplate)) * 31) + this.sessionParameters.hashCode()) * 31) + OperatingMode.m1341hashCodeimpl(this.sessionMode)) * 31) + RequestTemplate.m1499hashCodeimpl(this.defaultTemplate)) * 31) + this.defaultParameters.hashCode()) * 31) + this.defaultListeners.hashCode()) * 31) + this.graphStateListeners.hashCode()) * 31) + this.requiredParameters.hashCode()) * 31;
            String str = this.cameraBackendId;
            int iM1279hashCodeimpl = (iHashCode2 + (str == null ? 0 : CameraBackendId.m1279hashCodeimpl(str))) * 31;
            CameraBackendFactory cameraBackendFactory = this.customCameraBackend;
            int iHashCode3 = (((((iM1279hashCodeimpl + (cameraBackendFactory == null ? 0 : cameraBackendFactory.hashCode())) * 31) + this.metadataTransform.hashCode()) * 31) + this.flags.hashCode()) * 31;
            String str2 = this.sessionColorSpace;
            return iHashCode3 + (str2 != null ? CameraColorSpace.m1285hashCodeimpl(str2) : 0);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("Config(camera=");
            sb.append((Object) CameraId.m1356toStringimpl(this.camera));
            sb.append(", streams=");
            sb.append(this.streams);
            sb.append(", exclusiveStreamGroups=");
            sb.append(this.exclusiveStreamGroups);
            sb.append(", input=");
            sb.append(this.input);
            sb.append(", postviewStream=");
            sb.append(this.postviewStream);
            sb.append(", sessionTemplate=");
            sb.append((Object) RequestTemplate.m1500toStringimpl(this.sessionTemplate));
            sb.append(", sessionParameters=");
            sb.append(this.sessionParameters);
            sb.append(", sessionMode=");
            sb.append((Object) OperatingMode.m1342toStringimpl(this.sessionMode));
            sb.append(", defaultTemplate=");
            sb.append((Object) RequestTemplate.m1500toStringimpl(this.defaultTemplate));
            sb.append(", defaultParameters=");
            sb.append(this.defaultParameters);
            sb.append(", defaultListeners=");
            sb.append(this.defaultListeners);
            sb.append(", graphStateListeners=");
            sb.append(this.graphStateListeners);
            sb.append(", requiredParameters=");
            sb.append(this.requiredParameters);
            sb.append(", cameraBackendId=");
            String str = this.cameraBackendId;
            sb.append((Object) (str == null ? "null" : CameraBackendId.m1280toStringimpl(str)));
            sb.append(", customCameraBackend=");
            sb.append(this.customCameraBackend);
            sb.append(", metadataTransform=");
            sb.append(this.metadataTransform);
            sb.append(", flags=");
            sb.append(this.flags);
            sb.append(", sessionColorSpace=");
            String str2 = this.sessionColorSpace;
            sb.append((Object) (str2 != null ? CameraColorSpace.m1287toStringimpl(str2) : "null"));
            sb.append(')');
            return sb.toString();
        }

        /* JADX WARN: Multi-variable type inference failed */
        private Config(String str, List<CameraStream.Config> list, List<? extends List<CameraStream.Config>> list2, List<InputStream.Config> list3, CameraStream.Config config, int i, Map<?, ? extends Object> map, int i2, int i3, Map<?, ? extends Object> map2, List<? extends Request.Listener> list4, List<? extends GraphStateListener> list5, Map<?, ? extends Object> map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3) {
            this.camera = str;
            this.streams = list;
            this.exclusiveStreamGroups = list2;
            this.input = list3;
            this.postviewStream = config;
            this.sessionTemplate = i;
            this.sessionParameters = map;
            this.sessionMode = i2;
            this.defaultTemplate = i3;
            this.defaultParameters = map2;
            this.defaultListeners = list4;
            this.graphStateListeners = list5;
            this.requiredParameters = map3;
            this.cameraBackendId = str2;
            this.customCameraBackend = cameraBackendFactory;
            this.metadataTransform = metadataTransform;
            this.flags = flags;
            this.sessionColorSpace = str3;
            if (str2 == null || cameraBackendFactory == null) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("Setting both cameraBackendId and customCameraBackend is not supported.");
            throw null;
        }

        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name and from getter */
        public final String getCamera() {
            return this.camera;
        }

        public final List<CameraStream.Config> getStreams() {
            return this.streams;
        }

        public /* synthetic */ Config(String str, List list, List list2, List list3, CameraStream.Config config, int i, Map map, int i2, int i3, Map map2, List list4, List list5, Map map3, String str2, CameraBackendFactory cameraBackendFactory, MetadataTransform metadataTransform, Flags flags, String str3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, list, (i4 & 4) != 0 ? CollectionsKt.emptyList() : list2, (i4 & 8) != 0 ? null : list3, (i4 & 16) != 0 ? null : config, (i4 & 32) != 0 ? RequestTemplate.m1495constructorimpl(1) : i, (i4 & 64) != 0 ? MapsKt.emptyMap() : map, (i4 & 128) != 0 ? OperatingMode.INSTANCE.m1346getNORMAL2uNL3no() : i2, (i4 & 256) != 0 ? RequestTemplate.m1495constructorimpl(1) : i3, (i4 & 512) != 0 ? MapsKt.emptyMap() : map2, (i4 & 1024) != 0 ? CollectionsKt.emptyList() : list4, (i4 & 2048) != 0 ? CollectionsKt.emptyList() : list5, (i4 & 4096) != 0 ? MapsKt.emptyMap() : map3, (i4 & 8192) != 0 ? null : str2, (i4 & 16384) != 0 ? null : cameraBackendFactory, (32768 & i4) != 0 ? new MetadataTransform(0, 0, null, 7, null) : metadataTransform, (65536 & i4) != 0 ? new Flags(false, false, null, null, 0, false, false, false, 255, null) : flags, (i4 & 131072) != 0 ? null : str3, null);
        }

        public final List<List<CameraStream.Config>> getExclusiveStreamGroups() {
            return this.exclusiveStreamGroups;
        }

        public final List<InputStream.Config> getInput() {
            return this.input;
        }

        public final CameraStream.Config getPostviewStream() {
            return this.postviewStream;
        }

        /* JADX INFO: renamed from: getSessionTemplate-fGx8uWA, reason: not valid java name and from getter */
        public final int getSessionTemplate() {
            return this.sessionTemplate;
        }

        public final Map<?, Object> getSessionParameters() {
            return this.sessionParameters;
        }

        /* JADX INFO: renamed from: getSessionMode-2uNL3no, reason: not valid java name and from getter */
        public final int getSessionMode() {
            return this.sessionMode;
        }

        /* JADX INFO: renamed from: getDefaultTemplate-fGx8uWA, reason: not valid java name and from getter */
        public final int getDefaultTemplate() {
            return this.defaultTemplate;
        }

        public final Map<?, Object> getDefaultParameters() {
            return this.defaultParameters;
        }

        public final List<Request.Listener> getDefaultListeners() {
            return this.defaultListeners;
        }

        public final List<GraphStateListener> getGraphStateListeners() {
            return this.graphStateListeners;
        }

        public final Map<?, Object> getRequiredParameters() {
            return this.requiredParameters;
        }

        /* JADX INFO: renamed from: getCameraBackendId-AKmI2lo, reason: not valid java name and from getter */
        public final String getCameraBackendId() {
            return this.cameraBackendId;
        }

        public final CameraBackendFactory getCustomCameraBackend() {
            return this.customCameraBackend;
        }

        public final Flags getFlags() {
            return this.flags;
        }

        /* JADX INFO: renamed from: getSessionColorSpace-dxVZaPA, reason: not valid java name and from getter */
        public final String getSessionColorSpace() {
            return this.sessionColorSpace;
        }

        /* JADX INFO: renamed from: getConcurrentCameraGraphs$camera_camera2_pipe, reason: from getter */
        public final ConcurrentCameraGraphs getConcurrentCameraGraphs() {
            return this.concurrentCameraGraphs;
        }

        public final void setConcurrentCameraGraphs$camera_camera2_pipe(ConcurrentCameraGraphs concurrentCameraGraphs) {
            this.concurrentCameraGraphs = concurrentCameraGraphs;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "graphConfigs", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "<init>", "(Ljava/util/List;)V", "getGraphConfigs", "()Ljava/util/List;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCameraGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraGraph.kt\nandroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,835:1\n1740#2,3:836\n1563#2:839\n1634#2,3:840\n*S KotlinDebug\n*F\n+ 1 CameraGraph.kt\nandroidx/camera/camera2/pipe/CameraGraph$ConcurrentConfig\n*L\n113#1:836,3\n117#1:839\n117#1:840,3\n*E\n"})
    public static final class ConcurrentConfig {
        private final List<Config> graphConfigs;

        /* JADX WARN: Removed duplicated region for block: B:16:0x0044  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x004f A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:? A[LOOP:1: B:10:0x002a->B:44:?, LOOP_END, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public ConcurrentConfig(List<Config> list) {
            boolean zM1278equalsimpl0;
            boolean z;
            this.graphConfigs = list;
            if (list.size() < 2) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Cannot create ConcurrentGraphConfig without 2 or more CameraGraph.Config(s)");
                throw null;
            }
            Config config = (Config) CollectionsKt.first((List) list);
            List<Config> list2 = list;
            if ((list2 instanceof Collection) && list2.isEmpty()) {
                z = true;
            } else {
                Iterator<T> it = list2.iterator();
                while (it.hasNext()) {
                    String cameraBackendId = ((Config) it.next()).getCameraBackendId();
                    String cameraBackendId2 = config.getCameraBackendId();
                    if (cameraBackendId == null) {
                        zM1278equalsimpl0 = cameraBackendId2 == null;
                        if (zM1278equalsimpl0) {
                            z = false;
                            break;
                        }
                    } else {
                        if (cameraBackendId2 != null) {
                            zM1278equalsimpl0 = CameraBackendId.m1278equalsimpl0(cameraBackendId, cameraBackendId2);
                        }
                        if (zM1278equalsimpl0) {
                        }
                    }
                }
                z = true;
            }
            if (!z) {
                Segment$$ExternalSyntheticBUOutline1.m973m("Each CameraGraph.Config must use the same camera backend!");
                throw null;
            }
            List<Config> list3 = this.graphConfigs;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, 10));
            Iterator<T> it2 = list3.iterator();
            while (it2.hasNext()) {
                arrayList.add(CameraId.m1351boximpl(((Config) it2.next()).getCamera()));
            }
            if (CollectionsKt.distinct(arrayList).size() == this.graphConfigs.size()) {
                return;
            }
            Segment$$ExternalSyntheticBUOutline1.m973m("Each CameraGraph.Config must have a distinct camera id!");
            throw null;
        }

        public final List<Config> getGraphConfigs() {
            return this.graphConfigs;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001:\u0001\rB\u001b\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007R\u0013\u0010\u0002\u001a\u00020\u0003¢\u0006\n\n\u0002\u0010\n\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;", _UrlKt.FRAGMENT_ENCODE_SET, "repeatingFramesToComplete", "Lkotlin/UInt;", "completionBehavior", "Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;", "<init>", "(ILandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "getRepeatingFramesToComplete-pVg5ArA", "()I", "I", "getCompletionBehavior", "()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;", "CompletionBehavior", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RepeatingRequestRequirementsBeforeCapture {
        private final CompletionBehavior completionBehavior;
        private final int repeatingFramesToComplete;

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, completionBehavior);
        }

        private RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior) {
            this.repeatingFramesToComplete = i;
            this.completionBehavior = completionBehavior;
        }

        /* JADX INFO: renamed from: getRepeatingFramesToComplete-pVg5ArA, reason: not valid java name and from getter */
        public final int getRepeatingFramesToComplete() {
            return this.repeatingFramesToComplete;
        }

        public /* synthetic */ RepeatingRequestRequirementsBeforeCapture(int i, CompletionBehavior completionBehavior, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? 0 : i, (i2 & 2) != 0 ? CompletionBehavior.AT_LEAST : completionBehavior, null);
        }

        public final CompletionBehavior getCompletionBehavior() {
            return this.completionBehavior;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        @kotlin.Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture$CompletionBehavior;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "AT_LEAST", "EXACT", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class CompletionBehavior {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ CompletionBehavior[] $VALUES;
            public static final CompletionBehavior AT_LEAST = new CompletionBehavior("AT_LEAST", 0);
            public static final CompletionBehavior EXACT = new CompletionBehavior("EXACT", 1);

            private static final /* synthetic */ CompletionBehavior[] $values() {
                return new CompletionBehavior[]{AT_LEAST, EXACT};
            }

            public static CompletionBehavior valueOf(String str) {
                return (CompletionBehavior) Enum.valueOf(CompletionBehavior.class, str);
            }

            public static CompletionBehavior[] values() {
                return (CompletionBehavior[]) $VALUES.clone();
            }

            private CompletionBehavior(String str, int i) {
            }

            static {
                CompletionBehavior[] completionBehaviorArr$values = $values();
                $VALUES = completionBehaviorArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(completionBehaviorArr$values);
            }
        }
    }

    @kotlin.Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0016\b\u0087\b\u0018\u00002\u00020\u0001:\u0001'BY\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0002\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0016\u001a\u00020\u00022\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0017\u0010\u0004\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0007\u0010\u001f\u001a\u0004\b \u0010!R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010\"\u001a\u0004\b#\u0010\u0014R\u0017\u0010\n\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b$\u0010\u001aR\u0017\u0010\u000b\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b%\u0010\u001aR\u0017\u0010\f\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b&\u0010\u001a¨\u0006("}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Flags;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "configureBlankSessionOnStop", "abortCapturesOnStop", "Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;", "awaitRepeatingRequestBeforeCapture", "awaitRepeatingRequestOnDisconnect", "Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;", "finalizeSessionOnCloseBehavior", "closeCaptureSessionOnDisconnect", "closeCameraDeviceOnClose", "enableRestartDelays", "<init>", "(ZZLandroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;Ljava/lang/Boolean;IZZZLkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "hashCode", "()I", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getConfigureBlankSessionOnStop", "()Z", "getAbortCapturesOnStop", "Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;", "getAwaitRepeatingRequestBeforeCapture", "()Landroidx/camera/camera2/pipe/CameraGraph$RepeatingRequestRequirementsBeforeCapture;", "Ljava/lang/Boolean;", "getAwaitRepeatingRequestOnDisconnect", "()Ljava/lang/Boolean;", "I", "getFinalizeSessionOnCloseBehavior-Bm6Tfm4", "getCloseCaptureSessionOnDisconnect", "getCloseCameraDeviceOnClose", "getEnableRestartDelays", "FinalizeSessionOnCloseBehavior", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final /* data */ class Flags {
        private final boolean abortCapturesOnStop;
        private final RepeatingRequestRequirementsBeforeCapture awaitRepeatingRequestBeforeCapture;
        private final Boolean awaitRepeatingRequestOnDisconnect;
        private final boolean closeCameraDeviceOnClose;
        private final boolean closeCaptureSessionOnDisconnect;
        private final boolean configureBlankSessionOnStop;
        private final boolean enableRestartDelays;
        private final int finalizeSessionOnCloseBehavior;

        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, z2, repeatingRequestRequirementsBeforeCapture, bool, i, z3, z4, z5);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Flags)) {
                return false;
            }
            Flags flags = (Flags) other;
            return this.configureBlankSessionOnStop == flags.configureBlankSessionOnStop && this.abortCapturesOnStop == flags.abortCapturesOnStop && Intrinsics.areEqual(this.awaitRepeatingRequestBeforeCapture, flags.awaitRepeatingRequestBeforeCapture) && Intrinsics.areEqual(this.awaitRepeatingRequestOnDisconnect, flags.awaitRepeatingRequestOnDisconnect) && FinalizeSessionOnCloseBehavior.m1332equalsimpl0(this.finalizeSessionOnCloseBehavior, flags.finalizeSessionOnCloseBehavior) && this.closeCaptureSessionOnDisconnect == flags.closeCaptureSessionOnDisconnect && this.closeCameraDeviceOnClose == flags.closeCameraDeviceOnClose && this.enableRestartDelays == flags.enableRestartDelays;
        }

        public int hashCode() {
            int iHashCode = ((((Boolean.hashCode(this.configureBlankSessionOnStop) * 31) + Boolean.hashCode(this.abortCapturesOnStop)) * 31) + this.awaitRepeatingRequestBeforeCapture.hashCode()) * 31;
            Boolean bool = this.awaitRepeatingRequestOnDisconnect;
            return ((((((((iHashCode + (bool == null ? 0 : bool.hashCode())) * 31) + FinalizeSessionOnCloseBehavior.m1333hashCodeimpl(this.finalizeSessionOnCloseBehavior)) * 31) + Boolean.hashCode(this.closeCaptureSessionOnDisconnect)) * 31) + Boolean.hashCode(this.closeCameraDeviceOnClose)) * 31) + Boolean.hashCode(this.enableRestartDelays);
        }

        public String toString() {
            return "Flags(configureBlankSessionOnStop=" + this.configureBlankSessionOnStop + ", abortCapturesOnStop=" + this.abortCapturesOnStop + ", awaitRepeatingRequestBeforeCapture=" + this.awaitRepeatingRequestBeforeCapture + ", awaitRepeatingRequestOnDisconnect=" + this.awaitRepeatingRequestOnDisconnect + ", finalizeSessionOnCloseBehavior=" + ((Object) FinalizeSessionOnCloseBehavior.m1334toStringimpl(this.finalizeSessionOnCloseBehavior)) + ", closeCaptureSessionOnDisconnect=" + this.closeCaptureSessionOnDisconnect + ", closeCameraDeviceOnClose=" + this.closeCameraDeviceOnClose + ", enableRestartDelays=" + this.enableRestartDelays + ')';
        }

        private Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5) {
            this.configureBlankSessionOnStop = z;
            this.abortCapturesOnStop = z2;
            this.awaitRepeatingRequestBeforeCapture = repeatingRequestRequirementsBeforeCapture;
            this.awaitRepeatingRequestOnDisconnect = bool;
            this.finalizeSessionOnCloseBehavior = i;
            this.closeCaptureSessionOnDisconnect = z3;
            this.closeCameraDeviceOnClose = z4;
            this.enableRestartDelays = z5;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public /* synthetic */ Flags(boolean z, boolean z2, RepeatingRequestRequirementsBeforeCapture repeatingRequestRequirementsBeforeCapture, Boolean bool, int i, boolean z3, boolean z4, boolean z5, int i2, DefaultConstructorMarker defaultConstructorMarker) {
            this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? Build.VERSION.SDK_INT >= 30 : z2, (i2 & 4) != 0 ? new RepeatingRequestRequirementsBeforeCapture(0, null, 3, 0 == true ? 1 : 0) : repeatingRequestRequirementsBeforeCapture, (i2 & 8) != 0 ? null : bool, (i2 & 16) != 0 ? FinalizeSessionOnCloseBehavior.INSTANCE.m1336getOFFBm6Tfm4() : i, (i2 & 32) != 0 ? Camera2Quirks.INSTANCE.shouldCloseCaptureSessionOnDisconnect$camera_camera2_pipe() : z3, (i2 & 64) != 0 ? false : z4, (i2 & 128) != 0 ? false : z5, null);
        }

        public final boolean getAbortCapturesOnStop() {
            return this.abortCapturesOnStop;
        }

        public final RepeatingRequestRequirementsBeforeCapture getAwaitRepeatingRequestBeforeCapture() {
            return this.awaitRepeatingRequestBeforeCapture;
        }

        public final Boolean getAwaitRepeatingRequestOnDisconnect() {
            return this.awaitRepeatingRequestOnDisconnect;
        }

        /* JADX INFO: renamed from: getFinalizeSessionOnCloseBehavior-Bm6Tfm4, reason: not valid java name and from getter */
        public final int getFinalizeSessionOnCloseBehavior() {
            return this.finalizeSessionOnCloseBehavior;
        }

        public final boolean getCloseCaptureSessionOnDisconnect() {
            return this.closeCaptureSessionOnDisconnect;
        }

        public final boolean getCloseCameraDeviceOnClose() {
            return this.closeCameraDeviceOnClose;
        }

        public final boolean getEnableRestartDelays() {
            return this.enableRestartDelays;
        }

        @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087@\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "value", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        @JvmInline
        public static final class FinalizeSessionOnCloseBehavior {

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final int OFF = m1331constructorimpl(0);
            private static final int IMMEDIATE = m1331constructorimpl(1);
            private static final int TIMEOUT = m1331constructorimpl(2);

            /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
            private static int m1331constructorimpl(int i) {
                return i;
            }

            /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
            public static final boolean m1332equalsimpl0(int i, int i2) {
                return i == i2;
            }

            /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
            public static int m1333hashCodeimpl(int i) {
                return Integer.hashCode(i);
            }

            /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
            public static String m1334toStringimpl(int i) {
                return "FinalizeSessionOnCloseBehavior(value=" + i + ')';
            }

            @kotlin.Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "OFF", "Landroidx/camera/camera2/pipe/CameraGraph$Flags$FinalizeSessionOnCloseBehavior;", "getOFF-Bm6Tfm4", "()I", "I", "IMMEDIATE", "getIMMEDIATE-Bm6Tfm4", "TIMEOUT", "getTIMEOUT-Bm6Tfm4", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                /* JADX INFO: renamed from: getOFF-Bm6Tfm4, reason: not valid java name */
                public final int m1336getOFFBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.OFF;
                }

                /* JADX INFO: renamed from: getIMMEDIATE-Bm6Tfm4, reason: not valid java name */
                public final int m1335getIMMEDIATEBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.IMMEDIATE;
                }

                /* JADX INFO: renamed from: getTIMEOUT-Bm6Tfm4, reason: not valid java name */
                public final int m1337getTIMEOUTBm6Tfm4() {
                    return FinalizeSessionOnCloseBehavior.TIMEOUT;
                }
            }
        }
    }

    @kotlin.Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0087@\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\t\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u000b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0005\u0088\u0001\u0003\u0092\u0001\u00020\u0002¨\u0006\r"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "mode", "constructor-impl", "(I)I", _UrlKt.FRAGMENT_ENCODE_SET, "toString-impl", "(I)Ljava/lang/String;", "toString", "hashCode-impl", "hashCode", "Companion", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    @JvmInline
    public static final class OperatingMode {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final int NORMAL = m1339constructorimpl(0);
        private static final int HIGH_SPEED = m1339constructorimpl(1);
        private static final int EXTENSION = m1339constructorimpl(2);

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
        public static int m1339constructorimpl(int i) {
            return i;
        }

        /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
        public static final boolean m1340equalsimpl0(int i, int i2) {
            return i == i2;
        }

        /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
        public static int m1341hashCodeimpl(int i) {
            return Integer.hashCode(i);
        }

        /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
        public static String m1342toStringimpl(int i) {
            return "OperatingMode(mode=" + i + ')';
        }

        @kotlin.Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\u0010\u0010\u0011R\u0013\u0010\u0004\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u0013\u0010\t\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\n\u0010\u0007R\u0013\u0010\u000b\u001a\u00020\u0005¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\f\u0010\u0007¨\u0006\u0012"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "NORMAL", "Landroidx/camera/camera2/pipe/CameraGraph$OperatingMode;", "getNORMAL-2uNL3no", "()I", "I", "HIGH_SPEED", "getHIGH_SPEED-2uNL3no", "EXTENSION", "getEXTENSION-2uNL3no", PluginsConstants.Settings.TYPE_CUSTOM, "mode", _UrlKt.FRAGMENT_ENCODE_SET, "custom-EP6OhB0", "(I)I", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
        @SourceDebugExtension({"SMAP\nCameraGraph.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CameraGraph.kt\nandroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion\n+ 2 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,835:1\n82#2,2:836\n*S KotlinDebug\n*F\n+ 1 CameraGraph.kt\nandroidx/camera/camera2/pipe/CameraGraph$OperatingMode$Companion\n*L\n314#1:836,2\n*E\n"})
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            /* JADX INFO: renamed from: getNORMAL-2uNL3no, reason: not valid java name */
            public final int m1346getNORMAL2uNL3no() {
                return OperatingMode.NORMAL;
            }

            /* JADX INFO: renamed from: getHIGH_SPEED-2uNL3no, reason: not valid java name */
            public final int m1345getHIGH_SPEED2uNL3no() {
                return OperatingMode.HIGH_SPEED;
            }

            /* JADX INFO: renamed from: getEXTENSION-2uNL3no, reason: not valid java name */
            public final int m1344getEXTENSION2uNL3no() {
                return OperatingMode.EXTENSION;
            }

            /* JADX INFO: renamed from: custom-EP6OhB0, reason: not valid java name */
            public final int m1343customEP6OhB0(int mode) {
                if (mode == m1346getNORMAL2uNL3no() || mode == m1345getHIGH_SPEED2uNL3no()) {
                    if (Log.INSTANCE.getERROR_LOGGABLE()) {
                        android.util.Log.e("CXCP", "Custom operating mode " + mode + " conflicts with standard modes");
                    }
                    RandomKt$$ExternalSyntheticBUOutline0.m932m(Unit.INSTANCE);
                    return 0;
                }
                return OperatingMode.m1339constructorimpl(mode);
            }
        }
    }

    @kotlin.Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\n\u0010\u0007\u001a\u0004\b\u000b\u0010\tR\u0017\u0010\r\u001a\u00020\f8\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Constants3A;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/MeteringRectangle;", "METERING_REGIONS_EMPTY", "[Landroid/hardware/camera2/params/MeteringRectangle;", "getMETERING_REGIONS_EMPTY", "()[Landroid/hardware/camera2/params/MeteringRectangle;", "METERING_REGIONS_DEFAULT", "getMETERING_REGIONS_DEFAULT", "Landroidx/camera/camera2/pipe/FrameNumber;", "FRAME_NUMBER_INVALID", "J", "getFRAME_NUMBER_INVALID-Ugla2oM", "()J", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Constants3A {
        public static final Constants3A INSTANCE = new Constants3A();
        private static final MeteringRectangle[] METERING_REGIONS_EMPTY = new MeteringRectangle[0];
        private static final MeteringRectangle[] METERING_REGIONS_DEFAULT = {new MeteringRectangle(0, 0, 0, 0, 0)};
        private static final long FRAME_NUMBER_INVALID = FrameNumber.m1392constructorimpl(-1);

        private Constants3A() {
        }

        public final MeteringRectangle[] getMETERING_REGIONS_DEFAULT() {
            return METERING_REGIONS_DEFAULT;
        }
    }

    @kotlin.Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0012\bg\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\nJ\u001d\u0010\r\u001a\u00020\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u000bH&¢\u0006\u0004\b\r\u0010\u000eJî\u0001\u0010,\u001a\b\u0012\u0004\u0012\u00020)0(2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00112\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0010\b\u0002\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000b2\u0010\b\u0002\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000b2\u0010\b\u0002\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u000b2\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00192\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0016\b\u0002\u0010!\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\u0016\b\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\b\b\u0002\u0010$\u001a\u00020#2\b\b\u0002\u0010&\u001a\u00020%2\b\b\u0002\u0010'\u001a\u00020%H¦@¢\u0006\u0004\b*\u0010+Jf\u00102\u001a\b\u0012\u0004\u0012\u00020)0(2\n\b\u0002\u0010-\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010.\u001a\u0004\u0018\u00010 2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010 2\u0016\b\u0002\u00100\u001a\u0010\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0018\u00010\u001e2\b\b\u0002\u0010$\u001a\u00020#2\b\b\u0002\u00101\u001a\u00020%H¦@¢\u0006\u0004\b2\u00103J>\u00106\u001a\b\u0012\u0004\u0012\u00020)0(2\b\b\u0002\u00104\u001a\u00020 2\b\b\u0002\u00105\u001a\u00020 2\b\b\u0002\u0010$\u001a\u00020#2\b\b\u0002\u00101\u001a\u00020%H¦@¢\u0006\u0004\b6\u00107J \u00109\u001a\b\u0012\u0004\u0012\u00020)0(2\b\b\u0002\u00108\u001a\u00020 H¦@¢\u0006\u0004\b9\u0010:ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006;À\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/CameraGraph$Session;", "Landroidx/camera/camera2/pipe/CameraControls3A;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Landroidx/camera/camera2/pipe/Request;", PluginsConstants.REQUEST, _UrlKt.FRAGMENT_ENCODE_SET, "startRepeating", "(Landroidx/camera/camera2/pipe/Request;)V", "stopRepeating", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "requests", "submit", "(Ljava/util/List;)V", "Landroidx/camera/camera2/pipe/AeMode;", "aeMode", "Landroidx/camera/camera2/pipe/AfMode;", "afMode", "Landroidx/camera/camera2/pipe/AwbMode;", "awbMode", "Landroid/hardware/camera2/params/MeteringRectangle;", "aeRegions", "afRegions", "awbRegions", "Landroidx/camera/camera2/pipe/Lock3ABehavior;", "aeLockBehavior", "afLockBehavior", "awbLockBehavior", "afTriggerStartAeMode", "Lkotlin/Function1;", "Landroidx/camera/camera2/pipe/FrameMetadata;", _UrlKt.FRAGMENT_ENCODE_SET, "convergedCondition", "lockedCondition", _UrlKt.FRAGMENT_ENCODE_SET, "frameLimit", _UrlKt.FRAGMENT_ENCODE_SET, "convergedTimeLimitNs", "lockedTimeLimitNs", "Lkotlinx/coroutines/Deferred;", "Landroidx/camera/camera2/pipe/Result3A;", "lock3A--tS25XM", "(Landroidx/camera/camera2/pipe/AeMode;Landroidx/camera/camera2/pipe/AfMode;Landroidx/camera/camera2/pipe/AwbMode;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/Lock3ABehavior;Landroidx/camera/camera2/pipe/AeMode;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;IJJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "lock3A", "ae", "af", "awb", "unlockedCondition", "timeLimitNs", "unlock3A", "(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/functions/Function1;IJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "triggerAf", "waitForAwb", "lock3AForCapture", "(ZZIJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cancelAf", "unlock3APostCapture", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Session extends CameraControls3A, AutoCloseable {
        /* JADX INFO: renamed from: lock3A--tS25XM, reason: not valid java name */
        Object mo1349lock3AtS25XM(AeMode aeMode, AfMode afMode, AwbMode awbMode, List<MeteringRectangle> list, List<MeteringRectangle> list2, List<MeteringRectangle> list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, Function1<? super FrameMetadata, Boolean> function1, Function1<? super FrameMetadata, Boolean> function12, int i, long j, long j2, Continuation<? super Deferred<Result3A>> continuation);

        Object lock3AForCapture(boolean z, boolean z2, int i, long j, Continuation<? super Deferred<Result3A>> continuation);

        void startRepeating(Request request);

        void stopRepeating();

        void submit(List<Request> requests);

        Object unlock3A(Boolean bool, Boolean bool2, Boolean bool3, Function1<? super FrameMetadata, Boolean> function1, int i, long j, Continuation<? super Deferred<Result3A>> continuation);

        Object unlock3APostCapture(boolean z, Continuation<? super Deferred<Result3A>> continuation);

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX INFO: renamed from: lock3A--tS25XM$default, reason: not valid java name */
        static /* synthetic */ Object m1348lock3AtS25XM$default(Session session, AeMode aeMode, AfMode afMode, AwbMode awbMode, List list, List list2, List list3, Lock3ABehavior lock3ABehavior, Lock3ABehavior lock3ABehavior2, Lock3ABehavior lock3ABehavior3, AeMode aeMode2, Function1 function1, Function1 function12, int i, long j, long j2, Continuation continuation, int i2, Object obj) {
            long j3;
            Session session2;
            Continuation continuation2;
            if (obj != null) {
                ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: lock3A--tS25XM");
                return null;
            }
            AeMode aeMode3 = (i2 & 1) != 0 ? null : aeMode;
            AfMode afMode2 = (i2 & 2) != 0 ? null : afMode;
            AwbMode awbMode2 = (i2 & 4) != 0 ? null : awbMode;
            List list4 = (i2 & 8) != 0 ? null : list;
            List list5 = (i2 & 16) != 0 ? null : list2;
            List list6 = (i2 & 32) != 0 ? null : list3;
            Lock3ABehavior lock3ABehavior4 = (i2 & 64) != 0 ? null : lock3ABehavior;
            Lock3ABehavior lock3ABehavior5 = (i2 & 128) != 0 ? null : lock3ABehavior2;
            Lock3ABehavior lock3ABehavior6 = (i2 & 256) != 0 ? null : lock3ABehavior3;
            AeMode aeMode4 = (i2 & 512) != 0 ? null : aeMode2;
            Function1 function13 = (i2 & 1024) != 0 ? null : function1;
            Function1 function14 = (i2 & 2048) != 0 ? null : function12;
            int i3 = (i2 & 4096) != 0 ? 60 : i;
            long j4 = (i2 & 8192) != 0 ? 3000000000L : j;
            if ((i2 & 16384) != 0) {
                j3 = 3000000000L;
                continuation2 = continuation;
                session2 = session;
            } else {
                j3 = j2;
                session2 = session;
                continuation2 = continuation;
            }
            return session2.mo1349lock3AtS25XM(aeMode3, afMode2, awbMode2, list4, list5, list6, lock3ABehavior4, lock3ABehavior5, lock3ABehavior6, aeMode4, function13, function14, i3, j4, j3, continuation2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        static /* synthetic */ Object unlock3A$default(Session session, Boolean bool, Boolean bool2, Boolean bool3, Function1 function1, int i, long j, Continuation continuation, int i2, Object obj) {
            if (obj != null) {
                ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: unlock3A");
                return null;
            }
            if ((i2 & 1) != 0) {
                bool = null;
            }
            if ((i2 & 2) != 0) {
                bool2 = null;
            }
            if ((i2 & 4) != 0) {
                bool3 = null;
            }
            if ((i2 & 8) != 0) {
                function1 = null;
            }
            if ((i2 & 16) != 0) {
                i = 60;
            }
            if ((i2 & 32) != 0) {
                j = 3000000000L;
            }
            return session.unlock3A(bool, bool2, bool3, function1, i, j, continuation);
        }

        static /* synthetic */ Object lock3AForCapture$default(Session session, boolean z, boolean z2, int i, long j, Continuation continuation, int i2, Object obj) {
            if (obj != null) {
                ByteString$$ExternalSyntheticBUOutline0.m968m("Super calls with default arguments not supported in this target, function: lock3AForCapture");
                return null;
            }
            if ((i2 & 1) != 0) {
                z = true;
            }
            if ((i2 & 2) != 0) {
                z2 = false;
            }
            if ((i2 & 4) != 0) {
                i = 60;
            }
            if ((i2 & 8) != 0) {
                j = 3000000000L;
            }
            int i3 = i;
            return session.lock3AForCapture(z, z2, i3, j, continuation);
        }
    }
}
