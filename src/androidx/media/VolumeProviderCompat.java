package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;

/* JADX INFO: loaded from: classes3.dex */
public abstract class VolumeProviderCompat {
    public static final int VOLUME_CONTROL_ABSOLUTE = 2;
    public static final int VOLUME_CONTROL_FIXED = 0;
    public static final int VOLUME_CONTROL_RELATIVE = 1;
    private Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    public static abstract class Callback {
    }

    public abstract void onAdjustVolume(int i);

    public abstract void onSetVolumeTo(int i);

    public void setCallback(Callback callback) {
    }

    public VolumeProviderCompat(int i, int i2, int i3, String str) {
        this.mControlType = i;
        this.mMaxVolume = i2;
        this.mCurrentVolume = i3;
        this.mControlId = str;
    }

    public final int getCurrentVolume() {
        return this.mCurrentVolume;
    }

    public final int getVolumeControl() {
        return this.mControlType;
    }

    public final int getMaxVolume() {
        return this.mMaxVolume;
    }

    public final void setCurrentVolume(int i) {
        this.mCurrentVolume = i;
        Api21Impl.setCurrentVolume((VolumeProvider) getVolumeProvider(), i);
    }

    public final String getVolumeControlId() {
        return this.mControlId;
    }

    public Object getVolumeProvider() {
        VolumeProviderCompat volumeProviderCompat;
        if (this.mVolumeProviderFwk != null) {
            volumeProviderCompat = this;
        } else if (Build.VERSION.SDK_INT >= 30) {
            volumeProviderCompat = this;
            volumeProviderCompat.mVolumeProviderFwk = new VolumeProvider(this.mControlType, this.mMaxVolume, this.mCurrentVolume, this.mControlId) { // from class: androidx.media.VolumeProviderCompat.1
                @Override // android.media.VolumeProvider
                public void onSetVolumeTo(int i) {
                    VolumeProviderCompat.this.onSetVolumeTo(i);
                }

                @Override // android.media.VolumeProvider
                public void onAdjustVolume(int i) {
                    VolumeProviderCompat.this.onAdjustVolume(i);
                }
            };
        } else {
            volumeProviderCompat = this;
            volumeProviderCompat.mVolumeProviderFwk = new VolumeProvider(volumeProviderCompat.mControlType, volumeProviderCompat.mMaxVolume, volumeProviderCompat.mCurrentVolume) { // from class: androidx.media.VolumeProviderCompat.2
                @Override // android.media.VolumeProvider
                public void onSetVolumeTo(int i) {
                    VolumeProviderCompat.this.onSetVolumeTo(i);
                }

                @Override // android.media.VolumeProvider
                public void onAdjustVolume(int i) {
                    VolumeProviderCompat.this.onAdjustVolume(i);
                }
            };
        }
        return volumeProviderCompat.mVolumeProviderFwk;
    }

    public static class Api21Impl {
        public static void setCurrentVolume(VolumeProvider volumeProvider, int i) {
            volumeProvider.setCurrentVolume(i);
        }
    }
}
