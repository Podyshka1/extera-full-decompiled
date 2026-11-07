package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.os.Build;
import android.util.Log;
import android.util.Range;
import android.util.Size;
import androidx.camera.camera2.compat.workaround.OutputSizesCorrector;
import androidx.camera.camera2.impl.Camera2Logger;
import androidx.camera.core.Logger;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010%\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001:\u0001+B\u001b\b\u0007\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\n\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u001d\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b2\u0006\u0010\f\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u000fJ\u001b\u0010\u0012\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0011\u0018\u00010\b¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0015\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\u0011\u0018\u00010\b2\u0006\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b¢\u0006\u0004\b\u0017\u0010\u0018J\u001d\u0010\u001a\u001a\u00020\u00192\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\r¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u001eR\u0014\u0010 \u001a\u00020\u001f8\u0002X\u0082D¢\u0006\u0006\n\u0004\b \u0010!R&\u0010#\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\b0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010$R(\u0010%\u001a\u0016\u0012\u0004\u0012\u00020\t\u0012\f\u0012\n\u0012\u0004\u0012\u00020\r\u0018\u00010\b0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010$R*\u0010'\u001a\u0018\u0012\b\u0012\u0006\u0012\u0002\b\u00030&\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\b0\"8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010$R\u0016\u0010)\u001a\u00020(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*¨\u0006,"}, d2 = {"Landroidx/camera/camera2/compat/StreamConfigurationMapCompat;", _UrlKt.FRAGMENT_ENCODE_SET, "Landroid/hardware/camera2/params/StreamConfigurationMap;", "map", "Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;", "outputSizesCorrector", "<init>", "(Landroid/hardware/camera2/params/StreamConfigurationMap;Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;)V", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getOutputFormats", "()[Ljava/lang/Integer;", "format", "Landroid/util/Size;", "getOutputSizes", "(I)[Landroid/util/Size;", "getHighResolutionOutputSizes", "Landroid/util/Range;", "getHighSpeedVideoFpsRanges", "()[Landroid/util/Range;", "size", "getHighSpeedVideoFpsRangesFor", "(Landroid/util/Size;)[Landroid/util/Range;", "getHighSpeedVideoSizes", "()[Landroid/util/Size;", _UrlKt.FRAGMENT_ENCODE_SET, "getOutputMinFrameDuration", "(ILandroid/util/Size;)J", "toStreamConfigurationMap", "()Landroid/hardware/camera2/params/StreamConfigurationMap;", "Landroidx/camera/camera2/compat/workaround/OutputSizesCorrector;", _UrlKt.FRAGMENT_ENCODE_SET, "tag", "Ljava/lang/String;", _UrlKt.FRAGMENT_ENCODE_SET, "cachedFormatOutputSizes", "Ljava/util/Map;", "cachedFormatHighResolutionOutputSizes", "Ljava/lang/Class;", "cachedClassOutputSizes", "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;", "impl", "Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;", "StreamConfigurationMapCompatImpl", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nStreamConfigurationMapCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StreamConfigurationMapCompat.kt\nandroidx/camera/camera2/compat/StreamConfigurationMapCompat\n+ 2 Camera2Logger.kt\nandroidx/camera/camera2/impl/Camera2Logger\n*L\n1#1,231:1\n129#2,4:232\n*S KotlinDebug\n*F\n+ 1 StreamConfigurationMapCompat.kt\nandroidx/camera/camera2/compat/StreamConfigurationMapCompat\n*L\n194#1:232,4\n*E\n"})
public final class StreamConfigurationMapCompat {
    private StreamConfigurationMapCompatImpl impl;
    private final OutputSizesCorrector outputSizesCorrector;
    private final String tag = "StreamConfigurationMapCompat";
    private final Map<Integer, Size[]> cachedFormatOutputSizes = new LinkedHashMap();
    private final Map<Integer, Size[]> cachedFormatHighResolutionOutputSizes = new LinkedHashMap();
    private final Map<Class<?>, Size[]> cachedClassOutputSizes = new LinkedHashMap();

    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u0017\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H&¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0003H&¢\u0006\u0004\b\b\u0010\tJ\u001f\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00022\u0006\u0010\u0006\u001a\u00020\u0003H&¢\u0006\u0004\b\n\u0010\tJ\u001d\u0010\f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0018\u00010\u0002H&¢\u0006\u0004\b\f\u0010\rJ%\u0010\u000f\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u000b\u0018\u00010\u00022\u0006\u0010\u000e\u001a\u00020\u0007H&¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0002H&¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0007H&¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H&¢\u0006\u0004\b\u0017\u0010\u0018ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0019À\u0006\u0001"}, d2 = {"Landroidx/camera/camera2/compat/StreamConfigurationMapCompat$StreamConfigurationMapCompatImpl;", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "getOutputFormats", "()[Ljava/lang/Integer;", "format", "Landroid/util/Size;", "getOutputSizes", "(I)[Landroid/util/Size;", "getHighResolutionOutputSizes", "Landroid/util/Range;", "getHighSpeedVideoFpsRanges", "()[Landroid/util/Range;", "size", "getHighSpeedVideoFpsRangesFor", "(Landroid/util/Size;)[Landroid/util/Range;", "getHighSpeedVideoSizes", "()[Landroid/util/Size;", _UrlKt.FRAGMENT_ENCODE_SET, "getOutputMinFrameDuration", "(ILandroid/util/Size;)J", "Landroid/hardware/camera2/params/StreamConfigurationMap;", "unwrap", "()Landroid/hardware/camera2/params/StreamConfigurationMap;", "camera-camera2"}, m862k = 1, mv = {2, 1, 0}, xi = 48)
    public interface StreamConfigurationMapCompatImpl {
        Size[] getHighResolutionOutputSizes(int format);

        Range<Integer>[] getHighSpeedVideoFpsRanges();

        Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size);

        Size[] getHighSpeedVideoSizes();

        Integer[] getOutputFormats();

        long getOutputMinFrameDuration(int format, Size size);

        Size[] getOutputSizes(int format);

        /* JADX INFO: renamed from: unwrap */
        StreamConfigurationMap getStreamConfigurationMap();
    }

    public StreamConfigurationMapCompat(StreamConfigurationMap streamConfigurationMap, OutputSizesCorrector outputSizesCorrector) {
        StreamConfigurationMapCompatImpl streamConfigurationMapCompatBaseImpl;
        this.outputSizesCorrector = outputSizesCorrector;
        if (Build.VERSION.SDK_INT >= 34) {
            streamConfigurationMapCompatBaseImpl = new StreamConfigurationMapCompatApi34Impl(streamConfigurationMap);
        } else {
            streamConfigurationMapCompatBaseImpl = new StreamConfigurationMapCompatBaseImpl(streamConfigurationMap);
        }
        this.impl = streamConfigurationMapCompatBaseImpl;
    }

    public final Integer[] getOutputFormats() {
        return this.impl.getOutputFormats();
    }

    public final Size[] getOutputSizes(int format) {
        Size[] outputSizes = null;
        if (this.cachedFormatOutputSizes.containsKey(Integer.valueOf(format))) {
            Size[] sizeArr = this.cachedFormatOutputSizes.get(Integer.valueOf(format));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        try {
            outputSizes = this.impl.getOutputSizes(format);
        } catch (Throwable th) {
            Logger.m80w(this.tag, "Failed to get output sizes for " + format, th);
        }
        if (outputSizes == null || outputSizes.length == 0) {
            Logger.m79w(this.tag, "Retrieved output sizes array is null or empty for format " + format);
            return outputSizes;
        }
        Size[] sizeArrApplyQuirks = this.outputSizesCorrector.applyQuirks(outputSizes, format);
        this.cachedFormatOutputSizes.put(Integer.valueOf(format), sizeArrApplyQuirks);
        return (Size[]) sizeArrApplyQuirks.clone();
    }

    public final Size[] getHighResolutionOutputSizes(int format) {
        if (this.cachedFormatHighResolutionOutputSizes.containsKey(Integer.valueOf(format))) {
            Size[] sizeArr = this.cachedFormatHighResolutionOutputSizes.get(Integer.valueOf(format));
            if (sizeArr != null) {
                return (Size[]) sizeArr.clone();
            }
            return null;
        }
        Size[] highResolutionOutputSizes = this.impl.getHighResolutionOutputSizes(format);
        if (highResolutionOutputSizes != null && highResolutionOutputSizes.length != 0) {
            highResolutionOutputSizes = this.outputSizesCorrector.applyQuirks(highResolutionOutputSizes, format);
        }
        this.cachedFormatHighResolutionOutputSizes.put(Integer.valueOf(format), highResolutionOutputSizes);
        if (highResolutionOutputSizes != null) {
            return (Size[]) highResolutionOutputSizes.clone();
        }
        return null;
    }

    public final Range<Integer>[] getHighSpeedVideoFpsRanges() {
        return this.impl.getHighSpeedVideoFpsRanges();
    }

    public final Range<Integer>[] getHighSpeedVideoFpsRangesFor(Size size) {
        return this.impl.getHighSpeedVideoFpsRangesFor(size);
    }

    public final Size[] getHighSpeedVideoSizes() {
        return this.impl.getHighSpeedVideoSizes();
    }

    public final long getOutputMinFrameDuration(int format, Size size) {
        try {
            return this.impl.getOutputMinFrameDuration(format, size);
        } catch (RuntimeException e) {
            Camera2Logger camera2Logger = Camera2Logger.INSTANCE;
            if (!Logger.isWarnEnabled("CXCP")) {
                return 0L;
            }
            Log.w(Camera2Logger.TRUNCATED_TAG, "Unable to get min frame duration for format = " + format + " and size = " + size, e);
            return 0L;
        }
    }

    public final StreamConfigurationMap toStreamConfigurationMap() {
        return this.impl.getStreamConfigurationMap();
    }
}
