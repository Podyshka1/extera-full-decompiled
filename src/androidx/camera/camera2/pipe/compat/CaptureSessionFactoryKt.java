package androidx.camera.camera2.pipe.compat;

import android.hardware.camera2.params.OutputConfiguration;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.camera.camera2.pipe.CameraGraph;
import androidx.camera.camera2.pipe.CameraId;
import androidx.camera.camera2.pipe.CameraStream;
import androidx.camera.camera2.pipe.OutputId;
import androidx.camera.camera2.pipe.OutputStream;
import androidx.camera.camera2.pipe.StreamId;
import androidx.camera.camera2.pipe.compat.AndroidOutputConfiguration;
import androidx.camera.camera2.pipe.core.Log;
import androidx.camera.camera2.pipe.graph.StreamGraphImpl;
import androidx.camera.camera2.pipe.media.AndroidMultiResolutionImageReader;
import androidx.camera.camera2.pipe.media.ImageSource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;
import okio.Segment$$ExternalSyntheticBUOutline1;
import p002c.f$$ExternalSyntheticBUOutline1;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a,\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u0007H\u0001\u001a0\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\t0\u00072\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\t0\u00072\u0006\u0010\u0004\u001a\u00020\u0005H\u0002¨\u0006\f"}, d2 = {"buildOutputConfigurations", "Landroidx/camera/camera2/pipe/compat/OutputConfigurations;", "graphConfig", "Landroidx/camera/camera2/pipe/CameraGraph$Config;", "streamGraph", "Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;", "surfaces", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/StreamId;", "Landroid/view/Surface;", "buildSimpleOutputSurfaceMap", "Landroidx/camera/camera2/pipe/OutputId;", "camera-camera2-pipe"}, m862k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCaptureSessionFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Log.kt\nandroidx/camera/camera2/pipe/core/Log\n*L\n1#1,588:1\n1617#2,9:589\n1869#2:598\n1870#2:600\n1626#2:601\n774#2:602\n865#2,2:603\n774#2:607\n865#2,2:608\n1#3:599\n71#4,2:605\n71#4,2:610\n*S KotlinDebug\n*F\n+ 1 CaptureSessionFactory.kt\nandroidx/camera/camera2/pipe/compat/CaptureSessionFactoryKt\n*L\n469#1:589,9\n469#1:598\n469#1:600\n469#1:601\n475#1:602\n475#1:603,2\n523#1:607\n523#1:608,2\n469#1:599\n511#1:605,2\n546#1:610,2\n*E\n"})
public abstract class CaptureSessionFactoryKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final OutputConfigurations buildOutputConfigurations(CameraGraph.Config config, StreamGraphImpl streamGraphImpl, Map<StreamId, ? extends Surface> map) {
        OutputConfigurations outputConfigurations;
        boolean z;
        ArrayList arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        Iterator<Map.Entry<StreamId, ImageSource>> it = streamGraphImpl.getImageSourceMap$camera_camera2_pipe().entrySet().iterator();
        while (true) {
            boolean z2 = true;
            OutputConfigurations outputConfigurations2 = null;
            if (!it.hasNext()) {
                for (CameraStream cameraStream : streamGraphImpl.getStreams()) {
                    List<OutputStream> outputs = cameraStream.getOutputs();
                    if (outputs.size() == 1) {
                        Surface surface = map.get(StreamId.m1472boximpl(cameraStream.getId()));
                        if (surface != null) {
                            linkedHashMap2.put(OutputId.m1361boximpl(((OutputStream) CollectionsKt.single((List) outputs)).getId()), surface);
                        }
                    } else {
                        for (OutputStream outputStream : outputs) {
                            StreamGraphImpl.OutputConfig outputConfig = streamGraphImpl.getOutputConfigMap$camera_camera2_pipe().get(outputStream);
                            if (outputConfig == null) {
                                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                                return null;
                            }
                            StreamGraphImpl.OutputConfig outputConfig2 = outputConfig;
                            OutputConfiguration externalOutputConfig = outputConfig2.getExternalOutputConfig();
                            if (externalOutputConfig == null) {
                                externalOutputConfig = (OutputConfiguration) linkedHashMap3.get(outputConfig2);
                            }
                            Surface surface2 = externalOutputConfig != null ? externalOutputConfig.getSurface() : map.get(StreamId.m1472boximpl(cameraStream.getId()));
                            if (surface2 != null) {
                                linkedHashMap2.put(OutputId.m1361boximpl(outputStream.getId()), surface2);
                            }
                        }
                    }
                }
                OutputConfigurationWrapper outputConfigurationWrapper = null;
                for (StreamGraphImpl.OutputConfig outputConfig3 : streamGraphImpl.getOutputConfigs$camera_camera2_pipe()) {
                    List<CameraStream> streams = outputConfig3.getStreams();
                    ArrayList arrayList2 = new ArrayList();
                    Iterator<T> it2 = streams.iterator();
                    while (it2.hasNext()) {
                        Surface surface3 = map.get(StreamId.m1472boximpl(((CameraStream) it2.next()).getId()));
                        if (surface3 != null) {
                            arrayList2.add(surface3);
                        }
                    }
                    OutputConfiguration externalOutputConfig2 = outputConfig3.getExternalOutputConfig();
                    if (externalOutputConfig2 == null) {
                        externalOutputConfig2 = (OutputConfiguration) linkedHashMap3.get(outputConfig3);
                    }
                    OutputConfiguration outputConfiguration = externalOutputConfig2;
                    if (outputConfiguration == null) {
                        outputConfigurations = outputConfigurations2;
                        if (outputConfig3.getDeferrable() && arrayList2.size() != outputConfig3.getStreams().size()) {
                            AndroidOutputConfiguration.Companion companion = AndroidOutputConfiguration.INSTANCE;
                            Size size = outputConfig3.getSize();
                            OutputStream.OutputType deferredOutputType = outputConfig3.getDeferredOutputType();
                            OutputStream.MirrorMode mirrorMode = outputConfig3.getMirrorMode();
                            outputConfig3.m1619getTimestampBasepcPfPbY();
                            OutputStream.DynamicRangeProfile dynamicRangeProfile = outputConfig3.getDynamicRangeProfile();
                            OutputStream.StreamUseCase streamUseCase = outputConfig3.getStreamUseCase();
                            List<Object> sensorPixelModes = outputConfig3.getSensorPixelModes();
                            boolean surfaceSharing = outputConfig3.getSurfaceSharing();
                            Integer groupNumber = outputConfig3.getGroupNumber();
                            OutputConfigurationWrapper outputConfigurationWrapperM1492creategWWoySg$default = AndroidOutputConfiguration.Companion.m1492creategWWoySg$default(companion, null, null, deferredOutputType, mirrorMode, null, dynamicRangeProfile, streamUseCase, sensorPixelModes, size, surfaceSharing, groupNumber != null ? groupNumber.intValue() : -1, !CameraId.m1301equalsimpl0(outputConfig3.getCamera(), config.getCamera()) ? outputConfig3.getCamera() : outputConfigurations, 2, null);
                            if (outputConfigurationWrapperM1492creategWWoySg$default != null) {
                                arrayList.add(outputConfigurationWrapperM1492creategWWoySg$default);
                                Iterator<CameraStream> it3 = outputConfig3.getStreamBuilder$camera_camera2_pipe().iterator();
                                while (it3.hasNext()) {
                                    linkedHashMap.put(StreamId.m1472boximpl(it3.next().getId()), outputConfigurationWrapperM1492creategWWoySg$default);
                                }
                            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to create AndroidOutputConfiguration for " + outputConfig3);
                            }
                        } else {
                            if (arrayList2.size() != outputConfig3.getStreams().size()) {
                                List<CameraStream> streams2 = outputConfig3.getStreams();
                                ArrayList arrayList3 = new ArrayList();
                                for (Object obj : streams2) {
                                    if (!map.containsKey(StreamId.m1472boximpl(((CameraStream) obj).getId()))) {
                                        arrayList3.add(obj);
                                    }
                                }
                                Camera2DeviceCloserImpl$$ExternalSyntheticBUOutline0.m65m("Surfaces are not yet available for ", outputConfig3, "! Missing surfaces for ", arrayList3);
                                return outputConfigurations;
                            }
                            AndroidOutputConfiguration.Companion companion2 = AndroidOutputConfiguration.INSTANCE;
                            Surface surface4 = (Surface) CollectionsKt.first((List) arrayList2);
                            OutputStream.MirrorMode mirrorMode2 = outputConfig3.getMirrorMode();
                            outputConfig3.m1619getTimestampBasepcPfPbY();
                            OutputStream.DynamicRangeProfile dynamicRangeProfile2 = outputConfig3.getDynamicRangeProfile();
                            OutputStream.StreamUseCase streamUseCase2 = outputConfig3.getStreamUseCase();
                            List<Object> sensorPixelModes2 = outputConfig3.getSensorPixelModes();
                            Size size2 = outputConfig3.getSize();
                            boolean surfaceSharing2 = outputConfig3.getSurfaceSharing();
                            Integer groupNumber2 = outputConfig3.getGroupNumber();
                            OutputConfigurationWrapper outputConfigurationWrapperM1492creategWWoySg$default2 = AndroidOutputConfiguration.Companion.m1492creategWWoySg$default(companion2, surface4, null, null, mirrorMode2, null, dynamicRangeProfile2, streamUseCase2, sensorPixelModes2, size2, surfaceSharing2, groupNumber2 != null ? groupNumber2.intValue() : -1, !CameraId.m1301equalsimpl0(outputConfig3.getCamera(), config.getCamera()) ? outputConfig3.getCamera() : outputConfigurations, 6, null);
                            if (outputConfigurationWrapperM1492creategWWoySg$default2 != null) {
                                z = true;
                                Iterator it4 = CollectionsKt.drop(arrayList2, 1).iterator();
                                while (it4.hasNext()) {
                                    outputConfigurationWrapperM1492creategWWoySg$default2.addSurface((Surface) it4.next());
                                }
                                if (config.getPostviewStream() != null) {
                                    CameraStream cameraStream2 = streamGraphImpl.get(config.getPostviewStream());
                                    if (cameraStream2 == null) {
                                        Segment$$ExternalSyntheticBUOutline1.m925m("Postview Stream in StreamGraph cannot be null for reprocessing request");
                                        return outputConfigurations;
                                    }
                                    if (outputConfigurationWrapper == null && outputConfig3.getStreams().contains(cameraStream2)) {
                                        outputConfigurationWrapper = outputConfigurationWrapperM1492creategWWoySg$default2;
                                    } else {
                                        arrayList.add(outputConfigurationWrapperM1492creategWWoySg$default2);
                                    }
                                } else {
                                    arrayList.add(outputConfigurationWrapperM1492creategWWoySg$default2);
                                }
                            } else if (Log.INSTANCE.getWARN_LOGGABLE()) {
                                android.util.Log.w("CXCP", "Failed to create AndroidOutputConfiguration for " + outputConfig3);
                            }
                        }
                        z = true;
                    } else {
                        if (arrayList2.size() != outputConfig3.getStreams().size()) {
                            List<CameraStream> streams3 = outputConfig3.getStreams();
                            ArrayList arrayList4 = new ArrayList();
                            for (Object obj2 : streams3) {
                                if (!map.containsKey(StreamId.m1472boximpl(((CameraStream) obj2).getId()))) {
                                    arrayList4.add(obj2);
                                }
                            }
                            Camera2DeviceCloserImpl$$ExternalSyntheticBUOutline0.m65m("Surfaces are not yet available for ", outputConfig3, "! Missing surfaces for ", arrayList4);
                            return outputConfigurations2;
                        }
                        arrayList.add(new AndroidOutputConfiguration(outputConfiguration, false, 1, null, null));
                        outputConfigurations = outputConfigurations2;
                        z = z2;
                    }
                    z2 = z;
                    outputConfigurations2 = outputConfigurations;
                }
                return new OutputConfigurations(arrayList, linkedHashMap, outputConfigurationWrapper, linkedHashMap2);
            }
            Map.Entry<StreamId, ImageSource> next = it.next();
            int value = next.getKey().getValue();
            ImageSource value2 = next.getValue();
            CameraStream cameraStreamM1470getaKI5c8E = streamGraphImpl.m1470getaKI5c8E(value);
            if (cameraStreamM1470getaKI5c8E == null) {
                Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                return null;
            }
            List<OutputStream> outputs2 = cameraStreamM1470getaKI5c8E.getOutputs();
            if (outputs2.size() != 1) {
                if (Build.VERSION.SDK_INT < 31) {
                    f$$ExternalSyntheticBUOutline1.m212m("Cannot configure multiple outputs pre-S!");
                    return null;
                }
                Object objUnwrapAs = value2.unwrapAs(Reflection.getOrCreateKotlinClass(AndroidMultiResolutionImageReader.class));
                if (objUnwrapAs == null) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                    return null;
                }
                List<OutputConfiguration> outputConfigurations$camera_camera2_pipe = ((AndroidMultiResolutionImageReader) objUnwrapAs).getOutputConfigurations$camera_camera2_pipe();
                if (outputConfigurations$camera_camera2_pipe.size() != outputs2.size()) {
                    Segment$$ExternalSyntheticBUOutline1.m925m("Check failed.");
                    return null;
                }
                int size3 = outputs2.size();
                for (int i = 0; i < size3; i++) {
                    OutputStream outputStream2 = outputs2.get(i);
                    OutputConfiguration outputConfiguration2 = outputConfigurations$camera_camera2_pipe.get(i);
                    StreamGraphImpl.OutputConfig outputConfig4 = streamGraphImpl.getOutputConfigMap$camera_camera2_pipe().get(outputStream2);
                    if (outputConfig4 == null) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("Required value was null.");
                        return null;
                    }
                    StreamGraphImpl.OutputConfig outputConfig5 = outputConfig4;
                    if (outputConfig5.getExternalOutputConfig() != null) {
                        Segment$$ExternalSyntheticBUOutline1.m925m("External OutputConfiguration shouldn't be set in multi-output streams configured with ImageSource.Config");
                        return null;
                    }
                    linkedHashMap3.put(outputConfig5, outputConfiguration2);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Map<OutputId, Surface> buildSimpleOutputSurfaceMap(Map<StreamId, ? extends Surface> map, StreamGraphImpl streamGraphImpl) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        for (CameraStream cameraStream : streamGraphImpl.getStreams()) {
            Surface surface = map.get(StreamId.m1472boximpl(cameraStream.getId()));
            if (surface != null) {
                Iterator<OutputStream> it = cameraStream.getOutputs().iterator();
                while (it.hasNext()) {
                    mapCreateMapBuilder.put(OutputId.m1361boximpl(it.next().getId()), surface);
                }
            }
        }
        return MapsKt.build(mapCreateMapBuilder);
    }
}
