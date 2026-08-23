package com.google.android.gms.cast.framework.devicesuggestions;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.internal.cast.zzav;

/* JADX INFO: loaded from: classes4.dex */
public final class DeviceSuggestions {
    private DeviceSuggestions() {
    }

    public static DeviceSuggestionsClient getClient(Activity activity) {
        return new zzav(activity);
    }

    public static DeviceSuggestionsClient getClient(Context context) {
        return new zzav(context);
    }
}
