package com.google.android.gms.wearable;

import com.google.android.gms.wearable.ChannelClient;

/* JADX INFO: loaded from: classes5.dex */
final class zzk extends ChannelClient.ChannelCallback {
    final /* synthetic */ WearableListenerService zza;

    @Override // com.google.android.gms.wearable.ChannelClient.ChannelCallback
    public final void onChannelClosed(ChannelClient.Channel channel, int i, int i2) {
        this.zza.onChannelClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelClient.ChannelCallback
    public final void onChannelOpened(ChannelClient.Channel channel) {
        this.zza.onChannelOpened(channel);
    }

    @Override // com.google.android.gms.wearable.ChannelClient.ChannelCallback
    public final void onInputClosed(ChannelClient.Channel channel, int i, int i2) {
        this.zza.onInputClosed(channel, i, i2);
    }

    @Override // com.google.android.gms.wearable.ChannelClient.ChannelCallback
    public final void onOutputClosed(ChannelClient.Channel channel, int i, int i2) {
        this.zza.onOutputClosed(channel, i, i2);
    }
}
