package com.google.android.gms.cast.framework.media.internal;

import android.os.RemoteException;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzt {
    private static final Logger zza = new Logger("MediaSessionUtils");

    /* JADX WARN: Removed duplicated region for block: B:13:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002c A[PHI: r1
  0x002c: PHI (r1v5 java.lang.String) = (r1v3 java.lang.String), (r1v4 java.lang.String) binds: [B:18:0x002a, B:21:0x0034] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String zza(MediaMetadata mediaMetadata) {
        String str = MediaMetadata.KEY_SUBTITLE;
        if (!mediaMetadata.containsKey(MediaMetadata.KEY_SUBTITLE)) {
            int mediaType = mediaMetadata.getMediaType();
            if (mediaType == 1) {
                str = MediaMetadata.KEY_STUDIO;
            } else if (mediaType == 2) {
                str = MediaMetadata.KEY_SERIES_TITLE;
            } else if (mediaType != 3) {
                if (mediaType == 4) {
                    str = MediaMetadata.KEY_ARTIST;
                }
            } else if (!mediaMetadata.containsKey(MediaMetadata.KEY_ARTIST)) {
                String str2 = MediaMetadata.KEY_ALBUM_ARTIST;
                if (mediaMetadata.containsKey(MediaMetadata.KEY_ALBUM_ARTIST)) {
                    str = str2;
                } else {
                    str2 = MediaMetadata.KEY_COMPOSER;
                    if (mediaMetadata.containsKey(MediaMetadata.KEY_COMPOSER)) {
                    }
                }
            }
        }
        return mediaMetadata.getString(str);
    }

    public static List zzb(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzf();
        } catch (RemoteException e) {
            zza.m290e(e, "Unable to call %s on %s.", "getNotificationActions", com.google.android.gms.cast.framework.media.zzg.class.getSimpleName());
            return null;
        }
    }

    public static int[] zzc(com.google.android.gms.cast.framework.media.zzg zzgVar) {
        try {
            return zzgVar.zzg();
        } catch (RemoteException e) {
            zza.m290e(e, "Unable to call %s on %s.", "getCompactViewActionIndices", com.google.android.gms.cast.framework.media.zzg.class.getSimpleName());
            return null;
        }
    }

    public static int zzd(NotificationOptions notificationOptions, long j) {
        return j == NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS ? notificationOptions.getForward10DrawableResId() : j != NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS ? notificationOptions.getForwardDrawableResId() : notificationOptions.getForward30DrawableResId();
    }

    public static int zze(NotificationOptions notificationOptions, long j) {
        return j == NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS ? notificationOptions.zzg() : j != NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS ? notificationOptions.zzf() : notificationOptions.zzh();
    }

    public static int zzf(NotificationOptions notificationOptions, long j) {
        return j == NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS ? notificationOptions.getRewind10DrawableResId() : j != NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS ? notificationOptions.getRewindDrawableResId() : notificationOptions.getRewind30DrawableResId();
    }

    public static int zzg(NotificationOptions notificationOptions, long j) {
        return j == NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS ? notificationOptions.zzj() : j != NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS ? notificationOptions.zzi() : notificationOptions.zzk();
    }
}
