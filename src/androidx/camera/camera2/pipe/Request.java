package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.Metadata;
import androidx.camera.camera2.pipe.core.Debug;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@kotlin.Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0015\b\u0007\u0018\u00002\u00020\u0001:\u0001,Bq\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0018\b\u0002\u0010\u0007\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0006\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u0018\b\u0002\u0010\t\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0004\u0012\u00020\u00010\u0005\u0012\u000e\b\u0002\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u0002\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0014\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\u001b\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00122\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0086\u0002¢\u0006\u0004\b\u001b\u0010\u0015J\u000f\u0010\u001c\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001c\u0010\u001dR\u001d\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u001e\u001a\u0004\b\u001f\u0010 R'\u0010\u0007\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0006\u0012\u0004\u0012\u00020\u00010\u00058\u0006¢\u0006\f\n\u0004\b\u0007\u0010!\u001a\u0004\b\"\u0010#R'\u0010\t\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\b\u0012\u0004\u0012\u00020\u00010\u00058\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b$\u0010#R\u001d\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\u00028\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b%\u0010 R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010&\u001a\u0004\b'\u0010(R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010)\u001a\u0004\b*\u0010+¨\u0006-"}, d2 = {"Landroidx/camera/camera2/pipe/Request;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "streams", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/CaptureRequest$Key;", "parameters", "Landroidx/camera/camera2/pipe/Metadata$Key;", "extras", "Landroidx/camera/camera2/pipe/Request$Listener;", "listeners", "Landroidx/camera/camera2/pipe/RequestTemplate;", "template", "Landroidx/camera/camera2/pipe/InputRequest;", "inputRequest", "<init>", "(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/camera/camera2/pipe/RequestTemplate;Landroidx/camera/camera2/pipe/InputRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", "T", PluginsConstants.Settings.KEY, "getUnchecked", "(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;", _UrlKt.FRAGMENT_ENCODE_SET, "verbose", _UrlKt.FRAGMENT_ENCODE_SET, "toStringInternal", "(Z)Ljava/lang/String;", "get", "toString", "()Ljava/lang/String;", "Ljava/util/List;", "getStreams", "()Ljava/util/List;", "Ljava/util/Map;", "getParameters", "()Ljava/util/Map;", "getExtras", "getListeners", "Landroidx/camera/camera2/pipe/RequestTemplate;", "getTemplate-ejQnlcg", "()Landroidx/camera/camera2/pipe/RequestTemplate;", "Landroidx/camera/camera2/pipe/InputRequest;", "getInputRequest", "()Landroidx/camera/camera2/pipe/InputRequest;", "Listener", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
public final class Request {
    private final Map<Metadata.Key<?>, Object> extras;
    private final InputRequest inputRequest;
    private final List<Listener> listeners;
    private final Map<CaptureRequest.Key<?>, Object> parameters;
    private final List<StreamId> streams;
    private final RequestTemplate template;

    @kotlin.Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J'\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J'\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J'\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u001b\u0010\u0018J'\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 J'\u0010!\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010\u000bJ'\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&H\u0017¢\u0006\u0004\b'\u0010(J/\u0010$\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010)\u001a\u00020&2\u0006\u0010*\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-J\u0010\u0010.\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u00102\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u00103\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u001f\u00104\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¢\u0006\u0004\b5\u00106ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u00067À\u0006\u0003"}, d2 = {"Landroidx/camera/camera2/pipe/Request$Listener;", _UrlKt.FRAGMENT_ENCODE_SET, "onStarted", _UrlKt.FRAGMENT_ENCODE_SET, "requestMetadata", "Landroidx/camera/camera2/pipe/RequestMetadata;", "frameNumber", "Landroidx/camera/camera2/pipe/FrameNumber;", "timestamp", "Landroidx/camera/camera2/pipe/CameraTimestamp;", "onStarted-uGKBvU4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JJ)V", "onPartialCaptureResult", "captureResult", "Landroidx/camera/camera2/pipe/FrameMetadata;", "onPartialCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameMetadata;)V", "onCaptureProgress", "progress", _UrlKt.FRAGMENT_ENCODE_SET, "onTotalCaptureResult", "totalCaptureResult", "Landroidx/camera/camera2/pipe/FrameInfo;", "onTotalCaptureResult-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/FrameInfo;)V", "onComplete", "result", "onComplete-CcXjc1I", "onFailed", "requestFailure", "Landroidx/camera/camera2/pipe/RequestFailure;", "onFailed-CcXjc1I", "(Landroidx/camera/camera2/pipe/RequestMetadata;JLandroidx/camera/camera2/pipe/RequestFailure;)V", "onReadoutStarted", "Landroidx/camera/camera2/pipe/SensorTimestamp;", "onReadoutStarted-mP9r-9w", "onBufferLost", "stream", "Landroidx/camera/camera2/pipe/StreamId;", "onBufferLost-DlC0U5Y", "(Landroidx/camera/camera2/pipe/RequestMetadata;JI)V", "streamId", "outputId", "Landroidx/camera/camera2/pipe/OutputId;", "onBufferLost-iiEMlm4", "(Landroidx/camera/camera2/pipe/RequestMetadata;JII)V", "onAborted", PluginsConstants.REQUEST, "Landroidx/camera/camera2/pipe/Request;", "onRequestSequenceCreated", "onRequestSequenceSubmitted", "onRequestSequenceAborted", "onRequestSequenceCompleted", "onRequestSequenceCompleted-RuT0dZU", "(Landroidx/camera/camera2/pipe/RequestMetadata;J)V", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Listener {
        default void onAborted(Request request) {
        }

        @Deprecated(message = "Use the onBufferLost with OutputId.")
        /* JADX INFO: renamed from: onBufferLost-DlC0U5Y, reason: not valid java name */
        default void m1434onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long frameNumber, int stream) {
        }

        /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
        default void mo1119onBufferLostiiEMlm4(RequestMetadata requestMetadata, long frameNumber, int streamId, int outputId) {
        }

        default void onCaptureProgress(RequestMetadata requestMetadata, int progress) {
        }

        /* JADX INFO: renamed from: onComplete-CcXjc1I */
        default void mo1084onCompleteCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo result) {
        }

        /* JADX INFO: renamed from: onFailed-CcXjc1I */
        default void mo1085onFailedCcXjc1I(RequestMetadata requestMetadata, long frameNumber, RequestFailure requestFailure) {
        }

        /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
        default void mo1120onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameMetadata captureResult) {
        }

        /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
        default void mo1121onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long frameNumber, long timestamp) {
        }

        default void onRequestSequenceAborted(RequestMetadata requestMetadata) {
        }

        /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
        default void mo1122onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long frameNumber) {
        }

        default void onRequestSequenceCreated(RequestMetadata requestMetadata) {
        }

        default void onRequestSequenceSubmitted(RequestMetadata requestMetadata) {
        }

        /* JADX INFO: renamed from: onStarted-uGKBvU4 */
        default void mo1123onStarteduGKBvU4(RequestMetadata requestMetadata, long frameNumber, long timestamp) {
        }

        /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
        default void mo1086onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long frameNumber, FrameInfo totalCaptureResult) {
        }
    }

    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, map, map2, list2, requestTemplate, inputRequest);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Request(List<StreamId> list, Map<CaptureRequest.Key<?>, ? extends Object> map, Map<Metadata.Key<?>, ? extends Object> map2, List<? extends Listener> list2, RequestTemplate requestTemplate, InputRequest inputRequest) {
        this.streams = list;
        this.parameters = map;
        this.extras = map2;
        this.listeners = list2;
        this.template = requestTemplate;
        this.inputRequest = inputRequest;
    }

    public final List<StreamId> getStreams() {
        return this.streams;
    }

    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? MapsKt.emptyMap() : map2, (i & 8) != 0 ? CollectionsKt.emptyList() : list2, (i & 16) != 0 ? null : requestTemplate, (i & 32) != 0 ? null : inputRequest, null);
    }

    public final Map<CaptureRequest.Key<?>, Object> getParameters() {
        return this.parameters;
    }

    public final Map<Metadata.Key<?>, Object> getExtras() {
        return this.extras;
    }

    public final List<Listener> getListeners() {
        return this.listeners;
    }

    /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name and from getter */
    public final RequestTemplate getTemplate() {
        return this.template;
    }

    public final InputRequest getInputRequest() {
        return this.inputRequest;
    }

    public final <T> T get(CaptureRequest.Key<T> key) {
        return (T) getUnchecked(key);
    }

    private final <T> T getUnchecked(CaptureRequest.Key<T> key) {
        return (T) this.parameters.get(key);
    }

    public String toString() {
        return toStringInternal(false);
    }

    private final String toStringInternal(boolean verbose) {
        String str;
        String str2;
        RequestTemplate requestTemplate = this.template;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (requestTemplate == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = ", template=" + ((Object) RequestTemplate.m1447toStringimpl(this.template.getValue()));
        }
        if (!verbose || this.parameters.isEmpty()) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str2 = ", parameters=" + Debug.INSTANCE.formatParameterMap(this.parameters, 5);
        }
        if (verbose && !this.extras.isEmpty()) {
            str3 = ", extras=" + Debug.INSTANCE.formatParameterMap(this.extras, 5);
        }
        return "Request(streams=" + this.streams + str + str2 + str3 + ")@" + Integer.toHexString(hashCode());
    }
}
