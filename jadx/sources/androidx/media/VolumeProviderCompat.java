package androidx.media;

import android.media.VolumeProvider;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VolumeProviderCompat {
    private Callback mCallback;
    private final String mControlId;
    private final int mControlType;
    private int mCurrentVolume;
    private final int mMaxVolume;
    private VolumeProvider mVolumeProviderFwk;

    public static abstract class Callback {
        public abstract void onVolumeChanged(VolumeProviderCompat volumeProviderCompat);
    }

    public abstract void onAdjustVolume(int i);

    public abstract void onSetVolumeTo(int i);

    public VolumeProviderCompat(int i, int i2, int i3, String str) {
        this.mControlType = i;
        this.mMaxVolume = i2;
        this.mCurrentVolume = i3;
        this.mControlId = str;
    }

    public final void setCurrentVolume(int i) {
        this.mCurrentVolume = i;
        Api21Impl.setCurrentVolume((VolumeProvider) getVolumeProvider(), i);
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

    private static class Api21Impl {
        static void setCurrentVolume(VolumeProvider volumeProvider, int i) {
            volumeProvider.setCurrentVolume(i);
        }
    }
}
