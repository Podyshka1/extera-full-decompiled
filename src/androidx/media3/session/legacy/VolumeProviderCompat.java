package androidx.media3.session.legacy;

import android.media.VolumeProvider;
import android.os.Build;

/* JADX INFO: loaded from: classes4.dex */
public abstract class VolumeProviderCompat {
    private final String controlId;
    private final int controlType;
    private int currentVolume;
    private final int maxVolume;
    private VolumeProvider volumeProviderFwk;

    public abstract void onAdjustVolume(int i);

    public abstract void onSetVolumeTo(int i);

    public VolumeProviderCompat(int i, int i2, int i3, String str) {
        this.controlType = i;
        this.maxVolume = i2;
        this.currentVolume = i3;
        this.controlId = str;
    }

    public final void setCurrentVolume(int i) {
        this.currentVolume = i;
        ((VolumeProvider) getVolumeProvider()).setCurrentVolume(i);
    }

    public Object getVolumeProvider() {
        VolumeProviderCompat volumeProviderCompat;
        if (this.volumeProviderFwk != null) {
            volumeProviderCompat = this;
        } else if (Build.VERSION.SDK_INT >= 30) {
            volumeProviderCompat = this;
            volumeProviderCompat.volumeProviderFwk = new VolumeProvider(this.controlType, this.maxVolume, this.currentVolume, this.controlId) { // from class: androidx.media3.session.legacy.VolumeProviderCompat.1
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
            volumeProviderCompat.volumeProviderFwk = new VolumeProvider(volumeProviderCompat.controlType, volumeProviderCompat.maxVolume, volumeProviderCompat.currentVolume) { // from class: androidx.media3.session.legacy.VolumeProviderCompat.2
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
        return volumeProviderCompat.volumeProviderFwk;
    }
}
