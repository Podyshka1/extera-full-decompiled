package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes5.dex */
public class ImageDownload implements Closeable {
    private volatile Future future;
    private Task task;
    private final URL url;

    public static ImageDownload create(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new ImageDownload(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w("FirebaseMessaging", "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    private ImageDownload(URL url) {
        this.url = url;
    }

    public void start(ExecutorService executorService) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.future = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.ImageDownload$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ImageDownload.$r8$lambda$eScMs6vxKn1BVRLt69sEYv0FXxI(this.f$0, taskCompletionSource);
            }
        });
        this.task = taskCompletionSource.getTask();
    }

    public static /* synthetic */ void $r8$lambda$eScMs6vxKn1BVRLt69sEYv0FXxI(ImageDownload imageDownload, TaskCompletionSource taskCompletionSource) {
        imageDownload.getClass();
        try {
            taskCompletionSource.setResult(imageDownload.blockingDownload());
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }

    public Task getTask() {
        return (Task) Preconditions.checkNotNull(this.task);
    }

    public Bitmap blockingDownload() throws IOException {
        if (Log.isLoggable("FirebaseMessaging", 4)) {
            Log.i("FirebaseMessaging", "Starting download of: " + this.url);
        }
        byte[] bArrBlockingDownloadBytes = blockingDownloadBytes();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrBlockingDownloadBytes, 0, bArrBlockingDownloadBytes.length);
        if (bitmapDecodeByteArray == null) {
            throw new IOException("Failed to decode image: " + this.url);
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Successfully downloaded image: " + this.url);
        }
        return bitmapDecodeByteArray;
    }

    private byte[] blockingDownloadBytes() throws IOException {
        URLConnection uRLConnectionOpenConnection = this.url.openConnection();
        if (uRLConnectionOpenConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        try {
            byte[] byteArray = ByteStreams.toByteArray(ByteStreams.limit(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable("FirebaseMessaging", 2)) {
                Log.v("FirebaseMessaging", "Downloaded " + byteArray.length + " bytes from " + this.url);
            }
            if (byteArray.length <= 1048576) {
                return byteArray;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.future.cancel(true);
    }
}
