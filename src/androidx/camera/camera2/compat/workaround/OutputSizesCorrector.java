package androidx.camera.camera2.compat.workaround;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.ExcludedSupportedSizesQuirk;
import androidx.camera.camera2.compat.quirk.ExtraSupportedOutputSizeQuirk;
import androidx.camera.camera2.pipe.CameraMetadata;
import androidx.camera.core.Logger;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J%\u0010\u000e\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ%\u0010\u0010\u001a\u00020\r2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u0010\u0010\u000fJ)\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\t0\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\t0\u00112\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0015R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082D¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0016\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroidx/camera/camera2/pipe/CameraMetadata;", "cameraMetadata", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "streamConfigurationMap", "<init>", "(Landroidx/camera/camera2/pipe/CameraMetadata;Landroid/hardware/camera2/params/StreamConfigurationMap;)V", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/util/Size;", "sizeList", _UrlKt.FRAGMENT_ENCODE_SET, "format", _UrlKt.FRAGMENT_ENCODE_SET, "addExtraSupportedOutputSizesByFormat", "(Ljava/util/List;I)V", "excludeProblematicOutputSizesByFormat", _UrlKt.FRAGMENT_ENCODE_SET, "sizes", "applyQuirks", "([Landroid/util/Size;I)[Landroid/util/Size;", "Landroidx/camera/camera2/pipe/CameraMetadata;", "Landroid/hardware/camera2/params/StreamConfigurationMap;", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "Ljava/lang/String;", "Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;", "excludedSupportedSizesQuirk", "Landroidx/camera/camera2/compat/quirk/ExcludedSupportedSizesQuirk;", "Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;", "extraSupportedOutputSizeQuirk", "Landroidx/camera/camera2/compat/quirk/ExtraSupportedOutputSizeQuirk;", "camera-camera2"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOutputSizesCorrector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutputSizesCorrector.kt\nandroidx/camera/camera2/compat/workaround/OutputSizesCorrector\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,145:1\n37#2:146\n36#2,3:147\n37#2:150\n36#2,3:151\n*S KotlinDebug\n*F\n+ 1 OutputSizesCorrector.kt\nandroidx/camera/camera2/compat/workaround/OutputSizesCorrector\n*L\n55#1:146\n55#1:147,3\n66#1:150\n66#1:151,3\n*E\n"})
public final class OutputSizesCorrector {
    private final CameraMetadata cameraMetadata;
    private final ExcludedSupportedSizesQuirk excludedSupportedSizesQuirk;
    private final ExtraSupportedOutputSizeQuirk extraSupportedOutputSizeQuirk;
    private final StreamConfigurationMap streamConfigurationMap;
    private final String tag = "OutputSizesCorrector";

    public OutputSizesCorrector(CameraMetadata cameraMetadata, StreamConfigurationMap streamConfigurationMap) {
        this.cameraMetadata = cameraMetadata;
        this.streamConfigurationMap = streamConfigurationMap;
        DeviceQuirks deviceQuirks = DeviceQuirks.INSTANCE;
        this.excludedSupportedSizesQuirk = (ExcludedSupportedSizesQuirk) deviceQuirks.get(ExcludedSupportedSizesQuirk.class);
        this.extraSupportedOutputSizeQuirk = (ExtraSupportedOutputSizeQuirk) deviceQuirks.get(ExtraSupportedOutputSizeQuirk.class);
    }

    public final Size[] applyQuirks(Size[] sizes, int format) {
        List<Size> mutableList = ArraysKt.toMutableList(sizes);
        addExtraSupportedOutputSizesByFormat(mutableList, format);
        excludeProblematicOutputSizesByFormat(mutableList, format);
        if (mutableList.isEmpty()) {
            Logger.m80w(this.tag, "Sizes array becomes empty after excluding problematic output sizes.");
        }
        return (Size[]) mutableList.toArray(new Size[0]);
    }

    private final void addExtraSupportedOutputSizesByFormat(List<Size> sizeList, int format) {
        ExtraSupportedOutputSizeQuirk extraSupportedOutputSizeQuirk = this.extraSupportedOutputSizeQuirk;
        if (extraSupportedOutputSizeQuirk == null) {
            return;
        }
        Size[] extraSupportedResolutions = extraSupportedOutputSizeQuirk.getExtraSupportedResolutions(format);
        if (extraSupportedResolutions.length == 0) {
            return;
        }
        CollectionsKt.addAll(sizeList, extraSupportedResolutions);
    }

    private final void excludeProblematicOutputSizesByFormat(List<Size> sizeList, int format) {
        ExcludedSupportedSizesQuirk excludedSupportedSizesQuirk;
        CameraMetadata cameraMetadata = this.cameraMetadata;
        if (cameraMetadata == null || (excludedSupportedSizesQuirk = this.excludedSupportedSizesQuirk) == null) {
            return;
        }
        List<Size> excludedSizes = excludedSupportedSizesQuirk.getExcludedSizes(cameraMetadata.getCamera(), format);
        if (excludedSizes.isEmpty()) {
            return;
        }
        sizeList.removeAll(excludedSizes);
    }
}
