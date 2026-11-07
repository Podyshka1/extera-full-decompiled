package com.google.android.gms.internal.cast;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.widget.SeekBar;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdl extends UIController implements RemoteMediaClient.ProgressListener {
    private final SeekBar zza;
    private final long zzb;
    private final com.google.android.gms.cast.framework.media.uicontroller.zza zzc;
    private boolean zzd = true;
    private Boolean zze;
    private Drawable zzf;

    public zzdl(SeekBar seekBar, long j, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        this.zzf = null;
        this.zza = seekBar;
        this.zzb = j;
        this.zzc = zzaVar;
        seekBar.setEnabled(false);
        this.zzf = seekBar.getThumb();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void onProgressUpdated(long j, long j2) {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, this.zzb);
        }
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.removeProgressListener(this);
        }
        super.onSessionEnded();
        zza();
    }

    public final void zza() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            SeekBar seekBar = this.zza;
            com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar = this.zzc;
            seekBar.setMax(zzaVar.zzb());
            seekBar.setProgress(zzaVar.zzc());
            seekBar.setEnabled(false);
            return;
        }
        if (this.zzd) {
            SeekBar seekBar2 = this.zza;
            com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar2 = this.zzc;
            seekBar2.setMax(zzaVar2.zzb());
            if (remoteMediaClient.isLiveStream() && zzaVar2.zze()) {
                seekBar2.setProgress(zzaVar2.zzg());
            } else {
                seekBar2.setProgress(zzaVar2.zzc());
            }
            if (remoteMediaClient.isPlayingAd()) {
                seekBar2.setEnabled(false);
            } else {
                seekBar2.setEnabled(true);
            }
            RemoteMediaClient remoteMediaClient2 = getRemoteMediaClient();
            if (remoteMediaClient2 == null || !remoteMediaClient2.hasMediaSession()) {
                return;
            }
            Boolean bool = this.zze;
            if (bool == null || bool.booleanValue() != remoteMediaClient2.zzj()) {
                Boolean boolValueOf = Boolean.valueOf(remoteMediaClient2.zzj());
                this.zze = boolValueOf;
                if (!boolValueOf.booleanValue()) {
                    seekBar2.setThumb(new ColorDrawable(0));
                    seekBar2.setClickable(false);
                    seekBar2.setOnTouchListener(new zzdk(this));
                } else {
                    Drawable drawable = this.zzf;
                    if (drawable != null) {
                        seekBar2.setThumb(drawable);
                    }
                    seekBar2.setClickable(true);
                    seekBar2.setOnTouchListener(null);
                }
            }
        }
    }

    public final void zzb(boolean z) {
        this.zzd = z;
    }
}
