package com.google.android.exoplayer2.mediacodec;

import com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.MediaCodecAdapter;
import com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.MimeTypes;
import com.google.android.exoplayer2.util.Util;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    private int asynchronousMode = 0;
    private boolean enableSynchronizeCodecInteractionsWithQueueing;

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) {
        int i;
        int i2 = Util.SDK_INT;
        if (i2 >= 23 && ((i = this.asynchronousMode) == 1 || (i == 0 && i2 >= 31))) {
            int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
            Log.m327i("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + Util.getTrackTypeString(trackType));
            return new AsynchronousMediaCodecAdapter.Factory(trackType, this.enableSynchronizeCodecInteractionsWithQueueing).createAdapter(configuration);
        }
        return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
    }
}
