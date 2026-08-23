package com.google.android.gms.cast.framework.media.internal;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* JADX INFO: loaded from: classes4.dex */
final class zzs extends MediaSessionCompat.Callback {
    final /* synthetic */ zzv zza;

    zzs(zzv zzvVar) {
        this.zza = zzvVar;
    }

    private final void zza(long j) {
        RemoteMediaClient remoteMediaClient = this.zza.zzp;
        if (remoteMediaClient == null) {
            return;
        }
        zzb(Math.min(remoteMediaClient.getStreamDuration(), Math.max(0L, remoteMediaClient.getApproximateStreamPosition() + j)));
    }

    private final void zzb(long j) {
        RemoteMediaClient remoteMediaClient = this.zza.zzp;
        if (remoteMediaClient == null) {
            return;
        }
        MediaSeekOptions.Builder builder = new MediaSeekOptions.Builder();
        builder.setPosition(j);
        remoteMediaClient.seek(builder.build());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        zzv.zzb.m336d("onCustomAction with action = %s", str);
        switch (str.hashCode()) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    zza(-this.zza.zzg.getSkipStepMs());
                    return;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    zzv zzvVar = this.zza;
                    if (zzvVar.zzf != null) {
                        zzvVar.zzf.endCurrentSession(true);
                        return;
                    }
                    return;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    zzv zzvVar2 = this.zza;
                    if (zzvVar2.zzf != null) {
                        zzvVar2.zzf.endCurrentSession(false);
                        return;
                    }
                    return;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    zza(this.zza.zzg.getSkipStepMs());
                    return;
                }
                break;
        }
        Intent intent = new Intent(str);
        intent.setComponent(this.zza.zzi);
        this.zza.zzc.sendBroadcast(intent);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        zzv.zzb.m336d("onMediaButtonEvent", new Object[0]);
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent == null) {
            return true;
        }
        if (keyEvent.getKeyCode() != 127 && keyEvent.getKeyCode() != 126) {
            return true;
        }
        zzv zzvVar = this.zza;
        if (zzvVar.zzp == null) {
            return true;
        }
        zzvVar.zzp.togglePlayback();
        return true;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPause() {
        zzv.zzb.m336d("onPause", new Object[0]);
        zzv zzvVar = this.zza;
        if (zzvVar.zzp != null) {
            zzvVar.zzp.togglePlayback();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPlay() {
        zzv.zzb.m336d("onPlay", new Object[0]);
        zzv zzvVar = this.zza;
        if (zzvVar.zzp != null) {
            zzvVar.zzp.togglePlayback();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSeekTo(long j) {
        zzv.zzb.m336d("onSeekTo %d", Long.valueOf(j));
        zzb(j);
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToNext() {
        zzv.zzb.m336d("onSkipToNext", new Object[0]);
        zzv zzvVar = this.zza;
        if (zzvVar.zzp != null) {
            zzvVar.zzp.queueNext(null);
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToPrevious() {
        zzv.zzb.m336d("onSkipToPrevious", new Object[0]);
        zzv zzvVar = this.zza;
        if (zzvVar.zzp != null) {
            zzvVar.zzp.queuePrev(null);
        }
    }
}
