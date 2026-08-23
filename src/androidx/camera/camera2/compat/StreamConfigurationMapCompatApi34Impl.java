package androidx.camera.camera2.compat;

import android.hardware.camera2.params.StreamConfigurationMap;
import android.util.Size;
import androidx.camera.camera2.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.compat.quirk.PixelJpegRSupportedQuirk;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class StreamConfigurationMapCompatApi34Impl extends StreamConfigurationMapCompatBaseImpl {
    public StreamConfigurationMapCompatApi34Impl(StreamConfigurationMap streamConfigurationMap) {
        super(streamConfigurationMap);
    }

    private final boolean getHasJpegRQuirk() {
        return DeviceQuirks.INSTANCE.get(PixelJpegRSupportedQuirk.class) != null;
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompatBaseImpl, androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Integer[] getOutputFormats() {
        Integer[] outputFormats = super.getOutputFormats();
        if (!getHasJpegRQuirk()) {
            return outputFormats;
        }
        if (outputFormats == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Integer num : outputFormats) {
            if (num.intValue() != 4101) {
                arrayList.add(num);
            }
        }
        return (Integer[]) arrayList.toArray(new Integer[0]);
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompatBaseImpl, androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getOutputSizes(int i) {
        if (i == 4101 && getHasJpegRQuirk()) {
            return null;
        }
        return super.getOutputSizes(i);
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompatBaseImpl, androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public Size[] getHighResolutionOutputSizes(int i) {
        if (i == 4101 && getHasJpegRQuirk()) {
            return null;
        }
        return super.getHighResolutionOutputSizes(i);
    }

    @Override // androidx.camera.camera2.compat.StreamConfigurationMapCompatBaseImpl, androidx.camera.camera2.compat.StreamConfigurationMapCompat.StreamConfigurationMapCompatImpl
    public long getOutputMinFrameDuration(int i, Size size) {
        Intrinsics.checkNotNullParameter(size, "size");
        if (i == 4101 && getHasJpegRQuirk()) {
            return 0L;
        }
        return super.getOutputMinFrameDuration(i, size);
    }
}
