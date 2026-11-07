package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.wearable.Channel;
import com.google.android.gms.wearable.ChannelClient;

/* JADX INFO: loaded from: classes5.dex */
public abstract class zzbd extends ChannelClient {
    /* JADX INFO: Access modifiers changed from: private */
    public static zzbq zzd(Channel channel) {
        Preconditions.checkNotNull(channel, "channel must not be null");
        return (zzbq) channel;
    }
}
