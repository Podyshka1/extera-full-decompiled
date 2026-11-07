package androidx.media3.session;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.BitmapLoader;
import androidx.media3.datasource.BitmapUtil;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;

/* JADX INFO: loaded from: classes4.dex */
public final class SizeLimitedBitmapLoader implements BitmapLoader {
    private final BitmapLoader bitmapLoader;
    private final boolean makeShared;
    private final int maxBitmapSize;

    public SizeLimitedBitmapLoader(BitmapLoader bitmapLoader, int i, boolean z) {
        this.bitmapLoader = bitmapLoader;
        this.maxBitmapSize = i;
        this.makeShared = z;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(byte[] bArr) {
        return Futures.transform(this.bitmapLoader.decodeBitmap(bArr), new SizeLimitedBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(Uri uri) {
        return Futures.transform(this.bitmapLoader.loadBitmap(uri), new SizeLimitedBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        ListenableFuture<Bitmap> listenableFutureLoadBitmapFromMetadata = this.bitmapLoader.loadBitmapFromMetadata(mediaMetadata);
        if (listenableFutureLoadBitmapFromMetadata == null) {
            return null;
        }
        return Futures.transform(listenableFutureLoadBitmapFromMetadata, new SizeLimitedBitmapLoader$$ExternalSyntheticLambda0(this), MoreExecutors.directExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap scaleIfNecessary(Bitmap bitmap) {
        if (bitmap.getWidth() > this.maxBitmapSize || bitmap.getHeight() > this.maxBitmapSize) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int i = this.maxBitmapSize;
            float f = width;
            float f2 = height;
            float fMin = Math.min(i / f, i / f2);
            bitmap = Bitmap.createScaledBitmap(bitmap, (int) (f * fMin), (int) (f2 * fMin), true);
        }
        return this.makeShared ? BitmapUtil.makeShared(bitmap) : bitmap;
    }
}
