package com.google.android.gms.cast.framework.media.internal;

import androidx.annotation.Keep;
import com.google.android.gms.cast.framework.R$dimen;
import com.google.android.gms.cast.framework.R$drawable;
import com.google.android.gms.cast.framework.R$string;
import java.util.HashMap;
import java.util.Map;
import p022j$.util.DesugarCollections;

/* JADX INFO: loaded from: classes.dex */
public final class ResourceProvider {
    public static final /* synthetic */ int $r8$clinit = 0;
    private static final Map zza;

    static {
        HashMap map = new HashMap();
        map.put("smallIconDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_small_icon));
        map.put("stopLiveStreamDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_stop_live_stream));
        map.put("pauseDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_pause));
        map.put("playDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_play));
        map.put("skipNextDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_skip_next));
        map.put("skipPrevDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_skip_prev));
        map.put("forwardDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_forward));
        map.put("forward10DrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_forward10));
        map.put("forward30DrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_forward30));
        map.put("rewindDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_rewind));
        map.put("rewind10DrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_rewind10));
        map.put("rewind30DrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_rewind30));
        map.put("disconnectDrawableResId", Integer.valueOf(R$drawable.cast_ic_notification_disconnect));
        map.put("notificationImageSizeDimenResId", Integer.valueOf(R$dimen.cast_notification_image_size));
        map.put("castingToDeviceStringResId", Integer.valueOf(R$string.cast_casting_to_device));
        map.put("stopLiveStreamStringResId", Integer.valueOf(R$string.cast_stop_live_stream));
        map.put("pauseStringResId", Integer.valueOf(R$string.cast_pause));
        map.put("playStringResId", Integer.valueOf(R$string.cast_play));
        map.put("skipNextStringResId", Integer.valueOf(R$string.cast_skip_next));
        map.put("skipPrevStringResId", Integer.valueOf(R$string.cast_skip_prev));
        map.put("forwardStringResId", Integer.valueOf(R$string.cast_forward));
        map.put("forward10StringResId", Integer.valueOf(R$string.cast_forward_10));
        map.put("forward30StringResId", Integer.valueOf(R$string.cast_forward_30));
        map.put("rewindStringResId", Integer.valueOf(R$string.cast_rewind));
        map.put("rewind10StringResId", Integer.valueOf(R$string.cast_rewind_10));
        map.put("rewind30StringResId", Integer.valueOf(R$string.cast_rewind_30));
        map.put("disconnectStringResId", Integer.valueOf(R$string.cast_disconnect));
        zza = DesugarCollections.unmodifiableMap(map);
    }

    @Keep
    public static Integer findResourceByName(String str) {
        if (str == null) {
            return null;
        }
        return (Integer) zza.get(str);
    }
}
