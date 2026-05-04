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
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;

/* JADX INFO: loaded from: classes3.dex */
public final class Debug {
    public static final Debug INSTANCE = new Debug();
    private static final SystemTimeSource systemTimeSource = new SystemTimeSource();

    private Debug() {
    }

    public final SystemTimeSource getSystemTimeSource$camera_camera2_pipe() {
        return systemTimeSource;
    }

    private final void appendParameters(StringBuilder sb, String str, Map map) {
        if (map.isEmpty()) {
            sb.append(str + ": (None)\n");
            return;
        }
        sb.append(str + '\n');
        for (Pair pair : INSTANCE.parametersToSortedStringPairs(map)) {
            sb.append("  " + StringsKt.padEnd((String) pair.getFirst(), 50, ' ') + ' ' + ((String) pair.getSecond()) + '\n');
        }
    }

    public final String formatParameterMap(Map parameters, int i) {
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        return CollectionsKt.joinToString$default(parametersToSortedStringPairs(parameters), null, "{", "}", i, null, new Function1() { // from class: androidx.camera.camera2.pipe.core.Debug$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return Debug.formatParameterMap$lambda$0((Pair) obj);
            }
        }, 17, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence formatParameterMap$lambda$0(Pair it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return ((String) it.getFirst()) + SignatureVisitor.INSTANCEOF + ((String) it.getSecond());
    }

    private final List parametersToSortedStringPairs(Map map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry entry : map.entrySet()) {
            Debug debug = INSTANCE;
            arrayList.add(TuplesKt.m1081to(debug.keyNameToString(entry.getKey()), debug.valueToString(entry.getValue())));
        }
        return CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: androidx.camera.camera2.pipe.core.Debug$parametersToSortedStringPairs$$inlined$sortedBy$1
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ComparisonsKt.compareValues((String) ((Pair) obj).getFirst(), (String) ((Pair) obj2).getFirst());
            }
        });
    }

    private final String keyNameToString(Object obj) {
        if (obj instanceof CameraCharacteristics.Key) {
            String name = ((CameraCharacteristics.Key) obj).getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            return name;
        }
        if (obj instanceof CaptureRequest.Key) {
            String name2 = ((CaptureRequest.Key) obj).getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            return name2;
        }
        if (!(obj instanceof CaptureResult.Key)) {
            return String.valueOf(obj);
        }
        String name3 = ((CaptureResult.Key) obj).getName();
        Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
        return name3;
    }

    private final String valueToString(Object obj) {
        return obj instanceof Object[] ? ArraysKt.joinToString$default((Object[]) obj, (CharSequence) null, "[", "]", 0, (CharSequence) null, new Function1() { // from class: androidx.camera.camera2.pipe.core.Debug$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj2) {
                return Debug.valueToString$lambda$0(obj2);
            }
        }, 25, (Object) null) : String.valueOf(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence valueToString$lambda$0(Object obj) {
        return INSTANCE.valueToString(obj);
    }

    public final String formatCameraGraphProperties(CameraMetadata metadata, CameraGraph.Config graphConfig, CameraGraph cameraGraph) {
        String str;
        String str2;
        Intrinsics.checkNotNullParameter(metadata, "metadata");
        Intrinsics.checkNotNullParameter(graphConfig, "graphConfig");
        Intrinsics.checkNotNullParameter(cameraGraph, "cameraGraph");
        ConcurrentCameraGraphs concurrentCameraGraphs$camera_camera2_pipe = graphConfig.getConcurrentCameraGraphs$camera_camera2_pipe();
        Set cameraIds = concurrentCameraGraphs$camera_camera2_pipe != null ? concurrentCameraGraphs$camera_camera2_pipe.getCameraIds() : null;
        CameraCharacteristics.Key LENS_FACING = CameraCharacteristics.LENS_FACING;
        Intrinsics.checkNotNullExpressionValue(LENS_FACING, "LENS_FACING");
        Integer num = (Integer) metadata.get(LENS_FACING);
        String str3 = "External";
        String str4 = "Unknown";
        if (num != null && num.intValue() == 0) {
            str = "Front";
        } else if (num != null && num.intValue() == 1) {
            str = "Back";
        } else {
            str = (num != null && num.intValue() == 2) ? "External" : "Unknown";
        }
        CameraCharacteristics.Key INFO_SUPPORTED_HARDWARE_LEVEL = CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL;
        Intrinsics.checkNotNullExpressionValue(INFO_SUPPORTED_HARDWARE_LEVEL, "INFO_SUPPORTED_HARDWARE_LEVEL");
        Integer num2 = (Integer) metadata.get(INFO_SUPPORTED_HARDWARE_LEVEL);
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
        int iM1579getSessionMode2uNL3no = graphConfig.m1579getSessionMode2uNL3no();
        CameraGraph.OperatingMode.Companion companion = CameraGraph.OperatingMode.Companion;
        if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no, companion.m1596getHIGH_SPEED2uNL3no())) {
            str4 = "High Speed";
        } else if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no, companion.m1597getNORMAL2uNL3no())) {
            str4 = "Normal";
        } else if (CameraGraph.OperatingMode.m1591equalsimpl0(iM1579getSessionMode2uNL3no, companion.m1595getEXTENSION2uNL3no())) {
            str4 = "Extension";
        }
        CameraCharacteristics.Key REQUEST_AVAILABLE_CAPABILITIES = CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES;
        Intrinsics.checkNotNullExpressionValue(REQUEST_AVAILABLE_CAPABILITIES, "REQUEST_AVAILABLE_CAPABILITIES");
        int[] iArr = (int[]) metadata.get(REQUEST_AVAILABLE_CAPABILITIES);
        if (iArr != null && ArraysKt.contains(iArr, 11)) {
            str2 = "Logical";
        } else {
            str2 = "Physical";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(cameraGraph + " (Camera " + graphConfig.m1575getCameraDz_R5H8() + ")\n");
        if (cameraIds != null) {
            sb.append("  Concurrent: " + cameraIds + '\n');
        }
        sb.append("  Facing:    " + str + " (" + str2 + ", " + str3 + ")\n");
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  Mode:      ");
        sb2.append(str4);
        sb2.append('\n');
        sb.append(sb2.toString());
        sb.append("Outputs:\n");
        Iterator it = cameraGraph.getStreams().getStreams().iterator();
        while (it.hasNext()) {
            int i = 0;
            for (Object obj : ((CameraStream) it.next()).getOutputs()) {
                int i2 = i + 1;
                if (i < 0) {
                    CollectionsKt.throwIndexOverflow();
                }
                OutputStream outputStream = (OutputStream) obj;
                sb.append("  ");
                sb.append(StringsKt.padEnd(i == 0 ? StreamId.m1791toStringimpl(outputStream.getStream().m1616getIdptHMqGs()) : _UrlKt.FRAGMENT_ENCODE_SET, 12, ' '));
                sb.append(StringsKt.padEnd(OutputId.m1670toStringimpl(outputStream.mo1686getId4LaLFng()), 12, ' '));
                String string = outputStream.getSize().toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                sb.append(StringsKt.padEnd(string, 12, ' '));
                sb.append(StringsKt.padEnd(StreamFormat.m1776getNameimpl(outputStream.mo1685getFormat8FPWQzE()), 16, ' '));
                OutputStream.MirrorMode mirrorModeMo1687getMirrorModedO1_9xk = outputStream.mo1687getMirrorModedO1_9xk();
                if (mirrorModeMo1687getMirrorModedO1_9xk != null) {
                    sb.append(" [" + ((Object) OutputStream.MirrorMode.m1713toStringimpl(mirrorModeMo1687getMirrorModedO1_9xk.m1714unboximpl())) + ']');
                }
                outputStream.mo1690getTimestampBasepcPfPbY();
                OutputStream.DynamicRangeProfile dynamicRangeProfileMo1684getDynamicRangeProfileOoVcG5w = outputStream.mo1684getDynamicRangeProfileOoVcG5w();
                if (dynamicRangeProfileMo1684getDynamicRangeProfileOoVcG5w != null) {
                    sb.append(" [" + ((Object) OutputStream.DynamicRangeProfile.m1705toStringimpl(dynamicRangeProfileMo1684getDynamicRangeProfileOoVcG5w.m1706unboximpl())) + ']');
                }
                OutputStream.StreamUseCase streamUseCaseMo1688getStreamUseCase8x2ez34 = outputStream.mo1688getStreamUseCase8x2ez34();
                if (streamUseCaseMo1688getStreamUseCase8x2ez34 != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseCase.m1721toStringimpl(streamUseCaseMo1688getStreamUseCase8x2ez34.m1722unboximpl())) + ']');
                }
                OutputStream.StreamUseHint streamUseHintMo1689getStreamUseHintHIPxoCc = outputStream.mo1689getStreamUseHintHIPxoCc();
                if (streamUseHintMo1689getStreamUseHintHIPxoCc != null) {
                    sb.append(" [" + ((Object) OutputStream.StreamUseHint.m1731toStringimpl(streamUseHintMo1689getStreamUseHintHIPxoCc.m1732unboximpl())) + ']');
                }
                if (!CameraId.m1605equalsimpl0(outputStream.mo1683getCameraDz_R5H8(), graphConfig.m1575getCameraDz_R5H8())) {
                    sb.append(" [");
                    sb.append(CameraId.m1602boximpl(outputStream.mo1683getCameraDz_R5H8()));
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
                sb.append(StringsKt.padEnd(InputStreamId.m1654toStringimpl(inputStream.mo1651getIdm1bwn9M()), 12, ' '));
                sb.append(StringsKt.padEnd(StreamFormat.m1778toStringimpl(inputStream.mo1650getFormat8FPWQzE()), 12, ' '));
                sb.append(StringsKt.padEnd(String.valueOf(inputStream.getMaxImages()), 12, ' '));
                sb.append("\n");
            }
        }
        sb.append("Session Template: " + RequestTemplate.m1757getNameimpl(graphConfig.m1580getSessionTemplatefGx8uWA()) + '\n');
        Debug debug = INSTANCE;
        debug.appendParameters(sb, "Session Parameters", graphConfig.getSessionParameters());
        sb.append("Default Template: " + RequestTemplate.m1757getNameimpl(graphConfig.m1577getDefaultTemplatefGx8uWA()) + '\n');
        debug.appendParameters(sb, "Default Parameters", graphConfig.getDefaultParameters());
        debug.appendParameters(sb, "Required Parameters", graphConfig.getRequiredParameters());
        String string2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
        return string2;
    }
}
