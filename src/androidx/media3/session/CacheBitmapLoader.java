package androidx.media3.session;

import android.graphics.Bitmap;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.BitmapLoader;
import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class CacheBitmapLoader implements BitmapLoader {
    private final BitmapLoader bitmapLoader;
    private BitmapLoadRequest lastBitmapLoadRequest;

    public CacheBitmapLoader(BitmapLoader bitmapLoader) {
        this.bitmapLoader = bitmapLoader;
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> decodeBitmap(byte[] bArr) {
        BitmapLoadRequest bitmapLoadRequest = this.lastBitmapLoadRequest;
        if (bitmapLoadRequest == null || !bitmapLoadRequest.matches(bArr)) {
            ListenableFuture<Bitmap> listenableFutureDecodeBitmap = this.bitmapLoader.decodeBitmap(bArr);
            this.lastBitmapLoadRequest = new BitmapLoadRequest(bArr, listenableFutureDecodeBitmap);
            return listenableFutureDecodeBitmap;
        }
        return this.lastBitmapLoadRequest.getFuture();
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmap(Uri uri) {
        BitmapLoadRequest bitmapLoadRequest = this.lastBitmapLoadRequest;
        if (bitmapLoadRequest == null || !bitmapLoadRequest.matches(uri)) {
            ListenableFuture<Bitmap> listenableFutureLoadBitmap = this.bitmapLoader.loadBitmap(uri);
            this.lastBitmapLoadRequest = new BitmapLoadRequest(uri, listenableFutureLoadBitmap);
            return listenableFutureLoadBitmap;
        }
        return this.lastBitmapLoadRequest.getFuture();
    }

    @Override // androidx.media3.common.util.BitmapLoader
    public ListenableFuture<Bitmap> loadBitmapFromMetadata(MediaMetadata mediaMetadata) {
        BitmapLoadRequest bitmapLoadRequest = this.lastBitmapLoadRequest;
        if (bitmapLoadRequest == null || !bitmapLoadRequest.matches(mediaMetadata)) {
            ListenableFuture<Bitmap> listenableFutureLoadBitmapFromMetadata = this.bitmapLoader.loadBitmapFromMetadata(mediaMetadata);
            if (listenableFutureLoadBitmapFromMetadata == null) {
                return null;
            }
            this.lastBitmapLoadRequest = new BitmapLoadRequest(mediaMetadata, listenableFutureLoadBitmapFromMetadata);
            return listenableFutureLoadBitmapFromMetadata;
        }
        return this.lastBitmapLoadRequest.getFuture();
    }

    public static class BitmapLoadRequest {
        private final byte[] data;
        private final ListenableFuture<Bitmap> future;
        private final Uri uri;

        private BitmapLoadRequest(byte[] bArr, ListenableFuture<Bitmap> listenableFuture) {
            this.data = bArr;
            this.uri = null;
            this.future = listenableFuture;
        }

        private BitmapLoadRequest(Uri uri, ListenableFuture<Bitmap> listenableFuture) {
            this.data = null;
            this.uri = uri;
            this.future = listenableFuture;
        }

        private BitmapLoadRequest(MediaMetadata mediaMetadata, ListenableFuture<Bitmap> listenableFuture) {
            this.data = mediaMetadata.artworkData;
            this.uri = mediaMetadata.artworkUri;
            this.future = listenableFuture;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean matches(byte[] bArr) {
            byte[] bArr2 = this.data;
            return bArr2 != null && Arrays.equals(bArr2, bArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean matches(Uri uri) {
            Uri uri2 = this.uri;
            return uri2 != null && uri2.equals(uri);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean matches(MediaMetadata mediaMetadata) {
            Uri uri = this.uri;
            if (uri != null && uri.equals(mediaMetadata.artworkUri)) {
                return true;
            }
            byte[] bArr = this.data;
            return bArr != null && Arrays.equals(bArr, mediaMetadata.artworkData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public ListenableFuture<Bitmap> getFuture() {
            return (ListenableFuture) Preconditions.checkNotNull(this.future);
        }
    }
}
