package com.google.android.gms.internal.cast;

import android.content.Context;
import android.view.View;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaTrack;
import com.google.android.gms.cast.framework.C1564R;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzcu extends UIController {
    private final View zza;
    private final String zzb;
    private final String zzc;

    public zzcu(View view, Context context) {
        this.zza = view;
        this.zzb = context.getString(C1564R.string.cast_closed_captions);
        this.zzc = context.getString(C1564R.string.cast_closed_captions_unavailable);
        view.setEnabled(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x004a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private final void zza() {
        MediaInfo mediaInfo;
        List<MediaTrack> mediaTracks;
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null && remoteMediaClient.hasMediaSession() && (mediaInfo = remoteMediaClient.getMediaInfo()) != null && (mediaTracks = mediaInfo.getMediaTracks()) != null && !mediaTracks.isEmpty()) {
            int i = 0;
            for (MediaTrack mediaTrack : mediaTracks) {
                if (mediaTrack.getType() == 2) {
                    i++;
                    if (i > 1) {
                        if (!remoteMediaClient.isPlayingAd()) {
                            View view = this.zza;
                            view.setEnabled(true);
                            view.setContentDescription(this.zzb);
                            return;
                        }
                    }
                } else if (mediaTrack.getType() == 1) {
                    if (!remoteMediaClient.isPlayingAd()) {
                    }
                }
            }
        }
        View view2 = this.zza;
        view2.setEnabled(false);
        view2.setContentDescription(this.zzc);
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
        super.onSessionConnected(castSession);
        this.zza.setEnabled(true);
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        this.zza.setEnabled(false);
        super.onSessionEnded();
    }
}
