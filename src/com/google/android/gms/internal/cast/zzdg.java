package com.google.android.gms.internal.cast;

import android.content.Context;
import android.widget.ImageView;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.framework.C1443R;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdg extends UIController {
    private final ImageView zza;
    private final String zzb;
    private final String zzc;
    private final Context zzd;
    private Cast.Listener zze;

    public zzdg(ImageView imageView, Context context) {
        this.zza = imageView;
        Context applicationContext = context.getApplicationContext();
        this.zzd = applicationContext;
        this.zzb = applicationContext.getString(C1443R.string.cast_mute);
        this.zzc = applicationContext.getString(C1443R.string.cast_unmute);
        imageView.setEnabled(false);
        this.zze = null;
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSendingRemoteMediaRequest() {
        this.zza.setEnabled(false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        if (this.zze == null) {
            this.zze = new zzdf(this);
        }
        castSession.addCastListener(this.zze);
        super.onSessionConnected(castSession);
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        Cast.Listener listener;
        this.zza.setEnabled(false);
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzd).getSessionManager().getCurrentCastSession();
        if (currentCastSession != null && (listener = this.zze) != null) {
            currentCastSession.removeCastListener(listener);
        }
        super.onSessionEnded();
    }

    public final void zza() {
        CastSession currentCastSession = CastContext.getSharedInstance(this.zzd).getSessionManager().getCurrentCastSession();
        if (currentCastSession == null || !currentCastSession.isConnected()) {
            this.zza.setEnabled(false);
            return;
        }
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            this.zza.setEnabled(false);
        } else {
            this.zza.setEnabled(true);
        }
        boolean zIsMute = currentCastSession.isMute();
        ImageView imageView = this.zza;
        imageView.setSelected(zIsMute);
        imageView.setContentDescription(zIsMute ? this.zzc : this.zzb);
    }
}
