package org.telegram.p029ui.web;

import android.os.AsyncTask;
import android.os.Build;
import android.webkit.MimeTypeMap;
import androidx.annotation.Keep;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Stories.recorder.StoryEntry;

/* JADX INFO: loaded from: classes7.dex */
@Keep
public class HttpGetFileTask extends AsyncTask<String, Void, File> {
    private Utilities.Callback<File> doneCallback;
    private Exception exception;
    private File file;
    private long max_size = -1;
    private String overrideExt;
    private Utilities.Callback<Float> progressCallback;

    public HttpGetFileTask(Utilities.Callback<File> callback, Utilities.Callback<Float> callback2) {
        this.doneCallback = callback;
        this.progressCallback = callback2;
    }

    @Keep
    public HttpGetFileTask setOverrideExtension(String str) {
        this.overrideExt = str;
        return this;
    }

    @Keep
    public HttpGetFileTask setDestFile(File file) {
        this.file = file;
        return this;
    }

    @Keep
    public HttpGetFileTask setMaxSize(long j) {
        this.max_size = j;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ec, code lost:
    
        r18.file.delete();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00dd A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:149:0x0126 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f A[Catch: Exception -> 0x0041, PHI: r7 r10
  0x007f: PHI (r7v4 ??) = (r7v18 ??), (r7v19 ??), (r7v16 ??) binds: [B:21:0x0062, B:23:0x0066, B:32:0x007d] A[DONT_GENERATE, DONT_INLINE]
  0x007f: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v5 boolean) binds: [B:21:0x0062, B:23:0x0066, B:32:0x007d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #13 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0046, B:18:0x0055, B:20:0x005e, B:24:0x0068, B:33:0x007f, B:35:0x0085, B:37:0x008f, B:41:0x0099, B:43:0x00a0, B:45:0x00a3, B:47:0x00a7, B:51:0x00b8, B:50:0x00ac, B:52:0x00c0, B:36:0x008a, B:19:0x005a), top: B:144:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0085 A[Catch: Exception -> 0x0041, TryCatch #13 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0046, B:18:0x0055, B:20:0x005e, B:24:0x0068, B:33:0x007f, B:35:0x0085, B:37:0x008f, B:41:0x0099, B:43:0x00a0, B:45:0x00a3, B:47:0x00a7, B:51:0x00b8, B:50:0x00ac, B:52:0x00c0, B:36:0x008a, B:19:0x005a), top: B:144:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x008a A[Catch: Exception -> 0x0041, TryCatch #13 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0046, B:18:0x0055, B:20:0x005e, B:24:0x0068, B:33:0x007f, B:35:0x0085, B:37:0x008f, B:41:0x0099, B:43:0x00a0, B:45:0x00a3, B:47:0x00a7, B:51:0x00b8, B:50:0x00ac, B:52:0x00c0, B:36:0x008a, B:19:0x005a), top: B:144:0x0013 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00a7 A[Catch: Exception -> 0x0041, TryCatch #13 {Exception -> 0x0041, blocks: (B:9:0x0013, B:11:0x0025, B:14:0x0046, B:18:0x0055, B:20:0x005e, B:24:0x0068, B:33:0x007f, B:35:0x0085, B:37:0x008f, B:41:0x0099, B:43:0x00a0, B:45:0x00a3, B:47:0x00a7, B:51:0x00b8, B:50:0x00ac, B:52:0x00c0, B:36:0x008a, B:19:0x005a), top: B:144:0x0013 }] */
    /* JADX WARN: Type inference failed for: r13v2, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11, types: [long] */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v2, types: [int] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [long] */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [long] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13, types: [long] */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v20 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public File doInBackground(String... strArr) throws Throwable {
        ?? r16;
        InputStream errorStream;
        long contentLength;
        BufferedInputStream bufferedInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        FileChannel channel;
        byte[] bArr;
        int i;
        String str = strArr[0];
        ?? r4 = 0;
        int i2 = 0;
        ?? r7 = 0;
        while (i2 < 5) {
            boolean z = i2 > 0;
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestMethod("GET");
                if (z) {
                    httpURLConnection.setRequestProperty("Range", "bytes=" + r7 + "-");
                }
                httpURLConnection.setDoInput(true);
                int responseCode = httpURLConnection.getResponseCode();
                if (responseCode >= 200 && responseCode < 300) {
                    errorStream = httpURLConnection.getInputStream();
                } else {
                    errorStream = httpURLConnection.getErrorStream();
                }
                int responseCode2 = httpURLConnection.getResponseCode();
                r7 = r7;
                if (z) {
                    r7 = r7;
                    if (responseCode2 != 206) {
                        FileLog.m1133d("failed to resume, server doesn't support partial content. downloading from the beginning");
                        try {
                            File file = this.file;
                            if (file != null) {
                                try {
                                    file.delete();
                                } catch (Exception unused) {
                                }
                                this.file = null;
                            }
                            z = false;
                            r7 = r4;
                            if (Build.VERSION.SDK_INT < 24) {
                                contentLength = httpURLConnection.getContentLengthLong();
                            } else {
                                contentLength = httpURLConnection.getContentLength();
                            }
                            long j = this.max_size;
                            r16 = (j > r4 ? 1 : (j == r4 ? 0 : -1));
                            if (r16 <= 0 && contentLength > j) {
                                errorStream.close();
                                if (this.file != null) {
                                    this.file = null;
                                }
                                return null;
                            }
                            if (this.file == null) {
                                String extensionFromMimeType = this.overrideExt;
                                if (extensionFromMimeType == null) {
                                    extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(httpURLConnection.getContentType());
                                }
                                this.file = StoryEntry.makeCacheFile(UserConfig.selectedAccount, extensionFromMimeType);
                            }
                            bufferedInputStream = new BufferedInputStream(errorStream, 16384);
                            try {
                                try {
                                    fileOutputStream = new FileOutputStream(this.file, z);
                                    try {
                                        try {
                                            channel = fileOutputStream.getChannel();
                                            try {
                                                bArr = new byte[16384];
                                                r4 = r4;
                                                r7 = r7;
                                                while (true) {
                                                    i = bufferedInputStream.read(bArr);
                                                    r16 = r4;
                                                    if (i == -1) {
                                                        try {
                                                            channel.write(ByteBuffer.wrap(bArr, 0, i));
                                                            r7 += (long) i;
                                                            if (isCancelled()) {
                                                                try {
                                                                    break;
                                                                } catch (Exception e) {
                                                                    FileLog.m1136e(e);
                                                                }
                                                            } else {
                                                                if (contentLength > r16) {
                                                                    final float fClamp01 = Utilities.clamp01(((float) r7) / contentLength);
                                                                    if (this.progressCallback != null) {
                                                                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.HttpGetFileTask$$ExternalSyntheticLambda0
                                                                            @Override // java.lang.Runnable
                                                                            public final void run() {
                                                                                this.f$0.lambda$doInBackground$0(fClamp01);
                                                                            }
                                                                        });
                                                                    }
                                                                }
                                                                r4 = r16;
                                                                r7 = r7;
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                            Throwable th4 = th;
                                                            if (channel == null) {
                                                                throw th4;
                                                            }
                                                            try {
                                                                channel.close();
                                                                throw th4;
                                                            } catch (Throwable th5) {
                                                                th4.addSuppressed(th5);
                                                                throw th4;
                                                            }
                                                            th2 = th;
                                                            try {
                                                                fileOutputStream.close();
                                                                throw th2;
                                                            } catch (Throwable th6) {
                                                                th2.addSuppressed(th6);
                                                                throw th2;
                                                            }
                                                        }
                                                    } else {
                                                        if (this.progressCallback != null) {
                                                            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.HttpGetFileTask$$ExternalSyntheticLambda1
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    this.f$0.lambda$doInBackground$1();
                                                                }
                                                            });
                                                        }
                                                        if (channel != null) {
                                                            channel.close();
                                                        }
                                                        fileOutputStream.close();
                                                        bufferedInputStream.close();
                                                        if (isCancelled()) {
                                                            return null;
                                                        }
                                                        return this.file;
                                                    }
                                                }
                                            } catch (Throwable th7) {
                                                th = th7;
                                                r16 = r4;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            th2 = th;
                                            fileOutputStream.close();
                                            throw th2;
                                        }
                                    } catch (Throwable th9) {
                                        th = th9;
                                        r16 = r4;
                                        th2 = th;
                                        fileOutputStream.close();
                                        throw th2;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    r16 = r4;
                                    th = th;
                                    try {
                                        try {
                                            bufferedInputStream.close();
                                            throw th;
                                        } catch (Throwable th11) {
                                            th.addSuppressed(th11);
                                            throw th;
                                        }
                                    } catch (Exception e2) {
                                        e = e2;
                                    }
                                }
                            } catch (Throwable th12) {
                                th = th12;
                                th = th;
                                bufferedInputStream.close();
                                throw th;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            r7 = r4;
                            r16 = r7;
                        }
                    } else {
                        if (Build.VERSION.SDK_INT < 24) {
                        }
                        long j2 = this.max_size;
                        r16 = (j2 > r4 ? 1 : (j2 == r4 ? 0 : -1));
                        if (r16 <= 0) {
                        }
                        if (this.file == null) {
                        }
                        bufferedInputStream = new BufferedInputStream(errorStream, 16384);
                        fileOutputStream = new FileOutputStream(this.file, z);
                        channel = fileOutputStream.getChannel();
                        bArr = new byte[16384];
                        r4 = r4;
                        r7 = r7;
                        while (true) {
                            i = bufferedInputStream.read(bArr);
                            r16 = r4;
                            if (i == -1) {
                            }
                            r4 = r16;
                            r7 = r7;
                        }
                    }
                }
            } catch (Exception e4) {
                e = e4;
                r16 = r4;
            }
            if (e instanceof ProtocolException) {
                FileLog.m1133d("got unexpected end of stream, lets try to resume");
                i2++;
                r4 = r16;
                r7 = r7;
            } else {
                this.exception = e;
                FileLog.m1136e(e);
                return null;
            }
        }
        this.exception = new RuntimeException("too many retries");
        return null;
        channel.close();
        fileOutputStream.close();
        bufferedInputStream.close();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doInBackground$0(float f) {
        this.progressCallback.run(Float.valueOf(f));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$doInBackground$1() {
        this.progressCallback.run(Float.valueOf(1.0f));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(File file) {
        Utilities.Callback<File> callback = this.doneCallback;
        if (callback != null) {
            if (this.exception == null) {
                callback.run(file);
            } else {
                callback.run(null);
            }
        }
    }
}
