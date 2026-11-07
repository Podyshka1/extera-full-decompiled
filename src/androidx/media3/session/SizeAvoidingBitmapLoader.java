package androidx.media3.session;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.datasource.BitmapUtil;
import com.google.common.primitives.ImmutableIntArray;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes4.dex */
final class SizeAvoidingBitmapLoader implements BitmapLoader {
    private final ImmutableIntArray avoidSizes;
    private final BitmapLoader bitmapLoader;

    public SizeAvoidingBitmapLoader(BitmapLoader bitmapLoader, ImmutableIntArray immutableIntArray) {
        this.bitmapLoader = bitmapLoader;
        this.avoidSizes = immutableIntArray;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(byte[] bArr) {
        return Futures.transform(this.bitmapLoader.decodeBitmap(bArr), new SizeAvoidingBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(Uri uri) {
        return Futures.transform(this.bitmapLoader.loadBitmap(uri), new SizeAvoidingBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        ListenableFuture<Bitmap> listenableFutureLoadBitmapFromMetadata = this.bitmapLoader.loadBitmapFromMetadata(mediaMetadata);
        if (listenableFutureLoadBitmapFromMetadata == null) {
            return null;
        }
        return Futures.transform(listenableFutureLoadBitmapFromMetadata, new SizeAvoidingBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap scaleIfNecessary(Bitmap bitmap) {
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        if (!this.avoidSizes.contains(Math.max(height, width))) {
            return bitmap;
        }
        if (this.avoidSizes.contains(height)) {
            height--;
        }
        if (this.avoidSizes.contains(width)) {
            width--;
        }
        return BitmapUtil.makeShared(Bitmap.createScaledBitmap(bitmap, width, height, true));
    }
}
