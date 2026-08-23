package androidx.camera.camera2.pipe;

import android.hardware.camera2.CaptureRequest;
import androidx.camera.camera2.pipe.core.Debug;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
public final class Request {
    private final Map extras;
    private final InputRequest inputRequest;
    private final List listeners;
    private final Map parameters;
    private final List streams;
    private final RequestTemplate template;

    public interface Listener {

        /* JADX INFO: renamed from: androidx.camera.camera2.pipe.Request$Listener$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            /* JADX INFO: renamed from: $default$onComplete-CcXjc1I, reason: not valid java name */
            public static void m1740$default$onCompleteCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameInfo result) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(result, "result");
            }

            /* JADX INFO: renamed from: $default$onFailed-CcXjc1I, reason: not valid java name */
            public static void m1741$default$onFailedCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, RequestFailure requestFailure) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(requestFailure, "requestFailure");
            }

            /* JADX INFO: renamed from: $default$onPartialCaptureResult-CcXjc1I, reason: not valid java name */
            public static void m1742$default$onPartialCaptureResultCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameMetadata captureResult) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(captureResult, "captureResult");
            }

            /* JADX INFO: renamed from: $default$onTotalCaptureResult-CcXjc1I, reason: not valid java name */
            public static void m1746$default$onTotalCaptureResultCcXjc1I(Listener listener, RequestMetadata requestMetadata, long j, FrameInfo totalCaptureResult) {
                Intrinsics.checkNotNullParameter(requestMetadata, "requestMetadata");
                Intrinsics.checkNotNullParameter(totalCaptureResult, "totalCaptureResult");
            }
        }

        void onAborted(Request request);

        /* JADX INFO: renamed from: onBufferLost-DlC0U5Y */
        void mo1387onBufferLostDlC0U5Y(RequestMetadata requestMetadata, long j, int i);

        /* JADX INFO: renamed from: onBufferLost-iiEMlm4 */
        void mo1388onBufferLostiiEMlm4(RequestMetadata requestMetadata, long j, int i, int i2);

        void onCaptureProgress(RequestMetadata requestMetadata, int i);

        /* JADX INFO: renamed from: onComplete-CcXjc1I */
        void mo1389onCompleteCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo);

        /* JADX INFO: renamed from: onFailed-CcXjc1I */
        void mo1390onFailedCcXjc1I(RequestMetadata requestMetadata, long j, RequestFailure requestFailure);

        /* JADX INFO: renamed from: onPartialCaptureResult-CcXjc1I */
        void mo1391onPartialCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameMetadata frameMetadata);

        /* JADX INFO: renamed from: onReadoutStarted-mP9r-9w */
        void mo1392onReadoutStartedmP9r9w(RequestMetadata requestMetadata, long j, long j2);

        void onRequestSequenceAborted(RequestMetadata requestMetadata);

        /* JADX INFO: renamed from: onRequestSequenceCompleted-RuT0dZU */
        void mo1393onRequestSequenceCompletedRuT0dZU(RequestMetadata requestMetadata, long j);

        void onRequestSequenceCreated(RequestMetadata requestMetadata);

        void onRequestSequenceSubmitted(RequestMetadata requestMetadata);

        /* JADX INFO: renamed from: onStarted-uGKBvU4 */
        void mo1394onStarteduGKBvU4(RequestMetadata requestMetadata, long j, long j2);

        /* JADX INFO: renamed from: onTotalCaptureResult-CcXjc1I */
        void mo1395onTotalCaptureResultCcXjc1I(RequestMetadata requestMetadata, long j, FrameInfo frameInfo);
    }

    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, map, map2, list2, requestTemplate, inputRequest);
    }

    private Request(List streams, Map parameters, Map extras, List listeners, RequestTemplate requestTemplate, InputRequest inputRequest) {
        Intrinsics.checkNotNullParameter(streams, "streams");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(listeners, "listeners");
        this.streams = streams;
        this.parameters = parameters;
        this.extras = extras;
        this.listeners = listeners;
        this.template = requestTemplate;
        this.inputRequest = inputRequest;
    }

    public final List getStreams() {
        return this.streams;
    }

    public /* synthetic */ Request(List list, Map map, Map map2, List list2, RequestTemplate requestTemplate, InputRequest inputRequest, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(list, (i & 2) != 0 ? MapsKt.emptyMap() : map, (i & 4) != 0 ? MapsKt.emptyMap() : map2, (i & 8) != 0 ? CollectionsKt.emptyList() : list2, (i & 16) != 0 ? null : requestTemplate, (i & 32) != 0 ? null : inputRequest, null);
    }

    public final Map getParameters() {
        return this.parameters;
    }

    public final Map getExtras() {
        return this.extras;
    }

    public final List getListeners() {
        return this.listeners;
    }

    /* JADX INFO: renamed from: getTemplate-ejQnlcg, reason: not valid java name */
    public final RequestTemplate m1737getTemplateejQnlcg() {
        return this.template;
    }

    public final InputRequest getInputRequest() {
        return this.inputRequest;
    }

    public final Object get(CaptureRequest.Key key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return getUnchecked(key);
    }

    private final Object getUnchecked(CaptureRequest.Key key) {
        return this.parameters.get(key);
    }

    public String toString() {
        return toStringInternal(false);
    }

    private final String toStringInternal(boolean z) {
        String str;
        String str2;
        RequestTemplate requestTemplate = this.template;
        String str3 = _UrlKt.FRAGMENT_ENCODE_SET;
        if (requestTemplate == null) {
            str = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str = ", template=" + ((Object) RequestTemplate.m1759toStringimpl(this.template.m1760unboximpl()));
        }
        if (!z || this.parameters.isEmpty()) {
            str2 = _UrlKt.FRAGMENT_ENCODE_SET;
        } else {
            str2 = ", parameters=" + Debug.INSTANCE.formatParameterMap(this.parameters, 5);
        }
        if (z && !this.extras.isEmpty()) {
            str3 = ", extras=" + Debug.INSTANCE.formatParameterMap(this.extras, 5);
        }
        return "Request(streams=" + this.streams + str + str2 + str3 + ")@" + Integer.toHexString(hashCode());
    }
}
