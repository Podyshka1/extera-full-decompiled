package org.telegram.messenger;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.MediaMetadataRetriever;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.SystemClock;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Pair;
import android.util.SparseArray;
import androidx.activity.OnBackPressedDispatcher$$ExternalSyntheticNonNull0;
import androidx.core.graphics.ColorUtils;
import java.io.BufferedReader;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.net.HttpURLConnection;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.function.Consumer;
import java.util.zip.GZIPInputStream;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONObject;
import org.telegram.DispatchQueuePriority;
import org.telegram.messenger.DocumentObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FilePathDatabase;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.secretmedia.EncryptedFileInputStream;
import org.telegram.messenger.utils.BitmapsCache;
import org.telegram.messenger.wallpaper.WallpaperGiftBitmapDrawable;
import org.telegram.p029ui.Cells.ChatMessageCell;
import org.telegram.p029ui.Components.AnimatedFileDrawable;
import org.telegram.p029ui.Components.BackgroundGradientDrawable;
import org.telegram.p029ui.Components.MotionBackgroundDrawable;
import org.telegram.p029ui.Components.RLottieDrawable;
import org.telegram.p029ui.Components.SlotsDrawable;
import org.telegram.p029ui.Components.ThemePreviewDrawable;
import org.telegram.p029ui.web.WebInstantView;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Objects;
import p022j$.util.concurrent.ConcurrentHashMap;
import p022j$.util.function.Consumer$CC;
import p022j$.util.stream.Stream;

/* JADX INFO: loaded from: classes.dex */
public class ImageLoader {
    public static final String AUTOPLAY_FILTER = "g";
    public static final int CACHE_TYPE_CACHE = 1;
    public static final int CACHE_TYPE_ENCRYPTED = 2;
    public static final int CACHE_TYPE_NONE = 0;
    private static final boolean DEBUG_MODE = false;
    private boolean canForce8888;
    private LruCache<BitmapDrawable> lottieMemCache;
    private LruCache<BitmapDrawable> memCache;
    private LruCache<BitmapDrawable> smallImagesMemCache;
    private LruCache<BitmapDrawable> wallpaperMemCache;
    private static ThreadLocal<byte[]> bytesLocal = new ThreadLocal<>();
    private static ThreadLocal<byte[]> bytesThumbLocal = new ThreadLocal<>();
    private static byte[] header = new byte[12];
    private static byte[] headerThumb = new byte[12];
    private static volatile ImageLoader Instance = null;
    private HashMap<String, Integer> bitmapUseCounts = new HashMap<>();
    ArrayList<AnimatedFileDrawable> cachedAnimatedFileDrawables = new ArrayList<>();
    private HashMap<String, CacheImage> imageLoadingByUrl = new HashMap<>();
    private HashMap<String, CacheImage> imageLoadingByUrlPframe = new HashMap<>();
    public ConcurrentHashMap<String, CacheImage> imageLoadingByKeys = new ConcurrentHashMap<>();
    public HashSet<String> imageLoadingKeys = new HashSet<>();
    private SparseArray<CacheImage> imageLoadingByTag = new SparseArray<>();
    private HashMap<String, ThumbGenerateInfo> waitingForQualityThumb = new HashMap<>();
    private SparseArray<String> waitingForQualityThumbByTag = new SparseArray<>();
    private LinkedList<HttpImageTask> httpTasks = new LinkedList<>();
    private LinkedList<ArtworkLoadTask> artworkTasks = new LinkedList<>();
    private DispatchQueuePriority cacheOutQueue = new DispatchQueuePriority("cacheOutQueue");
    private DispatchQueue cacheThumbOutQueue = new DispatchQueue("cacheThumbOutQueue");
    private DispatchQueue thumbGeneratingQueue = new DispatchQueue("thumbGeneratingQueue");
    private DispatchQueue imageLoadQueue = new DispatchQueue("imageLoadQueue");
    private HashMap<String, String> replacedBitmaps = new HashMap<>();
    private ConcurrentHashMap<String, long[]> fileProgresses = new ConcurrentHashMap<>();
    private HashMap<String, ThumbGenerateTask> thumbGenerateTasks = new HashMap<>();
    private HashMap<String, Integer> forceLoadingImages = new HashMap<>();
    private int currentHttpTasksCount = 0;
    private int currentArtworkTasksCount = 0;
    private ConcurrentHashMap<String, WebFile> testWebFile = new ConcurrentHashMap<>();
    private LinkedList<HttpFileTask> httpFileLoadTasks = new LinkedList<>();
    private HashMap<String, HttpFileTask> httpFileLoadTasksByKeys = new HashMap<>();
    private HashMap<String, Runnable> retryHttpsTasks = new HashMap<>();
    private int currentHttpFileLoadTasksCount = 0;
    private String ignoreRemoval = null;
    private volatile long lastCacheOutTime = 0;
    private int lastImageNum = 0;
    private File telegramPath = null;

    public static boolean hasAutoplayFilter(String str) {
        if (str == null) {
            return false;
        }
        String[] strArrSplit = str.split("_");
        for (int i = 0; i < strArrSplit.length; i++) {
            if (AUTOPLAY_FILTER.equals(strArrSplit[i]) || "pframe".equals(strArrSplit[i])) {
                return true;
            }
        }
        return false;
    }

    public static Drawable createStripedBitmap(ArrayList<TLRPC.PhotoSize> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            if (arrayList.get(i) instanceof TLRPC.TL_photoStrippedSize) {
                return new BitmapDrawable(ApplicationLoader.applicationContext.getResources(), getStrippedPhotoBitmap(((TLRPC.TL_photoStrippedSize) arrayList.get(i)).bytes, "b"));
            }
        }
        return null;
    }

    public static boolean isSdCardPath(File file) {
        return !TextUtils.isEmpty(SharedConfig.storageCacheDir) && file.getAbsolutePath().startsWith(SharedConfig.storageCacheDir);
    }

    public void moveToFront(String str) {
        if (str == null) {
            return;
        }
        if (this.lottieMemCache.get(str) != null) {
            this.lottieMemCache.moveToFront(str);
        }
        if (this.memCache.get(str) != null) {
            this.memCache.moveToFront(str);
        }
        if (this.smallImagesMemCache.get(str) != null) {
            this.smallImagesMemCache.moveToFront(str);
        }
    }

    public void putThumbsToCache(ArrayList<MessageThumb> arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            putImageToCache(arrayList.get(i).drawable, arrayList.get(i).key, true);
        }
    }

    public LruCache<BitmapDrawable> getLottieMemCahce() {
        return this.lottieMemCache;
    }

    private static class ThumbGenerateInfo {
        private boolean big;
        private String filter;
        private ArrayList<ImageReceiver> imageReceiverArray;
        private ArrayList<Integer> imageReceiverGuidsArray;
        private TLRPC.Document parentDocument;

        private ThumbGenerateInfo() {
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    class HttpFileTask extends AsyncTask<Void, Void, Boolean> {
        private int currentAccount;
        private String ext;
        private int fileSize;
        private long lastProgressTime;
        private File tempFile;
        private String url;
        private RandomAccessFile fileOutputStream = null;
        private boolean canRetry = true;

        public HttpFileTask(String str, File file, String str2, int i) {
            this.url = str;
            this.tempFile = file;
            this.ext = str2;
            this.currentAccount = i;
        }

        private void reportProgress(final long j, final long j2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= jElapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = jElapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpFileTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$0(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:85:0x0127, code lost:
        
            if (r5 != (-1)) goto L94;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0129, code lost:
        
            r0 = r11.fileSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x012b, code lost:
        
            if (r0 == 0) goto L115;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x012d, code lost:
        
            reportProgress(r0, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0135, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0137, code lost:
        
            r1 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0139, code lost:
        
            org.telegram.messenger.FileLog.m1136e(r0);
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(Void... voidArr) {
            InputStream inputStream;
            URLConnection uRLConnectionOpenConnection;
            InputStream inputStream2;
            List<String> list;
            String str;
            int responseCode;
            boolean z = true;
            boolean z2 = false;
            try {
                uRLConnectionOpenConnection = new URL(this.url).openConnection();
                try {
                    uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                    uRLConnectionOpenConnection.setConnectTimeout(5000);
                    uRLConnectionOpenConnection.setReadTimeout(5000);
                    if (uRLConnectionOpenConnection instanceof HttpURLConnection) {
                        HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnectionOpenConnection;
                        httpURLConnection.setInstanceFollowRedirects(true);
                        int responseCode2 = httpURLConnection.getResponseCode();
                        if (responseCode2 == 302 || responseCode2 == 301 || responseCode2 == 303) {
                            String headerField = httpURLConnection.getHeaderField("Location");
                            String headerField2 = httpURLConnection.getHeaderField("Set-Cookie");
                            uRLConnectionOpenConnection = new URL(headerField).openConnection();
                            uRLConnectionOpenConnection.setRequestProperty("Cookie", headerField2);
                            uRLConnectionOpenConnection.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                        }
                    }
                    uRLConnectionOpenConnection.connect();
                    inputStream2 = uRLConnectionOpenConnection.getInputStream();
                } catch (Throwable th) {
                    th = th;
                    inputStream = null;
                }
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                uRLConnectionOpenConnection = null;
            }
            try {
                this.fileOutputStream = new RandomAccessFile(this.tempFile, "rws");
            } catch (Throwable th3) {
                inputStream = inputStream2;
                th = th3;
                if (th instanceof SocketTimeoutException) {
                    if (ApplicationLoader.isNetworkOnline()) {
                        this.canRetry = false;
                    }
                } else if (th instanceof UnknownHostException) {
                    this.canRetry = false;
                } else if (th instanceof SocketException) {
                    if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                        this.canRetry = false;
                    }
                } else if (th instanceof FileNotFoundException) {
                    this.canRetry = false;
                }
                FileLog.m1136e(th);
                inputStream2 = inputStream;
            }
            if (this.canRetry) {
                try {
                    if ((uRLConnectionOpenConnection instanceof HttpURLConnection) && (responseCode = ((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
                if (uRLConnectionOpenConnection != null) {
                    try {
                        Map<String, List<String>> headerFields = uRLConnectionOpenConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.fileSize = Utilities.parseInt((CharSequence) str).intValue();
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                }
                if (inputStream2 != null) {
                    try {
                        byte[] bArr = new byte[32768];
                        int i = 0;
                        while (true) {
                            try {
                                if (isCancelled()) {
                                    break;
                                }
                                try {
                                    int i2 = inputStream2.read(bArr);
                                    if (i2 <= 0) {
                                        break;
                                    }
                                    this.fileOutputStream.write(bArr, 0, i2);
                                    i += i2;
                                    int i3 = this.fileSize;
                                    if (i3 > 0) {
                                        reportProgress(i, i3);
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                    z = false;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                FileLog.m1136e(th);
                            }
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        z = false;
                    }
                    z2 = z;
                }
                try {
                    RandomAccessFile randomAccessFile = this.fileOutputStream;
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                        this.fileOutputStream = null;
                    }
                } catch (Throwable th6) {
                    FileLog.m1136e(th6);
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th7) {
                        FileLog.m1136e(th7);
                    }
                }
            }
            return Boolean.valueOf(z2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            ImageLoader.this.runHttpFileLoadTasks(this, bool.booleanValue() ? 2 : 1);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.runHttpFileLoadTasks(this, 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    class ArtworkLoadTask extends AsyncTask<Void, Void, String> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private HttpURLConnection httpConnection;
        private boolean small;

        public ArtworkLoadTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
            this.small = Uri.parse(cacheImage.imageLocation.path).getQueryParameter("s") != null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Finally extract failed */
        @Override // android.os.AsyncTask
        public String doInBackground(Void... voidArr) {
            InputStream inputStream;
            ByteArrayOutputStream byteArrayOutputStream;
            InputStream inputStream2;
            ByteArrayOutputStream byteArrayOutputStream2;
            int i;
            int responseCode;
            try {
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.cacheImage.imageLocation.path.replace("athumb://", "https://")).openConnection();
                    this.httpConnection = httpURLConnection;
                    httpURLConnection.setConnectTimeout(5000);
                    this.httpConnection.setReadTimeout(5000);
                    this.httpConnection.connect();
                    try {
                        HttpURLConnection httpURLConnection2 = this.httpConnection;
                        if (httpURLConnection2 != null && (responseCode = httpURLConnection2.getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                            this.canRetry = false;
                        }
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                    inputStream2 = this.httpConnection.getInputStream();
                    try {
                        byteArrayOutputStream2 = new ByteArrayOutputStream();
                    } catch (Throwable th) {
                        inputStream = inputStream2;
                        th = th;
                        byteArrayOutputStream = null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                    byteArrayOutputStream = null;
                }
            } catch (Exception unused) {
            }
            try {
                byte[] bArr = new byte[32768];
                while (!isCancelled() && (i = inputStream2.read(bArr)) > 0) {
                    byteArrayOutputStream2.write(bArr, 0, i);
                }
                this.canRetry = false;
                JSONArray jSONArray = new JSONObject(new String(byteArrayOutputStream2.toByteArray())).getJSONArray("results");
                if (jSONArray.length() > 0) {
                    String string = jSONArray.getJSONObject(0).getString("artworkUrl100");
                    if (this.small) {
                        try {
                            HttpURLConnection httpURLConnection3 = this.httpConnection;
                            if (httpURLConnection3 != null) {
                                httpURLConnection3.disconnect();
                            }
                        } catch (Throwable unused2) {
                        }
                        if (inputStream2 != null) {
                            try {
                                inputStream2.close();
                            } catch (Throwable th3) {
                                FileLog.m1136e(th3);
                            }
                        }
                        try {
                            byteArrayOutputStream2.close();
                        } catch (Exception unused3) {
                        }
                        return string;
                    }
                    String strReplace = string.replace("100x100", "600x600");
                    try {
                        HttpURLConnection httpURLConnection4 = this.httpConnection;
                        if (httpURLConnection4 != null) {
                            httpURLConnection4.disconnect();
                        }
                    } catch (Throwable unused4) {
                    }
                    if (inputStream2 != null) {
                        try {
                            inputStream2.close();
                        } catch (Throwable th4) {
                            FileLog.m1136e(th4);
                        }
                    }
                    try {
                        byteArrayOutputStream2.close();
                    } catch (Exception unused5) {
                    }
                    return strReplace;
                }
                try {
                    HttpURLConnection httpURLConnection5 = this.httpConnection;
                    if (httpURLConnection5 != null) {
                        httpURLConnection5.disconnect();
                    }
                } catch (Throwable unused6) {
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th5) {
                        FileLog.m1136e(th5);
                    }
                }
                byteArrayOutputStream2.close();
            } catch (Throwable th6) {
                inputStream = inputStream2;
                th = th6;
                byteArrayOutputStream = byteArrayOutputStream2;
                try {
                    if (th instanceof SocketTimeoutException) {
                        if (ApplicationLoader.isNetworkOnline()) {
                            this.canRetry = false;
                        }
                    } else if (th instanceof UnknownHostException) {
                        this.canRetry = false;
                    } else if (th instanceof SocketException) {
                        if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                            this.canRetry = false;
                        }
                    } else if (th instanceof FileNotFoundException) {
                        this.canRetry = false;
                    }
                    FileLog.m1136e(th);
                    try {
                        HttpURLConnection httpURLConnection6 = this.httpConnection;
                        if (httpURLConnection6 != null) {
                            httpURLConnection6.disconnect();
                        }
                    } catch (Throwable unused7) {
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th7) {
                            FileLog.m1136e(th7);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        byteArrayOutputStream.close();
                    }
                    return null;
                } catch (Throwable th8) {
                    try {
                        HttpURLConnection httpURLConnection7 = this.httpConnection;
                        if (httpURLConnection7 != null) {
                            httpURLConnection7.disconnect();
                        }
                    } catch (Throwable unused8) {
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th9) {
                            FileLog.m1136e(th9);
                        }
                    }
                    if (byteArrayOutputStream == null) {
                        throw th8;
                    }
                    try {
                        byteArrayOutputStream.close();
                        throw th8;
                    } catch (Exception unused9) {
                        throw th8;
                    }
                }
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final String str) {
            if (str != null) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$onPostExecute$0(str);
                    }
                });
            } else if (this.canRetry) {
                ImageLoader.this.artworkLoadError(this.cacheImage.url);
            }
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(String str) {
            CacheImage cacheImage = this.cacheImage;
            cacheImage.httpTask = ImageLoader.this.new HttpImageTask(cacheImage, 0, str);
            ImageLoader.this.httpTasks.add(this.cacheImage.httpTask);
            ImageLoader.this.runHttpTasks(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$1() {
            ImageLoader.this.runArtworkTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$2() {
            ImageLoader.this.runArtworkTasks(true);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$2();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    class HttpImageTask extends AsyncTask<Void, Void, Boolean> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private RandomAccessFile fileOutputStream;
        private HttpURLConnection httpConnection;
        private long imageSize;
        private long lastProgressTime;
        private String overrideUrl;

        /* JADX INFO: renamed from: $r8$lambda$cv6vUIEcOP54Auh2HI4OW-QaCg0, reason: not valid java name */
        public static /* synthetic */ void m4215$r8$lambda$cv6vUIEcOP54Auh2HI4OWQaCg0(TLObject tLObject, TLRPC.TL_error tL_error) {
        }

        public HttpImageTask(CacheImage cacheImage, long j) {
            this.cacheImage = cacheImage;
            this.imageSize = j;
        }

        public HttpImageTask(CacheImage cacheImage, int i, String str) {
            this.cacheImage = cacheImage;
            this.imageSize = i;
            this.overrideUrl = str;
        }

        private void reportProgress(final long j, final long j2) {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            if (j != j2) {
                long j3 = this.lastProgressTime;
                if (j3 != 0 && j3 >= jElapsedRealtime - 100) {
                    return;
                }
            }
            this.lastProgressTime = jElapsedRealtime;
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$1(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$1(final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(this.cacheImage.url, new long[]{j, j2});
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$reportProgress$0(j, j2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$reportProgress$0(long j, long j2) {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, this.cacheImage.url, Long.valueOf(j), Long.valueOf(j2));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:100:0x0176, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0177, code lost:
        
            r2 = true;
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x017b, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x017c, code lost:
        
            r2 = true;
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x0180, code lost:
        
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x0182, code lost:
        
            org.telegram.messenger.FileLog.m1136e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0188, code lost:
        
            org.telegram.messenger.FileLog.m1136e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x016a, code lost:
        
            if (r7 != (-1)) goto L104;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x016c, code lost:
        
            r2 = r12.imageSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0170, code lost:
        
            if (r2 == 0) goto L107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x0172, code lost:
        
            reportProgress(r2, r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:111:0x018f A[Catch: all -> 0x0195, TRY_LEAVE, TryCatch #3 {all -> 0x0195, blocks: (B:109:0x018b, B:111:0x018f), top: B:138:0x018b }] */
        /* JADX WARN: Removed duplicated region for block: B:117:0x019d A[Catch: all -> 0x01a0, TRY_LEAVE, TryCatch #0 {all -> 0x01a0, blocks: (B:115:0x0199, B:117:0x019d), top: B:132:0x0199 }] */
        /* JADX WARN: Removed duplicated region for block: B:142:0x01a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00e4  */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Boolean doInBackground(Void... voidArr) {
            InputStream inputStream;
            InputStream inputStream2;
            WebFile webFile;
            HttpURLConnection httpURLConnection;
            List<String> list;
            String str;
            int responseCode;
            CacheImage cacheImage;
            File file;
            boolean z = true;
            boolean z2 = false;
            if (!isCancelled()) {
                try {
                    String str2 = this.cacheImage.imageLocation.path;
                    if (str2.startsWith("https://static-maps") || str2.startsWith("https://maps.googleapis")) {
                        int i = MessagesController.getInstance(this.cacheImage.currentAccount).mapProvider;
                        if ((i == 3 || i == 4) && (webFile = (WebFile) ImageLoader.this.testWebFile.get(str2)) != null) {
                            TLRPC.TL_upload_getWebFile tL_upload_getWebFile = new TLRPC.TL_upload_getWebFile();
                            tL_upload_getWebFile.location = webFile.location;
                            tL_upload_getWebFile.offset = 0;
                            tL_upload_getWebFile.limit = 0;
                            ConnectionsManager.getInstance(this.cacheImage.currentAccount).sendRequest(tL_upload_getWebFile, new RequestDelegate() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda0
                                @Override // org.telegram.tgnet.RequestDelegate
                                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                                    ImageLoader.HttpImageTask.m4215$r8$lambda$cv6vUIEcOP54Auh2HI4OWQaCg0(tLObject, tL_error);
                                }
                            });
                        }
                    }
                    String str3 = this.overrideUrl;
                    if (str3 != null) {
                        str2 = str3;
                    }
                    HttpURLConnection httpURLConnection2 = (HttpURLConnection) new URL(str2).openConnection();
                    this.httpConnection = httpURLConnection2;
                    httpURLConnection2.addRequestProperty("User-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 10_0 like Mac OS X) AppleWebKit/602.1.38 (KHTML, like Gecko) Version/10.0 Mobile/14A5297c Safari/602.1");
                    this.httpConnection.setConnectTimeout(5000);
                    this.httpConnection.setReadTimeout(5000);
                    this.httpConnection.setInstanceFollowRedirects(true);
                    if (isCancelled()) {
                        inputStream2 = null;
                    } else {
                        this.httpConnection.connect();
                        inputStream2 = this.httpConnection.getInputStream();
                        try {
                            this.fileOutputStream = new RandomAccessFile(this.cacheImage.tempFilePath, "rws");
                        } catch (Throwable th) {
                            inputStream = inputStream2;
                            th = th;
                            if (th instanceof SocketTimeoutException) {
                                if (ApplicationLoader.isNetworkOnline()) {
                                    this.canRetry = false;
                                }
                            } else if (th instanceof UnknownHostException) {
                                this.canRetry = false;
                            } else if (th instanceof SocketException) {
                                if (th.getMessage() != null && th.getMessage().contains("ECONNRESET")) {
                                    this.canRetry = false;
                                }
                            } else if (th instanceof FileNotFoundException) {
                                this.canRetry = false;
                            }
                            FileLog.m1136e(th);
                            inputStream2 = inputStream;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    inputStream = null;
                }
            }
            if (!isCancelled()) {
                try {
                    HttpURLConnection httpURLConnection3 = this.httpConnection;
                    if (httpURLConnection3 != null && (responseCode = httpURLConnection3.getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
                if (this.imageSize == 0 && (httpURLConnection = this.httpConnection) != null) {
                    try {
                        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.imageSize = Utilities.parseInt((CharSequence) str).intValue();
                        }
                    } catch (Exception e2) {
                        FileLog.m1136e(e2);
                    }
                }
                if (inputStream2 != null) {
                    try {
                        byte[] bArr = new byte[8192];
                        int i2 = 0;
                        while (true) {
                            if (isCancelled()) {
                                break;
                            }
                            try {
                                int i3 = inputStream2.read(bArr);
                                if (i3 <= 0) {
                                    break;
                                }
                                i2 += i3;
                                this.fileOutputStream.write(bArr, 0, i3);
                                long j = this.imageSize;
                                if (j != 0) {
                                    reportProgress(i2, j);
                                }
                            } catch (Exception e3) {
                                e = e3;
                            }
                        }
                        z2 = z;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
            }
            try {
                RandomAccessFile randomAccessFile = this.fileOutputStream;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                    this.fileOutputStream = null;
                }
            } catch (Throwable th4) {
                FileLog.m1136e(th4);
            }
            try {
                HttpURLConnection httpURLConnection4 = this.httpConnection;
                if (httpURLConnection4 != null) {
                    httpURLConnection4.disconnect();
                }
            } catch (Throwable unused) {
            }
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (Throwable th5) {
                    FileLog.m1136e(th5);
                }
            }
            if (z2 && (file = (cacheImage = this.cacheImage).tempFilePath) != null && !file.renameTo(cacheImage.finalFilePath)) {
                CacheImage cacheImage2 = this.cacheImage;
                cacheImage2.finalFilePath = cacheImage2.tempFilePath;
            }
            return Boolean.valueOf(z2);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(final Boolean bool) {
            if (bool.booleanValue() || !this.canRetry) {
                ImageLoader imageLoader = ImageLoader.this;
                CacheImage cacheImage = this.cacheImage;
                imageLoader.fileDidLoaded(cacheImage.url, cacheImage.finalFilePath, 0);
            } else {
                ImageLoader.this.httpFileLoadError(this.cacheImage.url);
            }
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$4(bool);
                }
            });
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$5();
                }
            }, this.cacheImage.priority);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$4(final Boolean bool) {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$3(bool);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$3(Boolean bool) {
            if (bool.booleanValue()) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(this.cacheImage.currentAccount);
                int i = NotificationCenter.fileLoaded;
                CacheImage cacheImage = this.cacheImage;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i, cacheImage.url, cacheImage.finalFilePath);
                return;
            }
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$5() {
            ImageLoader.this.runHttpTasks(true);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$6() {
            ImageLoader.this.runHttpTasks(true);
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$6();
                }
            }, this.cacheImage.priority);
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$8();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$8() {
            ImageLoader.this.fileProgresses.remove(this.cacheImage.url);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$HttpImageTask$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$7();
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCancelled$7() {
            NotificationCenter.getInstance(this.cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    class ThumbGenerateTask implements Runnable {
        private ThumbGenerateInfo info;
        private int mediaType;
        private File originalPath;

        public ThumbGenerateTask(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
            this.mediaType = i;
            this.originalPath = file;
            this.info = thumbGenerateInfo;
        }

        private void removeTask() {
            ThumbGenerateInfo thumbGenerateInfo = this.info;
            if (thumbGenerateInfo == null) {
                return;
            }
            final String attachFileName = FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument);
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$removeTask$0(attachFileName);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$removeTask$0(String str) {
            ImageLoader.this.thumbGenerateTasks.remove(str);
        }

        @Override // java.lang.Runnable
        public void run() {
            int iMin;
            Bitmap bitmapCreateScaledBitmap;
            try {
                if (this.info == null) {
                    removeTask();
                    return;
                }
                final String str = "q_" + this.info.parentDocument.dc_id + "_" + this.info.parentDocument.f1668id;
                File file = new File(FileLoader.getDirectory(4), str + ".jpg");
                if (!file.exists() && this.originalPath.exists()) {
                    if (this.info.big) {
                        Point point = AndroidUtilities.displaySize;
                        iMin = Math.max(point.x, point.y);
                    } else {
                        Point point2 = AndroidUtilities.displaySize;
                        iMin = Math.min(180, Math.min(point2.x, point2.y) / 4);
                    }
                    int i = this.mediaType;
                    Bitmap bitmapLoadBitmap = null;
                    if (i == 0) {
                        float f = iMin;
                        bitmapLoadBitmap = ImageLoader.loadBitmap(this.originalPath.toString(), null, f, f, false);
                    } else {
                        int i2 = 2;
                        if (i == 2) {
                            String string = this.originalPath.toString();
                            if (!this.info.big) {
                                i2 = 1;
                            }
                            bitmapLoadBitmap = SendMessagesHelper.createVideoThumbnail(string, i2);
                        } else if (i == 3) {
                            String lowerCase = this.originalPath.toString().toLowerCase();
                            if (lowerCase.endsWith("mp4")) {
                                String string2 = this.originalPath.toString();
                                if (!this.info.big) {
                                    i2 = 1;
                                }
                                bitmapLoadBitmap = SendMessagesHelper.createVideoThumbnail(string2, i2);
                            } else if (lowerCase.endsWith(".jpg") || lowerCase.endsWith(".jpeg") || lowerCase.endsWith(".png") || lowerCase.endsWith(".gif")) {
                                float f2 = iMin;
                                bitmapLoadBitmap = ImageLoader.loadBitmap(lowerCase, null, f2, f2, false);
                            }
                        }
                    }
                    if (bitmapLoadBitmap == null) {
                        removeTask();
                        return;
                    }
                    int width = bitmapLoadBitmap.getWidth();
                    int height = bitmapLoadBitmap.getHeight();
                    if (width != 0 && height != 0) {
                        float f3 = width;
                        float f4 = iMin;
                        float f5 = height;
                        float fMin = Math.min(f3 / f4, f5 / f4);
                        if (fMin > 1.0f && (bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmapLoadBitmap, (int) (f3 / fMin), (int) (f5 / fMin), true)) != bitmapLoadBitmap) {
                            bitmapLoadBitmap.recycle();
                            bitmapLoadBitmap = bitmapCreateScaledBitmap;
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        bitmapLoadBitmap.compress(Bitmap.CompressFormat.JPEG, this.info.big ? 83 : 60, fileOutputStream);
                        try {
                            fileOutputStream.close();
                        } catch (Exception e) {
                            FileLog.m1136e(e);
                        }
                        final BitmapDrawable bitmapDrawable = new BitmapDrawable(bitmapLoadBitmap);
                        final ArrayList arrayList = new ArrayList(this.info.imageReceiverArray);
                        final ArrayList arrayList2 = new ArrayList(this.info.imageReceiverGuidsArray);
                        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ThumbGenerateTask$$ExternalSyntheticLambda0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f$0.lambda$run$1(str, arrayList, bitmapDrawable, arrayList2);
                            }
                        });
                        return;
                    }
                    removeTask();
                    return;
                }
                removeTask();
            } catch (Throwable th) {
                FileLog.m1136e(th);
                removeTask();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$run$1(String str, ArrayList arrayList, BitmapDrawable bitmapDrawable, ArrayList arrayList2) {
            removeTask();
            if (this.info.filter != null) {
                str = str + "@" + this.info.filter;
            }
            String str2 = str;
            for (int i = 0; i < arrayList.size(); i++) {
                ((ImageReceiver) arrayList.get(i)).setImageBitmapByKey(bitmapDrawable, str2, 0, false, ((Integer) arrayList2.get(i)).intValue());
            }
            if (str2.contains("nocache")) {
                return;
            }
            ImageLoader.this.memCache.put(str2, bitmapDrawable);
        }
    }

    public static String decompressGzip(File file) {
        BufferedReader bufferedReader;
        StringBuilder sb = new StringBuilder();
        if (file == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        try {
            GZIPInputStream gZIPInputStream = new GZIPInputStream(new FileInputStream(file));
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(gZIPInputStream, "UTF-8"));
            } finally {
            }
            while (true) {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line);
                    } else {
                        String string = sb.toString();
                        bufferedReader.close();
                        gZIPInputStream.close();
                        return string;
                    }
                } finally {
                }
            }
        } catch (Exception unused) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CacheOutTask implements Runnable {
        private CacheImage cacheImage;
        private boolean isCancelled;
        private Thread runningThread;
        private final Object sync = new Object();

        public CacheOutTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 22, insn: 0x06b9: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r22 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:421:0x06b9 */
        /* JADX WARN: Removed duplicated region for block: B:122:0x021b  */
        /* JADX WARN: Removed duplicated region for block: B:193:0x030d  */
        /* JADX WARN: Removed duplicated region for block: B:241:0x03c5  */
        /* JADX WARN: Removed duplicated region for block: B:286:0x047e  */
        /* JADX WARN: Removed duplicated region for block: B:368:0x05ce  */
        /* JADX WARN: Removed duplicated region for block: B:662:0x0aca A[Catch: all -> 0x0ac4, TryCatch #26 {all -> 0x0ac4, blocks: (B:642:0x0a94, B:643:0x0aa1, B:652:0x0aaf, B:655:0x0ab7, B:658:0x0abe, B:663:0x0acf, B:667:0x0ad7, B:669:0x0adf, B:673:0x0aff, B:676:0x0b0b, B:677:0x0b1b, B:681:0x0b30, B:688:0x0b51, B:690:0x0b55, B:683:0x0b38, B:662:0x0aca, B:848:0x0d6b, B:644:0x0aa2, B:646:0x0aa6, B:650:0x0aac), top: B:957:0x0a94, inners: #7 }] */
        /* JADX WARN: Removed duplicated region for block: B:679:0x0b2c  */
        /* JADX WARN: Removed duplicated region for block: B:699:0x0b81  */
        /* JADX WARN: Removed duplicated region for block: B:762:0x0c46  */
        /* JADX WARN: Removed duplicated region for block: B:764:0x0c4f  */
        /* JADX WARN: Removed duplicated region for block: B:771:0x0c67 A[Catch: all -> 0x0bba, TryCatch #17 {all -> 0x0bba, blocks: (B:716:0x0bb6, B:765:0x0c51, B:767:0x0c5b, B:769:0x0c61, B:771:0x0c67, B:773:0x0c6d, B:779:0x0c85, B:785:0x0c93, B:787:0x0c99, B:793:0x0cb6, B:788:0x0ca3, B:790:0x0ca9, B:796:0x0cbe, B:798:0x0ccb, B:800:0x0cd6, B:760:0x0c3f), top: B:942:0x0bb6 }] */
        /* JADX WARN: Removed duplicated region for block: B:791:0x0cb3  */
        /* JADX WARN: Removed duplicated region for block: B:793:0x0cb6 A[Catch: all -> 0x0bba, TryCatch #17 {all -> 0x0bba, blocks: (B:716:0x0bb6, B:765:0x0c51, B:767:0x0c5b, B:769:0x0c61, B:771:0x0c67, B:773:0x0c6d, B:779:0x0c85, B:785:0x0c93, B:787:0x0c99, B:793:0x0cb6, B:788:0x0ca3, B:790:0x0ca9, B:796:0x0cbe, B:798:0x0ccb, B:800:0x0cd6, B:760:0x0c3f), top: B:942:0x0bb6 }] */
        /* JADX WARN: Removed duplicated region for block: B:817:0x0d0a  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:820:0x0d17 A[PHI: r0 r3 r4
  0x0d17: PHI (r0v110 float) = (r0v109 float), (r0v117 float), (r0v109 float) binds: [B:812:0x0d00, B:819:0x0d13, B:816:0x0d08] A[DONT_GENERATE, DONT_INLINE]
  0x0d17: PHI (r3v45 ??) = (r3v171 ??), (r3v172 ??), (r3v173 ??) binds: [B:812:0x0d00, B:819:0x0d13, B:816:0x0d08] A[DONT_GENERATE, DONT_INLINE]
  0x0d17: PHI (r4v34 float) = (r4v33 float), (r4v38 float), (r4v33 float) binds: [B:812:0x0d00, B:819:0x0d13, B:816:0x0d08] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:837:0x0d54 A[PHI: r3
  0x0d54: PHI (r3v41 ??) = (r3v40 ??), (r3v44 ??) binds: [B:772:0x0c6b, B:794:0x0cba] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:852:0x0d77 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:855:0x0d85  */
        /* JADX WARN: Removed duplicated region for block: B:856:0x0d87  */
        /* JADX WARN: Removed duplicated region for block: B:859:0x0d9c  */
        /* JADX WARN: Removed duplicated region for block: B:865:0x0dbb  */
        /* JADX WARN: Removed duplicated region for block: B:868:0x0dc5  */
        /* JADX WARN: Removed duplicated region for block: B:872:0x0dd1 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:877:0x0dda  */
        /* JADX WARN: Removed duplicated region for block: B:878:0x0de0  */
        /* JADX WARN: Removed duplicated region for block: B:881:0x0de8  */
        /* JADX WARN: Removed duplicated region for block: B:882:0x0dee  */
        /* JADX WARN: Removed duplicated region for block: B:889:0x0e21  */
        /* JADX WARN: Removed duplicated region for block: B:917:0x0d58 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:957:0x0a94 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:984:0x02c3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:988:0x0870 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:997:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01b9  */
        /* JADX WARN: Type inference failed for: r10v11 */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v14 */
        /* JADX WARN: Type inference failed for: r10v18 */
        /* JADX WARN: Type inference failed for: r10v19 */
        /* JADX WARN: Type inference failed for: r10v20 */
        /* JADX WARN: Type inference failed for: r10v21 */
        /* JADX WARN: Type inference failed for: r10v24, types: [org.telegram.messenger.ImageLoader$CacheImage] */
        /* JADX WARN: Type inference failed for: r10v25 */
        /* JADX WARN: Type inference failed for: r10v26 */
        /* JADX WARN: Type inference failed for: r10v27 */
        /* JADX WARN: Type inference failed for: r10v29 */
        /* JADX WARN: Type inference failed for: r10v32, types: [int] */
        /* JADX WARN: Type inference failed for: r10v33 */
        /* JADX WARN: Type inference failed for: r10v35 */
        /* JADX WARN: Type inference failed for: r10v53 */
        /* JADX WARN: Type inference failed for: r10v54 */
        /* JADX WARN: Type inference failed for: r10v55 */
        /* JADX WARN: Type inference failed for: r10v56 */
        /* JADX WARN: Type inference failed for: r10v57 */
        /* JADX WARN: Type inference failed for: r11v16, types: [int] */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v18 */
        /* JADX WARN: Type inference failed for: r11v19 */
        /* JADX WARN: Type inference failed for: r11v20 */
        /* JADX WARN: Type inference failed for: r11v21 */
        /* JADX WARN: Type inference failed for: r11v22 */
        /* JADX WARN: Type inference failed for: r11v23 */
        /* JADX WARN: Type inference failed for: r11v26, types: [boolean] */
        /* JADX WARN: Type inference failed for: r11v27 */
        /* JADX WARN: Type inference failed for: r11v28 */
        /* JADX WARN: Type inference failed for: r11v29 */
        /* JADX WARN: Type inference failed for: r11v3 */
        /* JADX WARN: Type inference failed for: r11v32, types: [int] */
        /* JADX WARN: Type inference failed for: r11v33 */
        /* JADX WARN: Type inference failed for: r11v34 */
        /* JADX WARN: Type inference failed for: r11v69 */
        /* JADX WARN: Type inference failed for: r11v70 */
        /* JADX WARN: Type inference failed for: r11v71 */
        /* JADX WARN: Type inference failed for: r11v72 */
        /* JADX WARN: Type inference failed for: r11v73 */
        /* JADX WARN: Type inference failed for: r11v74 */
        /* JADX WARN: Type inference failed for: r13v13 */
        /* JADX WARN: Type inference failed for: r13v14 */
        /* JADX WARN: Type inference failed for: r13v15 */
        /* JADX WARN: Type inference failed for: r13v16 */
        /* JADX WARN: Type inference failed for: r13v17 */
        /* JADX WARN: Type inference failed for: r13v18 */
        /* JADX WARN: Type inference failed for: r13v19 */
        /* JADX WARN: Type inference failed for: r13v2 */
        /* JADX WARN: Type inference failed for: r13v20 */
        /* JADX WARN: Type inference failed for: r13v21 */
        /* JADX WARN: Type inference failed for: r13v22 */
        /* JADX WARN: Type inference failed for: r13v24 */
        /* JADX WARN: Type inference failed for: r13v25 */
        /* JADX WARN: Type inference failed for: r13v38 */
        /* JADX WARN: Type inference failed for: r13v39 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v40 */
        /* JADX WARN: Type inference failed for: r13v41 */
        /* JADX WARN: Type inference failed for: r13v42 */
        /* JADX WARN: Type inference failed for: r13v5 */
        /* JADX WARN: Type inference failed for: r17v1 */
        /* JADX WARN: Type inference failed for: r17v16 */
        /* JADX WARN: Type inference failed for: r17v17 */
        /* JADX WARN: Type inference failed for: r17v18 */
        /* JADX WARN: Type inference failed for: r17v19 */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v20 */
        /* JADX WARN: Type inference failed for: r17v3 */
        /* JADX WARN: Type inference failed for: r17v4 */
        /* JADX WARN: Type inference failed for: r17v5 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8 */
        /* JADX WARN: Type inference failed for: r17v9 */
        /* JADX WARN: Type inference failed for: r18v10 */
        /* JADX WARN: Type inference failed for: r18v11 */
        /* JADX WARN: Type inference failed for: r18v12 */
        /* JADX WARN: Type inference failed for: r18v13 */
        /* JADX WARN: Type inference failed for: r18v27 */
        /* JADX WARN: Type inference failed for: r18v28 */
        /* JADX WARN: Type inference failed for: r18v29 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r18v30 */
        /* JADX WARN: Type inference failed for: r18v31 */
        /* JADX WARN: Type inference failed for: r18v32 */
        /* JADX WARN: Type inference failed for: r18v4 */
        /* JADX WARN: Type inference failed for: r18v5 */
        /* JADX WARN: Type inference failed for: r18v6, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r18v7 */
        /* JADX WARN: Type inference failed for: r18v8 */
        /* JADX WARN: Type inference failed for: r18v9 */
        /* JADX WARN: Type inference failed for: r2v58 */
        /* JADX WARN: Type inference failed for: r2v89 */
        /* JADX WARN: Type inference failed for: r2v90 */
        /* JADX WARN: Type inference failed for: r37v17 */
        /* JADX WARN: Type inference failed for: r37v21 */
        /* JADX WARN: Type inference failed for: r37v35 */
        /* JADX WARN: Type inference failed for: r37v36 */
        /* JADX WARN: Type inference failed for: r37v37 */
        /* JADX WARN: Type inference failed for: r37v38 */
        /* JADX WARN: Type inference failed for: r37v39 */
        /* JADX WARN: Type inference failed for: r37v40 */
        /* JADX WARN: Type inference failed for: r37v5 */
        /* JADX WARN: Type inference failed for: r37v6 */
        /* JADX WARN: Type inference failed for: r38v1 */
        /* JADX WARN: Type inference failed for: r39v0, types: [org.telegram.messenger.ImageLoader$CacheOutTask] */
        /* JADX WARN: Type inference failed for: r3v158 */
        /* JADX WARN: Type inference failed for: r3v159 */
        /* JADX WARN: Type inference failed for: r3v160 */
        /* JADX WARN: Type inference failed for: r3v161 */
        /* JADX WARN: Type inference failed for: r3v162 */
        /* JADX WARN: Type inference failed for: r3v163 */
        /* JADX WARN: Type inference failed for: r3v164 */
        /* JADX WARN: Type inference failed for: r3v165 */
        /* JADX WARN: Type inference failed for: r3v166 */
        /* JADX WARN: Type inference failed for: r3v167 */
        /* JADX WARN: Type inference failed for: r3v168 */
        /* JADX WARN: Type inference failed for: r3v169 */
        /* JADX WARN: Type inference failed for: r3v170 */
        /* JADX WARN: Type inference failed for: r3v171 */
        /* JADX WARN: Type inference failed for: r3v172 */
        /* JADX WARN: Type inference failed for: r3v173 */
        /* JADX WARN: Type inference failed for: r3v174 */
        /* JADX WARN: Type inference failed for: r3v175 */
        /* JADX WARN: Type inference failed for: r3v176 */
        /* JADX WARN: Type inference failed for: r3v177 */
        /* JADX WARN: Type inference failed for: r3v178 */
        /* JADX WARN: Type inference failed for: r3v179 */
        /* JADX WARN: Type inference failed for: r3v180 */
        /* JADX WARN: Type inference failed for: r3v181 */
        /* JADX WARN: Type inference failed for: r3v182 */
        /* JADX WARN: Type inference failed for: r3v183 */
        /* JADX WARN: Type inference failed for: r3v22 */
        /* JADX WARN: Type inference failed for: r3v23 */
        /* JADX WARN: Type inference failed for: r3v24 */
        /* JADX WARN: Type inference failed for: r3v25, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v26, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v27, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v28 */
        /* JADX WARN: Type inference failed for: r3v29 */
        /* JADX WARN: Type inference failed for: r3v30 */
        /* JADX WARN: Type inference failed for: r3v31 */
        /* JADX WARN: Type inference failed for: r3v32, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v33, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v34, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v35, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v36 */
        /* JADX WARN: Type inference failed for: r3v37 */
        /* JADX WARN: Type inference failed for: r3v38 */
        /* JADX WARN: Type inference failed for: r3v39 */
        /* JADX WARN: Type inference failed for: r3v40, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v41 */
        /* JADX WARN: Type inference failed for: r3v42 */
        /* JADX WARN: Type inference failed for: r3v43, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v44, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v45 */
        /* JADX WARN: Type inference failed for: r3v46 */
        /* JADX WARN: Type inference failed for: r3v48 */
        /* JADX WARN: Type inference failed for: r3v50 */
        /* JADX WARN: Type inference failed for: r3v53 */
        /* JADX WARN: Type inference failed for: r3v54 */
        /* JADX WARN: Type inference failed for: r3v57, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v58 */
        /* JADX WARN: Type inference failed for: r3v59 */
        /* JADX WARN: Type inference failed for: r3v63, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v81 */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v12 */
        /* JADX WARN: Type inference failed for: r4v121 */
        /* JADX WARN: Type inference failed for: r4v122 */
        /* JADX WARN: Type inference failed for: r4v123 */
        /* JADX WARN: Type inference failed for: r4v124 */
        /* JADX WARN: Type inference failed for: r4v125 */
        /* JADX WARN: Type inference failed for: r4v13 */
        /* JADX WARN: Type inference failed for: r4v14, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v16, types: [android.graphics.Canvas] */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v19, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v20 */
        /* JADX WARN: Type inference failed for: r4v22, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v42 */
        /* JADX WARN: Type inference failed for: r5v43, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v50 */
        /* JADX WARN: Type inference failed for: r5v51 */
        /* JADX WARN: Type inference failed for: r5v75 */
        /* JADX WARN: Type inference failed for: r5v76, types: [java.io.RandomAccessFile] */
        /* JADX WARN: Type inference failed for: r5v77 */
        /* JADX WARN: Type inference failed for: r5v89 */
        /* JADX WARN: Type inference failed for: r5v90 */
        /* JADX WARN: Type inference failed for: r5v91 */
        /* JADX WARN: Type update failed for variable: r3v54 ??, new type: android.graphics.Bitmap
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 37151. Try increasing type updates limit count.
        	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
         */
        /* JADX WARN: Type update failed for variable: r3v54 ??, new type: android.graphics.Bitmap
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 37151. Try increasing type updates limit count.
        	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.ifListener(TypeUpdate.java:640)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
         */
        /* JADX WARN: Type update failed for variable: r3v54 ??, new type: android.graphics.Bitmap
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached with updateSeq = 37151. Try increasing type updates limit count.
        	at jadx.core.dex.visitors.typeinference.TypeUpdateInfo.requestUpdate(TypeUpdateInfo.java:37)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:224)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.ifListener(TypeUpdate.java:640)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.moveListener(TypeUpdate.java:454)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:480)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:197)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeChecked(TypeUpdate.java:119)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.allSameListener(TypeUpdate.java:473)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.runListeners(TypeUpdate.java:241)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.requestUpdate(TypeUpdate.java:225)
        	at jadx.core.dex.visitors.typeinference.TypeUpdate.updateTypeForSsaVar(TypeUpdate.java:202)
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() throws Throwable {
            ThemePreviewDrawable themePreviewDrawable;
            boolean z;
            boolean z2;
            SvgHelper.SvgResult svgBitmap;
            SvgHelper.SvgResult svgResult;
            Bitmap bitmapApplyWallpaperSetting;
            byte[] bArr;
            SecureDocumentKey secureDocumentKey;
            boolean z3;
            boolean z4;
            String str;
            Long lValueOf;
            boolean z5;
            ?? r13;
            boolean z6;
            String str2;
            float f;
            float f2;
            float f3;
            float f4;
            boolean z7;
            Bitmap bitmap;
            char c;
            boolean z8;
            boolean z9;
            Bitmap bitmap2;
            boolean zContains;
            ?? r37;
            boolean z10;
            char c2;
            Bitmap bitmap3;
            ?? r372;
            boolean z11;
            ?? r4;
            ?? DecodeByteArray;
            boolean z12;
            int i;
            ?? r11;
            boolean z13;
            int i2;
            ?? r42;
            FileInputStream fileInputStream;
            ?? ApplyWallpaperSetting;
            File file;
            CacheImage cacheImage;
            String str3;
            Object obj;
            ?? r112;
            ?? r10;
            boolean z14;
            ?? r3;
            File file2;
            ?? IntValue;
            ?? IntValue2;
            ?? r17;
            boolean z15;
            ?? r32;
            boolean z16;
            ?? r18;
            ?? CreateScaledBitmap;
            boolean z17;
            int i3;
            FileInputStream fileInputStream2;
            ?? r132;
            ?? r172;
            Rect rect;
            ?? r173;
            String str4;
            String str5;
            Bitmap bitmap4;
            boolean z18;
            FileInputStream fileInputStream3;
            Bitmap bitmapDecodeStream;
            int i4;
            boolean z19;
            boolean z20;
            boolean z21;
            char c3;
            char c4;
            boolean z22;
            ?? r373;
            boolean z23;
            char c5;
            boolean z24;
            boolean z25;
            boolean z26;
            char c6;
            FileInputStream fileInputStream4;
            boolean z27;
            boolean z28;
            float fMin;
            int i5;
            boolean z29;
            boolean z30;
            boolean z31;
            Long lValueOf2;
            String strSubstring;
            byte[] bArr2;
            boolean z32;
            boolean z33;
            boolean z34;
            boolean z35;
            boolean z36;
            Bitmap frameAtTime;
            BitmapsCache.CacheOptions cacheOptions;
            boolean z37;
            AnimatedFileDrawable animatedFileDrawable;
            int i6;
            int i7;
            String str6;
            int i8;
            int i9;
            int i10;
            boolean z38;
            boolean z39;
            boolean z40;
            boolean zContains2;
            boolean z41;
            int i11;
            String str7;
            ?? r2;
            Throwable th;
            ?? r5;
            RandomAccessFile randomAccessFile;
            boolean z42;
            BitmapsCache.CacheOptions cacheOptions2;
            RLottieDrawable rLottieDrawable;
            RLottieDrawable rLottieDrawable2;
            byte[] bArr3;
            int i12;
            boolean z43;
            boolean z44;
            boolean zContains3;
            int i13;
            int i14;
            String str8;
            int i15;
            int i16;
            int i17;
            int i18;
            synchronized (this.sync) {
                try {
                    this.runningThread = Thread.currentThread();
                    Thread.interrupted();
                    if (this.isCancelled) {
                        return;
                    }
                    CacheImage cacheImage2 = this.cacheImage;
                    ImageLocation imageLocation = cacheImage2.imageLocation;
                    TLRPC.PhotoSize photoSize = imageLocation.photoSize;
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        Bitmap strippedPhotoBitmap = ImageLoader.getStrippedPhotoBitmap(((TLRPC.TL_photoStrippedSize) photoSize).bytes, "b");
                        onPostExecute(strippedPhotoBitmap != null ? new BitmapDrawable(strippedPhotoBitmap) : null);
                        return;
                    }
                    int i19 = cacheImage2.imageType;
                    if (i19 == 5) {
                        try {
                            CacheImage cacheImage3 = this.cacheImage;
                            themePreviewDrawable = new ThemePreviewDrawable(cacheImage3.finalFilePath, (DocumentObject.ThemeDocument) cacheImage3.imageLocation.document);
                        } catch (Throwable th2) {
                            FileLog.m1136e(th2);
                            themePreviewDrawable = null;
                        }
                        onPostExecute(themePreviewDrawable);
                        return;
                    }
                    boolean z45 = true;
                    boolean z46 = false;
                    if (i19 == 3 || i19 == 4) {
                        Point point = AndroidUtilities.displaySize;
                        int i20 = point.x;
                        int i21 = point.y;
                        String str9 = cacheImage2.filter;
                        if (str9 != null) {
                            String[] strArrSplit = str9.split("_");
                            if (strArrSplit.length >= 2) {
                                z = false;
                                float f5 = Float.parseFloat(strArrSplit[0]);
                                z2 = true;
                                float f6 = Float.parseFloat(strArrSplit[1]);
                                float f7 = AndroidUtilities.density;
                                int i22 = (int) (f6 * f7);
                                i20 = (int) (f5 * f7);
                                i21 = i22;
                            } else {
                                z = false;
                                z2 = true;
                            }
                        }
                        try {
                            CacheImage cacheImage4 = this.cacheImage;
                            svgBitmap = SvgHelper.getSvgBitmap(cacheImage4.finalFilePath, i20, i21, cacheImage4.imageType == 4 ? z2 : z);
                            try {
                                bitmapApplyWallpaperSetting = svgBitmap.getBitmap();
                                svgResult = svgBitmap;
                            } catch (Throwable th3) {
                                th = th3;
                                FileLog.m1136e(th);
                                svgResult = svgBitmap;
                                bitmapApplyWallpaperSetting = null;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            svgBitmap = null;
                        }
                        if (bitmapApplyWallpaperSetting != null && !TextUtils.isEmpty(this.cacheImage.filter) && this.cacheImage.filter.contains("wallpaper")) {
                            Object obj2 = this.cacheImage.parentObject;
                            if (obj2 instanceof TLRPC.WallPaper) {
                                bitmapApplyWallpaperSetting = applyWallpaperSetting(bitmapApplyWallpaperSetting, (TLRPC.WallPaper) obj2);
                            }
                        }
                        onPostExecute(WallpaperGiftBitmapDrawable.create(bitmapApplyWallpaperSetting, svgResult != null ? svgResult.getGiftPatternPositions() : null));
                        return;
                    }
                    if (i19 == 1) {
                        int iMin = Math.min(512, AndroidUtilities.m1124dp(170.6f));
                        int iMin2 = Math.min(512, AndroidUtilities.m1124dp(170.6f));
                        String str10 = this.cacheImage.filter;
                        if (str10 != null) {
                            String[] strArrSplit2 = str10.split("_");
                            if (strArrSplit2.length >= 2) {
                                float f8 = Float.parseFloat(strArrSplit2[0]);
                                float f9 = Float.parseFloat(strArrSplit2[1]);
                                int iMin3 = Math.min(512, (int) (AndroidUtilities.density * f8));
                                int iMin4 = Math.min(512, (int) (AndroidUtilities.density * f9));
                                if (f8 > 90.0f || f9 > 90.0f || this.cacheImage.filter.contains("nolimit")) {
                                    iMin2 = iMin4;
                                    z43 = false;
                                    i18 = iMin3;
                                } else {
                                    int iMin5 = Math.min(iMin3, 160);
                                    iMin2 = Math.min(iMin4, 160);
                                    z43 = true;
                                    i18 = iMin5;
                                }
                                z40 = (strArrSplit2.length >= 3 && "pcache".equals(strArrSplit2[2])) || this.cacheImage.filter.contains("pcache") || !(this.cacheImage.filter.contains("nolimit") || SharedConfig.getDevicePerformanceClass() == 2);
                                zContains2 = this.cacheImage.filter.contains("lastframe");
                                i12 = 4;
                                zContains3 = this.cacheImage.filter.contains("lastreactframe");
                                if (zContains3) {
                                    zContains2 = true;
                                }
                                if (this.cacheImage.filter.contains("firstframe")) {
                                    z44 = true;
                                    i13 = i18;
                                } else {
                                    z44 = false;
                                    i13 = i18;
                                }
                            } else {
                                i12 = 4;
                                z43 = false;
                                z44 = false;
                                zContains3 = false;
                                z40 = false;
                                zContains2 = false;
                                i13 = iMin;
                            }
                            if (strArrSplit2.length >= 3) {
                                i14 = 3;
                                if ("nr".equals(strArrSplit2[2])) {
                                    i10 = 2;
                                } else if ("nrs".equals(strArrSplit2[2])) {
                                    i10 = 3;
                                } else if ("dice".equals(strArrSplit2[2])) {
                                    str8 = strArrSplit2[3];
                                    i10 = 2;
                                    if (strArrSplit2.length < 5) {
                                        i15 = i13;
                                        z41 = z43;
                                        i11 = 0;
                                        i8 = iMin2;
                                        i16 = i15;
                                        str7 = str8;
                                        z39 = zContains3;
                                        r2 = i13;
                                        i9 = i16;
                                        z38 = z44;
                                    } else {
                                        if (!"c1".equals(strArrSplit2[i12])) {
                                            if ("c2".equals(strArrSplit2[i12])) {
                                                i15 = i13;
                                                z41 = z43;
                                                i11 = i14;
                                            } else if ("c3".equals(strArrSplit2[i12])) {
                                                i15 = i13;
                                                z41 = z43;
                                                i11 = i12;
                                            } else if ("c4".equals(strArrSplit2[i12])) {
                                                i15 = i13;
                                                z41 = z43;
                                                i11 = 5;
                                            } else {
                                                i17 = "c5".equals(strArrSplit2[i12]) ? 6 : 12;
                                                i15 = i13;
                                                z41 = z43;
                                                i11 = 0;
                                            }
                                            i8 = iMin2;
                                            i16 = i15;
                                            str7 = str8;
                                            z39 = zContains3;
                                            r2 = i13;
                                            i9 = i16;
                                            z38 = z44;
                                        }
                                        z41 = z43;
                                        i11 = i17;
                                        i8 = iMin2;
                                        i16 = i13;
                                        str7 = str8;
                                        z39 = zContains3;
                                        r2 = i13;
                                        i9 = i16;
                                        z38 = z44;
                                    }
                                }
                                str8 = null;
                                if (strArrSplit2.length < 5) {
                                }
                            } else {
                                i14 = 3;
                            }
                            i10 = 1;
                            str8 = null;
                            if (strArrSplit2.length < 5) {
                            }
                        } else {
                            i8 = iMin2;
                            i9 = iMin;
                            i10 = 1;
                            z38 = false;
                            z39 = false;
                            z40 = false;
                            zContains2 = false;
                            z41 = false;
                            i11 = 0;
                            str7 = null;
                            r2 = iMin;
                        }
                        if (str7 != null) {
                            if ("🎰".equals(str7)) {
                                rLottieDrawable2 = new SlotsDrawable(str7, i9, i8);
                            } else {
                                rLottieDrawable2 = new RLottieDrawable(str7, i9, i8);
                            }
                        } else {
                            File file3 = this.cacheImage.finalFilePath;
                            try {
                                try {
                                    randomAccessFile = new RandomAccessFile(this.cacheImage.finalFilePath, "r");
                                    try {
                                        if (this.cacheImage.type == 1) {
                                            bArr3 = ImageLoader.headerThumb;
                                        } else {
                                            bArr3 = ImageLoader.header;
                                        }
                                        randomAccessFile.readFully(bArr3, 0, 2);
                                    } catch (Exception e) {
                                        e = e;
                                        FileLog.m1136e(e);
                                        if (randomAccessFile != null) {
                                            try {
                                                randomAccessFile.close();
                                            } catch (Exception e2) {
                                                FileLog.m1136e(e2);
                                            }
                                        }
                                        z42 = false;
                                    }
                                } catch (Throwable th5) {
                                    r5 = r2;
                                    th = th5;
                                    if (r5 == 0) {
                                        try {
                                            r5.close();
                                            throw th;
                                        } catch (Exception e3) {
                                            FileLog.m1136e(e3);
                                            throw th;
                                        }
                                    }
                                    throw th;
                                }
                            } catch (Exception e4) {
                                e = e4;
                                randomAccessFile = null;
                            } catch (Throwable th6) {
                                th = th6;
                                r5 = 0;
                                if (r5 == 0) {
                                }
                            }
                            if (bArr3[0] == 31) {
                                boolean z47 = bArr3[1] == -117;
                                try {
                                    randomAccessFile.close();
                                    z42 = z47;
                                } catch (Exception e5) {
                                    FileLog.m1136e(e5);
                                    z42 = z47;
                                }
                                if (!zContains2 && !z38) {
                                    z46 = z40;
                                }
                                if (z46 || zContains2 || z38) {
                                    BitmapsCache.CacheOptions cacheOptions3 = new BitmapsCache.CacheOptions();
                                    if (!zContains2 && !z38) {
                                        String str11 = this.cacheImage.filter;
                                        if (str11 != null && str11.contains("compress")) {
                                            cacheOptions3.compressQuality = 60;
                                        }
                                        String str12 = this.cacheImage.filter;
                                        if (str12 != null && str12.contains("flbk")) {
                                            cacheOptions3.fallback = true;
                                        }
                                    } else {
                                        cacheOptions3.firstFrame = true;
                                    }
                                    cacheOptions2 = cacheOptions3;
                                } else {
                                    cacheOptions2 = null;
                                }
                                if (z42) {
                                    File file4 = this.cacheImage.finalFilePath;
                                    rLottieDrawable = new RLottieDrawable(file4, ImageLoader.decompressGzip(file4), i9 == true ? 1 : 0, i8, cacheOptions2, z41, null, i11);
                                } else {
                                    rLottieDrawable = new RLottieDrawable(this.cacheImage.finalFilePath, i9 == true ? 1 : 0, i8, cacheOptions2, z41, null, i11);
                                }
                                rLottieDrawable2 = rLottieDrawable;
                            }
                        }
                        if (zContains2 || z38) {
                            loadLastFrame(rLottieDrawable2, i8, i9, zContains2, z39);
                            return;
                        } else {
                            rLottieDrawable2.setAutoRepeat(i10);
                            onPostExecute(rLottieDrawable2);
                            return;
                        }
                    }
                    if (i19 == 2) {
                        long j = imageLocation != null ? imageLocation.videoSeekTo : 0L;
                        String str13 = cacheImage2.filter;
                        if (str13 != null) {
                            String[] strArrSplit3 = str13.split("_");
                            if (strArrSplit3.length >= 2) {
                                z32 = Float.parseFloat(strArrSplit3[0]) <= 90.0f && Float.parseFloat(strArrSplit3[1]) <= 90.0f && !this.cacheImage.filter.contains("nolimit");
                                int i23 = 0;
                                boolean z48 = false;
                                boolean z49 = false;
                                boolean z50 = false;
                                boolean z51 = false;
                                while (i23 < strArrSplit3.length) {
                                    boolean z52 = z49;
                                    if ("pcache".equals(strArrSplit3[i23])) {
                                        z52 = true;
                                    }
                                    if ("firstframe".equals(strArrSplit3[i23])) {
                                        z48 = true;
                                    }
                                    boolean z53 = z51;
                                    if ("nostream".equals(strArrSplit3[i23])) {
                                        z53 = true;
                                    }
                                    if ("pframe".equals(strArrSplit3[i23])) {
                                        z50 = true;
                                    }
                                    i23++;
                                    z49 = z52;
                                    z50 = z50;
                                    z51 = z53;
                                }
                                z36 = z48;
                                z33 = z49;
                                z34 = z50;
                                z35 = z51;
                                if (z48) {
                                    z35 = true;
                                    z33 = z49;
                                    z34 = z50;
                                }
                            }
                        } else {
                            z32 = false;
                            z33 = false;
                            z34 = false;
                            z35 = false;
                            z36 = false;
                        }
                        if (z34) {
                            try {
                                MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                                mediaMetadataRetriever.setDataSource(this.cacheImage.finalFilePath.getAbsolutePath());
                                frameAtTime = mediaMetadataRetriever.getFrameAtTime(2L);
                                try {
                                    mediaMetadataRetriever.release();
                                } catch (Exception e6) {
                                    e = e6;
                                    e.printStackTrace();
                                }
                            } catch (Exception e7) {
                                e = e7;
                                frameAtTime = null;
                            }
                            Thread.interrupted();
                            if (frameAtTime == null) {
                                onPostExecute(null);
                                return;
                            } else {
                                onPostExecute(new BitmapDrawable(frameAtTime));
                                return;
                            }
                        }
                        if (!z33 || z36) {
                            cacheOptions = null;
                        } else {
                            BitmapsCache.CacheOptions cacheOptions4 = new BitmapsCache.CacheOptions();
                            String str14 = this.cacheImage.filter;
                            if (str14 != null && str14.contains("compress")) {
                                cacheOptions4.compressQuality = 60;
                            }
                            cacheOptions = cacheOptions4;
                        }
                        if (ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter) || ImageLoader.AUTOPLAY_FILTER.equals(this.cacheImage.filter)) {
                            TLRPC.Document document = this.cacheImage.imageLocation.document;
                            if (!(document instanceof TLRPC.TL_documentEncrypted) && !z33) {
                                TLRPC.Document document2 = OnBackPressedDispatcher$$ExternalSyntheticNonNull0.m1m(document) ? this.cacheImage.imageLocation.document : null;
                                CacheImage cacheImage5 = this.cacheImage;
                                long j2 = document2 != null ? cacheImage5.size : cacheImage5.imageLocation.currentSize;
                                int i24 = document2 != null ? 1 : 0;
                                int i25 = this.cacheImage.cacheType;
                                int i26 = i25 > 1 ? i25 : i24;
                                CacheImage cacheImage6 = this.cacheImage;
                                AnimatedFileDrawable animatedFileDrawable2 = new AnimatedFileDrawable(cacheImage6.finalFilePath, z36, z35 ? 0L : j2, cacheImage6.priority, z35 ? null : document2, (document2 != null || z35) ? null : cacheImage6.imageLocation, cacheImage6.parentObject, j, cacheImage6.currentAccount, false, 0, 0, cacheOptions, i26);
                                z37 = z36;
                                if (!MessageObject.isWebM(document2) && !MessageObject.isVideoSticker(document2) && !ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                    z45 = false;
                                }
                                animatedFileDrawable2.setIsWebmSticker(z45);
                                animatedFileDrawable = animatedFileDrawable2;
                            } else {
                                z37 = z36;
                                String str15 = this.cacheImage.filter;
                                if (str15 != null) {
                                    String[] strArrSplit4 = str15.split("_");
                                    if (strArrSplit4.length >= 2) {
                                        float f10 = Float.parseFloat(strArrSplit4[0]);
                                        float f11 = Float.parseFloat(strArrSplit4[1]);
                                        float f12 = AndroidUtilities.density;
                                        i7 = (int) (f11 * f12);
                                        i6 = (int) (f10 * f12);
                                    } else {
                                        i6 = 0;
                                        i7 = 0;
                                    }
                                    boolean z54 = z37 || ((str6 = this.cacheImage.filter) != null && ("d".equals(str6) || this.cacheImage.filter.contains("_d")));
                                    int i27 = (z35 ? null : this.cacheImage.imageLocation.document) != null ? 1 : 0;
                                    int i28 = this.cacheImage.cacheType;
                                    int i29 = i28 > 1 ? i28 : i27;
                                    CacheImage cacheImage7 = this.cacheImage;
                                    animatedFileDrawable = new AnimatedFileDrawable(cacheImage7.finalFilePath, z54, 0L, cacheImage7.priority, z35 ? null : cacheImage7.imageLocation.document, null, null, j, cacheImage7.currentAccount, false, i6, i7, cacheOptions, i29);
                                    if (!MessageObject.isWebM(this.cacheImage.imageLocation.document) && !MessageObject.isVideoSticker(this.cacheImage.imageLocation.document) && !ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                        z45 = false;
                                    }
                                    animatedFileDrawable.setIsWebmSticker(z45);
                                }
                            }
                        }
                        if (z37) {
                            Bitmap frameAtTime2 = animatedFileDrawable.getFrameAtTime(0L, false);
                            animatedFileDrawable.recycle();
                            Thread.interrupted();
                            if (frameAtTime2 == null) {
                                onPostExecute(null);
                                return;
                            } else {
                                onPostExecute(new BitmapDrawable(frameAtTime2));
                                return;
                            }
                        }
                        animatedFileDrawable.setLimitFps(z32);
                        Thread.interrupted();
                        onPostExecute(animatedFileDrawable);
                        return;
                    }
                    File file5 = cacheImage2.finalFilePath;
                    boolean z55 = (cacheImage2.secureDocument == null && (cacheImage2.encryptionKeyPath == null || file5 == null || !file5.getAbsolutePath().endsWith(".enc"))) ? false : true;
                    CacheImage cacheImage8 = this.cacheImage;
                    SecureDocument secureDocument = cacheImage8.secureDocument;
                    if (secureDocument != null) {
                        secureDocumentKey = secureDocument.secureDocumentKey;
                        TLRPC.TL_secureFile tL_secureFile = secureDocument.secureFile;
                        bArr = (tL_secureFile == null || (bArr2 = tL_secureFile.file_hash) == null) ? secureDocument.fileHash : bArr2;
                    } else {
                        bArr = null;
                        secureDocumentKey = null;
                    }
                    String str16 = cacheImage8.imageLocation.path;
                    if (str16 == null) {
                        z3 = true;
                        z4 = false;
                        str = null;
                        lValueOf = null;
                        r13 = z4;
                        z5 = z3;
                    } else if (str16.startsWith("thumb://")) {
                        int iIndexOf = str16.indexOf(":", 8);
                        if (iIndexOf >= 0) {
                            lValueOf = Long.valueOf(Long.parseLong(str16.substring(8, iIndexOf)));
                            strSubstring = str16.substring(iIndexOf + 1);
                        } else {
                            strSubstring = null;
                            lValueOf = null;
                        }
                        str = strSubstring;
                        r13 = 0;
                        z5 = false;
                    } else if (str16.startsWith("vthumb://")) {
                        int iIndexOf2 = str16.indexOf(":", 9);
                        if (iIndexOf2 >= 0) {
                            lValueOf2 = Long.valueOf(Long.parseLong(str16.substring(9, iIndexOf2)));
                            z31 = true;
                        } else {
                            z31 = false;
                            lValueOf2 = null;
                        }
                        lValueOf = lValueOf2;
                        z5 = false;
                        r13 = z31;
                        str = null;
                    } else {
                        if (!str16.startsWith("http")) {
                            z4 = false;
                            z3 = false;
                        }
                        str = null;
                        lValueOf = null;
                        r13 = z4;
                        z5 = z3;
                    }
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inSampleSize = 1;
                    boolean z56 = ImageLoader.this.canForce8888;
                    try {
                        str5 = this.cacheImage.filter;
                    } catch (Throwable th7) {
                        th = th7;
                        z6 = z55;
                        str2 = str;
                        f = 1.2f;
                        f2 = 0.0f;
                    }
                    if (str5 != null) {
                        f2 = 0.0f;
                        try {
                            String[] strArrSplit5 = str5.split("_");
                            if (strArrSplit5.length >= 2) {
                                try {
                                    f3 = Float.parseFloat(strArrSplit5[0]) * AndroidUtilities.density;
                                    try {
                                        f4 = Float.parseFloat(strArrSplit5[1]) * AndroidUtilities.density;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        z21 = z55;
                                        c3 = 0;
                                        zContains = false;
                                        str2 = str;
                                        f4 = 0.0f;
                                        bitmap3 = null;
                                        f = 1.2f;
                                        c2 = c3;
                                        z10 = z56;
                                        r37 = z21;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    z21 = z55;
                                    c3 = 0;
                                    zContains = false;
                                    str2 = str;
                                    f3 = 0.0f;
                                    f4 = 0.0f;
                                }
                            } else {
                                f3 = 0.0f;
                                f4 = 0.0f;
                            }
                            try {
                                f = 1.2f;
                                try {
                                    if (this.cacheImage.filter.contains("b2r")) {
                                        c4 = 4;
                                    } else if (this.cacheImage.filter.contains("b2")) {
                                        c4 = 3;
                                    } else if (this.cacheImage.filter.contains("b1")) {
                                        c4 = 2;
                                    } else {
                                        c4 = this.cacheImage.filter.contains("b") ? (char) 1 : (char) 0;
                                    }
                                    try {
                                        zContains = this.cacheImage.filter.contains("i");
                                        try {
                                            String str17 = "f";
                                            if (this.cacheImage.filter.contains("f")) {
                                                z56 = true;
                                            } else {
                                                str17 = "F";
                                                z56 = z56;
                                                if (this.cacheImage.filter.contains("F")) {
                                                    z56 = false;
                                                }
                                            }
                                            if (f3 == 0.0f || f4 == 0.0f) {
                                                z25 = z55;
                                                z26 = c4 == true ? 1 : 0;
                                                str2 = str;
                                            } else {
                                                options.inJustDecodeBounds = true;
                                                try {
                                                    try {
                                                        if (lValueOf == null || str != null) {
                                                            boolean z57 = z55;
                                                            boolean z58 = c4 == true ? 1 : 0;
                                                            if (secureDocumentKey != null) {
                                                                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file5, "r");
                                                                int length = (int) randomAccessFile2.length();
                                                                byte[] bArr4 = (byte[]) ImageLoader.bytesLocal.get();
                                                                if (bArr4 == null || bArr4.length < length) {
                                                                    bArr4 = null;
                                                                }
                                                                if (bArr4 == null) {
                                                                    bArr4 = new byte[length];
                                                                    ImageLoader.bytesLocal.set(bArr4);
                                                                }
                                                                randomAccessFile2.readFully(bArr4, 0, length);
                                                                randomAccessFile2.close();
                                                                EncryptedFileInputStream.decryptBytesWithKeyFile(bArr4, 0, length, secureDocumentKey);
                                                                boolean z59 = z57;
                                                                str2 = str;
                                                                boolean z60 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr4, 0, (long) length), bArr);
                                                                int i30 = bArr4[0] & 255;
                                                                int i31 = length - i30;
                                                                z28 = z58;
                                                                z27 = z59;
                                                                if (!z60) {
                                                                    BitmapFactory.decodeByteArray(bArr4, i30, i31, options);
                                                                    z28 = z58;
                                                                    z27 = z59;
                                                                }
                                                            } else {
                                                                boolean z61 = z57;
                                                                str2 = str;
                                                                if (z61) {
                                                                    fileInputStream4 = new EncryptedFileInputStream(file5, this.cacheImage.encryptionKeyPath);
                                                                } else {
                                                                    fileInputStream4 = new FileInputStream(file5);
                                                                }
                                                                BitmapFactory.decodeStream(fileInputStream4, null, options);
                                                                fileInputStream4.close();
                                                                z28 = z58;
                                                                z27 = z61;
                                                            }
                                                        } else {
                                                            if (r13 != 0) {
                                                                try {
                                                                    ContentResolver contentResolver = ApplicationLoader.applicationContext.getContentResolver();
                                                                    z29 = z55;
                                                                    z30 = c4 == true ? 1 : 0;
                                                                    MediaStore.Video.Thumbnails.getThumbnail(contentResolver, lValueOf.longValue(), 1, options);
                                                                } catch (Throwable th10) {
                                                                    th = th10;
                                                                    boolean z62 = c4 == true ? 1 : 0;
                                                                    z22 = z55;
                                                                    z24 = z56;
                                                                    str2 = str;
                                                                    c5 = c4;
                                                                    z23 = z24;
                                                                    r373 = z22;
                                                                    bitmap3 = null;
                                                                    c2 = c5;
                                                                    z10 = z23;
                                                                    r37 = r373;
                                                                    FileLog.m1136e(th);
                                                                    DecodeByteArray = bitmap3;
                                                                    r4 = c2;
                                                                    z11 = z10;
                                                                    r372 = r37;
                                                                }
                                                            } else {
                                                                z29 = z55;
                                                                z30 = c4 == true ? 1 : 0;
                                                                MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                            }
                                                            z27 = z29;
                                                            str2 = str;
                                                            z28 = z30;
                                                        }
                                                        float f13 = options.outWidth;
                                                        float f14 = options.outHeight;
                                                        if (f3 >= f4 && f13 > f14) {
                                                            fMin = Math.max(f13 / f3, f14 / f4);
                                                        } else {
                                                            fMin = Math.min(f13 / f3, f14 / f4);
                                                        }
                                                        if (fMin < 1.2f) {
                                                            fMin = 1.0f;
                                                        }
                                                        options.inJustDecodeBounds = false;
                                                        if (fMin > 1.0f && (f13 > f3 || f14 > f4)) {
                                                            int i32 = 1;
                                                            while (true) {
                                                                i5 = i32 * 2;
                                                                if (i32 * 4 >= fMin) {
                                                                    break;
                                                                } else {
                                                                    i32 = i5;
                                                                }
                                                            }
                                                            options.inSampleSize = i5;
                                                            z26 = z28;
                                                            z25 = z27;
                                                        } else {
                                                            options.inSampleSize = (int) fMin;
                                                            z26 = z28;
                                                            z25 = z27;
                                                        }
                                                    } catch (Throwable th11) {
                                                        th = th11;
                                                        c5 = c6;
                                                        z23 = z56;
                                                        bitmap3 = null;
                                                        c2 = c5;
                                                        z10 = z23;
                                                        r37 = r373;
                                                        FileLog.m1136e(th);
                                                        DecodeByteArray = bitmap3;
                                                        r4 = c2;
                                                        z11 = z10;
                                                        r372 = r37;
                                                        float f15 = f4;
                                                        if (this.cacheImage.type != 1) {
                                                        }
                                                        Thread.interrupted();
                                                        if (BuildVars.LOGS_ENABLED) {
                                                        }
                                                        if (ApplyWallpaperSetting != 0) {
                                                        }
                                                        cacheImage = this.cacheImage;
                                                        if (cacheImage == null) {
                                                        }
                                                        onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                    }
                                                } catch (Throwable th12) {
                                                    th = th12;
                                                    r373 = str17;
                                                    str2 = str;
                                                    c5 = c6;
                                                    z23 = z56;
                                                    bitmap3 = null;
                                                    c2 = c5;
                                                    z10 = z23;
                                                    r37 = r373;
                                                    FileLog.m1136e(th);
                                                    DecodeByteArray = bitmap3;
                                                    r4 = c2;
                                                    z11 = z10;
                                                    r372 = r37;
                                                    float f152 = f4;
                                                    if (this.cacheImage.type != 1) {
                                                    }
                                                    Thread.interrupted();
                                                    if (BuildVars.LOGS_ENABLED) {
                                                    }
                                                    if (ApplyWallpaperSetting != 0) {
                                                    }
                                                    cacheImage = this.cacheImage;
                                                    if (cacheImage == null) {
                                                    }
                                                    onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                }
                                            }
                                            z18 = z26;
                                            bitmap4 = null;
                                            z20 = z56;
                                            z19 = z25;
                                            DecodeByteArray = bitmap4;
                                            r4 = z18;
                                            z11 = z20;
                                            r372 = z19;
                                        } catch (Throwable th13) {
                                            th = th13;
                                            z22 = z55;
                                            boolean z63 = c4 == true ? 1 : 0;
                                            z24 = z56;
                                        }
                                    } catch (Throwable th14) {
                                        th = th14;
                                        z9 = z55;
                                        boolean z64 = c4 == true ? 1 : 0;
                                        str2 = str;
                                        bitmap2 = null;
                                        c = c4;
                                        zContains = false;
                                        bitmap3 = bitmap2;
                                        c2 = c;
                                        z10 = z56;
                                        r37 = z9;
                                    }
                                } catch (Throwable th15) {
                                    th = th15;
                                    z8 = z55;
                                    str2 = str;
                                    bitmap = null;
                                    z7 = z8;
                                    c = 0;
                                    bitmap2 = bitmap;
                                    z9 = z7;
                                }
                            } catch (Throwable th16) {
                                th = th16;
                                z8 = z55;
                                str2 = str;
                                f = 1.2f;
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            z6 = z55;
                            str2 = str;
                            f = 1.2f;
                            f3 = f2;
                            f4 = f3;
                            z8 = z6;
                            bitmap = null;
                            z7 = z8;
                            c = 0;
                            bitmap2 = bitmap;
                            z9 = z7;
                            zContains = false;
                            bitmap3 = bitmap2;
                            c2 = c;
                            z10 = z56;
                            r37 = z9;
                            FileLog.m1136e(th);
                            DecodeByteArray = bitmap3;
                            r4 = c2;
                            z11 = z10;
                            r372 = r37;
                            float f1522 = f4;
                            if (this.cacheImage.type != 1) {
                            }
                            Thread.interrupted();
                            if (BuildVars.LOGS_ENABLED) {
                            }
                            if (ApplyWallpaperSetting != 0) {
                            }
                            cacheImage = this.cacheImage;
                            if (cacheImage == null) {
                            }
                            onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                        }
                        float f15222 = f4;
                        if (this.cacheImage.type != 1) {
                            try {
                                ImageLoader.this.lastCacheOutTime = SystemClock.elapsedRealtime();
                            } catch (Throwable th18) {
                                th = th18;
                                z12 = false;
                            }
                            synchronized (this.sync) {
                                try {
                                    if (this.isCancelled) {
                                        return;
                                    }
                                    if (options.inPurgeable || secureDocumentKey != null) {
                                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(file5, "r");
                                        int length2 = (int) randomAccessFile3.length();
                                        byte[] bArr5 = (byte[]) ImageLoader.bytesThumbLocal.get();
                                        if (bArr5 == null || bArr5.length < length2) {
                                            bArr5 = null;
                                        }
                                        if (bArr5 == null) {
                                            bArr5 = new byte[length2];
                                            ImageLoader.bytesThumbLocal.set(bArr5);
                                        }
                                        randomAccessFile3.readFully(bArr5, 0, length2);
                                        randomAccessFile3.close();
                                        if (secureDocumentKey != null) {
                                            EncryptedFileInputStream.decryptBytesWithKeyFile(bArr5, 0, length2, secureDocumentKey);
                                            z13 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr5, 0, (long) length2), bArr);
                                            i2 = bArr5[0] & 255;
                                            length2 -= i2;
                                        } else {
                                            if (r372 != 0) {
                                                EncryptedFileInputStream.decryptBytesWithKeyFile(bArr5, 0, length2, this.cacheImage.encryptionKeyPath);
                                            }
                                            z13 = false;
                                            i2 = 0;
                                        }
                                        if (!z13) {
                                            DecodeByteArray = BitmapFactory.decodeByteArray(bArr5, i2, length2, options);
                                        }
                                    } else {
                                        if (r372 != 0) {
                                            fileInputStream = new EncryptedFileInputStream(file5, this.cacheImage.encryptionKeyPath);
                                        } else {
                                            fileInputStream = new FileInputStream(file5);
                                        }
                                        DecodeByteArray = BitmapFactory.decodeStream(fileInputStream, null, options);
                                        fileInputStream.close();
                                    }
                                    if (DecodeByteArray == 0) {
                                        if (file5.length() == 0 || this.cacheImage.filter == null) {
                                            file5.delete();
                                        }
                                        z12 = false;
                                    } else {
                                        DecodeByteArray = DecodeByteArray;
                                        if (this.cacheImage.filter != null) {
                                            float width = DecodeByteArray.getWidth();
                                            float height = DecodeByteArray.getHeight();
                                            DecodeByteArray = DecodeByteArray;
                                            if (!options.inPurgeable) {
                                                DecodeByteArray = DecodeByteArray;
                                                if (f3 != f2) {
                                                    DecodeByteArray = DecodeByteArray;
                                                    if (width != f3) {
                                                        DecodeByteArray = DecodeByteArray;
                                                        if (width > 20.0f + f3) {
                                                            Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(DecodeByteArray, (int) f3, (int) (height / (width / f3)), true);
                                                            DecodeByteArray = DecodeByteArray;
                                                            if (DecodeByteArray != bitmapCreateScaledBitmap) {
                                                                DecodeByteArray.recycle();
                                                                DecodeByteArray = bitmapCreateScaledBitmap;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        if (zContains) {
                                            z12 = Utilities.needInvert(DecodeByteArray, !options.inPurgeable ? 1 : 0, DecodeByteArray.getWidth(), DecodeByteArray.getHeight(), DecodeByteArray.getRowBytes()) != 0;
                                        } else {
                                            z12 = false;
                                        }
                                        try {
                                            try {
                                                if (r4 == 1) {
                                                    if (DecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                        ?? r43 = DecodeByteArray;
                                                        Utilities.blurBitmap(r43, 3, !options.inPurgeable ? 1 : 0, DecodeByteArray.getWidth(), DecodeByteArray.getHeight(), DecodeByteArray.getRowBytes());
                                                        DecodeByteArray = DecodeByteArray;
                                                        r4 = r43;
                                                    }
                                                } else if (r4 == 2) {
                                                    if (DecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                        ?? r44 = DecodeByteArray;
                                                        Utilities.blurBitmap(r44, 1, !options.inPurgeable ? 1 : 0, DecodeByteArray.getWidth(), DecodeByteArray.getHeight(), DecodeByteArray.getRowBytes());
                                                        DecodeByteArray = DecodeByteArray;
                                                        r4 = r44;
                                                    }
                                                } else if (r4 == 3 || r4 == 4) {
                                                    if (DecodeByteArray.getConfig() == Bitmap.Config.ARGB_8888) {
                                                        if (r4 == 4) {
                                                            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(DecodeByteArray.getWidth(), DecodeByteArray.getHeight(), DecodeByteArray.getConfig());
                                                            ?? canvas = new Canvas(bitmapCreateBitmap);
                                                            canvas.save();
                                                            float f16 = f;
                                                            canvas.scale(f16, f16, DecodeByteArray.getWidth() / 2.0f, DecodeByteArray.getHeight() / 2.0f);
                                                            float f17 = f2;
                                                            canvas.drawBitmap(DecodeByteArray, f17, f17, null);
                                                            canvas.restore();
                                                            Path path = new Path();
                                                            path.addCircle(DecodeByteArray.getWidth() / 2.0f, DecodeByteArray.getHeight() / 2.0f, Math.min(DecodeByteArray.getWidth(), DecodeByteArray.getHeight()) / 2.0f, Path.Direction.CW);
                                                            canvas.clipPath(path);
                                                            canvas.drawBitmap(DecodeByteArray, 0.0f, 0.0f, null);
                                                            DecodeByteArray.recycle();
                                                            r42 = bitmapCreateBitmap;
                                                        } else {
                                                            r42 = DecodeByteArray;
                                                        }
                                                        Utilities.blurBitmap(r42, 7, !options.inPurgeable ? 1 : 0, r42.getWidth(), r42.getHeight(), r42.getRowBytes());
                                                        Utilities.blurBitmap(r42, 7, !options.inPurgeable ? 1 : 0, r42.getWidth(), r42.getHeight(), r42.getRowBytes());
                                                        Utilities.blurBitmap(r42, 7, !options.inPurgeable ? 1 : 0, r42.getWidth(), r42.getHeight(), r42.getRowBytes());
                                                        DecodeByteArray = r42;
                                                        r4 = r42;
                                                    }
                                                } else if (r4 == 0 && options.inPurgeable) {
                                                    Utilities.pinBitmap(DecodeByteArray);
                                                }
                                            } catch (Throwable th19) {
                                                th = th19;
                                                DecodeByteArray = r4;
                                                FileLog.m1136e(th);
                                                i = 0;
                                                r11 = 0;
                                                file = file5;
                                                ApplyWallpaperSetting = DecodeByteArray;
                                                Thread.interrupted();
                                                if (BuildVars.LOGS_ENABLED) {
                                                }
                                                if (ApplyWallpaperSetting != 0) {
                                                }
                                                cacheImage = this.cacheImage;
                                                if (cacheImage == null) {
                                                }
                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                            }
                                        } catch (Throwable th20) {
                                            th = th20;
                                            FileLog.m1136e(th);
                                            i = 0;
                                            r11 = 0;
                                            file = file5;
                                            ApplyWallpaperSetting = DecodeByteArray;
                                            Thread.interrupted();
                                            if (BuildVars.LOGS_ENABLED) {
                                            }
                                            if (ApplyWallpaperSetting != 0) {
                                            }
                                            cacheImage = this.cacheImage;
                                            if (cacheImage == null) {
                                            }
                                            onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                        }
                                    }
                                    i = 0;
                                    r11 = 0;
                                    file = file5;
                                    ApplyWallpaperSetting = DecodeByteArray;
                                } finally {
                                }
                            }
                        } else {
                            try {
                                ImageLoader.this.lastCacheOutTime = SystemClock.elapsedRealtime();
                            } catch (Throwable th21) {
                                th = th21;
                            }
                            synchronized (this.sync) {
                                try {
                                    if (this.isCancelled) {
                                        return;
                                    }
                                    if (!z11) {
                                        CacheImage cacheImage9 = this.cacheImage;
                                        if (cacheImage9.filter == null || r4 != 0 || cacheImage9.imageLocation.path != null) {
                                            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                        } else {
                                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                                        }
                                        options.inDither = false;
                                        DecodeByteArray = DecodeByteArray;
                                        DecodeByteArray = DecodeByteArray;
                                        ?? r182 = z11;
                                        r182 = z11;
                                        if (lValueOf == null || str2 != null) {
                                            if (DecodeByteArray != 0) {
                                                if (DecodeByteArray == 0) {
                                                    if (secureDocumentKey != null) {
                                                        fileInputStream2 = new EncryptedFileInputStream(file5, secureDocumentKey);
                                                    } else if (r372 != 0) {
                                                        fileInputStream2 = new EncryptedFileInputStream(file5, this.cacheImage.encryptionKeyPath);
                                                    } else {
                                                        try {
                                                            fileInputStream2 = new FileInputStream(file5);
                                                        } catch (Throwable th22) {
                                                            th = th22;
                                                            z14 = false;
                                                            IntValue2 = 0;
                                                            IntValue = 0;
                                                            FileLog.m1136e(th);
                                                            file2 = file5;
                                                            r3 = DecodeByteArray;
                                                            r10 = IntValue2;
                                                            r112 = IntValue;
                                                            ?? r38 = r10;
                                                            z12 = z14;
                                                            i = r38 == true ? 1 : 0;
                                                            file = file2;
                                                            ApplyWallpaperSetting = r3;
                                                            r11 = r112;
                                                            Thread.interrupted();
                                                            if (BuildVars.LOGS_ENABLED) {
                                                            }
                                                            if (ApplyWallpaperSetting != 0) {
                                                            }
                                                            cacheImage = this.cacheImage;
                                                            if (cacheImage == null) {
                                                            }
                                                            onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                        }
                                                    }
                                                    IntValue2 = this.cacheImage;
                                                    IntValue = IntValue2.imageLocation.document instanceof TLRPC.TL_document;
                                                    try {
                                                        if (IntValue != 0 || ((str4 = IntValue2.filter) != null && str4.contains("exif"))) {
                                                            Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(fileInputStream2);
                                                            IntValue = ((Integer) imageOrientation.first).intValue();
                                                            try {
                                                                IntValue2 = ((Integer) imageOrientation.second).intValue();
                                                                if (secureDocumentKey == null) {
                                                                    try {
                                                                        if (this.cacheImage.encryptionKeyPath != null) {
                                                                            r13 = DecodeByteArray;
                                                                            ?? r174 = r4;
                                                                            try {
                                                                                fileInputStream2.close();
                                                                                r132 = r13;
                                                                                r172 = r174;
                                                                                if (secureDocumentKey != null) {
                                                                                    fileInputStream2 = new EncryptedFileInputStream(file5, secureDocumentKey);
                                                                                    r132 = r13;
                                                                                    r172 = r174;
                                                                                } else if (r372 != 0) {
                                                                                    fileInputStream2 = new EncryptedFileInputStream(file5, this.cacheImage.encryptionKeyPath);
                                                                                    r132 = r13;
                                                                                    r172 = r174;
                                                                                }
                                                                            } catch (Throwable th23) {
                                                                                th = th23;
                                                                                DecodeByteArray = r13;
                                                                                z14 = false;
                                                                                FileLog.m1136e(th);
                                                                                file2 = file5;
                                                                                r3 = DecodeByteArray;
                                                                                r10 = IntValue2;
                                                                                r112 = IntValue;
                                                                                ?? r382 = r10;
                                                                                z12 = z14;
                                                                                i = r382 == true ? 1 : 0;
                                                                                file = file2;
                                                                                ApplyWallpaperSetting = r3;
                                                                                r11 = r112;
                                                                                Thread.interrupted();
                                                                                if (BuildVars.LOGS_ENABLED) {
                                                                                }
                                                                                if (ApplyWallpaperSetting != 0) {
                                                                                }
                                                                                cacheImage = this.cacheImage;
                                                                                if (cacheImage == null) {
                                                                                }
                                                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                                            }
                                                                        } else {
                                                                            r132 = DecodeByteArray;
                                                                            r172 = r4;
                                                                            fileInputStream2.getChannel().position(0L);
                                                                        }
                                                                        rect = null;
                                                                        IntValue2 = IntValue2;
                                                                        IntValue = IntValue;
                                                                        r13 = r132;
                                                                        r173 = r172;
                                                                    } catch (Throwable th24) {
                                                                        th = th24;
                                                                        z14 = false;
                                                                        FileLog.m1136e(th);
                                                                        file2 = file5;
                                                                        r3 = DecodeByteArray;
                                                                        r10 = IntValue2;
                                                                        r112 = IntValue;
                                                                        ?? r3822 = r10;
                                                                        z12 = z14;
                                                                        i = r3822 == true ? 1 : 0;
                                                                        file = file2;
                                                                        ApplyWallpaperSetting = r3;
                                                                        r11 = r112;
                                                                        Thread.interrupted();
                                                                        if (BuildVars.LOGS_ENABLED) {
                                                                        }
                                                                        if (ApplyWallpaperSetting != 0) {
                                                                        }
                                                                        cacheImage = this.cacheImage;
                                                                        if (cacheImage == null) {
                                                                        }
                                                                        onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                                    }
                                                                }
                                                            } catch (Throwable th25) {
                                                                th = th25;
                                                                z14 = false;
                                                                IntValue2 = 0;
                                                                FileLog.m1136e(th);
                                                                file2 = file5;
                                                                r3 = DecodeByteArray;
                                                                r10 = IntValue2;
                                                                r112 = IntValue;
                                                                ?? r38222 = r10;
                                                                z12 = z14;
                                                                i = r38222 == true ? 1 : 0;
                                                                file = file2;
                                                                ApplyWallpaperSetting = r3;
                                                                r11 = r112;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (ApplyWallpaperSetting != 0) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                            }
                                                        } else {
                                                            r13 = DecodeByteArray;
                                                            r173 = r4;
                                                            rect = null;
                                                            IntValue2 = 0;
                                                            IntValue = 0;
                                                        }
                                                        DecodeByteArray = BitmapFactory.decodeStream(fileInputStream2, rect, options);
                                                        try {
                                                            fileInputStream2.close();
                                                            DecodeByteArray = DecodeByteArray;
                                                            IntValue2 = IntValue2;
                                                            IntValue = IntValue;
                                                            r17 = r173;
                                                        } catch (Throwable th26) {
                                                            th = th26;
                                                            z14 = false;
                                                            FileLog.m1136e(th);
                                                            file2 = file5;
                                                            r3 = DecodeByteArray;
                                                            r10 = IntValue2;
                                                            r112 = IntValue;
                                                            ?? r382222 = r10;
                                                            z12 = z14;
                                                            i = r382222 == true ? 1 : 0;
                                                            file = file2;
                                                            ApplyWallpaperSetting = r3;
                                                            r11 = r112;
                                                            Thread.interrupted();
                                                            if (BuildVars.LOGS_ENABLED) {
                                                            }
                                                            if (ApplyWallpaperSetting != 0) {
                                                            }
                                                            cacheImage = this.cacheImage;
                                                            if (cacheImage == null) {
                                                            }
                                                            onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                        }
                                                    } catch (Throwable th27) {
                                                        th = th27;
                                                    }
                                                } else {
                                                    r17 = r4;
                                                    IntValue2 = 0;
                                                    IntValue = 0;
                                                    DecodeByteArray = DecodeByteArray;
                                                }
                                                if (DecodeByteArray == 0) {
                                                    try {
                                                        RandomAccessFile randomAccessFile4 = new RandomAccessFile(file5, "r");
                                                        int length3 = (int) randomAccessFile4.length();
                                                        byte[] bArr6 = (byte[]) ImageLoader.bytesLocal.get();
                                                        if (bArr6 == null || bArr6.length < length3) {
                                                            bArr6 = null;
                                                        }
                                                        if (bArr6 == null) {
                                                            bArr6 = new byte[length3];
                                                            ImageLoader.bytesLocal.set(bArr6);
                                                        }
                                                        randomAccessFile4.readFully(bArr6, 0, length3);
                                                        randomAccessFile4.close();
                                                        try {
                                                            if (secureDocumentKey != null) {
                                                                EncryptedFileInputStream.decryptBytesWithKeyFile(bArr6, 0, length3, secureDocumentKey);
                                                                r182 = zContains;
                                                                z17 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr6, 0, (long) length3), bArr);
                                                                i3 = bArr6[0] & 255;
                                                                length3 -= i3;
                                                            } else {
                                                                r182 = zContains;
                                                                if (r372 != 0) {
                                                                    EncryptedFileInputStream.decryptBytesWithKeyFile(bArr6, 0, length3, this.cacheImage.encryptionKeyPath);
                                                                }
                                                                z17 = false;
                                                                i3 = 0;
                                                            }
                                                            if (!z17) {
                                                                DecodeByteArray = BitmapFactory.decodeByteArray(bArr6, i3, length3, options);
                                                            }
                                                        } catch (Throwable th28) {
                                                            th = th28;
                                                            r182 = r182;
                                                            FileLog.m1136e(th);
                                                        }
                                                    } catch (Throwable th29) {
                                                        th = th29;
                                                        r182 = zContains;
                                                    }
                                                } else {
                                                    r182 = zContains;
                                                }
                                            } else {
                                                r17 = r4;
                                                r182 = zContains;
                                                IntValue2 = 0;
                                                IntValue = 0;
                                            }
                                            if (DecodeByteArray != 0) {
                                                if (z5 && (file5.length() == 0 || this.cacheImage.filter == null)) {
                                                    file5.delete();
                                                }
                                                z14 = false;
                                                file2 = file5;
                                                r3 = DecodeByteArray;
                                                r10 = IntValue2;
                                                r112 = IntValue;
                                            } else if (this.cacheImage.filter != null) {
                                                float width2 = DecodeByteArray.getWidth();
                                                float height2 = DecodeByteArray.getHeight();
                                                if (!options.inPurgeable && f3 != 0.0f && width2 != f3 && width2 > f3 + 20.0f) {
                                                    if (width2 <= height2 || f3 <= f15222) {
                                                        float f18 = height2 / f15222;
                                                        CreateScaledBitmap = f18 > 1.0f ? Bitmaps.createScaledBitmap(DecodeByteArray, (int) (width2 / f18), (int) f15222, true) : DecodeByteArray;
                                                        if (DecodeByteArray != CreateScaledBitmap) {
                                                            DecodeByteArray.recycle();
                                                            DecodeByteArray = CreateScaledBitmap;
                                                        }
                                                    } else {
                                                        float f19 = width2 / f3;
                                                        if (f19 > 1.0f) {
                                                            CreateScaledBitmap = Bitmaps.createScaledBitmap(DecodeByteArray, (int) f3, (int) (height2 / f19), true);
                                                        }
                                                        if (DecodeByteArray != CreateScaledBitmap) {
                                                        }
                                                    }
                                                }
                                                if (DecodeByteArray != 0) {
                                                    if (r182 != 0) {
                                                        ?? CreateScaledBitmap2 = DecodeByteArray.getWidth() * DecodeByteArray.getHeight() > 22500 ? Bitmaps.createScaledBitmap(DecodeByteArray, 100, 100, false) : DecodeByteArray;
                                                        boolean z65 = Utilities.needInvert(CreateScaledBitmap2, !options.inPurgeable ? 1 : 0, CreateScaledBitmap2.getWidth(), CreateScaledBitmap2.getHeight(), CreateScaledBitmap2.getRowBytes()) != 0;
                                                        if (CreateScaledBitmap2 != DecodeByteArray) {
                                                            try {
                                                                CreateScaledBitmap2.recycle();
                                                            } catch (Throwable th30) {
                                                                th = th30;
                                                                z14 = z65;
                                                                FileLog.m1136e(th);
                                                                file2 = file5;
                                                                r3 = DecodeByteArray;
                                                                r10 = IntValue2;
                                                                r112 = IntValue;
                                                                ?? r3822222 = r10;
                                                                z12 = z14;
                                                                i = r3822222 == true ? 1 : 0;
                                                                file = file2;
                                                                ApplyWallpaperSetting = r3;
                                                                r11 = r112;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (ApplyWallpaperSetting != 0) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                            }
                                                        }
                                                        z14 = z65;
                                                    } else {
                                                        z14 = false;
                                                    }
                                                    ?? CreateScaledBitmap3 = DecodeByteArray;
                                                    if (r17 == 0) {
                                                        r18 = CreateScaledBitmap3;
                                                        if (r17 != 0 || height2 >= 100.0f || width2 >= 100.0f) {
                                                            z15 = z14;
                                                            r32 = r18;
                                                        } else {
                                                            try {
                                                                if (r18.getConfig() == Bitmap.Config.ARGB_8888) {
                                                                    Utilities.blurBitmap(r18, 3, !options.inPurgeable ? 1 : 0, r18.getWidth(), r18.getHeight(), r18.getRowBytes());
                                                                }
                                                                z15 = z14;
                                                                DecodeByteArray = r18;
                                                                z16 = true;
                                                                if (!z16) {
                                                                    try {
                                                                        if (options.inPurgeable) {
                                                                            Utilities.pinBitmap(DecodeByteArray);
                                                                        }
                                                                    } catch (Throwable th31) {
                                                                        th = th31;
                                                                        z14 = z15;
                                                                        FileLog.m1136e(th);
                                                                        file2 = file5;
                                                                        r3 = DecodeByteArray;
                                                                        r10 = IntValue2;
                                                                        r112 = IntValue;
                                                                    }
                                                                }
                                                                z14 = z15;
                                                                file2 = file5;
                                                                r3 = DecodeByteArray;
                                                                r10 = IntValue2;
                                                                r112 = IntValue;
                                                            } catch (Throwable th32) {
                                                                th = th32;
                                                                DecodeByteArray = r18;
                                                                FileLog.m1136e(th);
                                                                file2 = file5;
                                                                r3 = DecodeByteArray;
                                                                r10 = IntValue2;
                                                                r112 = IntValue;
                                                                ?? r38222222 = r10;
                                                                z12 = z14;
                                                                i = r38222222 == true ? 1 : 0;
                                                                file = file2;
                                                                ApplyWallpaperSetting = r3;
                                                                r11 = r112;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (ApplyWallpaperSetting != 0) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                            }
                                                        }
                                                    } else if (height2 <= 100.0f) {
                                                        CreateScaledBitmap3 = DecodeByteArray;
                                                        if (width2 > 100.0f) {
                                                            try {
                                                                height2 = 80.0f;
                                                                width2 = 80.0f;
                                                                CreateScaledBitmap3 = Bitmaps.createScaledBitmap(DecodeByteArray, 80, 80, false);
                                                                r18 = CreateScaledBitmap3;
                                                                if (r17 != 0) {
                                                                }
                                                                z15 = z14;
                                                                r32 = r18;
                                                            } catch (Throwable th33) {
                                                                th = th33;
                                                                FileLog.m1136e(th);
                                                                file2 = file5;
                                                                r3 = DecodeByteArray;
                                                                r10 = IntValue2;
                                                                r112 = IntValue;
                                                                ?? r382222222 = r10;
                                                                z12 = z14;
                                                                i = r382222222 == true ? 1 : 0;
                                                                file = file2;
                                                                ApplyWallpaperSetting = r3;
                                                                r11 = r112;
                                                                Thread.interrupted();
                                                                if (BuildVars.LOGS_ENABLED) {
                                                                }
                                                                if (ApplyWallpaperSetting != 0) {
                                                                }
                                                                cacheImage = this.cacheImage;
                                                                if (cacheImage == null) {
                                                                }
                                                                onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    z15 = false;
                                                    r32 = DecodeByteArray;
                                                }
                                                z16 = false;
                                                DecodeByteArray = r32;
                                                if (!z16) {
                                                }
                                                z14 = z15;
                                                file2 = file5;
                                                r3 = DecodeByteArray;
                                                r10 = IntValue2;
                                                r112 = IntValue;
                                            }
                                            ?? r3822222222 = r10;
                                            z12 = z14;
                                            i = r3822222222 == true ? 1 : 0;
                                            file = file2;
                                            ApplyWallpaperSetting = r3;
                                            r11 = r112;
                                        } else {
                                            if (r13 == 0) {
                                                DecodeByteArray = MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                r182 = z11;
                                            } else if (lValueOf.longValue() == 0) {
                                                File file6 = file5;
                                                try {
                                                    AnimatedFileDrawable animatedFileDrawable3 = new AnimatedFileDrawable(file6, true, 0L, 0, null, null, null, 0L, 0, true, null);
                                                    Bitmap frameAtTime3 = animatedFileDrawable3.getFrameAtTime(0L, true);
                                                    animatedFileDrawable3.recycle();
                                                    DecodeByteArray = frameAtTime3;
                                                    r182 = file6;
                                                } catch (Throwable th34) {
                                                    th = th34;
                                                    file5 = file6;
                                                    z14 = false;
                                                    IntValue2 = 0;
                                                    IntValue = 0;
                                                    FileLog.m1136e(th);
                                                    file2 = file5;
                                                    r3 = DecodeByteArray;
                                                    r10 = IntValue2;
                                                    r112 = IntValue;
                                                    ?? r38222222222 = r10;
                                                    z12 = z14;
                                                    i = r38222222222 == true ? 1 : 0;
                                                    file = file2;
                                                    ApplyWallpaperSetting = r3;
                                                    r11 = r112;
                                                    Thread.interrupted();
                                                    if (BuildVars.LOGS_ENABLED) {
                                                    }
                                                    if (ApplyWallpaperSetting != 0) {
                                                    }
                                                    cacheImage = this.cacheImage;
                                                    if (cacheImage == null) {
                                                    }
                                                    onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                }
                                            } else {
                                                DecodeByteArray = MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                r182 = z11;
                                            }
                                            if (DecodeByteArray != 0) {
                                            }
                                            if (DecodeByteArray != 0) {
                                            }
                                            ?? r382222222222 = r10;
                                            z12 = z14;
                                            i = r382222222222 == true ? 1 : 0;
                                            file = file2;
                                            ApplyWallpaperSetting = r3;
                                            r11 = r112;
                                        }
                                    }
                                } finally {
                                }
                            }
                        }
                        Thread.interrupted();
                        if (BuildVars.LOGS_ENABLED && r372 != 0) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Image Loader image is empty = ");
                            sb.append(ApplyWallpaperSetting != 0);
                            sb.append(" ");
                            sb.append(file);
                            FileLog.m1134e(sb.toString());
                        }
                        if (ApplyWallpaperSetting != 0 && !TextUtils.isEmpty(this.cacheImage.filter) && this.cacheImage.filter.contains("wallpaper")) {
                            obj = this.cacheImage.parentObject;
                            if (obj instanceof TLRPC.WallPaper) {
                                ApplyWallpaperSetting = applyWallpaperSetting(ApplyWallpaperSetting, (TLRPC.WallPaper) obj);
                            }
                        }
                        cacheImage = this.cacheImage;
                        if ((cacheImage == null || (str3 = cacheImage.filter) == null || !str3.contains("ignoreOrientation")) && (z12 || r11 != 0 || i != 0)) {
                            onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, r11, i) : null);
                            return;
                        } else {
                            onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                        }
                    }
                    boolean z66 = z55;
                    str2 = str;
                    f = 1.2f;
                    f2 = 0.0f;
                    if (str2 != null) {
                        try {
                            options.inJustDecodeBounds = true;
                            options.inPreferredConfig = z56 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                            fileInputStream3 = new FileInputStream(file5);
                            bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream3, null, options);
                        } catch (Throwable th35) {
                            th = th35;
                            z6 = z66;
                            f3 = f2;
                            f4 = f3;
                            z8 = z6;
                            bitmap = null;
                            z7 = z8;
                        }
                        try {
                            fileInputStream3.close();
                            int i33 = options.outWidth;
                            int i34 = options.outHeight;
                            options.inJustDecodeBounds = false;
                            float fMin2 = (Math.min(i34, i33) / Math.max(66, Math.min(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y))) * 6.0f;
                            if (fMin2 < 1.0f) {
                                fMin2 = 1.0f;
                            }
                            if (fMin2 > 1.0f) {
                                int i35 = 1;
                                while (true) {
                                    i4 = i35 * 2;
                                    if (i35 * 4 > fMin2) {
                                        break;
                                    } else {
                                        i35 = i4;
                                    }
                                }
                                options.inSampleSize = i4;
                            } else {
                                options.inSampleSize = (int) fMin2;
                            }
                            bitmap4 = bitmapDecodeStream;
                            f3 = 0.0f;
                            f4 = 0.0f;
                        } catch (Throwable th36) {
                            th = th36;
                            bitmap = bitmapDecodeStream;
                            f3 = 0.0f;
                            f4 = 0.0f;
                            z7 = z66;
                            c = 0;
                            bitmap2 = bitmap;
                            z9 = z7;
                            zContains = false;
                            bitmap3 = bitmap2;
                            c2 = c;
                            z10 = z56;
                            r37 = z9;
                            FileLog.m1136e(th);
                            DecodeByteArray = bitmap3;
                            r4 = c2;
                            z11 = z10;
                            r372 = r37;
                        }
                    } else {
                        f3 = 0.0f;
                        f4 = 0.0f;
                        bitmap4 = null;
                    }
                    z18 = false;
                    zContains = false;
                    z20 = z56;
                    z19 = z66;
                    DecodeByteArray = bitmap4;
                    r4 = z18;
                    z11 = z20;
                    r372 = z19;
                    float f152222 = f4;
                    if (this.cacheImage.type != 1) {
                    }
                    Thread.interrupted();
                    if (BuildVars.LOGS_ENABLED) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Image Loader image is empty = ");
                        sb2.append(ApplyWallpaperSetting != 0);
                        sb2.append(" ");
                        sb2.append(file);
                        FileLog.m1134e(sb2.toString());
                    }
                    if (ApplyWallpaperSetting != 0) {
                        obj = this.cacheImage.parentObject;
                        if (obj instanceof TLRPC.WallPaper) {
                        }
                    }
                    cacheImage = this.cacheImage;
                    if (cacheImage == null) {
                        onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, r11, i) : null);
                        return;
                    } else {
                        onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, r11, i) : null);
                        return;
                    }
                    onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                    c = 0;
                    bitmap2 = bitmap;
                    z9 = z7;
                    zContains = false;
                    bitmap3 = bitmap2;
                    c2 = c;
                    z10 = z56;
                    r37 = z9;
                    FileLog.m1136e(th);
                    DecodeByteArray = bitmap3;
                    r4 = c2;
                    z11 = z10;
                    r372 = r37;
                    float f1522222 = f4;
                    if (this.cacheImage.type != 1) {
                    }
                    Thread.interrupted();
                    if (BuildVars.LOGS_ENABLED) {
                    }
                    if (ApplyWallpaperSetting != 0) {
                    }
                    cacheImage = this.cacheImage;
                    if (cacheImage == null) {
                    }
                    onPostExecute(ApplyWallpaperSetting != 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                } finally {
                }
            }
        }

        private Bitmap applyWallpaperSetting(Bitmap bitmap, TLRPC.WallPaper wallPaper) {
            int patternColor;
            if (!wallPaper.pattern || wallPaper.settings == null) {
                TLRPC.WallPaperSettings wallPaperSettings = wallPaper.settings;
                return (wallPaperSettings == null || !wallPaperSettings.blur) ? bitmap : Utilities.blurWallpaper(bitmap);
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            TLRPC.WallPaperSettings wallPaperSettings2 = wallPaper.settings;
            boolean z = true;
            if (wallPaperSettings2.second_background_color == 0) {
                patternColor = AndroidUtilities.getPatternColor(wallPaperSettings2.background_color);
                canvas.drawColor(ColorUtils.setAlphaComponent(wallPaper.settings.background_color, 255));
            } else if (wallPaperSettings2.third_background_color == 0) {
                int alphaComponent = ColorUtils.setAlphaComponent(wallPaperSettings2.background_color, 255);
                int alphaComponent2 = ColorUtils.setAlphaComponent(wallPaper.settings.second_background_color, 255);
                int averageColor = AndroidUtilities.getAverageColor(alphaComponent, alphaComponent2);
                GradientDrawable gradientDrawable = new GradientDrawable(BackgroundGradientDrawable.getGradientOrientation(wallPaper.settings.rotation), new int[]{alphaComponent, alphaComponent2});
                gradientDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                gradientDrawable.draw(canvas);
                patternColor = averageColor;
            } else {
                int alphaComponent3 = ColorUtils.setAlphaComponent(wallPaperSettings2.background_color, 255);
                int alphaComponent4 = ColorUtils.setAlphaComponent(wallPaper.settings.second_background_color, 255);
                int alphaComponent5 = ColorUtils.setAlphaComponent(wallPaper.settings.third_background_color, 255);
                int i = wallPaper.settings.fourth_background_color;
                int alphaComponent6 = i == 0 ? 0 : ColorUtils.setAlphaComponent(i, 255);
                int patternColor2 = MotionBackgroundDrawable.getPatternColor(alphaComponent3, alphaComponent4, alphaComponent5, alphaComponent6);
                MotionBackgroundDrawable motionBackgroundDrawable = new MotionBackgroundDrawable();
                motionBackgroundDrawable.setColors(alphaComponent3, alphaComponent4, alphaComponent5, alphaComponent6);
                motionBackgroundDrawable.setBounds(0, 0, bitmapCreateBitmap.getWidth(), bitmapCreateBitmap.getHeight());
                motionBackgroundDrawable.setPatternBitmap(wallPaper.settings.intensity, bitmap);
                motionBackgroundDrawable.draw(canvas);
                z = false;
                patternColor = patternColor2;
            }
            if (z) {
                Paint paint = new Paint(2);
                paint.setColorFilter(new PorterDuffColorFilter(patternColor, PorterDuff.Mode.SRC_IN));
                paint.setAlpha((int) ((wallPaper.settings.intensity / 100.0f) * 255.0f));
                canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
            }
            return bitmapCreateBitmap;
        }

        private void loadLastFrame(RLottieDrawable rLottieDrawable, int i, int i2, boolean z, boolean z2) {
            Bitmap bitmapCreateBitmap;
            Canvas canvas;
            Drawable bitmapDrawable;
            if (z && z2) {
                float f = i * 1.2f;
                float f2 = i2 * 1.2f;
                bitmapCreateBitmap = Bitmap.createBitmap((int) f, (int) f2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmapCreateBitmap);
                canvas.scale(2.0f, 2.0f, f / 2.0f, f2 / 2.0f);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
                canvas = new Canvas(bitmapCreateBitmap);
            }
            rLottieDrawable.prepareForGenerateCache();
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(rLottieDrawable.getIntrinsicWidth(), rLottieDrawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
            rLottieDrawable.setGeneratingFrame(z ? rLottieDrawable.getFramesCount() - 1 : 0);
            rLottieDrawable.getNextFrame(bitmapCreateBitmap2);
            rLottieDrawable.releaseForGenerateCache();
            canvas.save();
            if (!z || !z2) {
                canvas.scale(bitmapCreateBitmap2.getWidth() / i, bitmapCreateBitmap2.getHeight() / i2, i / 2.0f, i2 / 2.0f);
            }
            Paint paint = new Paint(1);
            paint.setFilterBitmap(true);
            if (z && z2) {
                canvas.drawBitmap(bitmapCreateBitmap2, (bitmapCreateBitmap.getWidth() - bitmapCreateBitmap2.getWidth()) / 2.0f, (bitmapCreateBitmap.getHeight() - bitmapCreateBitmap2.getHeight()) / 2.0f, paint);
                bitmapDrawable = new ImageReceiver.ReactionLastFrame(bitmapCreateBitmap);
            } else {
                canvas.drawBitmap(bitmapCreateBitmap2, 0.0f, 0.0f, paint);
                bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            }
            rLottieDrawable.recycle(false);
            bitmapCreateBitmap2.recycle();
            onPostExecute(bitmapDrawable);
        }

        private void onPostExecute(final Drawable drawable) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$1(drawable);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:42:0x011a A[PHI: r7
  0x011a: PHI (r7v6 android.graphics.drawable.Drawable) = (r7v5 android.graphics.drawable.Drawable), (r7v0 android.graphics.drawable.Drawable) binds: [B:40:0x010a, B:12:0x0044] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$onPostExecute$1(Drawable drawable) {
            final Drawable drawable2;
            final String str;
            BitmapDrawable bitmapDrawable;
            Drawable drawable3;
            boolean z = false;
            if (drawable instanceof RLottieDrawable) {
                RLottieDrawable rLottieDrawable = (RLottieDrawable) drawable;
                Drawable drawable4 = (Drawable) ImageLoader.this.lottieMemCache.get(this.cacheImage.key);
                if (drawable4 == null) {
                    ImageLoader.this.lottieMemCache.put(this.cacheImage.key, rLottieDrawable);
                    drawable3 = rLottieDrawable;
                } else {
                    rLottieDrawable.recycle(false);
                    drawable3 = drawable4;
                }
                ImageLoader.this.incrementUseCount(this.cacheImage.key);
                str = this.cacheImage.key;
                drawable2 = drawable3;
            } else if (drawable instanceof AnimatedFileDrawable) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
                if (animatedFileDrawable.isWebmSticker) {
                    BitmapDrawable fromLottieCache = ImageLoader.this.getFromLottieCache(this.cacheImage.key);
                    if (fromLottieCache == null) {
                        ImageLoader.this.lottieMemCache.put(this.cacheImage.key, animatedFileDrawable);
                        bitmapDrawable = animatedFileDrawable;
                    } else {
                        animatedFileDrawable.recycle();
                        bitmapDrawable = fromLottieCache;
                    }
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str = this.cacheImage.key;
                    drawable2 = bitmapDrawable;
                } else {
                    str = null;
                    drawable2 = drawable;
                }
            } else if (drawable instanceof BitmapDrawable) {
                BitmapDrawable bitmapDrawable2 = (BitmapDrawable) drawable;
                BitmapDrawable fromMemCache = ImageLoader.this.getFromMemCache(this.cacheImage.key);
                boolean z2 = true;
                if (fromMemCache == null) {
                    if (this.cacheImage.key.endsWith("_f")) {
                        ImageLoader.this.wallpaperMemCache.put(this.cacheImage.key, bitmapDrawable2);
                    } else {
                        if (!this.cacheImage.key.endsWith("_isc") && !this.cacheImage.key.endsWith("_nocache") && bitmapDrawable2.getBitmap().getWidth() <= AndroidUtilities.density * 80.0f && bitmapDrawable2.getBitmap().getHeight() <= AndroidUtilities.density * 80.0f) {
                            ImageLoader.this.smallImagesMemCache.put(this.cacheImage.key, bitmapDrawable2);
                        } else if (!this.cacheImage.key.endsWith("_nocache")) {
                            ImageLoader.this.memCache.put(this.cacheImage.key, bitmapDrawable2);
                        }
                        z = true;
                    }
                    z2 = z;
                    drawable = bitmapDrawable2;
                } else {
                    AndroidUtilities.recycleBitmap(bitmapDrawable2.getBitmap());
                    drawable = fromMemCache;
                }
                if (z2) {
                    ImageLoader.this.incrementUseCount(this.cacheImage.key);
                    str = this.cacheImage.key;
                    drawable2 = drawable;
                }
            } else {
                drawable2 = null;
                str = null;
            }
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheOutTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onPostExecute$0(drawable2, str);
                }
            }, this.cacheImage.priority);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onPostExecute$0(Drawable drawable, String str) {
            this.cacheImage.setImageAndClear(drawable, str);
        }

        public void cancel() {
            synchronized (this.sync) {
                try {
                    this.isCancelled = true;
                    Thread thread = this.runningThread;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Exception unused) {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAnimatedAvatar(String str) {
        return str != null && str.endsWith("avatar");
    }

    private boolean isPFrame(String str) {
        return str != null && str.endsWith("pframe");
    }

    public BitmapDrawable getFromMemCache(String str) {
        BitmapDrawable bitmapDrawable = this.memCache.get(str);
        if (bitmapDrawable == null) {
            bitmapDrawable = this.smallImagesMemCache.get(str);
        }
        if (bitmapDrawable == null) {
            bitmapDrawable = this.wallpaperMemCache.get(str);
        }
        return bitmapDrawable == null ? getFromLottieCache(str) : bitmapDrawable;
    }

    public static Bitmap getStrippedPhotoBitmap(byte[] bArr, String str) {
        Bitmap bitmap;
        int length = (bArr.length - 3) + Bitmaps.header.length + Bitmaps.footer.length;
        byte[] bArr2 = bytesLocal.get();
        if (bArr2 == null || bArr2.length < length) {
            bArr2 = null;
        }
        if (bArr2 == null) {
            bArr2 = new byte[length];
            bytesLocal.set(bArr2);
        }
        byte[] bArr3 = Bitmaps.header;
        System.arraycopy(bArr3, 0, bArr2, 0, bArr3.length);
        System.arraycopy(bArr, 3, bArr2, Bitmaps.header.length, bArr.length - 3);
        System.arraycopy(Bitmaps.footer, 0, bArr2, (Bitmaps.header.length + bArr.length) - 3, Bitmaps.footer.length);
        bArr2[164] = bArr[1];
        bArr2[166] = bArr[2];
        BitmapFactory.Options options = new BitmapFactory.Options();
        boolean z = !TextUtils.isEmpty(str) && str.contains("r");
        options.inPreferredConfig = (SharedConfig.deviceIsHigh() || z) ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArr2, 0, length, options);
        if (z) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), bitmapDecodeByteArray.getConfig());
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.save();
            canvas.scale(1.2f, 1.2f, bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f);
            canvas.drawBitmap(bitmapDecodeByteArray, 0.0f, 0.0f, (Paint) null);
            canvas.restore();
            Path path = new Path();
            path.addCircle(bitmapDecodeByteArray.getWidth() / 2.0f, bitmapDecodeByteArray.getHeight() / 2.0f, Math.min(bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight()) / 2.0f, Path.Direction.CW);
            canvas.clipPath(path);
            canvas.drawBitmap(bitmapDecodeByteArray, 0.0f, 0.0f, (Paint) null);
            bitmapDecodeByteArray.recycle();
            bitmap = bitmapCreateBitmap;
        } else {
            bitmap = bitmapDecodeByteArray;
        }
        if (bitmap != null && !TextUtils.isEmpty(str) && str.contains("b")) {
            Utilities.blurBitmap(bitmap, 3, 1, bitmap.getWidth(), bitmap.getHeight(), bitmap.getRowBytes());
        }
        return bitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    class CacheImage {
        protected ArtworkLoadTask artworkTask;
        protected CacheOutTask cacheTask;
        protected int cacheType;
        protected int currentAccount;
        protected File encryptionKeyPath;
        protected String ext;
        protected String filter;
        protected ArrayList<String> filters;
        protected File finalFilePath;
        protected HttpImageTask httpTask;
        protected ImageLocation imageLocation;
        protected ArrayList<ImageReceiver> imageReceiverArray;
        protected ArrayList<Integer> imageReceiverGuidsArray;
        protected int imageType;
        public boolean isPFrame;
        protected String key;
        protected ArrayList<String> keys;
        protected Object parentObject;
        public int priority;
        public Runnable runningTask;
        protected SecureDocument secureDocument;
        protected long size;
        protected File tempFilePath;
        protected int type;
        protected ArrayList<Integer> types;
        protected String url;

        private CacheImage() {
            this.priority = 1;
            this.imageReceiverArray = new ArrayList<>();
            this.imageReceiverGuidsArray = new ArrayList<>();
            this.keys = new ArrayList<>();
            this.filters = new ArrayList<>();
            this.types = new ArrayList<>();
        }

        public void addImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf >= 0 && Objects.equals(this.imageReceiverArray.get(iIndexOf).getImageKey(), str)) {
                this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i2));
                return;
            }
            this.imageReceiverArray.add(imageReceiver);
            this.imageReceiverGuidsArray.add(Integer.valueOf(i2));
            this.keys.add(str);
            this.filters.add(str2);
            this.types.add(Integer.valueOf(i));
            ImageLoader.this.imageLoadingByTag.put(imageReceiver.getTag(i), this);
        }

        public void replaceImageReceiver(ImageReceiver imageReceiver, String str, String str2, int i, int i2) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf == -1) {
                return;
            }
            if (this.types.get(iIndexOf).intValue() != i) {
                ArrayList<ImageReceiver> arrayList = this.imageReceiverArray;
                iIndexOf = arrayList.subList(iIndexOf + 1, arrayList.size()).indexOf(imageReceiver);
                if (iIndexOf == -1) {
                    return;
                }
            }
            this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i2));
            this.keys.set(iIndexOf, str);
            this.filters.set(iIndexOf, str2);
        }

        public void setImageReceiverGuid(ImageReceiver imageReceiver, int i) {
            int iIndexOf = this.imageReceiverArray.indexOf(imageReceiver);
            if (iIndexOf == -1) {
                return;
            }
            this.imageReceiverGuidsArray.set(iIndexOf, Integer.valueOf(i));
        }

        public void removeImageReceiver(ImageReceiver imageReceiver) {
            int iIntValue = this.type;
            int i = 0;
            while (i < this.imageReceiverArray.size()) {
                ImageReceiver imageReceiver2 = this.imageReceiverArray.get(i);
                if (imageReceiver2 == null || imageReceiver2 == imageReceiver) {
                    this.imageReceiverArray.remove(i);
                    this.imageReceiverGuidsArray.remove(i);
                    this.keys.remove(i);
                    this.filters.remove(i);
                    iIntValue = this.types.remove(i).intValue();
                    if (imageReceiver2 != null) {
                        ImageLoader.this.imageLoadingByTag.remove(imageReceiver2.getTag(iIntValue));
                    }
                    i--;
                }
                i++;
            }
            if (this.imageReceiverArray.isEmpty()) {
                if (this.imageLocation != null && !ImageLoader.this.forceLoadingImages.containsKey(this.key)) {
                    ImageLocation imageLocation = this.imageLocation;
                    if (imageLocation.location != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.location, this.ext);
                    } else if (imageLocation.document != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.document);
                    } else if (imageLocation.secureDocument != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.secureDocument);
                    } else if (imageLocation.webFile != null) {
                        FileLoader.getInstance(this.currentAccount).cancelLoadFile(this.imageLocation.webFile);
                    }
                }
                if (this.cacheTask != null) {
                    if (iIntValue == 1) {
                        ImageLoader.this.cacheThumbOutQueue.cancelRunnable(this.cacheTask);
                    } else {
                        ImageLoader.this.cacheOutQueue.cancelRunnable(this.cacheTask);
                        ImageLoader.this.cacheOutQueue.cancelRunnable(this.runningTask);
                    }
                    this.cacheTask.cancel();
                    this.cacheTask = null;
                }
                if (this.httpTask != null) {
                    ImageLoader.this.httpTasks.remove(this.httpTask);
                    this.httpTask.cancel(true);
                    this.httpTask = null;
                }
                if (this.artworkTask != null) {
                    ImageLoader.this.artworkTasks.remove(this.artworkTask);
                    this.artworkTask.cancel(true);
                    this.artworkTask = null;
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrl.remove(this.url);
                }
                if (this.url != null) {
                    ImageLoader.this.imageLoadingByUrlPframe.remove(this.url);
                }
                String str = this.key;
                if (str != null) {
                    ImageLoader.this.imageLoadingByKeys.remove(str);
                    ImageLoader.this.imageLoadingKeys.remove(ImageLoader.cutFilter(this.key));
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v0, types: [org.telegram.messenger.FileLoader] */
        /* JADX WARN: Type inference failed for: r7v5, types: [org.telegram.messenger.WebFile] */
        /* JADX WARN: Type inference failed for: r7v6 */
        /* JADX WARN: Type inference failed for: r7v7 */
        /* JADX WARN: Type inference failed for: r8v3, types: [org.telegram.tgnet.TLRPC$FileLocation] */
        /* JADX WARN: Type inference failed for: r8v4 */
        /* JADX WARN: Type inference failed for: r8v5 */
        /* JADX WARN: Type inference failed for: r9v0 */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r9v2 */
        void changePriority(int i) {
            TLRPC.Document document;
            SecureDocument secureDocument;
            Object obj;
            SecureDocument secureDocument2;
            SecureDocument secureDocument3;
            ?? r9;
            ?? r8;
            ?? r7;
            ImageLocation imageLocation = this.imageLocation;
            if (imageLocation != null) {
                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation.location;
                if (tL_fileLocationToBeDeprecated != null) {
                    r9 = this.ext;
                    r8 = tL_fileLocationToBeDeprecated;
                    document = null;
                    secureDocument = null;
                    r7 = 0;
                } else {
                    TLRPC.Document document2 = imageLocation.document;
                    if (document2 != null) {
                        document = document2;
                        secureDocument = null;
                    } else {
                        SecureDocument secureDocument4 = imageLocation.secureDocument;
                        if (secureDocument4 != null) {
                            secureDocument = secureDocument4;
                            document = null;
                            secureDocument3 = null;
                            secureDocument2 = secureDocument3;
                            obj = secureDocument3;
                            r9 = secureDocument2;
                            r7 = obj;
                            r8 = secureDocument2;
                        } else {
                            WebFile webFile = imageLocation.webFile;
                            if (webFile != null) {
                                obj = webFile;
                                document = null;
                                secureDocument = null;
                                secureDocument2 = null;
                                r9 = secureDocument2;
                                r7 = obj;
                                r8 = secureDocument2;
                            } else {
                                document = null;
                                secureDocument = null;
                            }
                        }
                    }
                    secureDocument3 = secureDocument;
                    secureDocument2 = secureDocument3;
                    obj = secureDocument3;
                    r9 = secureDocument2;
                    r7 = obj;
                    r8 = secureDocument2;
                }
                FileLoader.getInstance(this.currentAccount).changePriority(i, document, secureDocument, r7, r8, r9, null);
            }
        }

        public void setImageAndClear(final Drawable drawable, final String str) {
            final CacheImage cacheImage;
            if (drawable != null) {
                final ArrayList arrayList = new ArrayList(this.imageReceiverArray);
                final ArrayList arrayList2 = new ArrayList(this.imageReceiverGuidsArray);
                cacheImage = this;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheImage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setImageAndClear$0(drawable, arrayList, arrayList2, str);
                    }
                });
            } else {
                cacheImage = this;
            }
            for (int i = 0; i < cacheImage.imageReceiverArray.size(); i++) {
                ImageLoader.this.imageLoadingByTag.remove(cacheImage.imageReceiverArray.get(i).getTag(cacheImage.type));
            }
            cacheImage.imageReceiverArray.clear();
            cacheImage.imageReceiverGuidsArray.clear();
            if (cacheImage.url != null) {
                ImageLoader.this.imageLoadingByUrl.remove(cacheImage.url);
            }
            if (cacheImage.url != null) {
                ImageLoader.this.imageLoadingByUrlPframe.remove(cacheImage.url);
            }
            String str2 = cacheImage.key;
            if (str2 != null) {
                ImageLoader.this.imageLoadingByKeys.remove(str2);
                ImageLoader.this.imageLoadingKeys.remove(ImageLoader.cutFilter(cacheImage.key));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:34:? A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$setImageAndClear$0(Drawable drawable, ArrayList arrayList, ArrayList arrayList2, String str) {
            int i = 0;
            if (drawable instanceof AnimatedFileDrawable) {
                AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) drawable;
                if (!animatedFileDrawable.isWebmSticker) {
                    boolean z = false;
                    while (i < arrayList.size()) {
                        ImageReceiver imageReceiver = (ImageReceiver) arrayList.get(i);
                        AnimatedFileDrawable animatedFileDrawableMakeCopy = i == 0 ? animatedFileDrawable : animatedFileDrawable.makeCopy();
                        if (imageReceiver.setImageBitmapByKey(animatedFileDrawableMakeCopy, this.key, this.type, false, ((Integer) arrayList2.get(i)).intValue())) {
                            if (animatedFileDrawableMakeCopy == animatedFileDrawable) {
                                z = true;
                            }
                        } else if (animatedFileDrawableMakeCopy != animatedFileDrawable) {
                            animatedFileDrawableMakeCopy.recycle();
                        }
                        i++;
                    }
                    if (!z) {
                        animatedFileDrawable.recycle();
                    }
                } else {
                    while (i < arrayList.size()) {
                        ((ImageReceiver) arrayList.get(i)).setImageBitmapByKey(drawable, this.key, this.types.get(i).intValue(), false, ((Integer) arrayList2.get(i)).intValue());
                        i++;
                    }
                }
            }
            if (str != null) {
                ImageLoader.this.decrementUseCount(str);
            }
        }
    }

    public static ImageLoader getInstance() {
        ImageLoader imageLoader;
        ImageLoader imageLoader2 = Instance;
        if (imageLoader2 != null) {
            return imageLoader2;
        }
        synchronized (ImageLoader.class) {
            try {
                imageLoader = Instance;
                if (imageLoader == null) {
                    imageLoader = new ImageLoader();
                    Instance = imageLoader;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return imageLoader;
    }

    public ImageLoader() {
        this.thumbGeneratingQueue.setPriority(1);
        int memoryClass = ((ActivityManager) ApplicationLoader.applicationContext.getSystemService("activity")).getMemoryClass();
        boolean z = memoryClass >= 192;
        this.canForce8888 = z;
        int iMin = Math.min(z ? 30 : 15, memoryClass / 7) * 1048576;
        float f = iMin;
        this.memCache = new LruCache<BitmapDrawable>((int) (0.8f * f)) { // from class: org.telegram.messenger.ImageLoader.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }
        };
        this.smallImagesMemCache = new LruCache<BitmapDrawable>((int) (f * 0.2f)) { // from class: org.telegram.messenger.ImageLoader.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                if (ImageLoader.this.ignoreRemoval == null || !ImageLoader.this.ignoreRemoval.equals(str)) {
                    Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                    if (num == null || num.intValue() == 0) {
                        Bitmap bitmap = bitmapDrawable.getBitmap();
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(bitmap);
                        AndroidUtilities.recycleBitmaps(arrayList);
                    }
                }
            }
        };
        this.wallpaperMemCache = new LruCache<BitmapDrawable>(iMin / 4) { // from class: org.telegram.messenger.ImageLoader.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.lottieMemCache = new LruCache<BitmapDrawable>(10485760) { // from class: org.telegram.messenger.ImageLoader.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

            @Override // org.telegram.messenger.LruCache
            public BitmapDrawable put(String str, BitmapDrawable bitmapDrawable) {
                if (bitmapDrawable instanceof AnimatedFileDrawable) {
                    ImageLoader.this.cachedAnimatedFileDrawables.add((AnimatedFileDrawable) bitmapDrawable);
                }
                return (BitmapDrawable) super.put(str, bitmapDrawable);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.messenger.LruCache
            public void entryRemoved(boolean z2, String str, BitmapDrawable bitmapDrawable, BitmapDrawable bitmapDrawable2) {
                Integer num = (Integer) ImageLoader.this.bitmapUseCounts.get(str);
                boolean z3 = bitmapDrawable instanceof AnimatedFileDrawable;
                if (z3) {
                    ImageLoader.this.cachedAnimatedFileDrawables.remove((AnimatedFileDrawable) bitmapDrawable);
                }
                if (num == null || num.intValue() == 0) {
                    if (z3) {
                        ((AnimatedFileDrawable) bitmapDrawable).recycle();
                    }
                    if (bitmapDrawable instanceof RLottieDrawable) {
                        ((RLottieDrawable) bitmapDrawable).recycle(false);
                    }
                }
            }
        };
        SparseArray sparseArray = new SparseArray();
        File cacheDir = AndroidUtilities.getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        for (int i = 0; i < 16; i++) {
            FileLoader.getInstance(i).setDelegate(new C28415(i));
        }
        FileLoader.setMediaDirs(sparseArray);
        C28426 c28426 = new C28426();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_NOFS");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addDataScheme("file");
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                ApplicationLoader.applicationContext.registerReceiver(c28426, intentFilter, 4);
            } else {
                ApplicationLoader.applicationContext.registerReceiver(c28426, intentFilter);
            }
        } catch (Throwable unused) {
        }
        checkMediaPaths();
    }

    /* JADX INFO: renamed from: org.telegram.messenger.ImageLoader$5 */
    class C28415 implements FileLoader.FileLoaderDelegate {
        final /* synthetic */ int val$currentAccount;

        C28415(int i) {
            this.val$currentAccount = i;
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileUploadProgressChanged(FileUploadOperation fileUploadOperation, final String str, final long j, final long j2, final boolean z) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileUploadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < jElapsedRealtime - 100 || j == j2) {
                fileUploadOperation.lastProgressUpdateTime = jElapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2), Boolean.valueOf(z));
                    }
                });
            }
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidUploaded(final String str, final TLRPC.InputFile inputFile, final TLRPC.InputEncryptedFile inputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidUploaded$2(i, str, inputFile, inputEncryptedFile, bArr, bArr2, j);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidUploaded$2(final int i, final String str, final TLRPC.InputFile inputFile, final TLRPC.InputEncryptedFile inputEncryptedFile, final byte[] bArr, final byte[] bArr2, final long j) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda7
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploaded, str, inputFile, inputEncryptedFile, bArr, bArr2, Long.valueOf(j));
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedUpload(final String str, final boolean z) {
            DispatchQueue dispatchQueue = Utilities.stageQueue;
            final int i = this.val$currentAccount;
            dispatchQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidFailedUpload$4(i, str, z);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedUpload$4(final int i, final String str, final boolean z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileUploadFailed, str, Boolean.valueOf(z));
                }
            });
            ImageLoader.this.fileProgresses.remove(str);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidLoaded(final String str, final File file, final Object obj, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidLoaded$5(file, str, i2, obj, i);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidLoaded$5(File file, String str, int i, Object obj, int i2) {
            FilePathDatabase.FileMeta fileMetadataFromParent;
            int i3;
            if (file != null && ((str.endsWith(".mp4") || str.endsWith(".jpg")) && (fileMetadataFromParent = FileLoader.getFileMetadataFromParent(i, obj)) != null)) {
                MessageObject messageObject = obj instanceof MessageObject ? (MessageObject) obj : null;
                long j = fileMetadataFromParent.dialogId;
                if (j >= 0) {
                    i3 = 1;
                } else {
                    i3 = ChatObject.isChannelAndNotMegaGroup(MessagesController.getInstance(i).getChat(Long.valueOf(-j))) ? 4 : 2;
                }
                if (SaveToGallerySettingsHelper.needSave(i3, fileMetadataFromParent, messageObject, i)) {
                    AndroidUtilities.addMediaToGallery(file.toString());
                }
            }
            NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoaded, str, file);
            ImageLoader.this.fileDidLoaded(str, file, i2);
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileDidFailedLoad(final String str, final int i) {
            ImageLoader.this.fileProgresses.remove(str);
            final int i2 = this.val$currentAccount;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$fileDidFailedLoad$6(str, i, i2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileDidFailedLoad$6(String str, int i, int i2) {
            ImageLoader.this.fileDidFailedLoad(str, i);
            NotificationCenter.getInstance(i2).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, str, Integer.valueOf(i));
        }

        @Override // org.telegram.messenger.FileLoader.FileLoaderDelegate
        public void fileLoadProgressChanged(final FileLoadOperation fileLoadOperation, final String str, final long j, final long j2) {
            ImageLoader.this.fileProgresses.put(str, new long[]{j, j2});
            if (!ImageLoader.this.imageLoadingByUrlPframe.isEmpty() && fileLoadOperation.checkPrefixPreloadFinished()) {
                ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda4
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$fileLoadProgressChanged$7(str, fileLoadOperation);
                    }
                });
            }
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            long j3 = fileLoadOperation.lastProgressUpdateTime;
            if (j3 == 0 || j3 < jElapsedRealtime - 500 || j == 0) {
                fileLoadOperation.lastProgressUpdateTime = jElapsedRealtime;
                final int i = this.val$currentAccount;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$5$$ExternalSyntheticLambda5
                    @Override // java.lang.Runnable
                    public final void run() {
                        NotificationCenter.getInstance(i).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadProgressChanged, str, Long.valueOf(j), Long.valueOf(j2));
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$fileLoadProgressChanged$7(String str, FileLoadOperation fileLoadOperation) {
            CacheImage cacheImage = (CacheImage) ImageLoader.this.imageLoadingByUrlPframe.remove(str);
            if (cacheImage == null) {
                return;
            }
            ImageLoader.this.imageLoadingByUrl.remove(str);
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < cacheImage.imageReceiverArray.size(); i++) {
                String str2 = cacheImage.keys.get(i);
                String str3 = cacheImage.filters.get(i);
                int iIntValue = cacheImage.types.get(i).intValue();
                ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i);
                int iIntValue2 = cacheImage.imageReceiverGuidsArray.get(i).intValue();
                CacheImage cacheImage2 = ImageLoader.this.imageLoadingByKeys.get(str2);
                if (cacheImage2 == null) {
                    cacheImage2 = new CacheImage();
                    cacheImage2.priority = cacheImage.priority;
                    cacheImage2.secureDocument = cacheImage.secureDocument;
                    cacheImage2.currentAccount = cacheImage.currentAccount;
                    cacheImage2.finalFilePath = fileLoadOperation.getCurrentFile();
                    cacheImage2.parentObject = cacheImage.parentObject;
                    cacheImage2.isPFrame = cacheImage.isPFrame;
                    cacheImage2.key = str2;
                    cacheImage2.imageLocation = cacheImage.imageLocation;
                    cacheImage2.type = iIntValue;
                    cacheImage2.ext = cacheImage.ext;
                    cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                    cacheImage2.cacheTask = ImageLoader.this.new CacheOutTask(cacheImage2);
                    cacheImage2.filter = str3;
                    cacheImage2.imageType = cacheImage.imageType;
                    cacheImage2.cacheType = cacheImage.cacheType;
                    ImageLoader.this.imageLoadingByKeys.put(str2, cacheImage2);
                    ImageLoader.this.imageLoadingKeys.add(ImageLoader.cutFilter(str2));
                    arrayList.add(cacheImage2.cacheTask);
                }
                cacheImage2.addImageReceiver(imageReceiver, str2, str3, iIntValue, iIntValue2);
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i2);
                if (cacheOutTask.cacheImage.type == 1) {
                    ImageLoader.this.cacheThumbOutQueue.postRunnable(cacheOutTask);
                } else {
                    ImageLoader.this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
                }
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.ImageLoader$6 */
    class C28426 extends BroadcastReceiver {
        C28426() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m1133d("file system changed");
            }
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$6$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onReceive$0();
                }
            };
            if ("android.intent.action.MEDIA_UNMOUNTED".equals(intent.getAction())) {
                AndroidUtilities.runOnUIThread(runnable, 1000L);
            } else {
                runnable.run();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0() {
            ImageLoader.this.checkMediaPaths();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int sizeOfBitmapDrawable(BitmapDrawable bitmapDrawable) {
        if (bitmapDrawable instanceof AnimatedFileDrawable) {
            AnimatedFileDrawable animatedFileDrawable = (AnimatedFileDrawable) bitmapDrawable;
            return Math.max(animatedFileDrawable.getIntrinsicHeight() * bitmapDrawable.getIntrinsicWidth() * 12, animatedFileDrawable.getRenderingHeight() * animatedFileDrawable.getRenderingWidth() * 12);
        }
        if (bitmapDrawable instanceof RLottieDrawable) {
            return bitmapDrawable.getIntrinsicWidth() * bitmapDrawable.getIntrinsicHeight() * 8;
        }
        return bitmapDrawable.getBitmap().getByteCount();
    }

    public void checkMediaPaths() {
        checkMediaPaths(null);
    }

    public void checkMediaPaths(final Runnable runnable) {
        this.cacheOutQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkMediaPaths$1(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkMediaPaths$1(final Runnable runnable) {
        final SparseArray<File> sparseArrayCreateMediaPaths = createMediaPaths();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                ImageLoader.m4164$r8$lambda$bace6vELOUCoq4DLR0nHnQHBEk(sparseArrayCreateMediaPaths, runnable);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$bac-e6vELOUCoq4DLR0nHnQHBEk, reason: not valid java name */
    public static /* synthetic */ void m4164$r8$lambda$bace6vELOUCoq4DLR0nHnQHBEk(SparseArray sparseArray, Runnable runnable) {
        FileLoader.setMediaDirs(sparseArray);
        if (runnable != null) {
            runnable.run();
        }
    }

    public void addTestWebFile(String str, WebFile webFile) {
        if (str == null || webFile == null) {
            return;
        }
        this.testWebFile.put(str, webFile);
    }

    public void removeTestWebFile(String str) {
        if (str == null) {
            return;
        }
        this.testWebFile.remove(str);
    }

    @TargetApi(26)
    private static void moveDirectory(File file, final File file2) {
        if (file.exists()) {
            if (file2.exists() || file2.mkdir()) {
                try {
                    Stream streamConvert = Stream.VivifiedWrapper.convert(Files.list(file.toPath()));
                    try {
                        streamConvert.forEach(new Consumer() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda11
                            @Override // java.util.function.Consumer
                            /* JADX INFO: renamed from: accept */
                            public final void m940v(Object obj) {
                                ImageLoader.m4166$r8$lambda$gOJHwLnGci070vSdd2ZIzBwZVo(file2, (java.nio.file.Path) obj);
                            }

                            public /* synthetic */ Consumer andThen(Consumer consumer) {
                                return Consumer$CC.$default$andThen(this, consumer);
                            }
                        });
                        streamConvert.close();
                    } finally {
                    }
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$gOJ-HwLnGci070vSdd2ZIzBwZVo, reason: not valid java name */
    public static /* synthetic */ void m4166$r8$lambda$gOJHwLnGci070vSdd2ZIzBwZVo(File file, java.nio.file.Path path) {
        File file2 = new File(file, path.getFileName().toString());
        if (Files.isDirectory(path, new LinkOption[0])) {
            moveDirectory(path.toFile(), file2);
            return;
        }
        try {
            Files.move(path, file2.toPath(), new CopyOption[0]);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x016d A[Catch: Exception -> 0x00b0, TryCatch #1 {Exception -> 0x00b0, blocks: (B:12:0x0054, B:14:0x0061, B:16:0x006f, B:19:0x0077, B:21:0x007e, B:24:0x00ad, B:27:0x00b3, B:29:0x00bf, B:32:0x00c8, B:34:0x00cb, B:38:0x00ec, B:37:0x00d0, B:39:0x00ef, B:56:0x0130, B:73:0x0193, B:75:0x01a0, B:77:0x01ab, B:79:0x01b3, B:81:0x01bb, B:83:0x01c7, B:84:0x01d2, B:85:0x01d5, B:147:0x0351, B:137:0x030f, B:127:0x02ce, B:117:0x028d, B:107:0x024c, B:149:0x0356, B:170:0x03c1, B:160:0x038d, B:174:0x03cf, B:97:0x0218, B:55:0x012d, B:57:0x013f, B:59:0x0147, B:72:0x018c, B:62:0x0154, B:64:0x015a, B:69:0x0167, B:71:0x016d, B:67:0x0161, B:171:0x03c5, B:173:0x03c9, B:138:0x0312, B:140:0x0324, B:142:0x032b, B:144:0x033a, B:128:0x02d1, B:130:0x02e3, B:132:0x02ea, B:134:0x02f9, B:118:0x0290, B:120:0x02a2, B:122:0x02a9, B:124:0x02b8, B:151:0x035c, B:153:0x036a, B:155:0x0370, B:157:0x0379, B:108:0x024f, B:110:0x0261, B:112:0x0268, B:114:0x0277, B:98:0x021b, B:100:0x022b, B:102:0x0231, B:104:0x0238, B:88:0x01e7, B:90:0x01f7, B:92:0x01fd, B:94:0x0204, B:161:0x0390, B:163:0x039e, B:165:0x03a4, B:167:0x03ad), top: B:180:0x0054, inners: #0, #2, #3, #4, #5, #6, #7, #9 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SparseArray<File> createMediaPaths() {
        File file;
        File[] externalFilesDirs;
        SparseArray<File> sparseArray = new SparseArray<>();
        File cacheDir = AndroidUtilities.getCacheDir();
        if (!cacheDir.isDirectory()) {
            try {
                cacheDir.mkdirs();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("cache path = " + cacheDir);
        }
        FileLog.m1133d("selected SD card = " + SharedConfig.storageCacheDir);
        try {
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        if ("mounted".equals(Environment.getExternalStorageState())) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            File file2 = null;
            if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
                ArrayList<File> rootDirs = AndroidUtilities.getRootDirs();
                if (rootDirs != null) {
                    int size = rootDirs.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        File file3 = rootDirs.get(i);
                        FileLog.m1133d("root dir " + i + " " + file3);
                        if (file3.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                            externalStorageDirectory = file3;
                            break;
                        }
                        i++;
                    }
                }
                if (!externalStorageDirectory.getAbsolutePath().startsWith(SharedConfig.storageCacheDir) && (externalFilesDirs = ApplicationLoader.applicationContext.getExternalFilesDirs(null)) != null) {
                    for (int i2 = 0; i2 < externalFilesDirs.length; i2++) {
                        if (externalFilesDirs[i2] != null) {
                            FileLog.m1133d("dirsDebug " + i2 + " " + externalFilesDirs[i2]);
                        }
                    }
                }
            }
            FileLog.m1133d("external storage = " + externalStorageDirectory);
            if (Build.VERSION.SDK_INT >= 30) {
                try {
                    if (ApplicationLoader.applicationContext.getExternalMediaDirs().length > 0) {
                        File publicStorageDir = getPublicStorageDir();
                        try {
                            file = new File(publicStorageDir, "exteraGram");
                        } catch (Exception e3) {
                            file = publicStorageDir;
                            e = e3;
                        }
                        try {
                            file.mkdirs();
                        } catch (Exception e4) {
                            e = e4;
                            FileLog.m1136e(e);
                        }
                    } else {
                        file = null;
                    }
                } catch (Exception e5) {
                    e = e5;
                    file = null;
                }
                this.telegramPath = new File(ApplicationLoader.applicationContext.getExternalFilesDir(null), "exteraGram");
                file2 = file;
            } else {
                if (TextUtils.isEmpty(SharedConfig.storageCacheDir) || !externalStorageDirectory.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                    if (externalStorageDirectory.exists()) {
                        if (externalStorageDirectory.isDirectory()) {
                            if (!externalStorageDirectory.canWrite()) {
                            }
                        }
                        FileLog.m1133d("can't write to this directory = " + externalStorageDirectory + " use files dir");
                        externalStorageDirectory = ApplicationLoader.applicationContext.getExternalFilesDir(null);
                    } else if (externalStorageDirectory.mkdirs()) {
                        if (!externalStorageDirectory.canWrite()) {
                            FileLog.m1133d("can't write to this directory = " + externalStorageDirectory + " use files dir");
                            externalStorageDirectory = ApplicationLoader.applicationContext.getExternalFilesDir(null);
                        }
                    }
                    return sparseArray;
                }
                this.telegramPath = new File(externalStorageDirectory, "exteraGram");
            }
            this.telegramPath.mkdirs();
            if (!this.telegramPath.isDirectory()) {
                ArrayList<File> dataDirs = AndroidUtilities.getDataDirs();
                int size2 = dataDirs.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size2) {
                        break;
                    }
                    File file4 = dataDirs.get(i3);
                    if (file4 != null && !TextUtils.isEmpty(SharedConfig.storageCacheDir) && file4.getAbsolutePath().startsWith(SharedConfig.storageCacheDir)) {
                        File file5 = new File(file4, "exteraGram");
                        this.telegramPath = file5;
                        file5.mkdirs();
                        break;
                    }
                    i3++;
                }
            }
            if (this.telegramPath.isDirectory()) {
                try {
                    File file6 = new File(this.telegramPath, "exteraGram Images");
                    file6.mkdir();
                    if (file6.isDirectory() && canMoveFiles(cacheDir, file6, 0)) {
                        sparseArray.put(0, file6);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("image path = " + file6);
                        }
                    }
                } catch (Exception e6) {
                    FileLog.m1136e(e6);
                }
                try {
                    File file7 = new File(this.telegramPath, "exteraGram Video");
                    file7.mkdir();
                    if (file7.isDirectory() && canMoveFiles(cacheDir, file7, 2)) {
                        sparseArray.put(2, file7);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("video path = " + file7);
                        }
                    }
                } catch (Exception e7) {
                    FileLog.m1136e(e7);
                }
                try {
                    File file8 = new File(this.telegramPath, "exteraGram Audio");
                    file8.mkdir();
                    if (file8.isDirectory() && canMoveFiles(cacheDir, file8, 1)) {
                        AndroidUtilities.createEmptyFile(new File(file8, ".nomedia"));
                        sparseArray.put(1, file8);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("audio path = " + file8);
                        }
                    }
                } catch (Exception e8) {
                    FileLog.m1136e(e8);
                }
                try {
                    File file9 = new File(this.telegramPath, "exteraGram Documents");
                    file9.mkdir();
                    if (file9.isDirectory() && canMoveFiles(cacheDir, file9, 3)) {
                        AndroidUtilities.createEmptyFile(new File(file9, ".nomedia"));
                        sparseArray.put(3, file9);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("documents path = " + file9);
                        }
                    }
                } catch (Exception e9) {
                    FileLog.m1136e(e9);
                }
                try {
                    File file10 = new File(this.telegramPath, "exteraGram Files");
                    file10.mkdir();
                    if (file10.isDirectory() && canMoveFiles(cacheDir, file10, 5)) {
                        AndroidUtilities.createEmptyFile(new File(file10, ".nomedia"));
                        sparseArray.put(5, file10);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("files path = " + file10);
                        }
                    }
                } catch (Exception e10) {
                    FileLog.m1136e(e10);
                }
                try {
                    File file11 = new File(this.telegramPath, "exteraGram Stories");
                    file11.mkdir();
                    if (file11.isDirectory() && canMoveFiles(cacheDir, file11, 6)) {
                        AndroidUtilities.createEmptyFile(new File(file11, ".nomedia"));
                        sparseArray.put(6, file11);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("stories path = " + file11);
                        }
                    }
                } catch (Exception e11) {
                    FileLog.m1136e(e11);
                }
            }
            if (file2 != null && file2.isDirectory()) {
                try {
                    File file12 = new File(file2, "exteraGram Images");
                    file12.mkdir();
                    if (file12.isDirectory() && canMoveFiles(cacheDir, file12, 0)) {
                        sparseArray.put(100, file12);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("image path = " + file12);
                        }
                    }
                } catch (Exception e12) {
                    FileLog.m1136e(e12);
                }
                try {
                    File file13 = new File(file2, "exteraGram Video");
                    file13.mkdir();
                    if (file13.isDirectory() && canMoveFiles(cacheDir, file13, 2)) {
                        sparseArray.put(101, file13);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m1133d("video path = " + file13);
                        }
                    }
                } catch (Exception e13) {
                    FileLog.m1136e(e13);
                }
            }
        } else if (BuildVars.LOGS_ENABLED) {
            FileLog.m1133d("this Android can't rename files");
        }
        SharedConfig.checkSaveToGalleryFiles();
        return sparseArray;
    }

    private File getPublicStorageDir() {
        File file = ApplicationLoader.applicationContext.getExternalMediaDirs()[0];
        if (!TextUtils.isEmpty(SharedConfig.storageCacheDir)) {
            for (int i = 0; i < ApplicationLoader.applicationContext.getExternalMediaDirs().length; i++) {
                File file2 = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                if (file2 != null && file2.getPath().startsWith(SharedConfig.storageCacheDir)) {
                    file = ApplicationLoader.applicationContext.getExternalMediaDirs()[i];
                }
            }
        }
        return file;
    }

    private boolean canMoveFiles(File file, File file2, int i) throws Throwable {
        File file3;
        File file4;
        byte[] bArr;
        RandomAccessFile randomAccessFile;
        RandomAccessFile randomAccessFile2 = null;
        try {
            try {
                if (i == 0 || i == 3 || i == 5 || i == 6 || i == 1 || i == 2) {
                    file3 = new File(file, "000000000_999999_temp.f");
                    file4 = new File(file2, "000000000_999999.f");
                } else {
                    file4 = null;
                    file3 = null;
                }
                bArr = new byte[1024];
                file3.createNewFile();
                randomAccessFile = new RandomAccessFile(file3, "rws");
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e) {
            e = e;
        }
        try {
            randomAccessFile.write(bArr);
            randomAccessFile.close();
            boolean zRenameTo = file3.renameTo(file4);
            file3.delete();
            file4.delete();
            return zRenameTo;
        } catch (Exception e2) {
            e = e2;
            randomAccessFile2 = randomAccessFile;
            FileLog.m1136e(e);
            if (randomAccessFile2 == null) {
                return false;
            }
            try {
                randomAccessFile2.close();
                return false;
            } catch (Exception e3) {
                FileLog.m1136e(e3);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Exception e4) {
                    FileLog.m1136e(e4);
                }
            }
            throw th;
        }
    }

    public Float getFileProgress(String str) {
        long[] jArr;
        if (str == null || (jArr = this.fileProgresses.get(str)) == null) {
            return null;
        }
        long j = jArr[1];
        if (j == 0) {
            return Float.valueOf(0.0f);
        }
        return Float.valueOf(Math.min(1.0f, jArr[0] / j));
    }

    public long[] getFileProgressSizes(String str) {
        if (str == null) {
            return null;
        }
        return this.fileProgresses.get(str);
    }

    public String getReplacedKey(String str) {
        if (str == null) {
            return null;
        }
        return this.replacedBitmaps.get(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x004d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void performReplace(String str, String str2) {
        LruCache<BitmapDrawable> lruCache = this.memCache;
        BitmapDrawable bitmapDrawable = lruCache.get(str);
        if (bitmapDrawable == null) {
            lruCache = this.smallImagesMemCache;
            bitmapDrawable = lruCache.get(str);
        }
        this.replacedBitmaps.put(str, str2);
        if (bitmapDrawable != null) {
            BitmapDrawable bitmapDrawable2 = lruCache.get(str2);
            if (bitmapDrawable2 != null && bitmapDrawable2.getBitmap() != null && bitmapDrawable.getBitmap() != null) {
                Bitmap bitmap = bitmapDrawable2.getBitmap();
                Bitmap bitmap2 = bitmapDrawable.getBitmap();
                if (bitmap.getWidth() > bitmap2.getWidth() || bitmap.getHeight() > bitmap2.getHeight()) {
                    lruCache.remove(str);
                }
            } else {
                this.ignoreRemoval = str;
                lruCache.remove(str);
                lruCache.put(str2, bitmapDrawable);
                this.ignoreRemoval = null;
            }
        }
        Integer num = this.bitmapUseCounts.get(str);
        if (num != null) {
            this.bitmapUseCounts.put(str2, num);
            this.bitmapUseCounts.remove(str);
        }
    }

    public void incrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            this.bitmapUseCounts.put(str, 1);
        } else {
            this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public boolean decrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            return true;
        }
        if (num.intValue() == 1) {
            this.bitmapUseCounts.remove(str);
            return true;
        }
        this.bitmapUseCounts.put(str, Integer.valueOf(num.intValue() - 1));
        return false;
    }

    public void removeImage(String str) {
        this.bitmapUseCounts.remove(str);
        this.memCache.remove(str);
        this.smallImagesMemCache.remove(str);
    }

    public boolean isInMemCache(String str, boolean z) {
        return z ? getFromLottieCache(str) != null : getFromMemCache(str) != null;
    }

    public void clearMemory() {
        this.smallImagesMemCache.evictAll();
        this.memCache.evictAll();
        this.lottieMemCache.evictAll();
    }

    private void removeFromWaitingForThumb(int i, ImageReceiver imageReceiver) {
        String str = this.waitingForQualityThumbByTag.get(i);
        if (str != null) {
            ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
            if (thumbGenerateInfo != null) {
                int iIndexOf = thumbGenerateInfo.imageReceiverArray.indexOf(imageReceiver);
                if (iIndexOf >= 0) {
                    thumbGenerateInfo.imageReceiverArray.remove(iIndexOf);
                    thumbGenerateInfo.imageReceiverGuidsArray.remove(iIndexOf);
                }
                if (thumbGenerateInfo.imageReceiverArray.isEmpty()) {
                    this.waitingForQualityThumb.remove(str);
                }
            }
            this.waitingForQualityThumbByTag.remove(i);
        }
    }

    public void changeFileLoadingPriorityForImageReceiver(final ImageReceiver imageReceiver) {
        if (imageReceiver == null) {
            return;
        }
        final int fileLoadingPriority = imageReceiver.getFileLoadingPriority();
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$changeFileLoadingPriorityForImageReceiver$3(imageReceiver, fileLoadingPriority);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$changeFileLoadingPriorityForImageReceiver$3(ImageReceiver imageReceiver, int i) {
        CacheImage cacheImage;
        int i2 = 0;
        while (true) {
            int i3 = 3;
            if (i2 >= 3) {
                return;
            }
            if (i2 == 0) {
                i3 = 1;
            } else if (i2 == 1) {
                i3 = 0;
            }
            int tag = imageReceiver.getTag(i3);
            if (tag != 0 && (cacheImage = this.imageLoadingByTag.get(tag)) != null) {
                cacheImage.changePriority(i);
            }
            i2++;
        }
    }

    public void cancelLoadingForImageReceiver(final ImageReceiver imageReceiver, final boolean z) {
        if (imageReceiver == null) {
            return;
        }
        WebInstantView.cancelLoadPhoto(imageReceiver);
        ArrayList<Runnable> loadingOperations = imageReceiver.getLoadingOperations();
        synchronized (loadingOperations) {
            try {
                if (!loadingOperations.isEmpty()) {
                    for (int i = 0; i < loadingOperations.size(); i++) {
                        this.imageLoadQueue.cancelRunnable(loadingOperations.get(i));
                    }
                    loadingOperations.clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        imageReceiver.addLoadingImageRunnable(null);
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelLoadingForImageReceiver$4(z, imageReceiver);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelLoadingForImageReceiver$4(boolean z, ImageReceiver imageReceiver) {
        int i = 0;
        while (true) {
            int i2 = 3;
            if (i >= 3) {
                return;
            }
            if (i > 0 && !z) {
                return;
            }
            if (i == 0) {
                i2 = 1;
            } else if (i == 1) {
                i2 = 0;
            }
            int tag = imageReceiver.getTag(i2);
            if (tag != 0) {
                if (i == 0) {
                    removeFromWaitingForThumb(tag, imageReceiver);
                }
                CacheImage cacheImage = this.imageLoadingByTag.get(tag);
                if (cacheImage != null) {
                    cacheImage.removeImageReceiver(imageReceiver);
                }
            }
            i++;
        }
    }

    public BitmapDrawable getImageFromMemory(TLObject tLObject, String str, String str2) {
        String strMD5 = null;
        if (tLObject == null && str == null) {
            return null;
        }
        if (str != null) {
            strMD5 = Utilities.MD5(str);
        } else if (tLObject instanceof TLRPC.FileLocation) {
            TLRPC.FileLocation fileLocation = (TLRPC.FileLocation) tLObject;
            strMD5 = fileLocation.volume_id + "_" + fileLocation.local_id;
        } else if (tLObject instanceof TLRPC.Document) {
            TLRPC.Document document = (TLRPC.Document) tLObject;
            strMD5 = document.dc_id + "_" + document.f1668id;
        } else if (tLObject instanceof SecureDocument) {
            SecureDocument secureDocument = (SecureDocument) tLObject;
            strMD5 = secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.f1804id;
        } else if (tLObject instanceof WebFile) {
            strMD5 = Utilities.MD5(((WebFile) tLObject).url);
        }
        if (str2 != null) {
            strMD5 = strMD5 + "@" + str2;
        }
        return getFromMemCache(strMD5);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: replaceImageInCacheInternal, reason: merged with bridge method [inline-methods] */
    public void lambda$replaceImageInCache$5(String str, String str2, ImageLocation imageLocation) {
        ArrayList<String> filterKeys;
        for (int i = 0; i < 2; i++) {
            if (i == 0) {
                filterKeys = this.memCache.getFilterKeys(str);
            } else {
                filterKeys = this.smallImagesMemCache.getFilterKeys(str);
            }
            if (filterKeys != null) {
                for (int i2 = 0; i2 < filterKeys.size(); i2++) {
                    String str3 = filterKeys.get(i2);
                    String str4 = str + "@" + str3;
                    String str5 = str2 + "@" + str3;
                    performReplace(str4, str5);
                    NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str4, str5, imageLocation);
                }
            } else {
                performReplace(str, str2);
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.didReplacedPhotoInMemCache, str, str2, imageLocation);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String cutFilter(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(64);
        return iIndexOf >= 0 ? str.substring(0, iIndexOf) : str;
    }

    public void replaceImageInCache(final String str, final String str2, final ImageLocation imageLocation, boolean z) {
        if (z) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda10
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$replaceImageInCache$5(str, str2, imageLocation);
                }
            });
        } else {
            lambda$replaceImageInCache$5(str, str2, imageLocation);
        }
    }

    public void putImageToCache(BitmapDrawable bitmapDrawable, String str, boolean z) {
        if (str.endsWith("_nocache")) {
            return;
        }
        if (z) {
            this.smallImagesMemCache.put(str, bitmapDrawable);
        } else {
            this.memCache.put(str, bitmapDrawable);
        }
    }

    private void generateThumb(int i, File file, ThumbGenerateInfo thumbGenerateInfo) {
        if ((i != 0 && i != 2 && i != 3) || file == null || thumbGenerateInfo == null) {
            return;
        }
        if (this.thumbGenerateTasks.get(FileLoader.getAttachFileName(thumbGenerateInfo.parentDocument)) == null) {
            this.thumbGeneratingQueue.postRunnable(new ThumbGenerateTask(i, file, thumbGenerateInfo));
        }
    }

    public void cancelForceLoadingForImageReceiver(ImageReceiver imageReceiver) {
        final String imageKey;
        if (imageReceiver == null || (imageKey = imageReceiver.getImageKey()) == null) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$cancelForceLoadingForImageReceiver$6(imageKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$cancelForceLoadingForImageReceiver$6(String str) {
        this.forceLoadingImages.remove(str);
    }

    private void createLoadOperationForImageReceiver(final ImageReceiver imageReceiver, final String str, final String str2, final String str3, final ImageLocation imageLocation, final String str4, final long j, final int i, final int i2, final int i3, final int i4) {
        if (imageReceiver == null || str2 == null || str == null || imageLocation == null) {
            return;
        }
        int tag = imageReceiver.getTag(i2);
        if (tag == 0) {
            tag = this.lastImageNum;
            imageReceiver.setTag(tag, i2);
            int i5 = this.lastImageNum + 1;
            this.lastImageNum = i5;
            if (i5 == Integer.MAX_VALUE) {
                this.lastImageNum = 0;
            }
        }
        final int i6 = tag;
        final boolean zIsNeedsQualityThumb = imageReceiver.isNeedsQualityThumb();
        final Object parentObject = imageReceiver.getParentObject();
        final TLRPC.Document qualityThumbDocument = imageReceiver.getQualityThumbDocument();
        final boolean zIsShouldGenerateQualityThumb = imageReceiver.isShouldGenerateQualityThumb();
        final int currentAccount = imageReceiver.getCurrentAccount();
        final boolean z = i2 == 0 && imageReceiver.isCurrentKeyQuality();
        Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$createLoadOperationForImageReceiver$7(i3, str2, str, i6, imageReceiver, i4, str4, i2, imageLocation, z, parentObject, currentAccount, qualityThumbDocument, zIsNeedsQualityThumb, zIsShouldGenerateQualityThumb, str3, i, j);
            }
        };
        this.imageLoadQueue.postRunnable(runnable, imageReceiver.getFileLoadingPriority() == 0 ? 0L : 1L);
        imageReceiver.addLoadingImageRunnable(runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:185:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0478  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x055d  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0562  */
    /* JADX WARN: Removed duplicated region for block: B:262:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:265:0x0592 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:309:0x0680  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x0688  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0215  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$createLoadOperationForImageReceiver$7(int i, String str, String str2, int i2, ImageReceiver imageReceiver, int i3, String str3, int i4, ImageLocation imageLocation, boolean z, Object obj, int i5, TLRPC.Document document, boolean z2, boolean z3, String str4, int i6, long j) {
        String str5;
        int i7;
        int i8;
        String str6;
        int i9;
        int i10;
        int i11;
        int i12;
        File file;
        int mediaType;
        String str7;
        File pathToMessage;
        boolean z4;
        String str8;
        int i13;
        int i14;
        long j2;
        ImageLoader imageLoader;
        int i15;
        ImageLoader imageLoader2;
        int i16;
        int i17;
        int i18;
        ImageLoader imageLoader3;
        String str9;
        int i19;
        long j3;
        TLRPC.Document document2;
        File file2;
        File file3;
        String str10;
        int i20;
        int i21;
        int i22;
        ImageLoader imageLoader4;
        CacheImage cacheImage;
        CacheImage cacheImage2;
        int i23;
        ImageReceiver imageReceiver2 = imageReceiver;
        TLRPC.Document document3 = document;
        if (i != 2) {
            CacheImage cacheImage3 = this.imageLoadingByUrl.get(str);
            CacheImage cacheImage4 = this.imageLoadingByKeys.get(str2);
            CacheImage cacheImage5 = this.imageLoadingByTag.get(i2);
            if (cacheImage5 != null) {
                if (cacheImage5 == cacheImage4) {
                    cacheImage5.setImageReceiverGuid(imageReceiver2, i3);
                    cacheImage = cacheImage3;
                    cacheImage2 = cacheImage4;
                    i7 = 0;
                } else if (cacheImage5 == cacheImage3) {
                    cacheImage = cacheImage3;
                    cacheImage2 = cacheImage4;
                    i7 = 0;
                    if (cacheImage4 == null) {
                        cacheImage5.replaceImageReceiver(imageReceiver2, str2, str3, i4, i3);
                    }
                } else {
                    cacheImage = cacheImage3;
                    cacheImage2 = cacheImage4;
                    i7 = 0;
                    cacheImage5.removeImageReceiver(imageReceiver2);
                }
                i23 = 1;
                if (i23 == 0 && cacheImage2 != null) {
                    cacheImage2.addImageReceiver(imageReceiver2, str2, str3, i4, i3);
                    i23 = 1;
                }
                if (i23 == 0 || cacheImage == null) {
                    imageReceiver2 = imageReceiver;
                    str5 = str3;
                    i8 = i23;
                } else {
                    imageReceiver2 = imageReceiver;
                    str5 = str3;
                    cacheImage.addImageReceiver(imageReceiver2, str2, str5, i4, i3);
                    i8 = 1;
                }
            } else {
                cacheImage = cacheImage3;
                cacheImage2 = cacheImage4;
                i7 = 0;
            }
            i23 = i7;
            if (i23 == 0) {
                cacheImage2.addImageReceiver(imageReceiver2, str2, str3, i4, i3);
                i23 = 1;
            }
            if (i23 == 0) {
                imageReceiver2 = imageReceiver;
                str5 = str3;
                i8 = i23;
            }
        } else {
            str5 = str3;
            i7 = 0;
            i8 = 0;
        }
        if (i8 == 0) {
            String str11 = imageLocation.path;
            if (str11 != null) {
                if (str11.startsWith("http") || str11.startsWith("athumb")) {
                    i11 = i7;
                    file = null;
                } else if (str11.startsWith("thumb://")) {
                    int iIndexOf = str11.indexOf(":", 8);
                    file = iIndexOf >= 0 ? new File(str11.substring(iIndexOf + 1)) : null;
                    i11 = 1;
                } else {
                    if (str11.startsWith("vthumb://")) {
                        int iIndexOf2 = str11.indexOf(":", 9);
                        if (iIndexOf2 >= 0) {
                            file = new File(str11.substring(iIndexOf2 + 1));
                        }
                    } else {
                        file = new File(str11);
                    }
                    i11 = 1;
                }
                i9 = i;
                str6 = "athumb";
                i10 = i7;
            } else {
                if (i == 0 && z) {
                    if (obj instanceof MessageObject) {
                        MessageObject messageObject = (MessageObject) obj;
                        TLRPC.Document document4 = messageObject.getDocument();
                        str7 = messageObject.messageOwner.attachPath;
                        str6 = "athumb";
                        document3 = document4;
                        pathToMessage = FileLoader.getInstance(i5).getPathToMessage(messageObject.messageOwner);
                        mediaType = messageObject.getMediaType();
                        z4 = i7;
                    } else {
                        str6 = "athumb";
                        if (document3 != null) {
                            File pathToAttach = FileLoader.getInstance(i5).getPathToAttach(document3, true);
                            mediaType = MessageObject.isVideoDocument(document3) ? 2 : 3;
                            pathToMessage = pathToAttach;
                            z4 = 1;
                            str7 = null;
                        } else {
                            int i24 = i7;
                            mediaType = i24 == true ? 1 : 0;
                            document3 = null;
                            str7 = null;
                            pathToMessage = null;
                            z4 = i24;
                        }
                    }
                    if (document3 == null) {
                        i9 = i;
                        i10 = i7;
                        i11 = 1;
                    } else if (z2) {
                        File file4 = new File(FileLoader.getDirectory(4), "q_" + document3.dc_id + "_" + document3.f1668id + ".jpg");
                        if (file4.exists()) {
                            i10 = 1;
                        } else {
                            i10 = i7;
                            file4 = null;
                        }
                        if (!TextUtils.isEmpty(str7)) {
                            File file5 = new File(str7);
                            if (!file5.exists()) {
                                file5 = null;
                            }
                            if (file5 == null) {
                                file5 = pathToMessage;
                            }
                            if (file4 == null) {
                                String attachFileName = FileLoader.getAttachFileName(document3);
                                ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(attachFileName);
                                if (thumbGenerateInfo == null) {
                                    thumbGenerateInfo = new ThumbGenerateInfo();
                                    thumbGenerateInfo.parentDocument = document3;
                                    thumbGenerateInfo.filter = str5;
                                    thumbGenerateInfo.big = z4;
                                    this.waitingForQualityThumb.put(attachFileName, thumbGenerateInfo);
                                }
                                if (!thumbGenerateInfo.imageReceiverArray.contains(imageReceiver2)) {
                                    thumbGenerateInfo.imageReceiverArray.add(imageReceiver2);
                                    thumbGenerateInfo.imageReceiverGuidsArray.add(Integer.valueOf(i3));
                                }
                                this.waitingForQualityThumbByTag.put(i2, attachFileName);
                                if (file5.exists() && z3) {
                                    generateThumb(mediaType, file5, thumbGenerateInfo);
                                    return;
                                }
                            } else {
                                i9 = i;
                                file = file4;
                                i11 = 1;
                            }
                        }
                    }
                } else {
                    str6 = "athumb";
                    i9 = i;
                    i10 = i7;
                    i11 = i10;
                }
                i12 = 2;
                file = null;
                if (i9 != i12) {
                    boolean zIsEncrypted = imageLocation.isEncrypted();
                    int i25 = i11;
                    CacheImage cacheImage6 = new CacheImage();
                    cacheImage6.priority = imageReceiver2.getFileLoadingPriority() == 0 ? i7 : 1;
                    if (!z) {
                        if (imageLocation.imageType == i12 || MessageObject.isGifDocument(imageLocation.webFile) || MessageObject.isGifDocument(imageLocation.document) || MessageObject.isRoundVideoDocument(imageLocation.document) || MessageObject.isVideoSticker(imageLocation.document)) {
                            cacheImage6.imageType = i12;
                        } else {
                            String str12 = imageLocation.path;
                            if (str12 != null && !str12.startsWith("vthumb") && !str12.startsWith("thumb")) {
                                String httpUrlExtension = getHttpUrlExtension(str12, "jpg");
                                if (httpUrlExtension.equalsIgnoreCase("webm") || httpUrlExtension.equalsIgnoreCase("mp4") || httpUrlExtension.equalsIgnoreCase("gif")) {
                                    cacheImage6.imageType = i12;
                                } else if ("tgs".equals(str4)) {
                                    cacheImage6.imageType = 1;
                                }
                            }
                        }
                    }
                    if (file == null) {
                        TLRPC.PhotoSize photoSize = imageLocation.photoSize;
                        j2 = 0;
                        if ((photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                            str8 = str;
                            i13 = i6;
                            imageLoader3 = this;
                            int i26 = i10;
                            str9 = AUTOPLAY_FILTER;
                            i19 = 1;
                            i15 = i26;
                            j3 = 0;
                            i14 = 1;
                        } else {
                            SecureDocument secureDocument = imageLocation.secureDocument;
                            if (secureDocument != null) {
                                cacheImage6.secureDocument = secureDocument;
                                int i27 = secureDocument.secureFile.dc_id == Integer.MIN_VALUE ? 1 : i7;
                                file = new File(FileLoader.getDirectory(4), str);
                                i13 = i6;
                                imageLoader4 = this;
                                i15 = i10;
                                i14 = i27;
                                str8 = str;
                                str9 = AUTOPLAY_FILTER;
                                i19 = 1;
                            } else {
                                String str13 = "application/x-tgwallpattern";
                                int i28 = i10;
                                if (AUTOPLAY_FILTER.equals(str5) || isAnimatedAvatar(str5)) {
                                    document2 = imageLocation.document;
                                    if (document2 == null) {
                                        int i29 = i25;
                                        if (document2 instanceof TLRPC.TL_documentEncrypted) {
                                            file3 = new File(FileLoader.getDirectory(4), str);
                                        } else if (MessageObject.isVideoDocument(document2)) {
                                            file3 = new File(FileLoader.getDirectory(2), str);
                                        } else {
                                            file3 = new File(FileLoader.getDirectory(3), str);
                                        }
                                        if ((isAnimatedAvatar(str5) || AUTOPLAY_FILTER.equals(str5)) && !file3.exists()) {
                                            File directory = FileLoader.getDirectory(4);
                                            str10 = AUTOPLAY_FILTER;
                                            file3 = new File(directory, document2.dc_id + "_" + document2.f1668id + ".temp");
                                        } else {
                                            str10 = AUTOPLAY_FILTER;
                                        }
                                        file = file3;
                                        if (document2 instanceof DocumentObject.ThemeDocument) {
                                            if (((DocumentObject.ThemeDocument) document2).wallpaper == null) {
                                                i29 = 1;
                                            }
                                            cacheImage6.imageType = 5;
                                            i20 = i29;
                                        } else if ("application/x-tgsdice".equals(imageLocation.document.mime_type)) {
                                            cacheImage6.imageType = 1;
                                            i20 = 1;
                                        } else {
                                            if ("application/x-tgsticker".equals(document2.mime_type)) {
                                                cacheImage6.imageType = 1;
                                            } else if (str13.equals(document2.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                                cacheImage6.imageType = 3;
                                            }
                                            i20 = i29;
                                            i19 = 1;
                                            imageLoader3 = this;
                                            str8 = str;
                                            i15 = i28;
                                            i13 = i6;
                                            i14 = i20;
                                            j3 = document2.size;
                                            str9 = str10;
                                        }
                                        i19 = 1;
                                        imageLoader3 = this;
                                        str8 = str;
                                        i15 = i28;
                                        i13 = i6;
                                        i14 = i20;
                                        j3 = document2.size;
                                        str9 = str10;
                                    } else {
                                        i14 = i25;
                                        if (imageLocation.webFile != null) {
                                            str8 = str;
                                            file = new File(FileLoader.getDirectory(3), str8);
                                            i19 = 1;
                                            imageLoader3 = this;
                                            i15 = i28;
                                            str9 = AUTOPLAY_FILTER;
                                            j3 = 0;
                                            i13 = i6;
                                        } else {
                                            str8 = str;
                                            i19 = 1;
                                            if (i6 == 1) {
                                                file2 = new File(FileLoader.getDirectory(4), str8);
                                            } else {
                                                file2 = new File(FileLoader.getDirectory(i7), str8);
                                            }
                                            ImageLoader imageLoader5 = this;
                                            if (imageLoader5.isAnimatedAvatar(str5)) {
                                                str9 = AUTOPLAY_FILTER;
                                            } else {
                                                str9 = AUTOPLAY_FILTER;
                                                if (str9.equals(str5) && imageLocation.location != null && !file2.exists()) {
                                                }
                                                j3 = 0;
                                                i13 = i6;
                                                file = file2;
                                                i15 = i28;
                                                imageLoader3 = imageLoader5;
                                            }
                                            file2 = new File(FileLoader.getDirectory(4), imageLocation.location.volume_id + "_" + imageLocation.location.local_id + ".temp");
                                            j3 = 0;
                                            i13 = i6;
                                            file = file2;
                                            i15 = i28;
                                            imageLoader3 = imageLoader5;
                                        }
                                    }
                                } else if (i6 != 0 || j <= 0 || imageLocation.path != null || zIsEncrypted) {
                                    File file6 = new File(FileLoader.getDirectory(4), str);
                                    if (file6.exists()) {
                                        i21 = i6;
                                        i22 = 1;
                                    } else {
                                        i21 = i6;
                                        if (i21 == 2) {
                                            file6 = new File(FileLoader.getDirectory(4), str + ".enc");
                                        }
                                        i22 = i28;
                                    }
                                    TLRPC.Document document5 = imageLocation.document;
                                    if (document5 != null) {
                                        if (document5 instanceof DocumentObject.ThemeDocument) {
                                            if (((DocumentObject.ThemeDocument) document5).wallpaper == null) {
                                                i25 = 1;
                                            }
                                            cacheImage6.imageType = 5;
                                        } else if ("application/x-tgsdice".equals(document5.mime_type)) {
                                            cacheImage6.imageType = 1;
                                            imageLoader3 = this;
                                            i14 = 1;
                                            i15 = i22;
                                            i13 = i21;
                                            str9 = AUTOPLAY_FILTER;
                                            file = file6;
                                            str8 = str;
                                            j3 = 0;
                                            i19 = 1;
                                        } else if ("application/x-tgsticker".equals(imageLocation.document.mime_type)) {
                                            cacheImage6.imageType = 1;
                                        } else if ("application/x-tgwallpattern".equals(imageLocation.document.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                            cacheImage6.imageType = 3;
                                        }
                                    }
                                    i14 = i25;
                                    str8 = str;
                                    i13 = i21;
                                    i19 = 1;
                                    imageLoader4 = this;
                                    i15 = i22;
                                    file = file6;
                                    str9 = AUTOPLAY_FILTER;
                                } else {
                                    str13 = "application/x-tgwallpattern";
                                    document2 = imageLocation.document;
                                    if (document2 == null) {
                                    }
                                }
                                cacheImage6.type = i16;
                                cacheImage6.key = str2;
                                cacheImage6.cacheType = i13;
                                cacheImage6.filter = str5;
                                cacheImage6.imageLocation = imageLocation;
                                cacheImage6.ext = str4;
                                cacheImage6.currentAccount = i5;
                                cacheImage6.parentObject = obj;
                                i17 = imageLocation.imageType;
                                if (i17 != 0) {
                                    cacheImage6.imageType = i17;
                                }
                                if (i13 == 2) {
                                    File internalCacheDir = FileLoader.getInternalCacheDir();
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(str8);
                                    i18 = i15;
                                    sb.append(".enc.key");
                                    cacheImage6.encryptionKeyPath = new File(internalCacheDir, sb.toString());
                                } else {
                                    i18 = i15;
                                }
                                String str14 = str6;
                                cacheImage6.addImageReceiver(imageReceiver, str2, str5, i16, i3);
                                if (i14 == 0 || i18 != 0 || file.exists()) {
                                    cacheImage6.finalFilePath = file;
                                    cacheImage6.imageLocation = imageLocation;
                                    cacheImage6.cacheTask = imageLoader2.new CacheOutTask(cacheImage6);
                                    imageLoader2.imageLoadingByKeys.put(str2, cacheImage6);
                                    imageLoader2.imageLoadingKeys.add(cutFilter(str2));
                                    if (i != 0) {
                                        imageLoader2.cacheThumbOutQueue.postRunnable(cacheImage6.cacheTask);
                                        return;
                                    } else {
                                        cacheImage6.runningTask = imageLoader2.cacheOutQueue.postRunnable(cacheImage6.cacheTask, cacheImage6.priority);
                                        return;
                                    }
                                }
                                cacheImage6.url = str8;
                                imageLoader2.imageLoadingByUrl.put(str8, cacheImage6);
                                if (cacheImage6.isPFrame) {
                                    imageLoader2.imageLoadingByUrlPframe.put(str8, cacheImage6);
                                }
                                String str15 = imageLocation.path;
                                if (str15 != null) {
                                    String strMD5 = Utilities.MD5(str15);
                                    cacheImage6.tempFilePath = new File(FileLoader.getDirectory(4), strMD5 + "_temp.jpg");
                                    cacheImage6.finalFilePath = file;
                                    if (imageLocation.path.startsWith(str14)) {
                                        ArtworkLoadTask artworkLoadTask = imageLoader2.new ArtworkLoadTask(cacheImage6);
                                        cacheImage6.artworkTask = artworkLoadTask;
                                        imageLoader2.artworkTasks.add(artworkLoadTask);
                                        imageLoader2.runArtworkTasks(i7);
                                        return;
                                    }
                                    HttpImageTask httpImageTask = imageLoader2.new HttpImageTask(cacheImage6, j);
                                    cacheImage6.httpTask = httpImageTask;
                                    imageLoader2.httpTasks.add(httpImageTask);
                                    imageLoader2.runHttpTasks(i7);
                                    return;
                                }
                                int i30 = i7;
                                int fileLoadingPriority = i != 0 ? 3 : imageReceiver.getFileLoadingPriority();
                                if (imageLocation.location != null) {
                                    FileLoader.getInstance(i5).loadFile(imageLocation, obj, str4, fileLoadingPriority, (i13 != 0 || (j > j2 && imageLocation.key == null)) ? i13 : 1);
                                } else if (imageLocation.document != null) {
                                    FileLoader.getInstance(i5).loadFile(imageLocation.document, obj, fileLoadingPriority, i13);
                                } else if (imageLocation.secureDocument != null) {
                                    FileLoader.getInstance(i5).loadFile(imageLocation.secureDocument, fileLoadingPriority);
                                } else if (imageLocation.webFile != null) {
                                    FileLoader.getInstance(i5).loadFile(imageLocation.webFile, fileLoadingPriority, i13);
                                }
                                if (imageReceiver.isForceLoding()) {
                                    imageLoader2.forceLoadingImages.put(cacheImage6.key, Integer.valueOf(i30));
                                    return;
                                }
                                return;
                            }
                            j3 = 0;
                            imageLoader3 = imageLoader4;
                        }
                        if (!hasAutoplayFilter(str5)) {
                            boolean zIsAnimatedAvatar = imageLoader3.isAnimatedAvatar(str5);
                            imageLoader = imageLoader3;
                            if (zIsAnimatedAvatar) {
                                cacheImage6.imageType = 2;
                                cacheImage6.size = j3;
                                cacheImage6.isPFrame = imageLoader3.isPFrame(str5);
                                if (!str9.equals(str5)) {
                                    boolean zIsAnimatedAvatar2 = imageLoader3.isAnimatedAvatar(str5);
                                    imageLoader = imageLoader3;
                                    if (zIsAnimatedAvatar2) {
                                    }
                                }
                                i16 = i4;
                                i14 = i19;
                                imageLoader2 = imageLoader3;
                            }
                        }
                        cacheImage6.type = i16;
                        cacheImage6.key = str2;
                        cacheImage6.cacheType = i13;
                        cacheImage6.filter = str5;
                        cacheImage6.imageLocation = imageLocation;
                        cacheImage6.ext = str4;
                        cacheImage6.currentAccount = i5;
                        cacheImage6.parentObject = obj;
                        i17 = imageLocation.imageType;
                        if (i17 != 0) {
                        }
                        if (i13 == 2) {
                        }
                        String str142 = str6;
                        cacheImage6.addImageReceiver(imageReceiver, str2, str5, i16, i3);
                        if (i14 == 0) {
                        }
                        cacheImage6.finalFilePath = file;
                        cacheImage6.imageLocation = imageLocation;
                        cacheImage6.cacheTask = imageLoader2.new CacheOutTask(cacheImage6);
                        imageLoader2.imageLoadingByKeys.put(str2, cacheImage6);
                        imageLoader2.imageLoadingKeys.add(cutFilter(str2));
                        if (i != 0) {
                        }
                    } else {
                        str8 = str;
                        i13 = i6;
                        i14 = i25;
                        j2 = 0;
                        imageLoader = this;
                        i15 = i10;
                    }
                    i16 = i4;
                    imageLoader2 = imageLoader;
                    cacheImage6.type = i16;
                    cacheImage6.key = str2;
                    cacheImage6.cacheType = i13;
                    cacheImage6.filter = str5;
                    cacheImage6.imageLocation = imageLocation;
                    cacheImage6.ext = str4;
                    cacheImage6.currentAccount = i5;
                    cacheImage6.parentObject = obj;
                    i17 = imageLocation.imageType;
                    if (i17 != 0) {
                    }
                    if (i13 == 2) {
                    }
                    String str1422 = str6;
                    cacheImage6.addImageReceiver(imageReceiver, str2, str5, i16, i3);
                    if (i14 == 0) {
                    }
                    cacheImage6.finalFilePath = file;
                    cacheImage6.imageLocation = imageLocation;
                    cacheImage6.cacheTask = imageLoader2.new CacheOutTask(cacheImage6);
                    imageLoader2.imageLoadingByKeys.put(str2, cacheImage6);
                    imageLoader2.imageLoadingKeys.add(cutFilter(str2));
                    if (i != 0) {
                    }
                }
            }
            i12 = 2;
            if (i9 != i12) {
            }
        }
    }

    public void preloadArtwork(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$preloadArtwork$8(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$preloadArtwork$8(String str) {
        String httpUrlExtension = getHttpUrlExtension(str, "jpg");
        String str2 = Utilities.MD5(str) + "." + httpUrlExtension;
        File file = new File(FileLoader.getDirectory(4), str2);
        if (file.exists()) {
            return;
        }
        ImageLocation forPath = ImageLocation.getForPath(str);
        CacheImage cacheImage = new CacheImage();
        cacheImage.type = 1;
        cacheImage.key = Utilities.MD5(str);
        cacheImage.filter = null;
        cacheImage.imageLocation = forPath;
        cacheImage.ext = httpUrlExtension;
        cacheImage.parentObject = null;
        int i = forPath.imageType;
        if (i != 0) {
            cacheImage.imageType = i;
        }
        cacheImage.url = str2;
        this.imageLoadingByUrl.put(str2, cacheImage);
        String strMD5 = Utilities.MD5(forPath.path);
        cacheImage.tempFilePath = new File(FileLoader.getDirectory(4), strMD5 + "_temp.jpg");
        cacheImage.finalFilePath = file;
        ArtworkLoadTask artworkLoadTask = new ArtworkLoadTask(cacheImage);
        cacheImage.artworkTask = artworkLoadTask;
        this.artworkTasks.add(artworkLoadTask);
        runArtworkTasks(false);
    }

    public void loadImageForImageReceiver(ImageReceiver imageReceiver) {
        loadImageForImageReceiver(imageReceiver, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:169:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0174  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadImageForImageReceiver(ImageReceiver imageReceiver, List<ImageReceiver> list) {
        String str;
        boolean z;
        boolean z2;
        boolean z3;
        ImageReceiver imageReceiver2;
        boolean z4;
        boolean z5;
        ImageLocation forDocument;
        ImageLocation imageLocation;
        int i;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        int i2;
        int i3;
        String str8;
        ImageLocation imageLocation2;
        int i4;
        boolean z6;
        boolean z7;
        ImageLocation imageLocation3;
        String str9;
        BitmapDrawable fromLottieCache;
        boolean zHasBitmap;
        ImageReceiver imageReceiver3 = imageReceiver;
        if (imageReceiver3 == null) {
            return;
        }
        String mediaKey = imageReceiver3.getMediaKey();
        int newGuid = imageReceiver3.getNewGuid();
        if (mediaKey != null) {
            ImageLocation mediaLocation = imageReceiver3.getMediaLocation();
            BitmapDrawable bitmapDrawableFindInPreloadImageReceivers = findInPreloadImageReceivers(mediaKey, list);
            if (bitmapDrawableFindInPreloadImageReceivers == null) {
                if (useLottieMemCache(mediaLocation, mediaKey)) {
                    bitmapDrawableFindInPreloadImageReceivers = getFromLottieCache(mediaKey);
                } else {
                    BitmapDrawable bitmapDrawable = this.memCache.get(mediaKey);
                    if (bitmapDrawable != null) {
                        this.memCache.moveToFront(mediaKey);
                    }
                    if (bitmapDrawable == null && (bitmapDrawable = this.smallImagesMemCache.get(mediaKey)) != null) {
                        this.smallImagesMemCache.moveToFront(mediaKey);
                    }
                    bitmapDrawableFindInPreloadImageReceivers = bitmapDrawable;
                    if (bitmapDrawableFindInPreloadImageReceivers == null && (bitmapDrawableFindInPreloadImageReceivers = this.wallpaperMemCache.get(mediaKey)) != null) {
                        this.wallpaperMemCache.moveToFront(mediaKey);
                    }
                }
            }
            Drawable drawable = bitmapDrawableFindInPreloadImageReceivers;
            if (drawable instanceof RLottieDrawable) {
                zHasBitmap = ((RLottieDrawable) drawable).hasBitmap();
            } else {
                zHasBitmap = drawable instanceof AnimatedFileDrawable ? ((AnimatedFileDrawable) drawable).hasBitmap() : true;
            }
            if (zHasBitmap && drawable != null) {
                cancelLoadingForImageReceiver(imageReceiver3, true);
                imageReceiver3.setImageBitmapByKey(drawable, mediaKey, 3, true, newGuid);
                if (!imageReceiver.isForcePreview()) {
                    return;
                }
                imageReceiver3 = imageReceiver;
                str = mediaKey;
                z2 = false;
                z = true;
            } else if (drawable != null) {
                imageReceiver3 = imageReceiver;
                imageReceiver3.setImageBitmapByKey(drawable, mediaKey, 3, true, newGuid);
                str = mediaKey;
                z = false;
                z2 = true;
            } else {
                imageReceiver3 = imageReceiver;
                str = mediaKey;
                z = false;
                z2 = false;
            }
        } else {
            str = mediaKey;
            z = false;
            z2 = false;
        }
        String imageKey = imageReceiver3.getImageKey();
        if (z || imageKey == null) {
            z3 = z;
        } else {
            ImageLocation imageLocation4 = imageReceiver3.getImageLocation();
            BitmapDrawable bitmapDrawableFindInPreloadImageReceivers2 = findInPreloadImageReceivers(imageKey, list);
            if (bitmapDrawableFindInPreloadImageReceivers2 == null && useLottieMemCache(imageLocation4, imageKey)) {
                bitmapDrawableFindInPreloadImageReceivers2 = getFromLottieCache(imageKey);
            }
            if (bitmapDrawableFindInPreloadImageReceivers2 == null) {
                BitmapDrawable bitmapDrawable2 = this.memCache.get(imageKey);
                if (bitmapDrawable2 != null) {
                    this.memCache.moveToFront(imageKey);
                }
                if (bitmapDrawable2 == null && (bitmapDrawable2 = this.smallImagesMemCache.get(imageKey)) != null) {
                    this.smallImagesMemCache.moveToFront(imageKey);
                }
                bitmapDrawableFindInPreloadImageReceivers2 = bitmapDrawable2;
                if (bitmapDrawableFindInPreloadImageReceivers2 == null && (bitmapDrawableFindInPreloadImageReceivers2 = this.wallpaperMemCache.get(imageKey)) != null) {
                    this.wallpaperMemCache.moveToFront(imageKey);
                }
            }
            if (bitmapDrawableFindInPreloadImageReceivers2 != null) {
                cancelLoadingForImageReceiver(imageReceiver3, true);
                imageReceiver3.setImageBitmapByKey(bitmapDrawableFindInPreloadImageReceivers2, imageKey, 0, true, newGuid);
                if (!imageReceiver.isForcePreview() && (str == null || z2)) {
                    return;
                } else {
                    z3 = true;
                }
            }
        }
        String thumbKey = imageReceiver.getThumbKey();
        if (thumbKey == null) {
            imageReceiver2 = imageReceiver;
            z4 = false;
        } else {
            if (useLottieMemCache(imageReceiver.getThumbLocation(), thumbKey)) {
                fromLottieCache = getFromLottieCache(thumbKey);
            } else {
                fromLottieCache = this.memCache.get(thumbKey);
                if (fromLottieCache != null) {
                    this.memCache.moveToFront(thumbKey);
                }
                if (fromLottieCache == null && (fromLottieCache = this.smallImagesMemCache.get(thumbKey)) != null) {
                    this.smallImagesMemCache.moveToFront(thumbKey);
                }
                if (fromLottieCache == null && (fromLottieCache = this.wallpaperMemCache.get(thumbKey)) != null) {
                    this.wallpaperMemCache.moveToFront(thumbKey);
                }
            }
            BitmapDrawable bitmapDrawable3 = fromLottieCache;
            if (bitmapDrawable3 != null) {
                imageReceiver2 = imageReceiver;
                imageReceiver2.setImageBitmapByKey(bitmapDrawable3, thumbKey, 1, true, newGuid);
                cancelLoadingForImageReceiver(imageReceiver2, false);
                if (z3 && imageReceiver2.isForcePreview()) {
                    return;
                } else {
                    z4 = true;
                }
            }
        }
        Object parentObject = imageReceiver2.getParentObject();
        TLRPC.Document qualityThumbDocument = imageReceiver2.getQualityThumbDocument();
        ImageLocation thumbLocation = imageReceiver2.getThumbLocation();
        String thumbFilter = imageReceiver2.getThumbFilter();
        ImageLocation mediaLocation2 = imageReceiver2.getMediaLocation();
        String mediaFilter = imageReceiver2.getMediaFilter();
        ImageLocation imageLocation5 = imageReceiver2.getImageLocation();
        String imageFilter = imageReceiver2.getImageFilter();
        if (imageLocation5 == null && imageReceiver2.isNeedsQualityThumb() && imageReceiver2.isCurrentKeyQuality()) {
            if (parentObject instanceof MessageObject) {
                forDocument = ImageLocation.getForDocument(((MessageObject) parentObject).getDocument());
            } else {
                if (qualityThumbDocument != null) {
                    forDocument = ImageLocation.getForDocument(qualityThumbDocument);
                }
                z5 = false;
                forDocument = imageLocation5;
            }
            z5 = true;
        } else {
            z5 = false;
            forDocument = imageLocation5;
        }
        String str10 = null;
        String str11 = (forDocument == null || forDocument.imageType != 2) ? null : "mp4";
        String str12 = (mediaLocation2 == null || mediaLocation2.imageType != 2) ? null : "mp4";
        String ext = imageReceiver2.getExt();
        if (ext == null) {
            ext = "jpg";
        }
        String str13 = str11 == null ? ext : str11;
        if (str12 == null) {
            str12 = ext;
        }
        boolean z8 = z4;
        ImageLocation imageLocation6 = mediaLocation2;
        boolean z9 = z5;
        String str14 = null;
        String str15 = null;
        String str16 = null;
        String str17 = null;
        int i5 = 0;
        boolean z10 = false;
        while (true) {
            imageLocation = imageLocation5;
            if (i5 >= 2) {
                break;
            }
            if (i5 == 0) {
                imageLocation2 = forDocument;
                i3 = i5;
                str8 = str13;
            } else {
                i3 = i5;
                str8 = str12;
                imageLocation2 = imageLocation6;
            }
            if (imageLocation2 == null) {
                i4 = newGuid;
                z6 = z2;
            } else {
                i4 = newGuid;
                z6 = z2;
                String key = imageLocation2.getKey(parentObject, imageLocation6 != null ? imageLocation6 : forDocument, false);
                if (key != null) {
                    z7 = z3;
                    String key2 = imageLocation2.getKey(parentObject, imageLocation6 != null ? imageLocation6 : forDocument, true);
                    if (imageLocation2.path != null) {
                        key2 = key2 + "." + getHttpUrlExtension(imageLocation2.path, "jpg");
                        imageLocation3 = forDocument;
                    } else {
                        TLRPC.PhotoSize photoSize = imageLocation2.photoSize;
                        imageLocation3 = forDocument;
                        if ((photoSize instanceof TLRPC.TL_photoStrippedSize) || (photoSize instanceof TLRPC.TL_photoPathSize)) {
                            key2 = key2 + "." + str8;
                        } else if (imageLocation2.location != null) {
                            String str18 = key2 + "." + str8;
                            if (imageReceiver.getExt() == null) {
                                TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = imageLocation2.location;
                                if (tL_fileLocationToBeDeprecated.key == null) {
                                    str9 = str18;
                                    if (tL_fileLocationToBeDeprecated.volume_id != -2147483648L || tL_fileLocationToBeDeprecated.local_id >= 0) {
                                        key2 = str9;
                                    }
                                } else {
                                    str9 = str18;
                                }
                                key2 = str9;
                            }
                        } else {
                            WebFile webFile = imageLocation2.webFile;
                            if (webFile != null) {
                                key2 = key2 + "." + getHttpUrlExtension(imageLocation2.webFile.url, FileLoader.getMimeTypePart(webFile.mime_type));
                            } else if (imageLocation2.secureDocument != null) {
                                key2 = key2 + "." + str8;
                            } else if (imageLocation2.document != null) {
                                if (i3 == 0 && z9) {
                                    key = "q_" + key;
                                }
                                String documentFileName = FileLoader.getDocumentFileName(imageLocation2.document);
                                int iLastIndexOf = documentFileName.lastIndexOf(46);
                                String str19 = _UrlKt.FRAGMENT_ENCODE_SET;
                                String strSubstring = iLastIndexOf == -1 ? _UrlKt.FRAGMENT_ENCODE_SET : documentFileName.substring(iLastIndexOf);
                                if (strSubstring.length() > 1) {
                                    str19 = strSubstring;
                                } else if ("video/mp4".equals(imageLocation2.document.mime_type)) {
                                    str19 = ".mp4";
                                } else if ("video/x-matroska".equals(imageLocation2.document.mime_type)) {
                                    str19 = ".mkv";
                                }
                                key2 = key2 + str19;
                                z10 = (MessageObject.isVideoDocument(imageLocation2.document) || MessageObject.isGifDocument(imageLocation2.document) || MessageObject.isRoundVideoDocument(imageLocation2.document) || MessageObject.canPreviewDocument(imageLocation2.document)) ? false : true;
                            } else if (parentObject instanceof TLRPC.StickerSet) {
                                key2 = key2 + "." + str8;
                            }
                        }
                    }
                    if (i3 == 0) {
                        str15 = key;
                        str16 = key2;
                    } else {
                        str14 = key;
                        str17 = key2;
                    }
                    if (imageLocation2 != thumbLocation) {
                        forDocument = imageLocation3;
                    } else if (i3 == 0) {
                        str15 = null;
                        forDocument = null;
                        str16 = null;
                    } else {
                        str14 = null;
                        imageLocation6 = null;
                        str17 = null;
                        forDocument = imageLocation3;
                    }
                }
                i5 = i3 + 1;
                imageLocation5 = imageLocation;
                newGuid = i4;
                z2 = z6;
                z3 = z7;
            }
            z7 = z3;
            i5 = i3 + 1;
            imageLocation5 = imageLocation;
            newGuid = i4;
            z2 = z6;
            z3 = z7;
        }
        ImageLocation imageLocation7 = forDocument;
        int i6 = newGuid;
        boolean z11 = z2;
        boolean z12 = z3;
        if (thumbLocation != null) {
            ImageLocation strippedLocation = imageReceiver.getStrippedLocation();
            if (strippedLocation == null) {
                strippedLocation = imageLocation6 != null ? imageLocation6 : imageLocation;
            }
            String key3 = thumbLocation.getKey(parentObject, strippedLocation, false);
            i = 1;
            String key4 = thumbLocation.getKey(parentObject, strippedLocation, true);
            if (thumbLocation.path != null) {
                key4 = key4 + "." + getHttpUrlExtension(thumbLocation.path, "jpg");
            } else {
                TLRPC.PhotoSize photoSize2 = thumbLocation.photoSize;
                if ((photoSize2 instanceof TLRPC.TL_photoStrippedSize) || (photoSize2 instanceof TLRPC.TL_photoPathSize)) {
                    key4 = key4 + "." + ext;
                } else if (thumbLocation.location != null) {
                    key4 = key4 + "." + ext;
                }
            }
            str10 = key4;
            str2 = key3;
        } else {
            i = 1;
            str2 = null;
        }
        if (str14 != null && mediaFilter != null) {
            str14 = str14 + "@" + mediaFilter;
        }
        if (str15 != null && imageFilter != null) {
            str15 = str15 + "@" + imageFilter;
        }
        if (str2 != null && thumbFilter != null) {
            str2 = str2 + "@" + thumbFilter;
        }
        if (imageReceiver.getUniqKeyPrefix() != null && str15 != null) {
            str15 = imageReceiver.getUniqKeyPrefix() + str15;
        }
        String str20 = str15;
        if (imageReceiver.getUniqKeyPrefix() != null && str14 != null) {
            str14 = imageReceiver.getUniqKeyPrefix() + str14;
        }
        String str21 = str14;
        if (imageLocation7 == null) {
            str3 = ext;
            str4 = str2;
            str5 = str10;
            str6 = str13;
            str7 = str16;
            i2 = i6;
        } else {
            if (imageLocation7.path != null) {
                createLoadOperationForImageReceiver(imageReceiver, str2, str10, ext, thumbLocation, thumbFilter, 0L, 1, 1, z8 ? 2 : i, i6);
                createLoadOperationForImageReceiver(imageReceiver, str20, str16, str13, imageLocation7, imageFilter, imageReceiver.getSize(), 1, 0, 0, i6);
                return;
            }
            imageLocation7 = imageLocation7;
            str4 = str2;
            str5 = str10;
            str6 = str13;
            str7 = str16;
            i2 = i6;
            str3 = ext;
        }
        if (imageLocation6 != null) {
            int cacheType = imageReceiver.getCacheType();
            int i7 = (cacheType == 0 && z10) ? i : cacheType;
            int i8 = i7 == 0 ? i : i7;
            if (!z8) {
                createLoadOperationForImageReceiver(imageReceiver, str4, str5, str3, thumbLocation, thumbFilter, 0L, i8, 1, 1, i2);
            }
            if (!z12) {
                createLoadOperationForImageReceiver(imageReceiver, str20, str7, str6, imageLocation7, imageFilter, 0L, 1, 0, 0, i2);
            }
            if (z11) {
                return;
            }
            createLoadOperationForImageReceiver(imageReceiver, str21, str17, str12, imageLocation6, mediaFilter, imageReceiver.getSize(), i7, 3, 0, i2);
            return;
        }
        int cacheType2 = imageReceiver.getCacheType();
        int i9 = (cacheType2 == 0 && z10) ? i : cacheType2;
        createLoadOperationForImageReceiver(imageReceiver, str4, str5, str3, thumbLocation, thumbFilter, 0L, i9 == 0 ? i : i9, 1, z8 ? 2 : i, i2);
        createLoadOperationForImageReceiver(imageReceiver, str20, str7, str6, imageLocation7, imageFilter, imageReceiver.getSize(), i9, 0, 0, i2);
    }

    private Drawable findInPreloadImageReceivers(String str, List<ImageReceiver> list) {
        if (list == null) {
            return null;
        }
        for (int i = 0; i < list.size(); i++) {
            ImageReceiver imageReceiver = list.get(i);
            if (str.equals(imageReceiver.getImageKey())) {
                return imageReceiver.getImageDrawable();
            }
            if (str.equals(imageReceiver.getMediaKey())) {
                return imageReceiver.getMediaDrawable();
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public BitmapDrawable getFromLottieCache(String str) {
        BitmapDrawable bitmapDrawable = this.lottieMemCache.get(str);
        if (!(bitmapDrawable instanceof AnimatedFileDrawable) || !((AnimatedFileDrawable) bitmapDrawable).isRecycled()) {
            return bitmapDrawable;
        }
        this.lottieMemCache.remove(str);
        return null;
    }

    private boolean useLottieMemCache(ImageLocation imageLocation, String str) {
        return (str.endsWith("_firstframe") || str.endsWith("_lastframe") || ((imageLocation == null || (!MessageObject.isAnimatedStickerDocument(imageLocation.document, true) && imageLocation.imageType != 1 && !MessageObject.isVideoSticker(imageLocation.document))) && !isAnimatedAvatar(str))) ? false : true;
    }

    public boolean hasLottieMemCache(String str) {
        LruCache<BitmapDrawable> lruCache = this.lottieMemCache;
        return lruCache != null && lruCache.contains(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void httpFileLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$httpFileLoadError$9(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$httpFileLoadError$9(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        HttpImageTask httpImageTask = cacheImage.httpTask;
        if (httpImageTask != null) {
            HttpImageTask httpImageTask2 = new HttpImageTask(httpImageTask.cacheImage, httpImageTask.imageSize);
            cacheImage.httpTask = httpImageTask2;
            this.httpTasks.add(httpImageTask2);
        }
        runHttpTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void artworkLoadError(final String str) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$artworkLoadError$10(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$artworkLoadError$10(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        ArtworkLoadTask artworkLoadTask = cacheImage.artworkTask;
        if (artworkLoadTask != null) {
            ArtworkLoadTask artworkLoadTask2 = new ArtworkLoadTask(artworkLoadTask.cacheImage);
            cacheImage.artworkTask = artworkLoadTask2;
            this.artworkTasks.add(artworkLoadTask2);
        }
        runArtworkTasks(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidLoaded(final String str, final File file, final int i) {
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fileDidLoaded$11(str, i, file);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidLoaded$11(String str, int i, File file) {
        ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(str);
        if (thumbGenerateInfo != null && thumbGenerateInfo.parentDocument != null) {
            generateThumb(i, file, thumbGenerateInfo);
            this.waitingForQualityThumb.remove(str);
        }
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage == null) {
            return;
        }
        this.imageLoadingByUrl.remove(str);
        this.imageLoadingByUrlPframe.remove(str);
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < cacheImage.imageReceiverArray.size(); i2++) {
            String str2 = cacheImage.keys.get(i2);
            String str3 = cacheImage.filters.get(i2);
            int iIntValue = cacheImage.types.get(i2).intValue();
            ImageReceiver imageReceiver = cacheImage.imageReceiverArray.get(i2);
            int iIntValue2 = cacheImage.imageReceiverGuidsArray.get(i2).intValue();
            CacheImage cacheImage2 = this.imageLoadingByKeys.get(str2);
            if (cacheImage2 == null) {
                cacheImage2 = new CacheImage();
                cacheImage2.priority = cacheImage.priority;
                cacheImage2.secureDocument = cacheImage.secureDocument;
                cacheImage2.currentAccount = cacheImage.currentAccount;
                cacheImage2.finalFilePath = file;
                cacheImage2.parentObject = cacheImage.parentObject;
                cacheImage2.isPFrame = cacheImage.isPFrame;
                cacheImage2.key = str2;
                cacheImage2.cacheType = cacheImage.cacheType;
                cacheImage2.imageLocation = cacheImage.imageLocation;
                cacheImage2.type = iIntValue;
                cacheImage2.ext = cacheImage.ext;
                cacheImage2.encryptionKeyPath = cacheImage.encryptionKeyPath;
                cacheImage2.cacheTask = new CacheOutTask(cacheImage2);
                cacheImage2.filter = str3;
                cacheImage2.imageType = cacheImage.imageType;
                this.imageLoadingByKeys.put(str2, cacheImage2);
                this.imageLoadingKeys.add(cutFilter(str2));
                arrayList.add(cacheImage2.cacheTask);
            }
            cacheImage2.addImageReceiver(imageReceiver, str2, str3, iIntValue, iIntValue2);
        }
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            CacheOutTask cacheOutTask = (CacheOutTask) arrayList.get(i3);
            if (cacheOutTask.cacheImage.type == 1) {
                this.cacheThumbOutQueue.postRunnable(cacheOutTask);
            } else {
                this.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fileDidFailedLoad(final String str, int i) {
        if (i == 1) {
            return;
        }
        this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$fileDidFailedLoad$12(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fileDidFailedLoad$12(String str) {
        CacheImage cacheImage = this.imageLoadingByUrl.get(str);
        if (cacheImage != null) {
            cacheImage.setImageAndClear(null, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpTasks(boolean z) {
        if (z) {
            this.currentHttpTasksCount--;
        }
        while (this.currentHttpTasksCount < 4 && !this.httpTasks.isEmpty()) {
            HttpImageTask httpImageTaskPoll = this.httpTasks.poll();
            if (httpImageTaskPoll != null) {
                httpImageTaskPoll.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentHttpTasksCount++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runArtworkTasks(boolean z) {
        if (z) {
            this.currentArtworkTasksCount--;
        }
        while (this.currentArtworkTasksCount < 4 && !this.artworkTasks.isEmpty()) {
            try {
                this.artworkTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
                this.currentArtworkTasksCount++;
            } catch (Throwable unused) {
                runArtworkTasks(false);
            }
        }
    }

    public boolean isLoadingHttpFile(String str) {
        return this.httpFileLoadTasksByKeys.containsKey(str);
    }

    public static String getHttpFileName(String str) {
        return Utilities.MD5(str);
    }

    public static File getHttpFilePath(String str, String str2) {
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        return new File(FileLoader.getDirectory(4), Utilities.MD5(str) + "." + httpUrlExtension);
    }

    public void loadHttpFile(String str, String str2, int i) {
        if (str == null || str.length() == 0 || this.httpFileLoadTasksByKeys.containsKey(str)) {
            return;
        }
        String httpUrlExtension = getHttpUrlExtension(str, str2);
        File file = new File(FileLoader.getDirectory(4), Utilities.MD5(str) + "_temp." + httpUrlExtension);
        file.delete();
        HttpFileTask httpFileTask = new HttpFileTask(str, file, httpUrlExtension, i);
        this.httpFileLoadTasks.add(httpFileTask);
        this.httpFileLoadTasksByKeys.put(str, httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    public void cancelLoadHttpFile(String str) {
        HttpFileTask httpFileTask = this.httpFileLoadTasksByKeys.get(str);
        if (httpFileTask != null) {
            httpFileTask.cancel(true);
            this.httpFileLoadTasksByKeys.remove(str);
            this.httpFileLoadTasks.remove(httpFileTask);
        }
        Runnable runnable = this.retryHttpsTasks.get(str);
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
        }
        runHttpFileLoadTasks(null, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void runHttpFileLoadTasks(final HttpFileTask httpFileTask, final int i) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$runHttpFileLoadTasks$14(httpFileTask, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$14(HttpFileTask httpFileTask, int i) {
        ImageLoader imageLoader;
        if (httpFileTask != null) {
            this.currentHttpFileLoadTasksCount--;
        }
        if (httpFileTask == null) {
            imageLoader = this;
        } else if (i != 1) {
            imageLoader = this;
            if (i == 2) {
                imageLoader.httpFileLoadTasksByKeys.remove(httpFileTask.url);
                File file = new File(FileLoader.getDirectory(4), Utilities.MD5(httpFileTask.url) + "." + httpFileTask.ext);
                if (!httpFileTask.tempFile.renameTo(file)) {
                    file = httpFileTask.tempFile;
                }
                NotificationCenter.getInstance(httpFileTask.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidLoad, httpFileTask.url, file.toString());
            }
        } else if (httpFileTask.canRetry) {
            imageLoader = this;
            final HttpFileTask httpFileTask2 = imageLoader.new HttpFileTask(httpFileTask.url, httpFileTask.tempFile, httpFileTask.ext, httpFileTask.currentAccount);
            Runnable runnable = new Runnable() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$runHttpFileLoadTasks$13(httpFileTask2);
                }
            };
            imageLoader.retryHttpsTasks.put(httpFileTask.url, runnable);
            AndroidUtilities.runOnUIThread(runnable, 1000L);
        } else {
            imageLoader = this;
            imageLoader.httpFileLoadTasksByKeys.remove(httpFileTask.url);
            NotificationCenter.getInstance(httpFileTask.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.httpFileDidFailedLoad, httpFileTask.url, 0);
        }
        while (imageLoader.currentHttpFileLoadTasksCount < 2 && !imageLoader.httpFileLoadTasks.isEmpty()) {
            imageLoader.httpFileLoadTasks.poll().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, null, null, null);
            imageLoader.currentHttpFileLoadTasksCount++;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$runHttpFileLoadTasks$13(HttpFileTask httpFileTask) {
        this.httpFileLoadTasks.add(httpFileTask);
        runHttpFileLoadTasks(null, 0);
    }

    public static boolean shouldSendImageAsDocument(String str, Uri uri) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str == null && uri != null && uri.getScheme() != null) {
            if (uri.getScheme().contains("file")) {
                str = uri.getPath();
            } else {
                try {
                    str = AndroidUtilities.getPath(uri);
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            }
        }
        if (str != null) {
            BitmapFactory.decodeFile(str, options);
        } else if (uri != null) {
            try {
                InputStream inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                inputStreamOpenInputStream.close();
            } catch (Throwable th2) {
                FileLog.m1136e(th2);
                return false;
            }
        }
        float f = options.outWidth;
        float f2 = options.outHeight;
        return f / f2 > 10.0f || f2 / f > 10.0f;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(29:0|2|(1:19)(3:7|(1:9)(3:11|(2:173|15)|19)|10)|20|(1:22)(17:(3:153|24|25)|30|(1:32)(1:33)|34|(1:36)|37|(3:39|(2:40|(1:42)(1:177))|43)|44|151|45|(5:163|49|165|50|(1:52))|56|(6:62|159|63|(5:65|(1:67)(1:68)|69|(1:71)(1:72)|73)|74|(1:76))(1:61)|77|(2:(1:80)|81)|82|(5:161|84|(5:167|86|(1:88)|91|(3:93|94|143))|95|179)(1:(6:175|117|(5:171|119|(1:121)|124|(2:126|127)(1:128))(0)|169|129|183)(1:181)))|29|30|(0)(0)|34|(0)|37|(0)|44|151|45|(6:47|163|49|165|50|(0))|56|(2:58|60)|62|159|63|(0)|74|(0)|77|(0)|82|(0)(0)|(2:(0)|(1:148))) */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00c9 A[Catch: all -> 0x00e6, PHI: r8 r9
  0x00c9: PHI (r8v5 android.util.Pair<java.lang.Integer, java.lang.Integer>) = 
  (r8v2 android.util.Pair<java.lang.Integer, java.lang.Integer>)
  (r8v7 android.util.Pair<java.lang.Integer, java.lang.Integer>)
 binds: [B:55:0x00d0, B:51:0x00c7] A[DONT_GENERATE, DONT_INLINE]
  0x00c9: PHI (r9v22 java.io.InputStream) = (r9v21 java.io.InputStream), (r9v25 java.io.InputStream) binds: [B:55:0x00d0, B:51:0x00c7] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #2 {all -> 0x00e6, blocks: (B:45:0x00a1, B:47:0x00af, B:52:0x00c9, B:56:0x00d1, B:58:0x00db, B:62:0x00e8), top: B:151:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00db A[Catch: all -> 0x00e6, TryCatch #2 {all -> 0x00e6, blocks: (B:45:0x00a1, B:47:0x00af, B:52:0x00c9, B:56:0x00d1, B:58:0x00db, B:62:0x00e8), top: B:151:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00f7 A[Catch: all -> 0x012b, TryCatch #6 {all -> 0x012b, blocks: (B:63:0x00ed, B:65:0x00f7, B:69:0x0106, B:73:0x0112, B:74:0x0115, B:76:0x011f), top: B:159:0x00ed }] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x011f A[Catch: all -> 0x012b, TRY_LEAVE, TryCatch #6 {all -> 0x012b, blocks: (B:63:0x00ed, B:65:0x00f7, B:69:0x0106, B:73:0x0112, B:74:0x0115, B:76:0x011f), top: B:159:0x00ed }] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap loadBitmap(String str, Uri uri, float f, float f2, boolean z) {
        String str2;
        InputStream inputStreamOpenInputStream;
        float fMax;
        int i;
        Matrix matrix;
        float f3;
        Bitmap bitmapDecodeFile;
        Pair<Integer, Integer> imageOrientation;
        InputStream inputStreamOpenInputStream2;
        String path;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        if (str != null || uri == null || uri.getScheme() == null) {
            str2 = str;
        } else {
            if (uri.getScheme().contains("file")) {
                path = uri.getPath();
            } else {
                if (Build.VERSION.SDK_INT < 30 || !"content".equals(uri.getScheme())) {
                    try {
                        path = AndroidUtilities.getPath(uri);
                    } catch (Throwable th) {
                        FileLog.m1136e(th);
                        str2 = str;
                    }
                }
                str2 = str;
            }
            str2 = path;
        }
        Bitmap bitmapDecodeFile2 = null;
        if (str2 != null) {
            BitmapFactory.decodeFile(str2, options);
        } else {
            if (uri != null) {
                try {
                    InputStream inputStreamOpenInputStream3 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                    BitmapFactory.decodeStream(inputStreamOpenInputStream3, null, options);
                    inputStreamOpenInputStream3.close();
                    inputStreamOpenInputStream = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                } catch (Throwable th2) {
                    FileLog.m1136e(th2);
                    return null;
                }
            }
            float f4 = options.outWidth / f;
            float f5 = options.outHeight / f2;
            fMax = !z ? Math.max(f4, f5) : Math.min(f4, f5);
            if (fMax < 1.0f) {
                fMax = 1.0f;
            }
            options.inJustDecodeBounds = false;
            i = (int) fMax;
            options.inSampleSize = i;
            if (i % 2 != 0) {
                int i2 = 1;
                while (true) {
                    int i3 = i2 * 2;
                    if (i3 >= options.inSampleSize) {
                        break;
                    }
                    i2 = i3;
                }
                options.inSampleSize = i2;
            }
            options.inPurgeable = false;
            imageOrientation = AndroidUtilities.getImageOrientation(str2);
            if (((Integer) imageOrientation.first).intValue() == 0 && ((Integer) imageOrientation.second).intValue() == 0) {
                try {
                    inputStreamOpenInputStream2 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
                } catch (Throwable unused) {
                    inputStreamOpenInputStream2 = null;
                }
                try {
                    imageOrientation = AndroidUtilities.getImageOrientation(inputStreamOpenInputStream2);
                } catch (Throwable unused2) {
                    if (inputStreamOpenInputStream2 != null) {
                    }
                    if (((Integer) imageOrientation.first).intValue() == 0) {
                    }
                    matrix = new Matrix();
                    if (((Integer) imageOrientation.second).intValue() != 0) {
                    }
                    if (((Integer) imageOrientation.first).intValue() != 0) {
                    }
                    f3 = fMax / options.inSampleSize;
                    if (f3 > 1.0f) {
                    }
                    Matrix matrix2 = matrix;
                    if (str2 == null) {
                    }
                }
                if (inputStreamOpenInputStream2 != null) {
                    inputStreamOpenInputStream2.close();
                }
            }
            if (((Integer) imageOrientation.first).intValue() == 0 || ((Integer) imageOrientation.second).intValue() != 0) {
                matrix = new Matrix();
                if (((Integer) imageOrientation.second).intValue() != 0) {
                    float f6 = -1.0f;
                    float f7 = ((Integer) imageOrientation.second).intValue() == 1 ? -1.0f : 1.0f;
                    if (((Integer) imageOrientation.second).intValue() != 2) {
                        f6 = 1.0f;
                    }
                    matrix.postScale(f7, f6);
                }
                if (((Integer) imageOrientation.first).intValue() != 0) {
                    matrix.postRotate(((Integer) imageOrientation.first).intValue());
                }
            } else {
                matrix = null;
            }
            f3 = fMax / options.inSampleSize;
            if (f3 > 1.0f) {
                if (matrix == null) {
                    matrix = new Matrix();
                }
                float f8 = 1.0f / f3;
                matrix.postScale(f8, f8);
            }
            Matrix matrix22 = matrix;
            if (str2 == null) {
                if (uri == null) {
                    return null;
                }
                try {
                    Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamOpenInputStream, null, options);
                    if (bitmapDecodeStream != null) {
                        try {
                            if (options.inPurgeable) {
                                Utilities.pinBitmap(bitmapDecodeStream);
                            }
                            Bitmap bitmapCreateBitmap = Bitmaps.createBitmap(bitmapDecodeStream, 0, 0, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), matrix22, true);
                            if (bitmapCreateBitmap != bitmapDecodeStream) {
                                bitmapDecodeStream.recycle();
                                bitmapDecodeFile2 = bitmapCreateBitmap;
                            } else {
                                bitmapDecodeFile2 = bitmapDecodeStream;
                            }
                        } catch (Throwable th3) {
                            th = th3;
                            bitmapDecodeFile2 = bitmapDecodeStream;
                            try {
                                FileLog.m1136e(th);
                            } finally {
                            }
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
                try {
                    inputStreamOpenInputStream.close();
                    return bitmapDecodeFile2;
                } catch (Throwable th5) {
                    FileLog.m1136e(th5);
                    return bitmapDecodeFile2;
                }
            }
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str2, options);
                if (bitmapDecodeFile != null) {
                    try {
                        if (options.inPurgeable) {
                            Utilities.pinBitmap(bitmapDecodeFile);
                        }
                        Bitmap bitmapCreateBitmap2 = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix22, true);
                        if (bitmapCreateBitmap2 != bitmapDecodeFile) {
                            bitmapDecodeFile.recycle();
                            return bitmapCreateBitmap2;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        bitmapDecodeFile2 = bitmapDecodeFile;
                        FileLog.m1136e(th);
                        getInstance().clearMemory();
                        if (bitmapDecodeFile2 == null) {
                            try {
                                bitmapDecodeFile2 = BitmapFactory.decodeFile(str2, options);
                                if (bitmapDecodeFile2 != null && options.inPurgeable) {
                                    Utilities.pinBitmap(bitmapDecodeFile2);
                                }
                            } catch (Throwable th7) {
                                th = th7;
                                FileLog.m1136e(th);
                                return bitmapDecodeFile2;
                            }
                        }
                        bitmapDecodeFile = bitmapDecodeFile2;
                        if (bitmapDecodeFile != null) {
                            try {
                                Bitmap bitmapCreateBitmap3 = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix22, true);
                                if (bitmapCreateBitmap3 != bitmapDecodeFile) {
                                    bitmapDecodeFile.recycle();
                                    bitmapDecodeFile = bitmapCreateBitmap3;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                bitmapDecodeFile2 = bitmapDecodeFile;
                                FileLog.m1136e(th);
                                return bitmapDecodeFile2;
                            }
                        }
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
            return bitmapDecodeFile;
        }
        inputStreamOpenInputStream = null;
        float f42 = options.outWidth / f;
        float f52 = options.outHeight / f2;
        if (!z) {
        }
        if (fMax < 1.0f) {
        }
        options.inJustDecodeBounds = false;
        i = (int) fMax;
        options.inSampleSize = i;
        if (i % 2 != 0) {
        }
        options.inPurgeable = false;
        imageOrientation = AndroidUtilities.getImageOrientation(str2);
        if (((Integer) imageOrientation.first).intValue() == 0) {
            inputStreamOpenInputStream2 = ApplicationLoader.applicationContext.getContentResolver().openInputStream(uri);
            imageOrientation = AndroidUtilities.getImageOrientation(inputStreamOpenInputStream2);
            if (inputStreamOpenInputStream2 != null) {
            }
        }
        if (((Integer) imageOrientation.first).intValue() == 0) {
        }
        matrix = new Matrix();
        if (((Integer) imageOrientation.second).intValue() != 0) {
        }
        if (((Integer) imageOrientation.first).intValue() != 0) {
        }
        f3 = fMax / options.inSampleSize;
        if (f3 > 1.0f) {
        }
        Matrix matrix222 = matrix;
        if (str2 == null) {
        }
    }

    public static void fillPhotoSizeWithBytes(TLRPC.PhotoSize photoSize) {
        if (photoSize != null) {
            byte[] bArr = photoSize.bytes;
            if (bArr == null || bArr.length == 0) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSize, true), "r");
                    if (((int) randomAccessFile.length()) < 20000) {
                        byte[] bArr2 = new byte[(int) randomAccessFile.length()];
                        photoSize.bytes = bArr2;
                        randomAccessFile.readFully(bArr2, 0, bArr2.length);
                    }
                } catch (Throwable th) {
                    FileLog.m1136e(th);
                }
            }
        }
    }

    public static TLRPC.PhotoSize fileToSize(String str, boolean z) {
        if (str == null) {
            return null;
        }
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.dc_id = Integer.MIN_VALUE;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
            tL_fileLocationToBeDeprecated.file_reference = new byte[0];
            TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.location = tL_fileLocationToBeDeprecated;
            tL_photoSize_layer127.f1694w = i;
            tL_photoSize_layer127.f1693h = i2;
            if (i <= 100 && i2 <= 100) {
                tL_photoSize_layer127.type = "s";
            } else if (i <= 320 && i2 <= 320) {
                tL_photoSize_layer127.type = "m";
            } else if (i <= 800 && i2 <= 800) {
                tL_photoSize_layer127.type = "x";
            } else if (i <= 1280 && i2 <= 1280) {
                tL_photoSize_layer127.type = "y";
            } else {
                tL_photoSize_layer127.type = "w";
            }
            String str2 = tL_fileLocationToBeDeprecated.volume_id + "_" + tL_fileLocationToBeDeprecated.local_id + ".jpg";
            File directory = (z || tL_fileLocationToBeDeprecated.volume_id == -2147483648L) ? FileLoader.getDirectory(4) : FileLoader.getDirectory(0);
            File file = new File(directory, str2);
            new File(str).renameTo(file);
            tL_photoSize_layer127.size = (int) file.length();
            return tL_photoSize_layer127;
        } catch (Exception e) {
            FileLog.m1136e(e);
            return null;
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class PhotoSizeFromPhoto extends TLRPC.PhotoSize {
        public final TLRPC.InputPhoto inputPhoto;
        public final TLRPC.Photo photo;

        public PhotoSizeFromPhoto(TLRPC.Photo photo) {
            this.photo = photo;
            TLRPC.TL_inputPhoto tL_inputPhoto = new TLRPC.TL_inputPhoto();
            tL_inputPhoto.f1684id = photo.f1692id;
            tL_inputPhoto.file_reference = photo.file_reference;
            tL_inputPhoto.access_hash = photo.access_hash;
            this.inputPhoto = tL_inputPhoto;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static TLRPC.PhotoSize scaleAndSaveImageInternal(TLRPC.PhotoSize photoSize, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z, int i, int i2, float f, float f2, float f3, int i3, boolean z2, boolean z3, boolean z4) throws IOException {
        TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated;
        Bitmap bitmapCreateScaledBitmap = (f3 > 1.0f || z3) ? Bitmaps.createScaledBitmap(bitmap, i, i2, true) : bitmap;
        if (photoSize != null) {
            TLRPC.FileLocation fileLocation = photoSize.location;
            if (!(fileLocation instanceof TLRPC.TL_fileLocationToBeDeprecated)) {
                tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
                tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
                tL_fileLocationToBeDeprecated.dc_id = Integer.MIN_VALUE;
                tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
                tL_fileLocationToBeDeprecated.file_reference = new byte[0];
                photoSize = new TLRPC.TL_photoSize_layer127();
                photoSize.location = tL_fileLocationToBeDeprecated;
                photoSize.f1694w = bitmapCreateScaledBitmap.getWidth();
                int height = bitmapCreateScaledBitmap.getHeight();
                photoSize.f1693h = height;
                int i4 = photoSize.f1694w;
                if (i4 <= 100 && height <= 100) {
                    photoSize.type = "s";
                } else if (i4 <= 320 && height <= 320) {
                    photoSize.type = "m";
                } else if (i4 <= 800 && height <= 800) {
                    photoSize.type = "x";
                } else if (i4 <= 1280 && height <= 1280) {
                    photoSize.type = "y";
                } else {
                    photoSize.type = "w";
                }
            } else {
                tL_fileLocationToBeDeprecated = (TLRPC.TL_fileLocationToBeDeprecated) fileLocation;
            }
        }
        int i5 = C28437.$SwitchMap$android$graphics$Bitmap$CompressFormat[compressFormat.ordinal()];
        String str = tL_fileLocationToBeDeprecated.volume_id + "_" + tL_fileLocationToBeDeprecated.local_id + ((i5 == 1 || i5 == 2 || i5 == 3) ? ".webp" : ".jpg");
        File directory = (z4 || tL_fileLocationToBeDeprecated.volume_id == -2147483648L) ? FileLoader.getDirectory(4) : FileLoader.getDirectory(0);
        FileOutputStream fileOutputStream = new FileOutputStream(new File(directory, str));
        bitmapCreateScaledBitmap.compress(compressFormat, i3, fileOutputStream);
        if (!z2) {
            photoSize.size = (int) fileOutputStream.getChannel().size();
        }
        fileOutputStream.close();
        if (z2) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmapCreateScaledBitmap.compress(compressFormat, i3, byteArrayOutputStream);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            photoSize.bytes = byteArray;
            photoSize.size = byteArray.length;
            byteArrayOutputStream.close();
        }
        if (bitmapCreateScaledBitmap != bitmap) {
            bitmapCreateScaledBitmap.recycle();
        }
        return photoSize;
    }

    /* JADX INFO: renamed from: org.telegram.messenger.ImageLoader$7 */
    /* JADX INFO: loaded from: classes5.dex */
    static /* synthetic */ class C28437 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$CompressFormat;

        static {
            int[] iArr = new int[Bitmap.CompressFormat.values().length];
            $SwitchMap$android$graphics$Bitmap$CompressFormat = iArr;
            try {
                iArr[Bitmap.CompressFormat.WEBP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$android$graphics$Bitmap$CompressFormat[Bitmap.CompressFormat.WEBP_LOSSLESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(TLRPC.PhotoSize photoSize, Bitmap bitmap, float f, float f2, int i, boolean z, boolean z2) {
        return scaleAndSaveImage(photoSize, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, 0, 0, z2);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, false, f, f2, i, z, i2, i3, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, float f, float f2, boolean z, int i, boolean z2, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, Bitmap.CompressFormat.JPEG, z, f, f2, i, z2, i2, i3, false);
    }

    public static TLRPC.PhotoSize scaleAndSaveImage(Bitmap bitmap, Bitmap.CompressFormat compressFormat, float f, float f2, int i, boolean z, int i2, int i3) {
        return scaleAndSaveImage(null, bitmap, compressFormat, false, f, f2, i, z, i2, i3, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TLRPC.PhotoSize scaleAndSaveImage(TLRPC.PhotoSize photoSize, Bitmap bitmap, Bitmap.CompressFormat compressFormat, boolean z, float f, float f2, int i, boolean z2, int i2, int i3, boolean z3) {
        boolean z4;
        boolean z5;
        float f3;
        int i4;
        int i5;
        float fMax;
        if (bitmap == null) {
            return null;
        }
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        if (width != 0.0f && height != 0.0f) {
            float fMax2 = Math.max(width / f, height / f2);
            if (i2 == 0 || i3 == 0) {
                z4 = false;
                z5 = z4;
                f3 = fMax2;
                i4 = (int) (width / f3);
                i5 = (int) (height / f3);
                if (i5 != 0 && i4 != 0) {
                    try {
                        return scaleAndSaveImageInternal(photoSize, bitmap, compressFormat, z, i4, i5, width, height, f3, i, z2, z5, z3);
                    } catch (Throwable th) {
                        FileLog.m1136e(th);
                        getInstance().clearMemory();
                    }
                }
            } else {
                float f4 = i2;
                if (width < f4 || height < i3) {
                    if (width < f4 && height > i3) {
                        fMax = width / f4;
                    } else if (width > f4) {
                        float f5 = i3;
                        fMax = height < f5 ? height / f5 : Math.max(width / f4, height / i3);
                    }
                    fMax2 = fMax;
                    z4 = true;
                }
                z5 = z4;
                f3 = fMax2;
                i4 = (int) (width / f3);
                i5 = (int) (height / f3);
                if (i5 != 0) {
                    return scaleAndSaveImageInternal(photoSize, bitmap, compressFormat, z, i4, i5, width, height, f3, i, z2, z5, z3);
                }
            }
        }
        return null;
    }

    public static String getHttpUrlExtension(String str, String str2) {
        String lastPathSegment = Uri.parse(str).getLastPathSegment();
        if (!TextUtils.isEmpty(lastPathSegment) && lastPathSegment.length() > 1) {
            str = lastPathSegment;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        String strSubstring = iLastIndexOf != -1 ? str.substring(iLastIndexOf + 1) : null;
        return (strSubstring == null || strSubstring.length() == 0 || strSubstring.length() > 4) ? str2 : strSubstring;
    }

    public static void saveMessageThumbs(TLRPC.Message message) {
        byte[] bArr;
        TLRPC.PhotoSize tL_photoSize_layer127;
        TLRPC.MessageMedia messageMedia = message.media;
        if (messageMedia == null) {
            return;
        }
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPaidMedia) {
            TLRPC.TL_messageMediaPaidMedia tL_messageMediaPaidMedia = (TLRPC.TL_messageMediaPaidMedia) messageMedia;
            while (i < tL_messageMediaPaidMedia.extended_media.size()) {
                TLRPC.MessageExtendedMedia messageExtendedMedia = tL_messageMediaPaidMedia.extended_media.get(i);
                if (messageExtendedMedia instanceof TLRPC.TL_messageExtendedMedia) {
                    saveMessageThumbs(message, ((TLRPC.TL_messageExtendedMedia) messageExtendedMedia).media);
                }
                i++;
            }
            return;
        }
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize = findPhotoCachedSize(message);
        if (photoSizeFindPhotoCachedSize == null || (bArr = photoSizeFindPhotoCachedSize.bytes) == null || bArr.length == 0) {
            return;
        }
        TLRPC.FileLocation fileLocation = photoSizeFindPhotoCachedSize.location;
        if (fileLocation == null || (fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            photoSizeFindPhotoCachedSize.location = tL_fileLocationToBeDeprecated;
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        }
        if (photoSizeFindPhotoCachedSize.f1693h <= 50 && photoSizeFindPhotoCachedSize.f1694w <= 50) {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.f1693h = photoSizeFindPhotoCachedSize.f1693h;
            tL_photoSize_layer127.f1694w = photoSizeFindPhotoCachedSize.f1694w;
        } else {
            boolean z = true;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            if (MessageObject.shouldEncryptPhotoOrVideo(UserConfig.selectedAccount, message)) {
                pathToAttach = new File(pathToAttach.getAbsolutePath() + ".enc");
            } else {
                z = false;
            }
            if (!pathToAttach.exists()) {
                if (z) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(FileLoader.getInternalCacheDir(), pathToAttach.getName() + ".key"), "rws");
                        long length = randomAccessFile.length();
                        byte[] bArr2 = new byte[32];
                        byte[] bArr3 = new byte[16];
                        if (length > 0 && length % 48 == 0) {
                            randomAccessFile.read(bArr2, 0, 32);
                            randomAccessFile.read(bArr3, 0, 16);
                        } else {
                            Utilities.random.nextBytes(bArr2);
                            Utilities.random.nextBytes(bArr3);
                            randomAccessFile.write(bArr2);
                            randomAccessFile.write(bArr3);
                        }
                        randomAccessFile.close();
                        Utilities.aesCtrDecryptionByteArray(photoSizeFindPhotoCachedSize.bytes, bArr2, bArr3, 0, r8.length, 0);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.f1694w = photoSizeFindPhotoCachedSize.f1694w;
            tL_photoSize_layer127.f1693h = photoSizeFindPhotoCachedSize.f1693h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        }
        TLRPC.MessageMedia messageMedia2 = message.media;
        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia2.photo.sizes.size();
            while (i < size) {
                if (((TLRPC.PhotoSize) message.media.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    message.media.photo.sizes.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
            return;
        }
        if (messageMedia2 instanceof TLRPC.TL_messageMediaDocument) {
            int size2 = messageMedia2.document.thumbs.size();
            while (i < size2) {
                if (message.media.document.thumbs.get(i) instanceof TLRPC.TL_photoCachedSize) {
                    message.media.document.thumbs.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
            return;
        }
        if (messageMedia2 instanceof TLRPC.TL_messageMediaWebPage) {
            int size3 = messageMedia2.webpage.photo.sizes.size();
            while (i < size3) {
                if (((TLRPC.PhotoSize) message.media.webpage.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    message.media.webpage.photo.sizes.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
        }
    }

    public static void saveMessageThumbs(TLRPC.Message message, TLRPC.MessageMedia messageMedia) {
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize;
        byte[] bArr;
        TLRPC.PhotoSize tL_photoSize_layer127;
        if (message == null || messageMedia == null || (photoSizeFindPhotoCachedSize = findPhotoCachedSize(messageMedia)) == null || (bArr = photoSizeFindPhotoCachedSize.bytes) == null || bArr.length == 0) {
            return;
        }
        TLRPC.FileLocation fileLocation = photoSizeFindPhotoCachedSize.location;
        if (fileLocation == null || (fileLocation instanceof TLRPC.TL_fileLocationUnavailable)) {
            TLRPC.TL_fileLocationToBeDeprecated tL_fileLocationToBeDeprecated = new TLRPC.TL_fileLocationToBeDeprecated();
            photoSizeFindPhotoCachedSize.location = tL_fileLocationToBeDeprecated;
            tL_fileLocationToBeDeprecated.volume_id = -2147483648L;
            tL_fileLocationToBeDeprecated.local_id = SharedConfig.getLastLocalId();
        }
        int i = 0;
        if (photoSizeFindPhotoCachedSize.f1693h <= 50 && photoSizeFindPhotoCachedSize.f1694w <= 50) {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.f1693h = photoSizeFindPhotoCachedSize.f1693h;
            tL_photoSize_layer127.f1694w = photoSizeFindPhotoCachedSize.f1694w;
        } else {
            boolean z = true;
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            if (MessageObject.shouldEncryptPhotoOrVideo(UserConfig.selectedAccount, message)) {
                pathToAttach = new File(pathToAttach.getAbsolutePath() + ".enc");
            } else {
                z = false;
            }
            if (!pathToAttach.exists()) {
                if (z) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(new File(FileLoader.getInternalCacheDir(), pathToAttach.getName() + ".key"), "rws");
                        long length = randomAccessFile.length();
                        byte[] bArr2 = new byte[32];
                        byte[] bArr3 = new byte[16];
                        if (length > 0 && length % 48 == 0) {
                            randomAccessFile.read(bArr2, 0, 32);
                            randomAccessFile.read(bArr3, 0, 16);
                        } else {
                            Utilities.random.nextBytes(bArr2);
                            Utilities.random.nextBytes(bArr3);
                            randomAccessFile.write(bArr2);
                            randomAccessFile.write(bArr3);
                        }
                        randomAccessFile.close();
                        Utilities.aesCtrDecryptionByteArray(photoSizeFindPhotoCachedSize.bytes, bArr2, bArr3, 0, r7.length, 0);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.f1694w = photoSizeFindPhotoCachedSize.f1694w;
            tL_photoSize_layer127.f1693h = photoSizeFindPhotoCachedSize.f1693h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                if (((TLRPC.PhotoSize) messageMedia.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    messageMedia.photo.sizes.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
            return;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            int size2 = messageMedia.document.thumbs.size();
            while (i < size2) {
                if (messageMedia.document.thumbs.get(i) instanceof TLRPC.TL_photoCachedSize) {
                    messageMedia.document.thumbs.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
            return;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            int size3 = messageMedia.webpage.photo.sizes.size();
            while (i < size3) {
                if (((TLRPC.PhotoSize) messageMedia.webpage.photo.sizes.get(i)) instanceof TLRPC.TL_photoCachedSize) {
                    messageMedia.webpage.photo.sizes.set(i, tL_photoSize_layer127);
                    return;
                }
                i++;
            }
        }
    }

    private static TLRPC.PhotoSize findPhotoCachedSize(TLRPC.Message message) {
        TLRPC.MessageMedia messageMedia = message.media;
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) message.media.photo.sizes.get(i);
                if (photoSize instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize;
                }
                i++;
            }
            return null;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.Document document = messageMedia.document;
            if (document == null) {
                return null;
            }
            int size2 = document.thumbs.size();
            while (i < size2) {
                TLRPC.PhotoSize photoSize2 = message.media.document.thumbs.get(i);
                if (photoSize2 instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize2;
                }
                i++;
            }
            return null;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            TLRPC.Photo photo = messageMedia.webpage.photo;
            if (photo == null) {
                return null;
            }
            int size3 = photo.sizes.size();
            while (i < size3) {
                TLRPC.PhotoSize photoSize3 = (TLRPC.PhotoSize) message.media.webpage.photo.sizes.get(i);
                if (photoSize3 instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize3;
                }
                i++;
            }
            return null;
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaInvoice) && !messageMedia.extended_media.isEmpty() && (message.media.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) {
            return ((TLRPC.TL_messageExtendedMediaPreview) message.media.extended_media.get(0)).thumb;
        }
        return null;
    }

    private static TLRPC.PhotoSize findPhotoCachedSize(TLRPC.MessageMedia messageMedia) {
        int i = 0;
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                TLRPC.PhotoSize photoSize = (TLRPC.PhotoSize) messageMedia.photo.sizes.get(i);
                if (photoSize instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize;
                }
                i++;
            }
            return null;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
            TLRPC.Document document = messageMedia.document;
            if (document == null) {
                return null;
            }
            int size2 = document.thumbs.size();
            while (i < size2) {
                TLRPC.PhotoSize photoSize2 = messageMedia.document.thumbs.get(i);
                if (photoSize2 instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize2;
                }
                i++;
            }
            return null;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaWebPage) {
            TLRPC.Photo photo = messageMedia.webpage.photo;
            if (photo == null) {
                return null;
            }
            int size3 = photo.sizes.size();
            while (i < size3) {
                TLRPC.PhotoSize photoSize3 = (TLRPC.PhotoSize) messageMedia.webpage.photo.sizes.get(i);
                if (photoSize3 instanceof TLRPC.TL_photoCachedSize) {
                    return photoSize3;
                }
                i++;
            }
            return null;
        }
        if ((messageMedia instanceof TLRPC.TL_messageMediaInvoice) && !messageMedia.extended_media.isEmpty() && (messageMedia.extended_media.get(0) instanceof TLRPC.TL_messageExtendedMediaPreview)) {
            return ((TLRPC.TL_messageExtendedMediaPreview) messageMedia.extended_media.get(0)).thumb;
        }
        return null;
    }

    public static void saveMessagesThumbs(ArrayList<TLRPC.Message> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < arrayList.size(); i++) {
            saveMessageThumbs(arrayList.get(i));
        }
    }

    public static MessageThumb generateMessageThumb(TLRPC.Message message) {
        int i;
        int i2;
        Bitmap strippedPhotoBitmap;
        byte[] bArr;
        TLRPC.PhotoSize photoSizeFindPhotoCachedSize = findPhotoCachedSize(message);
        if (photoSizeFindPhotoCachedSize != null && (bArr = photoSizeFindPhotoCachedSize.bytes) != null && bArr.length != 0) {
            File pathToAttach = FileLoader.getInstance(UserConfig.selectedAccount).getPathToAttach(photoSizeFindPhotoCachedSize, true);
            TLRPC.TL_photoSize_layer127 tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.f1694w = photoSizeFindPhotoCachedSize.f1694w;
            tL_photoSize_layer127.f1693h = photoSizeFindPhotoCachedSize.f1693h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
            if (pathToAttach.exists() && message.grouped_id == 0) {
                org.telegram.p029ui.Components.Point messageSize = ChatMessageCell.getMessageSize(photoSizeFindPhotoCachedSize.f1694w, photoSizeFindPhotoCachedSize.f1693h);
                String str = String.format(Locale.US, "%d_%d@%d_%d_b", Long.valueOf(photoSizeFindPhotoCachedSize.location.volume_id), Integer.valueOf(photoSizeFindPhotoCachedSize.location.local_id), Integer.valueOf((int) (messageSize.f2016x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.f2017y / AndroidUtilities.density)));
                if (!getInstance().isInMemCache(str, false)) {
                    String path = pathToAttach.getPath();
                    float f = messageSize.f2016x;
                    float f2 = AndroidUtilities.density;
                    Bitmap bitmapLoadBitmap = loadBitmap(path, null, (int) (f / f2), (int) (messageSize.f2017y / f2), false);
                    if (bitmapLoadBitmap != null) {
                        Utilities.blurBitmap(bitmapLoadBitmap, 3, 1, bitmapLoadBitmap.getWidth(), bitmapLoadBitmap.getHeight(), bitmapLoadBitmap.getRowBytes());
                        float f3 = messageSize.f2016x;
                        float f4 = AndroidUtilities.density;
                        Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmapLoadBitmap, (int) (f3 / f4), (int) (messageSize.f2017y / f4), true);
                        if (bitmapCreateScaledBitmap != bitmapLoadBitmap) {
                            bitmapLoadBitmap.recycle();
                            bitmapLoadBitmap = bitmapCreateScaledBitmap;
                        }
                        return new MessageThumb(str, new BitmapDrawable(bitmapLoadBitmap));
                    }
                }
            }
        } else {
            TLRPC.MessageMedia messageMedia = message.media;
            if (messageMedia instanceof TLRPC.TL_messageMediaDocument) {
                int size = messageMedia.document.thumbs.size();
                for (int i3 = 0; i3 < size; i3++) {
                    TLRPC.PhotoSize photoSize = message.media.document.thumbs.get(i3);
                    if (photoSize instanceof TLRPC.TL_photoStrippedSize) {
                        TLRPC.PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(message.media.document.thumbs, 320);
                        if (closestPhotoSizeWithSize == null) {
                            int i4 = 0;
                            while (true) {
                                if (i4 >= message.media.document.attributes.size()) {
                                    i = 0;
                                    i2 = 0;
                                    break;
                                }
                                if (message.media.document.attributes.get(i4) instanceof TLRPC.TL_documentAttributeVideo) {
                                    TLRPC.TL_documentAttributeVideo tL_documentAttributeVideo = (TLRPC.TL_documentAttributeVideo) message.media.document.attributes.get(i4);
                                    i2 = tL_documentAttributeVideo.f1670h;
                                    i = tL_documentAttributeVideo.f1671w;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            i2 = closestPhotoSizeWithSize.f1693h;
                            i = closestPhotoSizeWithSize.f1694w;
                        }
                        org.telegram.p029ui.Components.Point messageSize2 = ChatMessageCell.getMessageSize(i, i2);
                        String str2 = String.format(Locale.US, "%s_false@%d_%d_b", ImageLocation.getStrippedKey(message, message, photoSize), Integer.valueOf((int) (messageSize2.f2016x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize2.f2017y / AndroidUtilities.density)));
                        if (!getInstance().isInMemCache(str2, false) && (strippedPhotoBitmap = getStrippedPhotoBitmap(photoSize.bytes, null)) != null) {
                            Utilities.blurBitmap(strippedPhotoBitmap, 3, 1, strippedPhotoBitmap.getWidth(), strippedPhotoBitmap.getHeight(), strippedPhotoBitmap.getRowBytes());
                            float f5 = messageSize2.f2016x;
                            float f6 = AndroidUtilities.density;
                            Bitmap bitmapCreateScaledBitmap2 = Bitmaps.createScaledBitmap(strippedPhotoBitmap, (int) (f5 / f6), (int) (messageSize2.f2017y / f6), true);
                            if (bitmapCreateScaledBitmap2 != strippedPhotoBitmap) {
                                strippedPhotoBitmap.recycle();
                                strippedPhotoBitmap = bitmapCreateScaledBitmap2;
                            }
                            return new MessageThumb(str2, new BitmapDrawable(strippedPhotoBitmap));
                        }
                    }
                }
            }
        }
        return null;
    }

    public void onFragmentStackChanged() {
        for (int i = 0; i < this.cachedAnimatedFileDrawables.size(); i++) {
            this.cachedAnimatedFileDrawables.get(i).repeatCount = 0;
        }
    }

    public DispatchQueuePriority getCacheOutQueue() {
        return this.cacheOutQueue;
    }

    /* JADX INFO: loaded from: classes5.dex */
    public static class MessageThumb {
        BitmapDrawable drawable;
        String key;

        public MessageThumb(String str, BitmapDrawable bitmapDrawable) {
            this.key = str;
            this.drawable = bitmapDrawable;
        }
    }
}
