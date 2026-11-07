package androidx.camera.camera2.pipe.core;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.ConcurrentCameraGraphs;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.RequestTemplate;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamId;
import com.exteragram.messenger.plugins.PluginsConstants;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\f\u001a\u00020\u000b2\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u00052\u0006\u0010\b\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0002¢\u0006\u0004\b\f\u0010\rJ5\u0010\u0010\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u000f0\u000e2\u0012\u0010\n\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0013\u001a\u00020\u00072\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0019\u0010\u0016\u001a\u00020\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u0002¢\u0006\u0004\b\u0016\u0010\u0014J+\u0010\u0019\u001a\u00020\u00072\u0012\u0010\n\u001a\u000e\u0012\u0002\b\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t2\b\b\u0002\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010!\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001e\u001a\u00020\u001d2\u0006\u0010 \u001a\u00020\u001f¢\u0006\u0004\b!\u0010\"R\u001a\u0010$\u001a\u00020#8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b$\u0010%\u001a\u0004\b&\u0010'¨\u0006("}, d2 = {"Landroidx/camera/camera2/pipe/core/Debug;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "builder", _UrlKt.FRAGMENT_ENCODE_SET, "name", _UrlKt.FRAGMENT_ENCODE_SET, "parameters", _UrlKt.FRAGMENT_ENCODE_SET, "appendParameters", "(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/util/Map;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Lkotlin/Pair;", "parametersToSortedStringPairs", "(Ljava/util/Map;)Ljava/util/List;", PluginsConstants.Settings.KEY, "keyNameToString", "(Ljava/lang/Object;)Ljava/lang/String;", "value", "valueToString", _UrlKt.FRAGMENT_ENCODE_SET, "limit", "formatParameterMap", "(Ljava/util/Map;I)Ljava/lang/String;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "metadata", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph;", "cameraGraph", "formatCameraGraphProperties", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/CameraGraph;)Ljava/lang/String;", "Landroidx/camera/camera2/pipe/core/SystemTimeSource;", "systemTimeSource", "Landroidx/camera/camera2/pipe/core/SystemTimeSource;", "getSystemTimeSource$camera_camera2_pipe", "()Landroidx/camera/camera2/pipe/core/SystemTimeSource;", "camera-camera2-pipe"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDebug.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n+ 2 Timestamps.kt\nandroidx/camera/camera2/pipe/core/TimestampNs\n+ 3 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n+ 4 Timestamps.kt\nandroidx/camera/camera2/pipe/core/Timestamps\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 6 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 7 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,281:1\n71#1,4:282\n78#1,4:286\n71#1,4:290\n78#1,4:294\n29#2:298\n50#3:299\n51#3:302\n74#4,2:300\n1869#5,2:303\n1056#5:309\n1878#5,2:310\n1880#5:313\n126#6:305\n153#6,3:306\n1#7:312\n*S KotlinDebug\n*F\n+ 1 Debug.kt\nandroidx/camera/camera2/pipe/core/Debug\n*L\n49#1:282,4\n52#1:286,4\n60#1:290,4\n63#1:294,4\n64#1:298\n65#1:299\n65#1:302\n65#1:300,2\n89#1:303,2\n133#1:309\n204#1:310,2\n204#1:313\n133#1:305\n133#1:306,3\n*E\n"})
public final class Debug {
    public static final Debug INSTANCE = new Debug();
    private static final SystemTimeSource systemTimeSource = new SystemTimeSource();

    private Debug() {
    }

    public final SystemTimeSource getSystemTimeSource$camera_camera2_pipe() {
        return systemTimeSource;
    }

    private final void appendParameters(StringBuilder builder, String name, Map<?, ? extends Object> parameters) {
        if (parameters.isEmpty()) {
            builder.append(name + ": (None)\n");
            return;
        }
        builder.append(name + '\n');
        Iterator<T> it = INSTANCE.parametersToSortedStringPairs(parameters).iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            builder.append("  " + StringsKt.padEnd((String) pair.getFirst(), 50, ' ') + ' ' + ((String) pair.getSecond()) + '\n');
        }
    }

    public final String formatParameterMap(Map<?, ? extends Object> parameters, int limit) {
        return CollectionsKt.joinToString$default(parametersToSortedStringPairs(parameters), null, "{", "}", limit, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.Debug$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Debug.$r8$lambda$qyoCxQw_NlDyB2t4IONaMXi63jI((Pair) obj);
            }
        }, 17, null);
    }

    public static CharSequence $r8$lambda$qyoCxQw_NlDyB2t4IONaMXi63jI(Pair pair) {
        return ((String) pair.getFirst()) + SignatureVisitor.INSTANCEOF + ((String) pair.getSecond());
    }

    private final String keyNameToString(Object key) {
        return key instanceof CameraCharacteristics.Key ? ((CameraCharacteristics.Key) key).getName() : key instanceof CaptureRequest.Key ? ((CaptureRequest.Key) key).getName() : key instanceof CaptureResult.Key ? ((CaptureResult.Key) key).getName() : String.valueOf(key);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String valueToString(Object value) {
        return value instanceof Object[] ? ArraysKt.joinToString$default((Object[]) value, (CharSequence) null, "[", "]", 0, (CharSequence) null, new Function1() { // from class: androidx.camera.camera2.pipe.core.Debug$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Debug.INSTANCE.valueToString(obj);
            }
        }, 25, (Object) null) : String.valueOf(value);
    }

    public final String formatCameraGraphProperties(CameraMetadata metadata, CameraGraph.Config graphConfig, CameraGraph cameraGraph) {
        String str;
        String str2;
        ConcurrentCameraGraphs concurrentCameraGraphs = graphConfig.getConcurrentCameraGraphs();
        Set<CameraId> cameraIds = concurrentCameraGraphs != null ? concurrentCameraGraphs.getCameraIds() : null;
        Integer num = (Integer) metadata.get(CameraCharacteristics.LENS_FACING);
        String str3 = "External";
        String str4 = "Unknown";
        if (num != null && num.intValue() == 0) {
            str = "Front";
        } else if (num != null && num.intValue() == 1) {
            str = "Back";
        } else {
            str = (num != null && num.intValue() == 2) ? "External" : "Unknown";
        }
        Integer num2 = (Integer) metadata.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        if (num2 != null && num2.intValue() == 0) {
            str3 = "Limited";
        } else if (num2 != null && num2.intValue() == 1) {
            str3 = "Full";
        } else if (num2 != null && num2.intValue() == 2) {
            str3 = "Legacy";
        } else if (num2 != null && num2.intValue() == 3) {
            str3 = "Level 3";
        } else if (num2 == null || num2.intValue() != 4) {
            str3 = "Unknown";
        }
        int sessionMode = graphConfig.getSessionMode();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.INSTANCE;
        if (CameraGraph.OperatingMode.m1287equalsimpl0(sessionMode, companion.m1292getHIGH_SPEED2uNL3no())) {
            str4 = "High Speed";
        } else if (CameraGraph.OperatingMode.m1287equalsimpl0(sessionMode, companion.m1293getNORMAL2uNL3no())) {
            str4 = "Normal";
        } else if (CameraGraph.OperatingMode.m1287equalsimpl0(sessionMode, companion.m1291getEXTENSION2uNL3no())) {
            str4 = "Extension";
        }
        int[] iArr = (int[]) metadata.get(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null && ArraysKt.contains(iArr, 11)) {
            str2 = "Logical";
        } else {
            str2 = "Physical";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(cameraGraph + " (Camera " + graphConfig.getCamera() + ")\n");
        if (cameraIds != null) {
            sb.append("  Concurrent: " + cameraIds + '\n');
        }
        sb.append("  Facing:    " + str + " (" + str2 + ", " + str3 + ")\n");
        StringBuilder sb2 = new StringBuilder("  Mode:      ");
        sb2.append(str4);
        sb2.append('\n');
        sb.append(sb2.toString());
        sb.append("Outputs:\n");
        Iterator<CameraStream> it = cameraGraph.getStreams().getStreams().iterator();
        while (it.hasNext()) {
            int i = 0;
            for (Object obj : it.next().getOutputs()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                OutputStream outputStream = (OutputStream) obj;
                sb.append("  ");
                sb.append(StringsKt.padEnd(i == 0 ? StreamId.m1477toStringimpl(outputStream.getStream().getId()) : _UrlKt.FRAGMENT_ENCODE_SET, 12, ' '));
                sb.append(StringsKt.padEnd(OutputId.m1366toStringimpl(outputStream.getId()), 12, ' '));
                sb.append(StringsKt.padEnd(outputStream.getSize().toString(), 12, ' '));
                sb.append(StringsKt.padEnd(StreamFormat.m1464getNameimpl(outputStream.getFormat()), 16, ' '));
                OutputStream.MirrorMode mirrorMode = outputStream.getMirrorMode();
                if (mirrorMode != null) {
                    sb.append(" [" + ((Object) OutputStream.MirrorMode.m1409toStringimpl(mirrorMode.getValue())) + ']');
                }
                outputStream.mo1386getTimestampBasepcPfPbY();
                OutputStream.DynamicRangeProfile dynamicRangeProfile = outputStream.getDynamicRangeProfile();
                if (dynamicRangeProfile != null) {
                    sb.append(" [" + ((Object) OutputStream.DynamicRangeProfile.m1401toStringimpl(dynamicRangeProfile.getValue())) + ']');
                }
                OutputStream.StreamUseCase streamUseCase = outputStream.getStreamUseCase();
                if (streamUseCase != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseCase.m1417toStringimpl(streamUseCase.getValue())) + ']');
                }
                OutputStream.StreamUseHint streamUseHint = outputStream.getStreamUseHint();
                if (streamUseHint != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseHint.m1427toStringimpl(streamUseHint.getValue())) + ']');
                }
                if (!CameraId.m1301equalsimpl0(outputStream.getCamera(), graphConfig.getCamera())) {
                    sb.append(" [");
                    sb.append(CameraId.m1298boximpl(outputStream.getCamera()));
                    sb.append("]");
                }
                sb.append("\n");
                i = i2;
            }
        }
        if (!cameraGraph.getStreams().getInputs().isEmpty()) {
            sb.append("Inputs:\n");
            for (InputStream inputStream : cameraGraph.getStreams().getInputs()) {
                sb.append(" ");
                sb.append(StringsKt.padEnd(InputStreamId.m1350toStringimpl(inputStream.getId()), 12, ' '));
                sb.append(StringsKt.padEnd(StreamFormat.m1466toStringimpl(inputStream.getFormat()), 12, ' '));
                sb.append(StringsKt.padEnd(String.valueOf(inputStream.getMaxImages()), 12, ' '));
                sb.append("\n");
            }
        }
        sb.append("Session Template: " + RequestTemplate.m1445getNameimpl(graphConfig.getSessionTemplate()) + '\n');
        Debug debug = INSTANCE;
        debug.appendParameters(sb, "Session Parameters", graphConfig.getSessionParameters());
        sb.append("Default Template: " + RequestTemplate.m1445getNameimpl(graphConfig.getDefaultTemplate()) + '\n');
        debug.appendParameters(sb, "Default Parameters", graphConfig.getDefaultParameters());
        debug.appendParameters(sb, "Required Parameters", graphConfig.getRequiredParameters());
        return sb.toString();
    }

    private final List<Pair<String, String>> parametersToSortedStringPairs(Map<?, ? extends Object> parameters) {
        ArrayList arrayList = new ArrayList(parameters.size());
        for (Map.Entry<?, ? extends Object> entry : parameters.entrySet()) {
            Debug debug = INSTANCE;
            arrayList.add(TuplesKt.to(debug.keyNameToString(entry.getKey()), debug.valueToString(entry.getValue())));
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: androidx.camera.camera2.pipe.core.Debug$parametersToSortedStringPairs$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues((String) ((Pair) t).getFirst(), (String) ((Pair) t2).getFirst());
            }
        });
    }
}
