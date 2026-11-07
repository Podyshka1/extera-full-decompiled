package androidx.camera.camera2.pipe.graph;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0;
import android.util.Size;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.camera.camera2.pipe.CameraController;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.InputStream;
import androidx.camera.camera2.pipe.InputStreamId;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamFormat;
import androidx.camera.camera2.pipe.StreamGraph;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.ImageSource;
import androidx.camera.camera2.pipe.media.ImageSources;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.inject.Provider;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.atomicfu.AtomicFU;
import kotlinx.atomicfu.AtomicInt;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import retrofit2.Utils$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\"\n\u0002\b\u000b\b\u0001\u0018\u0000 W2\u00020\u00012\u00060\u0002j\u0002`\u0003:\u0004XYZWB/\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J#\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u00140\u00172\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010!\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00172\f\u0010 \u001a\b\u0012\u0004\u0012\u00020\u001f0\u0017H\u0002¢\u0006\u0004\b!\u0010\u001bJ#\u0010#\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00172\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u001f0\u0017H\u0002¢\u0006\u0004\b#\u0010\u001bJ\u001a\u0010%\u001a\u0004\u0018\u00010\u001f2\u0006\u0010$\u001a\u00020\u0018H\u0096\u0002¢\u0006\u0004\b%\u0010&J\u0017\u0010+\u001a\u0004\u0018\u00010\u00182\u0006\u0010(\u001a\u00020'¢\u0006\u0004\b)\u0010*J\u000f\u0010-\u001a\u00020,H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b0\u00101R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u00102\u001a\u0004\b3\u00104R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u00105\u001a\u0004\b6\u00107R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u00108\u001a\u0004\b9\u0010:R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010;R \u0010=\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u001f0<8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010>R \u0010@\u001a\b\u0012\u0004\u0012\u00020?0\u00178\u0000X\u0080\u0004¢\u0006\f\n\u0004\b@\u0010A\u001a\u0004\bB\u0010CR&\u0010E\u001a\u000e\u0012\u0004\u0012\u00020D\u0012\u0004\u0012\u00020?0<8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bE\u0010>\u001a\u0004\bF\u0010GR&\u0010I\u001a\u000e\u0012\u0004\u0012\u00020'\u0012\u0004\u0012\u00020H0<8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bI\u0010>\u001a\u0004\bJ\u0010GR \u0010L\u001a\b\u0012\u0004\u0012\u00020K0\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\bL\u0010A\u001a\u0004\bM\u0010CR \u0010N\u001a\b\u0012\u0004\u0012\u00020\u001f0\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\bN\u0010A\u001a\u0004\bO\u0010CR \u0010U\u001a\b\u0012\u0004\u0012\u00020'0P8\u0016X\u0096\u0004¢\u0006\f\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010TR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020D0\u00178\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0019\u0010A\u001a\u0004\bV\u0010C¨\u0006["}, d2 = {"Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "Landroidx/camera/camera2/pipe/StreamGraph;", "Ljava/lang/AutoCloseable;", "Lkotlin/AutoCloseable;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "graphConfig", "Landroidx/camera/camera2/pipe/media/ImageSources;", "imageSources", "Ljavax/inject/Provider;", "Landroidx/camera/camera2/pipe/CameraController;", "cameraControllerProvider", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/media/ImageSources;Ljavax/inject/Provider;)V", "Landroidx/camera/camera2/pipe/OutputStream$Config;", "outputConfig", "Landroid/hardware/camera2/params/OutputConfiguration;", "getOutputConfigurationOrNull", "(Landroidx/camera/camera2/pipe/OutputStream$Config;)Landroid/hardware/camera2/params/OutputConfiguration;", _UrlKt.FRAGMENT_ENCODE_SET, "computeNextSurfaceGroupId", "(Landroidx/camera/camera2/pipe/CameraGraph$Config;)I", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream$Config;", "outputs", "readExistingGroupNumbers", "(Ljava/util/List;)Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "computeIfDeferredStreamsAreSupported", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroidx/camera/camera2/pipe/CameraGraph$Config;)Z", "Landroidx/camera/camera2/pipe/CameraStream;", "unsortedStreams", "sortOutputsByPreviewStream", "unsortedOutputs", "sortOutputsByVideoStream", "config", "get", "(Landroidx/camera/camera2/pipe/CameraStream$Config;)Landroidx/camera/camera2/pipe/CameraStream;", "Landroidx/camera/camera2/pipe/StreamId;", "streamId", "getCameraStreamConfig-aKI5c8E", "(I)Landroidx/camera/camera2/pipe/CameraStream$Config;", "getCameraStreamConfig", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "close", "()V", "Landroidx/camera/camera2/pipe/CameraMetadata;", "getCameraMetadata", "()Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "getGraphConfig", "()Landroidx/camera/camera2/pipe/CameraGraph$Config;", "Landroidx/camera/camera2/pipe/media/ImageSources;", "getImageSources", "()Landroidx/camera/camera2/pipe/media/ImageSources;", "Ljavax/inject/Provider;", _UrlKt.FRAGMENT_ENCODE_SET, "_streamMap", "Ljava/util/Map;", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;", "outputConfigs", "Ljava/util/List;", "getOutputConfigs$camera_camera2_pipe", "()Ljava/util/List;", "Landroidx/camera/camera2/pipe/OutputStream;", "outputConfigMap", "getOutputConfigMap$camera_camera2_pipe", "()Ljava/util/Map;", "Landroidx/camera/camera2/pipe/media/ImageSource;", "imageSourceMap", "getImageSourceMap$camera_camera2_pipe", "Landroidx/camera/camera2/pipe/InputStream;", "inputs", "getInputs", "streams", "getStreams", _UrlKt.FRAGMENT_ENCODE_SET, "streamIds$1", "Ljava/util/Set;", "getStreamIds", "()Ljava/util/Set;", "streamIds", "getOutputs", "Companion", "OutputConfig", "OutputStreamImpl", "InputStreamImpl", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStreamGraphImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamGraphImpl.kt\nandroidx/camera/camera2/pipe/graph/StreamGraphImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,475:1\n1563#2:476\n1634#2,3:477\n1563#2:480\n1634#2,3:481\n1563#2:484\n1634#2,3:485\n1056#2:488\n1374#2:489\n1460#2,5:490\n295#2,2:496\n1374#2:498\n1460#2,5:499\n808#2,11:504\n1803#2,3:515\n3307#2,4:518\n1761#2,3:522\n3311#2,6:525\n3307#2,4:531\n1761#2,3:535\n3311#2,6:538\n3307#2,4:544\n1761#2,3:548\n3311#2,6:551\n3307#2,4:557\n1761#2,3:561\n3311#2,6:564\n3307#2,4:570\n1761#2,3:574\n3311#2,6:577\n1#3:495\n*S KotlinDebug\n*F\n+ 1 StreamGraphImpl.kt\nandroidx/camera/camera2/pipe/graph/StreamGraphImpl\n*L\n168#1:476\n168#1:477,3\n199#1:480\n199#1:481,3\n206#1:484\n206#1:485,3\n209#1:488\n213#1:489\n213#1:490,5\n105#1:496,2\n306#1:498\n306#1:499,5\n307#1:504,11\n308#1:515,3\n352#1:518,4\n353#1:522,3\n352#1:525,6\n364#1:531,4\n365#1:535,3\n364#1:538,6\n374#1:544,4\n375#1:548,3\n374#1:551,6\n399#1:557,4\n400#1:561,3\n399#1:564,6\n411#1:570,4\n412#1:574,3\n411#1:577,6\n*E\n"})
public final class StreamGraphImpl implements StreamGraph, AutoCloseable {
    private static final Comparator<CameraStream> previewFormatComparator;
    private static final List<StreamFormat> previewFormats;
    private static final List<OutputStream.OutputType> previewOutputTypes;
    private static final Comparator<CameraStream> previewOutputTypesComparator;
    private final Map<CameraStream.Config, CameraStream> _streamMap;
    private final Provider<CameraController> cameraControllerProvider;
    private final CameraMetadata cameraMetadata;
    private final CameraGraph.Config graphConfig;
    private final Map<StreamId, ImageSource> imageSourceMap;
    private final ImageSources imageSources;
    private final List<InputStream> inputs;
    private final Map<OutputStream, OutputConfig> outputConfigMap;
    private final List<OutputConfig> outputConfigs;
    private final List<OutputStream> outputs;

    /* JADX INFO: renamed from: streamIds$1, reason: from kotlin metadata */
    private final Set<StreamId> streamIds;
    private final List<CameraStream> streams;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final AtomicInt streamIds = AtomicFU.atomic(0);
    private static final AtomicInt outputIds = AtomicFU.atomic(0);
    private static final AtomicInt inputIds = AtomicFU.atomic(0);
    private static final AtomicInt configIds = AtomicFU.atomic(0);
    private static final AtomicInt groupIds = AtomicFU.atomic(0);

    private final OutputConfiguration getOutputConfigurationOrNull(OutputStream.Config outputConfig) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public StreamGraphImpl(CameraMetadata cameraMetadata, CameraGraph.Config config, ImageSources imageSources, Provider<CameraController> provider) {
        CameraGraph.Config config2;
        List<InputStream> listEmptyList;
        OutputStream.OutputType outputType$camera_camera2_pipe;
        this.cameraMetadata = cameraMetadata;
        this.graphConfig = config;
        this.imageSources = imageSources;
        this.cameraControllerProvider = provider;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ArrayList arrayList2 = new ArrayList();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        boolean zComputeIfDeferredStreamsAreSupported = computeIfDeferredStreamsAreSupported(cameraMetadata, config);
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Iterator<List<CameraStream.Config>> it = config.getExclusiveStreamGroups().iterator();
        while (true) {
            DefaultConstructorMarker defaultConstructorMarker = null;
            if (it.hasNext()) {
                List<CameraStream.Config> next = it.next();
                if (next.isEmpty()) {
                    Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
                    throw null;
                }
                int iComputeNextSurfaceGroupId = computeNextSurfaceGroupId(this.graphConfig);
                for (CameraStream.Config config3 : next) {
                    if (linkedHashMap3.containsKey(config3)) {
                        Segment$$ExternalSyntheticBUOutline1.m973m("Check failed.");
                        throw null;
                    }
                    linkedHashMap3.put(config3, Integer.valueOf(iComputeNextSurfaceGroupId));
                }
            } else {
                for (CameraStream.Config config4 : this.graphConfig.getStreams()) {
                    for (OutputStream.Config config5 : config4.getOutputs()) {
                        if (!linkedHashMap.containsKey(config5)) {
                            int iM1662nextConfigIdhoCEiqs$camera_camera2_pipe = INSTANCE.m1662nextConfigIdhoCEiqs$camera_camera2_pipe();
                            Size size = config5.getSize();
                            int iM1442getFormat8FPWQzE = config5.getFormat();
                            String strM1440getCamera1LO98Z0 = config5.getCamera();
                            String camera = strM1440getCamera1LO98Z0 == null ? this.graphConfig.getCamera() : strM1440getCamera1LO98Z0;
                            Integer num = (Integer) linkedHashMap3.get(config4);
                            if (zComputeIfDeferredStreamsAreSupported) {
                                OutputStream.Config.LazyOutputConfig lazyOutputConfig = config5 instanceof OutputStream.Config.LazyOutputConfig ? (OutputStream.Config.LazyOutputConfig) config5 : null;
                                if (lazyOutputConfig != null) {
                                    outputType$camera_camera2_pipe = lazyOutputConfig.getOutputType();
                                }
                                OutputStream.MirrorMode mirrorModeM1443getMirrorModedO1_9xk = config5.getMirrorMode();
                                config5.m1446getTimestampBasepcPfPbY();
                                OutputConfig outputConfig = new OutputConfig(iM1662nextConfigIdhoCEiqs$camera_camera2_pipe, size, iM1442getFormat8FPWQzE, camera, num, getOutputConfigurationOrNull(config5), outputType$camera_camera2_pipe, mirrorModeM1443getMirrorModedO1_9xk, null, config5.getDynamicRangeProfile(), config5.getStreamUseCase(), config5.getStreamUseHint(), config5.getSensorPixelModes(), null);
                                linkedHashMap.put(config5, outputConfig);
                                arrayList.add(outputConfig);
                            } else {
                                outputType$camera_camera2_pipe = null;
                                OutputStream.MirrorMode mirrorModeM1443getMirrorModedO1_9xk2 = config5.getMirrorMode();
                                config5.m1446getTimestampBasepcPfPbY();
                                OutputConfig outputConfig2 = new OutputConfig(iM1662nextConfigIdhoCEiqs$camera_camera2_pipe, size, iM1442getFormat8FPWQzE, camera, num, getOutputConfigurationOrNull(config5), outputType$camera_camera2_pipe, mirrorModeM1443getMirrorModedO1_9xk2, null, config5.getDynamicRangeProfile(), config5.getStreamUseCase(), config5.getStreamUseHint(), config5.getSensorPixelModes(), null);
                                linkedHashMap.put(config5, outputConfig2);
                                arrayList.add(outputConfig2);
                            }
                        }
                    }
                }
                LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                int size2 = this.graphConfig.getStreams().size();
                int i = 0;
                while (true) {
                    config2 = this.graphConfig;
                    if (i >= size2) {
                        break;
                    }
                    CameraStream.Config config6 = config2.getStreams().get(i);
                    List<OutputStream.Config> outputs = config6.getOutputs();
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(outputs, 10));
                    Iterator<T> it2 = outputs.iterator();
                    while (it2.hasNext()) {
                        OutputConfig outputConfig3 = (OutputConfig) linkedHashMap.get((OutputStream.Config) it2.next());
                        int iM1664nextOutputId4LaLFng$camera_camera2_pipe = INSTANCE.m1664nextOutputId4LaLFng$camera_camera2_pipe();
                        Size size3 = outputConfig3.getSize();
                        int format = outputConfig3.getFormat();
                        String camera2 = outputConfig3.getCamera();
                        OutputStream.MirrorMode mirrorMode = outputConfig3.getMirrorMode();
                        outputConfig3.m1672getTimestampBasepcPfPbY();
                        OutputStreamImpl outputStreamImpl = new OutputStreamImpl(iM1664nextOutputId4LaLFng$camera_camera2_pipe, size3, format, camera2, mirrorMode, null, outputConfig3.getDynamicRangeProfile(), outputConfig3.getStreamUseCase(), outputConfig3.getDeferredOutputType(), outputConfig3.getStreamUseHint(), null);
                        linkedHashMap4.put(outputStreamImpl, outputConfig3);
                        arrayList3.add(outputStreamImpl);
                    }
                    CameraStream cameraStream = new CameraStream(INSTANCE.m1665nextStreamIdptHMqGs$camera_camera2_pipe(), arrayList3, defaultConstructorMarker);
                    linkedHashMap2.put(config6, cameraStream);
                    arrayList2.add(cameraStream);
                    int size4 = arrayList3.size();
                    int i2 = 0;
                    while (i2 < size4) {
                        Object obj = arrayList3.get(i2);
                        i2++;
                        ((OutputStreamImpl) obj).setStream(cameraStream);
                    }
                    Iterator<OutputStream.Config> it3 = config6.getOutputs().iterator();
                    while (it3.hasNext()) {
                        ((OutputConfig) linkedHashMap.get(it3.next())).getStreamBuilder$camera_camera2_pipe().add(cameraStream);
                    }
                    i++;
                }
                List<InputStream.Config> input = config2.getInput();
                if (input == null) {
                    listEmptyList = CollectionsKt.emptyList();
                } else {
                    List<InputStream.Config> list = input;
                    listEmptyList = new ArrayList<>(CollectionsKt.collectionSizeOrDefault(list, 10));
                    for (InputStream.Config config7 : list) {
                        listEmptyList.add(new InputStreamImpl(INSTANCE.m1663nextInputIdm1bwn9M$camera_camera2_pipe(), config7.getMaxImages(), config7.getStreamFormat(), defaultConstructorMarker));
                    }
                }
                this.inputs = listEmptyList;
                this.streams = sortOutputsByVideoStream(sortOutputsByPreviewStream(arrayList2));
                List<CameraStream> streams = getStreams();
                ArrayList arrayList4 = new ArrayList(CollectionsKt.collectionSizeOrDefault(streams, 10));
                Iterator<T> it4 = streams.iterator();
                while (it4.hasNext()) {
                    arrayList4.add(StreamId.m1525boximpl(((CameraStream) it4.next()).getId()));
                }
                this.streamIds = CollectionsKt.toSet(arrayList4);
                this._streamMap = linkedHashMap2;
                this.outputConfigs = CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$sortedBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        Iterator<T> it5 = ((StreamGraphImpl.OutputConfig) t).getStreams().iterator();
                        if (!it5.hasNext()) {
                            Utils$$ExternalSyntheticBUOutline0.m1121m();
                            return 0;
                        }
                        Integer numValueOf = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it5.next()));
                        while (it5.hasNext()) {
                            Integer numValueOf2 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it5.next()));
                            if (numValueOf.compareTo(numValueOf2) > 0) {
                                numValueOf = numValueOf2;
                            }
                        }
                        Iterator<T> it6 = ((StreamGraphImpl.OutputConfig) t2).getStreams().iterator();
                        if (it6.hasNext()) {
                            Integer numValueOf3 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it6.next()));
                            while (it6.hasNext()) {
                                Integer numValueOf4 = Integer.valueOf(this.this$0.getStreams().indexOf((CameraStream) it6.next()));
                                if (numValueOf3.compareTo(numValueOf4) > 0) {
                                    numValueOf3 = numValueOf4;
                                }
                            }
                            return ComparisonsKt.compareValues(numValueOf, numValueOf3);
                        }
                        Utils$$ExternalSyntheticBUOutline0.m1121m();
                        return 0;
                    }
                });
                this.outputConfigMap = linkedHashMap4;
                List<CameraStream> streams2 = getStreams();
                ArrayList arrayList5 = new ArrayList();
                Iterator<T> it5 = streams2.iterator();
                while (it5.hasNext()) {
                    CollectionsKt.addAll(arrayList5, ((CameraStream) it5.next()).getOutputs());
                }
                this.outputs = arrayList5;
                Map mapCreateMapBuilder = MapsKt.createMapBuilder();
                Iterator<CameraStream.Config> it6 = this.graphConfig.getStreams().iterator();
                while (it6.hasNext()) {
                    it6.next().getImageSourceConfig();
                }
                this.imageSourceMap = MapsKt.build(mapCreateMapBuilder);
                return;
            }
        }
    }

    public final List<OutputConfig> getOutputConfigs$camera_camera2_pipe() {
        return this.outputConfigs;
    }

    public final Map<OutputStream, OutputConfig> getOutputConfigMap$camera_camera2_pipe() {
        return this.outputConfigMap;
    }

    public final Map<StreamId, ImageSource> getImageSourceMap$camera_camera2_pipe() {
        return this.imageSourceMap;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<InputStream> getInputs() {
        return this.inputs;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<CameraStream> getStreams() {
        return this.streams;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public List<OutputStream> getOutputs() {
        return this.outputs;
    }

    @Override // androidx.camera.camera2.pipe.StreamGraph
    public CameraStream get(CameraStream.Config config) {
        return this._streamMap.get(config);
    }

    /* JADX INFO: renamed from: getCameraStreamConfig-aKI5c8E, reason: not valid java name */
    public final CameraStream.Config m1661getCameraStreamConfigaKI5c8E(int streamId) {
        Object next;
        Iterator<T> it = this._streamMap.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (StreamId.m1528equalsimpl0(((CameraStream) ((Map.Entry) next).getValue()).getId(), streamId)) {
                break;
            }
        }
        Map.Entry entry = (Map.Entry) next;
        if (entry != null) {
            return (CameraStream.Config) entry.getKey();
        }
        return null;
    }

    @Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b#\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\b\u0010\r\u001a\u0004\u0018\u00010\f\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0018\u0012\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\u001a¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010!\u001a\u0004\b\"\u0010#R\u0017\u0010\u0005\u001a\u00020\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010$\u001a\u0004\b%\u0010&R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010!\u001a\u0004\b'\u0010#R\u0017\u0010\t\u001a\u00020\b8\u0006¢\u0006\f\n\u0004\b\t\u0010(\u001a\u0004\b)\u0010 R\u0019\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0006¢\u0006\f\n\u0004\b\u000b\u0010*\u001a\u0004\b+\u0010,R\u0019\u0010\r\u001a\u0004\u0018\u00010\f8\u0006¢\u0006\f\n\u0004\b\r\u0010-\u001a\u0004\b.\u0010/R\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u00100\u001a\u0004\b1\u00102R\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0006¢\u0006\f\n\u0004\b\u0011\u00103\u001a\u0004\b4\u00105R\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0006¢\u0006\f\n\u0004\b\u0015\u00106\u001a\u0004\b7\u00108R\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006¢\u0006\f\n\u0004\b\u0017\u00109\u001a\u0004\b:\u0010;R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0006¢\u0006\f\n\u0004\b\u0019\u0010<\u001a\u0004\b=\u0010>R\u001d\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00010\u001a8\u0006¢\u0006\f\n\u0004\b\u001b\u0010?\u001a\u0004\b@\u0010AR \u0010D\u001a\b\u0012\u0004\u0012\u00020C0B8\u0000X\u0080\u0004¢\u0006\f\n\u0004\bD\u0010?\u001a\u0004\bE\u0010AR\u0019\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0006¢\u0006\f\n\u0004\b\u0013\u0010F\u001a\u0004\bG\u0010HR\u0017\u0010J\u001a\b\u0012\u0004\u0012\u00020C0\u001a8F¢\u0006\u0006\u001a\u0004\bI\u0010AR\u0011\u0010N\u001a\u00020K8F¢\u0006\u0006\u001a\u0004\bL\u0010MR\u0011\u0010P\u001a\u00020K8F¢\u0006\u0006\u001a\u0004\bO\u0010M¨\u0006Q"}, d2 = {"Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputConfig;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/graph/OutputConfigId;", "id", "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", _UrlKt.FRAGMENT_ENCODE_SET, "groupNumber", "Landroid/hardware/camera2/params/OutputConfiguration;", "externalOutputConfig", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "deferredOutputType", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", _UrlKt.FRAGMENT_ENCODE_SET, "sensorPixelModes", "<init>", "(ILandroid/util/Size;ILjava/lang/String;Ljava/lang/Integer;Landroid/hardware/camera2/params/OutputConfiguration;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "I", "getId-hoCEiqs", "()I", "Landroid/util/Size;", "getSize", "()Landroid/util/Size;", "getFormat-8FPWQzE", "Ljava/lang/String;", "getCamera-Dz_R5H8", "Ljava/lang/Integer;", "getGroupNumber", "()Ljava/lang/Integer;", "Landroid/hardware/camera2/params/OutputConfiguration;", "getExternalOutputConfig", "()Landroid/hardware/camera2/params/OutputConfiguration;", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "getDeferredOutputType", "()Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "getMirrorMode-dO1_9xk", "()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "getDynamicRangeProfile-OoVcG5w", "()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "getStreamUseCase-8x2ez34", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getStreamUseHint-HIPxoCc", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "Ljava/util/List;", "getSensorPixelModes", "()Ljava/util/List;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraStream;", "streamBuilder", "getStreamBuilder$camera_camera2_pipe", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "getTimestampBase-pcPfPbY", "()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "getStreams", "streams", _UrlKt.FRAGMENT_ENCODE_SET, "getDeferrable", "()Z", "deferrable", "getSurfaceSharing", "surfaceSharing", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OutputConfig {
        private final String camera;
        private final OutputStream.OutputType deferredOutputType;
        private final OutputStream.DynamicRangeProfile dynamicRangeProfile;
        private final OutputConfiguration externalOutputConfig;
        private final int format;
        private final Integer groupNumber;
        private final int id;
        private final OutputStream.MirrorMode mirrorMode;
        private final List<Object> sensorPixelModes;
        private final Size size;
        private final List<CameraStream> streamBuilder;
        private final OutputStream.StreamUseCase streamUseCase;
        private final OutputStream.StreamUseHint streamUseHint;

        public /* synthetic */ OutputConfig(int i, Size size, int i2, String str, Integer num, OutputConfiguration outputConfiguration, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.StreamUseHint streamUseHint, List list, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, size, i2, str, num, outputConfiguration, outputType, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, streamUseHint, list);
        }

        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY, reason: not valid java name */
        public final OutputStream.TimestampBase m1672getTimestampBasepcPfPbY() {
            return null;
        }

        private OutputConfig(int i, Size size, int i2, String str, Integer num, OutputConfiguration outputConfiguration, OutputStream.OutputType outputType, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.StreamUseHint streamUseHint, List<Object> list) {
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.groupNumber = num;
            this.externalOutputConfig = outputConfiguration;
            this.deferredOutputType = outputType;
            this.mirrorMode = mirrorMode;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.streamUseHint = streamUseHint;
            this.sensorPixelModes = list;
            this.streamBuilder = new ArrayList();
        }

        public final Size getSize() {
            return this.size;
        }

        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: not valid java name and from getter */
        public final int getFormat() {
            return this.format;
        }

        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: not valid java name and from getter */
        public final String getCamera() {
            return this.camera;
        }

        public final Integer getGroupNumber() {
            return this.groupNumber;
        }

        public final OutputConfiguration getExternalOutputConfig() {
            return this.externalOutputConfig;
        }

        public final OutputStream.OutputType getDeferredOutputType() {
            return this.deferredOutputType;
        }

        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: not valid java name and from getter */
        public final OutputStream.MirrorMode getMirrorMode() {
            return this.mirrorMode;
        }

        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: not valid java name and from getter */
        public final OutputStream.DynamicRangeProfile getDynamicRangeProfile() {
            return this.dynamicRangeProfile;
        }

        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: not valid java name and from getter */
        public final OutputStream.StreamUseCase getStreamUseCase() {
            return this.streamUseCase;
        }

        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: not valid java name and from getter */
        public final OutputStream.StreamUseHint getStreamUseHint() {
            return this.streamUseHint;
        }

        public final List<Object> getSensorPixelModes() {
            return this.sensorPixelModes;
        }

        public final List<CameraStream> getStreamBuilder$camera_camera2_pipe() {
            return this.streamBuilder;
        }

        public final List<CameraStream> getStreams() {
            return this.streamBuilder;
        }

        public final boolean getDeferrable() {
            return this.deferredOutputType != null;
        }

        public final boolean getSurfaceSharing() {
            return this.streamBuilder.size() > 1;
        }

        public String toString() {
            return OutputConfigId.m1653toStringimpl(this.id);
        }
    }

    @Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\n\b\u0000\u0018\u00002\u00020\u0001Bo\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0005\u001a\u00020\u00048\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u001a\u0010\u0007\u001a\u00020\u00068\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u001b\u001a\u0004\b!\u0010\u001dR\u001a\u0010\t\u001a\u00020\b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\t\u0010\"\u001a\u0004\b#\u0010\u001aR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000b\u0010$\u001a\u0004\b%\u0010&R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u000e8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010'\u001a\u0004\b(\u0010)R\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0011\u0010*\u001a\u0004\b+\u0010,R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010-\u001a\u0004\b.\u0010/R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0015\u00100\u001a\u0004\b1\u00102R\"\u00104\u001a\u0002038\u0016@\u0016X\u0096.¢\u0006\u0012\n\u0004\b4\u00105\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u001c\u0010\r\u001a\u0004\u0018\u00010\f8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\r\u0010:\u001a\u0004\b;\u0010<¨\u0006="}, d2 = {"Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$OutputStreamImpl;", "Landroidx/camera/camera2/pipe/OutputStream;", "Landroidx/camera/camera2/pipe/OutputId;", "id", "Landroid/util/Size;", "size", "Landroidx/camera/camera2/pipe/StreamFormat;", "format", "Landroidx/camera/camera2/pipe/CameraId;", "camera", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "mirrorMode", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "timestampBase", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "dynamicRangeProfile", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "streamUseCase", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "outputType", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "streamUseHint", "<init>", "(ILandroid/util/Size;ILjava/lang/String;Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;Landroidx/camera/camera2/pipe/OutputStream$OutputType;Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;Lkotlin/jvm/internal/DefaultConstructorMarker;)V", _UrlKt.FRAGMENT_ENCODE_SET, "toString", "()Ljava/lang/String;", "I", "getId-4LaLFng", "()I", "Landroid/util/Size;", "getSize", "()Landroid/util/Size;", "getFormat-8FPWQzE", "Ljava/lang/String;", "getCamera-Dz_R5H8", "Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "getMirrorMode-dO1_9xk", "()Landroidx/camera/camera2/pipe/OutputStream$MirrorMode;", "Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "getDynamicRangeProfile-OoVcG5w", "()Landroidx/camera/camera2/pipe/OutputStream$DynamicRangeProfile;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "getStreamUseCase-8x2ez34", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseCase;", "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "getOutputType", "()Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "getStreamUseHint-HIPxoCc", "()Landroidx/camera/camera2/pipe/OutputStream$StreamUseHint;", "Landroidx/camera/camera2/pipe/CameraStream;", "stream", "Landroidx/camera/camera2/pipe/CameraStream;", "getStream", "()Landroidx/camera/camera2/pipe/CameraStream;", "setStream", "(Landroidx/camera/camera2/pipe/CameraStream;)V", "Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "getTimestampBase-pcPfPbY", "()Landroidx/camera/camera2/pipe/OutputStream$TimestampBase;", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class OutputStreamImpl implements OutputStream {
        private final String camera;
        private final OutputStream.DynamicRangeProfile dynamicRangeProfile;
        private final int format;
        private final int id;
        private final OutputStream.MirrorMode mirrorMode;
        private final OutputStream.OutputType outputType;
        private final Size size;
        public CameraStream stream;
        private final OutputStream.StreamUseCase streamUseCase;
        private final OutputStream.StreamUseHint streamUseHint;

        public /* synthetic */ OutputStreamImpl(int i, Size size, int i2, String str, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.OutputType outputType, OutputStream.StreamUseHint streamUseHint, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, size, i2, str, mirrorMode, timestampBase, dynamicRangeProfile, streamUseCase, outputType, streamUseHint);
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getTimestampBase-pcPfPbY */
        public OutputStream.TimestampBase mo1439getTimestampBasepcPfPbY() {
            return null;
        }

        private OutputStreamImpl(int i, Size size, int i2, String str, OutputStream.MirrorMode mirrorMode, OutputStream.TimestampBase timestampBase, OutputStream.DynamicRangeProfile dynamicRangeProfile, OutputStream.StreamUseCase streamUseCase, OutputStream.OutputType outputType, OutputStream.StreamUseHint streamUseHint) {
            this.id = i;
            this.size = size;
            this.format = i2;
            this.camera = str;
            this.mirrorMode = mirrorMode;
            this.dynamicRangeProfile = dynamicRangeProfile;
            this.streamUseCase = streamUseCase;
            this.outputType = outputType;
            this.streamUseHint = streamUseHint;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getId-4LaLFng, reason: from getter */
        public int getId() {
            return this.id;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public Size getSize() {
            return this.size;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: from getter */
        public int getFormat() {
            return this.format;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getCamera-Dz_R5H8, reason: from getter */
        public String getCamera() {
            return this.camera;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getMirrorMode-dO1_9xk, reason: from getter */
        public OutputStream.MirrorMode getMirrorMode() {
            return this.mirrorMode;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getDynamicRangeProfile-OoVcG5w, reason: from getter */
        public OutputStream.DynamicRangeProfile getDynamicRangeProfile() {
            return this.dynamicRangeProfile;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getStreamUseCase-8x2ez34, reason: from getter */
        public OutputStream.StreamUseCase getStreamUseCase() {
            return this.streamUseCase;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public OutputStream.OutputType getOutputType() {
            return this.outputType;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        /* JADX INFO: renamed from: getStreamUseHint-HIPxoCc, reason: from getter */
        public OutputStream.StreamUseHint getStreamUseHint() {
            return this.streamUseHint;
        }

        @Override // androidx.camera.camera2.pipe.OutputStream
        public CameraStream getStream() {
            CameraStream cameraStream = this.stream;
            if (cameraStream != null) {
                return cameraStream;
            }
            return null;
        }

        public void setStream(CameraStream cameraStream) {
            this.stream = cameraStream;
        }

        public String toString() {
            return OutputId.m1419toStringimpl(getId());
        }
    }

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tR\u0016\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u000f"}, d2 = {"Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$InputStreamImpl;", "Landroidx/camera/camera2/pipe/InputStream;", "id", "Landroidx/camera/camera2/pipe/InputStreamId;", "maxImages", _UrlKt.FRAGMENT_ENCODE_SET, "format", "Landroidx/camera/camera2/pipe/StreamFormat;", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "getId-m1bwn9M", "()I", "I", "getMaxImages", "getFormat-8FPWQzE", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class InputStreamImpl implements InputStream {
        private final int format;
        private final int id;
        private final int maxImages;

        public /* synthetic */ InputStreamImpl(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(i, i2, i3);
        }

        private InputStreamImpl(int i, int i2, int i3) {
            this.id = i;
            this.maxImages = i2;
            this.format = i3;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        /* JADX INFO: renamed from: getId-m1bwn9M, reason: from getter */
        public int getId() {
            return this.id;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        public int getMaxImages() {
            return this.maxImages;
        }

        @Override // androidx.camera.camera2.pipe.InputStream
        /* JADX INFO: renamed from: getFormat-8FPWQzE, reason: from getter */
        public int getFormat() {
            return this.format;
        }
    }

    private final int computeNextSurfaceGroupId(CameraGraph.Config graphConfig) {
        List<Integer> existingGroupNumbers = readExistingGroupNumbers(graphConfig.getStreams());
        int iNextGroupId$camera_camera2_pipe = INSTANCE.nextGroupId$camera_camera2_pipe();
        while (existingGroupNumbers.contains(Integer.valueOf(iNextGroupId$camera_camera2_pipe))) {
            iNextGroupId$camera_camera2_pipe = INSTANCE.nextGroupId$camera_camera2_pipe();
        }
        return iNextGroupId$camera_camera2_pipe;
    }

    private final List<Integer> readExistingGroupNumbers(List<CameraStream.Config> outputs) {
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = outputs.iterator();
        while (it.hasNext()) {
            CollectionsKt.addAll(arrayList, ((CameraStream.Config) it.next()).getOutputs());
        }
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList.get(i);
        }
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = arrayList2.iterator();
        if (!it2.hasNext()) {
            return arrayList3;
        }
        MediaSessionCompat$$ExternalSyntheticThrowCCEIfNotNull0.m2m(it2.next());
        throw null;
    }

    private final boolean computeIfDeferredStreamsAreSupported(CameraMetadata cameraMetadata, CameraGraph.Config graphConfig) {
        int i = Build.VERSION.SDK_INT;
        if (i < 26 || !CameraGraph.OperatingMode.m1340equalsimpl0(graphConfig.getSessionMode(), CameraGraph.OperatingMode.INSTANCE.m1346getNORMAL2uNL3no())) {
            return false;
        }
        CameraMetadata.Companion companion = CameraMetadata.INSTANCE;
        if (companion.isHardwareLevelLegacy(cameraMetadata) || companion.isHardwareLevelLimited(cameraMetadata)) {
            return false;
        }
        return i < 28 || !companion.isHardwareLevelExternal(cameraMetadata);
    }

    public String toString() {
        return "StreamGraph(" + this._streamMap + ')';
    }

    private final List<CameraStream> sortOutputsByPreviewStream(List<CameraStream> unsortedStreams) {
        boolean z;
        boolean z2;
        List<CameraStream> list = unsortedStreams;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z3 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            List<OutputStream> outputs = ((CameraStream) next).getOutputs();
            if ((outputs instanceof Collection) && outputs.isEmpty()) {
                z3 = false;
            } else {
                Iterator<T> it2 = outputs.iterator();
                while (it2.hasNext()) {
                    OutputStream.StreamUseCase streamUseCase = ((OutputStream) it2.next()).getStreamUseCase();
                    if (streamUseCase == null ? false : OutputStream.StreamUseCase.m1468equalsimpl0(streamUseCase.getValue(), OutputStream.StreamUseCase.INSTANCE.m1473getPREVIEWvrKr8v8())) {
                        break;
                    }
                }
                z3 = false;
            }
            if (z3) {
                arrayList.add(next);
            } else {
                arrayList2.add(next);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list2 = (List) pair.component1();
        List list3 = (List) pair.component2();
        List list4 = list2;
        if (!list4.isEmpty()) {
            return CollectionsKt.plus((Collection) list4, (Iterable) list3);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : list) {
            List<OutputStream> outputs2 = ((CameraStream) obj).getOutputs();
            if ((outputs2 instanceof Collection) && outputs2.isEmpty()) {
                z2 = false;
            } else {
                Iterator<T> it3 = outputs2.iterator();
                while (it3.hasNext()) {
                    if (CollectionsKt.contains(previewOutputTypes, ((OutputStream) it3.next()).getOutputType())) {
                        z2 = true;
                        break;
                    }
                }
                z2 = false;
            }
            if (z2) {
                arrayList3.add(obj);
            } else {
                arrayList4.add(obj);
            }
        }
        Pair pair2 = new Pair(arrayList3, arrayList4);
        List list5 = (List) pair2.component1();
        List list6 = (List) pair2.component2();
        if (!list5.isEmpty()) {
            return CollectionsKt.plus((Collection) CollectionsKt.sortedWith(list5, previewOutputTypesComparator), (Iterable) list6);
        }
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        for (Object obj2 : list) {
            List<OutputStream> outputs3 = ((CameraStream) obj2).getOutputs();
            if ((outputs3 instanceof Collection) && outputs3.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it4 = outputs3.iterator();
                while (it4.hasNext()) {
                    if (previewFormats.contains(StreamFormat.m1513boximpl(((OutputStream) it4.next()).getFormat()))) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            if (z) {
                arrayList5.add(obj2);
            } else {
                arrayList6.add(obj2);
            }
        }
        Pair pair3 = new Pair(arrayList5, arrayList6);
        List list7 = (List) pair3.component1();
        return !list7.isEmpty() ? CollectionsKt.plus((Collection) CollectionsKt.sortedWith(list7, previewFormatComparator), (Iterable) pair3.component2()) : unsortedStreams;
    }

    private final List<CameraStream> sortOutputsByVideoStream(List<CameraStream> unsortedOutputs) {
        boolean z;
        List<CameraStream> list = unsortedOutputs;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        Iterator<T> it = list.iterator();
        while (true) {
            boolean z2 = true;
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            List<OutputStream> outputs = ((CameraStream) next).getOutputs();
            if ((outputs instanceof Collection) && outputs.isEmpty()) {
                z2 = false;
            } else {
                Iterator<T> it2 = outputs.iterator();
                while (it2.hasNext()) {
                    OutputStream.StreamUseCase streamUseCase = ((OutputStream) it2.next()).getStreamUseCase();
                    if (streamUseCase == null ? false : OutputStream.StreamUseCase.m1468equalsimpl0(streamUseCase.getValue(), OutputStream.StreamUseCase.INSTANCE.m1474getVIDEO_RECORDvrKr8v8())) {
                        break;
                    }
                }
                z2 = false;
            }
            if (z2) {
                arrayList.add(next);
            } else {
                arrayList2.add(next);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list2 = (List) pair.component1();
        List list3 = (List) pair.component2();
        if (!list2.isEmpty()) {
            return CollectionsKt.plus((Collection) list3, (Iterable) list2);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (Object obj : list) {
            List<OutputStream> outputs2 = ((CameraStream) obj).getOutputs();
            if ((outputs2 instanceof Collection) && outputs2.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it3 = outputs2.iterator();
                while (it3.hasNext()) {
                    OutputStream.StreamUseHint streamUseHint = ((OutputStream) it3.next()).getStreamUseHint();
                    if (streamUseHint == null ? false : OutputStream.StreamUseHint.m1478equalsimpl0(streamUseHint.getValue(), OutputStream.StreamUseHint.INSTANCE.m1483getVIDEO_RECORD4VYZOf8())) {
                        z = true;
                        break;
                    }
                }
                z = false;
            }
            if (z) {
                arrayList3.add(obj);
            } else {
                arrayList4.add(obj);
            }
        }
        Pair pair2 = new Pair(arrayList3, arrayList4);
        List list4 = (List) pair2.component1();
        return !list4.isEmpty() ? CollectionsKt.plus((Collection) pair2.component2(), (Iterable) list4) : unsortedOutputs;
    }

    @Override // java.lang.AutoCloseable
    public void close() throws Exception {
        Iterator<ImageSource> it = this.imageSourceMap.values().iterator();
        while (it.hasNext()) {
            UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m24m(it.next());
        }
    }

    @Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0004\b\r\u0010\tJ\u000f\u0010\u000f\u001a\u00020\u0010H\u0000¢\u0006\u0004\b\u0011\u0010\tJ\u000f\u0010\u0013\u001a\u00020\u0014H\u0000¢\u0006\u0004\b\u0015\u0010\tJ\r\u0010\u0017\u001a\u00020\u0018H\u0000¢\u0006\u0002\b\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\u001f0\u001ej\b\u0012\u0004\u0012\u00020\u001f` X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010!\u001a\b\u0012\u0004\u0012\u00020\"0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010#\u001a\u0012\u0012\u0004\u0012\u00020\u001f0\u001ej\b\u0012\u0004\u0012\u00020\u001f` X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006$"}, d2 = {"Landroidx/camera/camera2/pipe/graph/StreamGraphImpl$Companion;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "streamIds", "Lkotlinx/atomicfu/AtomicInt;", "nextStreamId", "Landroidx/camera/camera2/pipe/StreamId;", "nextStreamId-ptHMqGs$camera_camera2_pipe", "()I", "outputIds", "nextOutputId", "Landroidx/camera/camera2/pipe/OutputId;", "nextOutputId-4LaLFng$camera_camera2_pipe", "inputIds", "nextInputId", "Landroidx/camera/camera2/pipe/InputStreamId;", "nextInputId-m1bwn9M$camera_camera2_pipe", "configIds", "nextConfigId", "Landroidx/camera/camera2/pipe/graph/OutputConfigId;", "nextConfigId-hoCEiqs$camera_camera2_pipe", "groupIds", "nextGroupId", _UrlKt.FRAGMENT_ENCODE_SET, "nextGroupId$camera_camera2_pipe", "previewOutputTypes", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/OutputStream$OutputType;", "previewOutputTypesComparator", "Ljava/util/Comparator;", "Landroidx/camera/camera2/pipe/CameraStream;", "Lkotlin/Comparator;", "previewFormats", "Landroidx/camera/camera2/pipe/StreamFormat;", "previewFormatComparator", "camera-camera2-pipe"}, m910k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: renamed from: nextStreamId-ptHMqGs$camera_camera2_pipe, reason: not valid java name */
        public final int m1665nextStreamIdptHMqGs$camera_camera2_pipe() {
            return StreamId.m1526constructorimpl(StreamGraphImpl.streamIds.incrementAndGet());
        }

        /* JADX INFO: renamed from: nextOutputId-4LaLFng$camera_camera2_pipe, reason: not valid java name */
        public final int m1664nextOutputId4LaLFng$camera_camera2_pipe() {
            return OutputId.m1415constructorimpl(StreamGraphImpl.outputIds.incrementAndGet());
        }

        /* JADX INFO: renamed from: nextInputId-m1bwn9M$camera_camera2_pipe, reason: not valid java name */
        public final int m1663nextInputIdm1bwn9M$camera_camera2_pipe() {
            return InputStreamId.m1402constructorimpl(StreamGraphImpl.inputIds.incrementAndGet());
        }

        /* JADX INFO: renamed from: nextConfigId-hoCEiqs$camera_camera2_pipe, reason: not valid java name */
        public final int m1662nextConfigIdhoCEiqs$camera_camera2_pipe() {
            return OutputConfigId.m1652constructorimpl(StreamGraphImpl.configIds.incrementAndGet());
        }

        public final int nextGroupId$camera_camera2_pipe() {
            return StreamGraphImpl.groupIds.incrementAndGet();
        }
    }

    static {
        OutputStream.OutputType.Companion companion = OutputStream.OutputType.INSTANCE;
        previewOutputTypes = CollectionsKt.listOf((Object[]) new OutputStream.OutputType[]{companion.getSURFACE_VIEW(), companion.getSURFACE_TEXTURE()});
        previewOutputTypesComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Iterator<T> it = ((CameraStream) t).getOutputs().iterator();
                if (!it.hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m1121m();
                    return 0;
                }
                Integer numValueOf = Integer.valueOf(CollectionsKt.indexOf((List<? extends OutputStream.OutputType>) StreamGraphImpl.previewOutputTypes, ((OutputStream) it.next()).getOutputType()));
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(CollectionsKt.indexOf((List<? extends OutputStream.OutputType>) StreamGraphImpl.previewOutputTypes, ((OutputStream) it.next()).getOutputType()));
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                Iterator<T> it2 = ((CameraStream) t2).getOutputs().iterator();
                if (it2.hasNext()) {
                    Integer numValueOf3 = Integer.valueOf(CollectionsKt.indexOf((List<? extends OutputStream.OutputType>) StreamGraphImpl.previewOutputTypes, ((OutputStream) it2.next()).getOutputType()));
                    while (it2.hasNext()) {
                        Integer numValueOf4 = Integer.valueOf(CollectionsKt.indexOf((List<? extends OutputStream.OutputType>) StreamGraphImpl.previewOutputTypes, ((OutputStream) it2.next()).getOutputType()));
                        if (numValueOf3.compareTo(numValueOf4) < 0) {
                            numValueOf3 = numValueOf4;
                        }
                    }
                    return ComparisonsKt.compareValues(numValueOf, numValueOf3);
                }
                Utils$$ExternalSyntheticBUOutline0.m1121m();
                return 0;
            }
        };
        StreamFormat.Companion companion2 = StreamFormat.INSTANCE;
        previewFormats = CollectionsKt.listOf((Object[]) new StreamFormat[]{StreamFormat.m1513boximpl(companion2.m1522getUNKNOWN8FPWQzE()), StreamFormat.m1513boximpl(companion2.m1521getPRIVATE8FPWQzE())});
        previewFormatComparator = new Comparator() { // from class: androidx.camera.camera2.pipe.graph.StreamGraphImpl$special$$inlined$compareBy$2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                Iterator<T> it = ((CameraStream) t).getOutputs().iterator();
                if (!it.hasNext()) {
                    Utils$$ExternalSyntheticBUOutline0.m1121m();
                    return 0;
                }
                Integer numValueOf = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m1513boximpl(((OutputStream) it.next()).getFormat())));
                while (it.hasNext()) {
                    Integer numValueOf2 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m1513boximpl(((OutputStream) it.next()).getFormat())));
                    if (numValueOf.compareTo(numValueOf2) < 0) {
                        numValueOf = numValueOf2;
                    }
                }
                Iterator<T> it2 = ((CameraStream) t2).getOutputs().iterator();
                if (it2.hasNext()) {
                    Integer numValueOf3 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m1513boximpl(((OutputStream) it2.next()).getFormat())));
                    while (it2.hasNext()) {
                        Integer numValueOf4 = Integer.valueOf(StreamGraphImpl.previewFormats.indexOf(StreamFormat.m1513boximpl(((OutputStream) it2.next()).getFormat())));
                        if (numValueOf3.compareTo(numValueOf4) < 0) {
                            numValueOf3 = numValueOf4;
                        }
                    }
                    return ComparisonsKt.compareValues(numValueOf, numValueOf3);
                }
                Utils$$ExternalSyntheticBUOutline0.m1121m();
                return 0;
            }
        };
    }
}
