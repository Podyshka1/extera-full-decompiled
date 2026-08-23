package com.google.android.gms.internal.cast;

import android.view.View;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdc extends UIController {
    private final View zza;

    public zzdc(View view) {
        this.zza = view;
    }

    private final void zza() {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || remoteMediaClient.isBuffering()) {
            this.zza.setVisibility(0);
        } else {
            this.zza.setVisibility(8);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSendingRemoteMediaRequest() {
        this.zza.setVisibility(0);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        zza();
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        this.zza.setVisibility(8);
        super.onSessionEnded();
    }
}
