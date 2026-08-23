package com.google.android.gms.cast.framework.media.internal;

import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzw {
    private static final Logger zza = new Logger("MediaSessionUtils");

    public static int zza(NotificationOptions notificationOptions, long j) {
        return j == 10000 ? notificationOptions.getForward10DrawableResId() : j != 30000 ? notificationOptions.getForwardDrawableResId() : notificationOptions.getForward30DrawableResId();
    }

    public static int zzb(NotificationOptions notificationOptions, long j) {
        return j == 10000 ? notificationOptions.zzb() : j != 30000 ? notificationOptions.zzd() : notificationOptions.zzc();
    }

    public static int zzc(NotificationOptions notificationOptions, long j) {
        return j == 10000 ? notificationOptions.getRewind10DrawableResId() : j != 30000 ? notificationOptions.getRewindDrawableResId() : notificationOptions.getRewind30DrawableResId();
    }

    public static int zzd(NotificationOptions notificationOptions, long j) {
        return j == 10000 ? notificationOptions.zzh() : j != 30000 ? notificationOptions.zzj() : notificationOptions.zzi();
    }

    public static List zzf(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzf();
        } catch (RemoteException e) {
            zza.m339e(e, "Unable to call %s on %s.", "getNotificationActions", com.google.android.gms.cast.framework.media.zzg.class.getSimpleName());
            return null;
        }
    }

    public static int[] zzg(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzg();
        } catch (RemoteException e) {
            zza.m339e(e, "Unable to call %s on %s.", "getCompactViewActionIndices", com.google.android.gms.cast.framework.media.zzg.class.getSimpleName());
            return null;
        }
    }
}
