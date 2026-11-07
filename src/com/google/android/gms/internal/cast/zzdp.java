package com.google.android.gms.internal.cast;

import android.text.format.DateUtils;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdp extends UIController implements RemoteMediaClient.ProgressListener {
    private final TextView zza;
    private final String zzb;
    private final View zzc;

    public zzdp(TextView textView, String str, View view) {
        this.zza = textView;
        this.zzb = str;
        this.zzc = view;
    }

    private final void zza(long j, boolean z) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession()) {
            TextView textView = this.zza;
            textView.setVisibility(0);
            textView.setText(this.zzb);
            View view = this.zzc;
            if (view != null) {
                view.setVisibility(4);
                return;
            }
            return;
        }
        if (remoteMediaClient.isLiveStream()) {
            TextView textView2 = this.zza;
            textView2.setText(this.zzb);
            View view2 = this.zzc;
            if (view2 != null) {
                textView2.setVisibility(4);
                view2.setVisibility(0);
                return;
            }
            return;
        }
        if (z) {
            j = remoteMediaClient.getStreamDuration();
        }
        TextView textView3 = this.zza;
        textView3.setVisibility(0);
        textView3.setText(DateUtils.formatElapsedTime(j / 1000));
        View view3 = this.zzc;
        if (view3 != null) {
            view3.setVisibility(4);
        }
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onMediaStatusUpdated() {
        zza(-1L, true);
    }

    @Override // com.google.android.gms.cast.framework.media.RemoteMediaClient.ProgressListener
    public final void onProgressUpdated(long j, long j2) {
        zza(j2, false);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionConnected(CastSession castSession) {
        super.onSessionConnected(castSession);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.addProgressListener(this, 1000L);
        }
        zza(-1L, true);
    }

    @Override // com.google.android.gms.cast.framework.media.uicontroller.UIController
    public final void onSessionEnded() {
        this.zza.setText(this.zzb);
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient();
        if (remoteMediaClient != null) {
            remoteMediaClient.removeProgressListener(this);
        }
        super.onSessionEnded();
    }
}
