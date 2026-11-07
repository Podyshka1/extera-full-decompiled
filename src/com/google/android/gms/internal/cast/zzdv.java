package com.google.android.gms.internal.cast;

import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.cast.framework.C1443R;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.framework.media.uicontroller.UIController;

/* JADX INFO: loaded from: classes4.dex */
public final class zzdv extends UIController implements RemoteMediaClient.ProgressListener {
    private final TextView zza;
    private final ImageView zzb;
    private final com.google.android.gms.cast.framework.media.uicontroller.zza zzc;

    public zzdv(View view, com.google.android.gms.cast.framework.media.uicontroller.zza zzaVar) {
        TextView textView = (TextView) view.findViewById(C1443R.id.live_indicator_text);
        this.zza = textView;
        ImageView imageView = (ImageView) view.findViewById(C1443R.id.live_indicator_dot);
        this.zzb = imageView;
        this.zzc = zzaVar;
        TypedArray typedArrayObtainStyledAttributes = imageView.getContext().obtainStyledAttributes(null, C1443R.styleable.CastExpandedController, C1443R.attr.castExpandedControllerStyle, C1443R.style.CastExpandedController);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(C1443R.styleable.CastExpandedController_castLiveIndicatorColor, 0);
        typedArrayObtainStyledAttributes.recycle();
        imageView.getDrawable().setColorFilter(imageView.getContext().getResources().getColor(resourceId), PorterDuff.Mode.SRC_IN);
        textView.setVisibility(8);
        imageView.setVisibility(8);
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
            remoteMediaClient.addProgressListener(this, 1000L);
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
        if (remoteMediaClient == null || !remoteMediaClient.hasMediaSession() || !remoteMediaClient.isLiveStream()) {
            this.zza.setVisibility(8);
            this.zzb.setVisibility(8);
        } else {
            boolean zIsPlaying = !remoteMediaClient.zzj() ? remoteMediaClient.isPlaying() : this.zzc.zze();
            this.zza.setVisibility(0);
            this.zzb.setVisibility(true == zIsPlaying ? 0 : 8);
            zzr.zzb(zzpm.CAF_EXPANDED_CONTROLLER_WITH_LIVE_CONTENT);
        }
    }
}
