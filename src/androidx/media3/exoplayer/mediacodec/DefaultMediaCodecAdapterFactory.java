package androidx.media3.exoplayer.mediacodec;

import android.content.Context;
import android.os.Build;
import android.os.HandlerThread;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.mediacodec.AsynchronousMediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.SynchronousMediaCodecAdapter;
import com.google.common.base.Supplier;

/* JADX INFO: loaded from: classes4.dex */
public final class DefaultMediaCodecAdapterFactory implements MediaCodecAdapter.Factory {
    private boolean asyncCryptoFlagEnabled;
    private boolean asyncCryptoSynchronizationEnabled;
    private int asynchronousMode;
    private final Supplier<HandlerThread> callbackThreadSupplier;
    private final Context context;
    private final Supplier<HandlerThread> queueingThreadSupplier;

    @Deprecated
    public DefaultMediaCodecAdapterFactory() {
        this.asynchronousMode = 0;
        this.context = null;
        this.callbackThreadSupplier = null;
        this.queueingThreadSupplier = null;
    }

    public DefaultMediaCodecAdapterFactory(Context context) {
        this(context, null, null);
    }

    public DefaultMediaCodecAdapterFactory(Context context, Supplier<HandlerThread> supplier, Supplier<HandlerThread> supplier2) {
        this.context = context;
        this.asynchronousMode = 0;
        this.asyncCryptoFlagEnabled = true;
        this.callbackThreadSupplier = supplier;
        this.queueingThreadSupplier = supplier2;
    }

    @Override // androidx.media3.exoplayer.mediacodec.MediaCodecAdapter.Factory
    public MediaCodecAdapter createAdapter(MediaCodecAdapter.Configuration configuration) {
        AsynchronousMediaCodecAdapter.Factory factory;
        Supplier<HandlerThread> supplier;
        int i = this.asynchronousMode;
        if (i == 1 || (i == 0 && shouldUseAsynchronousAdapterInDefaultMode())) {
            int trackType = MimeTypes.getTrackType(configuration.format.sampleMimeType);
            Log.m163i("DMCodecAdapterFactory", "Creating an asynchronous MediaCodec adapter for track type " + Util.getTrackTypeString(trackType));
            Supplier<HandlerThread> supplier2 = this.callbackThreadSupplier;
            if (supplier2 != null && (supplier = this.queueingThreadSupplier) != null) {
                factory = new AsynchronousMediaCodecAdapter.Factory(supplier2, supplier);
            } else {
                factory = new AsynchronousMediaCodecAdapter.Factory(trackType);
            }
            factory.experimentalSetAsyncCryptoFlagEnabled(this.asyncCryptoFlagEnabled);
            factory.setAsyncCryptoSynchronizationEnabled(this.asyncCryptoSynchronizationEnabled);
            return factory.createAdapter(configuration);
        }
        return new SynchronousMediaCodecAdapter.Factory().createAdapter(configuration);
    }

    private boolean shouldUseAsynchronousAdapterInDefaultMode() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            return true;
        }
        Context context = this.context;
        return context != null && i >= 28 && context.getPackageManager().hasSystemFeature("com.amazon.hardware.tv_screen");
    }
}
