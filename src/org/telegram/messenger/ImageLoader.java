package org.telegram.messenger;

import android.annotation.TargetApi;
import android.app.ActivityManager;
import android.content.BroadcastReceiver;
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
import android.graphics.PointF;
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
import androidx.core.graphics.ColorUtils;
import j$.io.FileRetargetClass;
import j$.nio.file.CopyOption;
import j$.nio.file.Files;
import j$.nio.file.LinkOption;
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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.stream.Stream;
import java.util.zip.GZIPInputStream;
import kotlin.UByte;
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
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.ui.Cells.ChatMessageCell;
import org.telegram.ui.Components.AnimatedFileDrawable;
import org.telegram.ui.Components.BackgroundGradientDrawable;
import org.telegram.ui.Components.MotionBackgroundDrawable;
import org.telegram.ui.Components.RLottieDiceDrawable;
import org.telegram.ui.Components.RLottieDrawable;
import org.telegram.ui.Components.SlotsDrawable;
import org.telegram.ui.Components.ThemePreviewDrawable;
import org.telegram.ui.web.WebInstantView;

/* JADX INFO: loaded from: classes.dex */
public class ImageLoader {
    public static final String AUTOPLAY_FILTER = "g";
    public static final String AUTOPLAY_FILTER_NONLOOP = "gl";
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
            if (AUTOPLAY_FILTER.equals(strArrSplit[i]) || AUTOPLAY_FILTER_NONLOOP.equals(strArrSplit[i]) || "pframe".equals(strArrSplit[i])) {
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

    public static class ThumbGenerateInfo {
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

    /* JADX INFO: loaded from: classes5.dex */
    public class HttpFileTask extends AsyncTask<Void, Void, Boolean> {
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

        /* JADX WARN: Code restructure failed: missing block: B:85:0x0123, code lost:
        
            if (r5 != (-1)) goto L94;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:0x0125, code lost:
        
            r0 = r11.fileSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:0x0127, code lost:
        
            if (r0 == 0) goto L96;
         */
        /* JADX WARN: Code restructure failed: missing block: B:88:0x0129, code lost:
        
            reportProgress(r0, r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x012f, code lost:
        
            r0 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0131, code lost:
        
            r0 = e;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0133, code lost:
        
            r1 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0135, code lost:
        
            org.telegram.messenger.FileLog.m992e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x013a, code lost:
        
            org.telegram.messenger.FileLog.m992e(r0);
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
                FileLog.m992e(th);
                inputStream2 = inputStream;
            }
            if (this.canRetry) {
                try {
                    if ((uRLConnectionOpenConnection instanceof HttpURLConnection) && (responseCode = ((HttpURLConnection) uRLConnectionOpenConnection).getResponseCode()) != 200 && responseCode != 202 && responseCode != 304) {
                        this.canRetry = false;
                    }
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
                if (uRLConnectionOpenConnection != null) {
                    try {
                        Map<String, List<String>> headerFields = uRLConnectionOpenConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.fileSize = Utilities.parseInt((CharSequence) str);
                        }
                    } catch (Exception e2) {
                        FileLog.m992e(e2);
                    }
                }
                if (inputStream2 != null) {
                    try {
                        byte[] bArr = new byte[32768];
                        int i = 0;
                        while (true) {
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
                        }
                    } catch (Throwable th4) {
                        th = th4;
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
                } catch (Throwable th5) {
                    FileLog.m992e(th5);
                }
                if (inputStream2 != null) {
                    try {
                        inputStream2.close();
                    } catch (Throwable th6) {
                        FileLog.m992e(th6);
                    }
                }
            }
            return Boolean.valueOf(z2);
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Boolean bool) {
            ImageLoader.this.runHttpFileLoadTasks(this, bool.booleanValue() ? 2 : 1);
        }

        @Override // android.os.AsyncTask
        public void onCancelled() {
            ImageLoader.this.runHttpFileLoadTasks(this, 2);
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class ArtworkLoadTask extends AsyncTask<Void, Void, String> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private HttpURLConnection httpConnection;
        private boolean small;

        public ArtworkLoadTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
            this.small = Uri.parse(cacheImage.imageLocation.path).getQueryParameter("s") != null;
        }

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
                        FileLog.m992e(e);
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
                                FileLog.m992e(th3);
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
                            FileLog.m992e(th4);
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
                        FileLog.m992e(th5);
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
                    FileLog.m992e(th);
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
                            FileLog.m992e(th7);
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
                            FileLog.m992e(th9);
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
        public void onCancelled() {
            ImageLoader.this.imageLoadQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.ImageLoader$ArtworkLoadTask$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$onCancelled$2();
                }
            });
        }
    }

    /* JADX INFO: loaded from: classes5.dex */
    public class HttpImageTask extends AsyncTask<Void, Void, Boolean> {
        private CacheImage cacheImage;
        private boolean canRetry = true;
        private RandomAccessFile fileOutputStream;
        private HttpURLConnection httpConnection;
        private long imageSize;
        private long lastProgressTime;
        private String overrideUrl;

        /* JADX INFO: renamed from: $r8$lambda$cv6vUIEcOP54Auh2HI4OW-QaCg0, reason: not valid java name */
        public static /* synthetic */ void m5252$r8$lambda$cv6vUIEcOP54Auh2HI4OWQaCg0(TLObject tLObject, TLRPC.TL_error tL_error) {
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

        /* JADX WARN: Code restructure failed: missing block: B:100:0x0172, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0173, code lost:
        
            r2 = true;
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:102:0x0177, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0178, code lost:
        
            r2 = true;
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x017c, code lost:
        
            r0 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x017e, code lost:
        
            org.telegram.messenger.FileLog.m992e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:108:0x0184, code lost:
        
            org.telegram.messenger.FileLog.m992e(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:95:0x0166, code lost:
        
            if (r7 != (-1)) goto L104;
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x0168, code lost:
        
            r2 = r12.imageSize;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x016c, code lost:
        
            if (r2 == 0) goto L107;
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x016e, code lost:
        
            reportProgress(r2, r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:111:0x018b A[Catch: all -> 0x0191, TRY_LEAVE, TryCatch #1 {all -> 0x0191, blocks: (B:109:0x0187, B:111:0x018b), top: B:134:0x0187 }] */
        /* JADX WARN: Removed duplicated region for block: B:117:0x0199 A[Catch: all -> 0x019c, TRY_LEAVE, TryCatch #8 {all -> 0x019c, blocks: (B:115:0x0195, B:117:0x0199), top: B:144:0x0195 }] */
        /* JADX WARN: Removed duplicated region for block: B:138:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                                    ImageLoader.HttpImageTask.m5252$r8$lambda$cv6vUIEcOP54Auh2HI4OWQaCg0(tLObject, tL_error);
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
                            FileLog.m992e(th);
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
                    FileLog.m992e(e);
                }
                if (this.imageSize == 0 && (httpURLConnection = this.httpConnection) != null) {
                    try {
                        Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
                        if (headerFields != null && (list = headerFields.get("content-Length")) != null && !list.isEmpty() && (str = list.get(0)) != null) {
                            this.imageSize = Utilities.parseInt((CharSequence) str);
                        }
                    } catch (Exception e2) {
                        FileLog.m992e(e2);
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
                FileLog.m992e(th4);
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
                    FileLog.m992e(th5);
                }
            }
            if (z2 && (file = (cacheImage = this.cacheImage).tempFilePath) != null && !file.renameTo(cacheImage.finalFilePath)) {
                CacheImage cacheImage2 = this.cacheImage;
                cacheImage2.finalFilePath = cacheImage2.tempFilePath;
            }
            return Boolean.valueOf(z2);
        }

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
            boolean zBooleanValue = bool.booleanValue();
            CacheImage cacheImage = this.cacheImage;
            if (zBooleanValue) {
                NotificationCenter notificationCenter = NotificationCenter.getInstance(cacheImage.currentAccount);
                int i = NotificationCenter.fileLoaded;
                CacheImage cacheImage2 = this.cacheImage;
                notificationCenter.lambda$postNotificationNameOnUIThread$1(i, cacheImage2.url, cacheImage2.finalFilePath);
                return;
            }
            NotificationCenter.getInstance(cacheImage.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.fileLoadFailed, this.cacheImage.url, 2);
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
        public void onCancelled() {
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

    /* JADX INFO: loaded from: classes5.dex */
    public class ThumbGenerateTask implements Runnable {
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
                final String str = "q_" + this.info.parentDocument.dc_id + "_" + this.info.parentDocument.id;
                File file = new File(FileLoader.getDirectory(4), str.concat(".jpg"));
                try {
                    if (file.exists() || !this.originalPath.exists()) {
                        removeTask();
                        return;
                    }
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
                    if (width == 0 || height == 0) {
                        removeTask();
                        return;
                    }
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
                        FileLog.m992e(e);
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
                } catch (Throwable th) {
                    th = th;
                    FileLog.m992e(th);
                    removeTask();
                }
            } catch (Throwable th2) {
                th = th2;
                FileLog.m992e(th);
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

    public class CacheOutTask implements Runnable {
        private CacheImage cacheImage;
        private boolean isCancelled;
        private Thread runningThread;
        private final Object sync = new Object();

        public CacheOutTask(CacheImage cacheImage) {
            this.cacheImage = cacheImage;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Not initialized variable reg: 22, insn: 0x06e4: MOVE (r4 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]) = (r22 I:??[int, float, boolean, short, byte, char, OBJECT, ARRAY]), block:B:428:0x06e4 */
        /* JADX WARN: Removed duplicated region for block: B:123:0x021e  */
        /* JADX WARN: Removed duplicated region for block: B:199:0x0320  */
        /* JADX WARN: Removed duplicated region for block: B:249:0x03e5  */
        /* JADX WARN: Removed duplicated region for block: B:293:0x04a5  */
        /* JADX WARN: Removed duplicated region for block: B:375:0x05f8  */
        /* JADX WARN: Removed duplicated region for block: B:624:0x0a2c  */
        /* JADX WARN: Removed duplicated region for block: B:646:0x0a66 A[Catch: all -> 0x0a5d, TryCatch #42 {all -> 0x0a5d, blocks: (B:625:0x0a2f, B:626:0x0a38, B:635:0x0a48, B:638:0x0a50, B:641:0x0a57, B:647:0x0a6b, B:651:0x0a73, B:653:0x0a7b, B:646:0x0a66), top: B:967:0x0a2f }] */
        /* JADX WARN: Removed duplicated region for block: B:684:0x0b0a A[Catch: all -> 0x0b6e, TRY_ENTER, TRY_LEAVE, TryCatch #14 {all -> 0x0b6e, blocks: (B:676:0x0aed, B:684:0x0b0a, B:675:0x0ae8), top: B:919:0x0ae8 }] */
        /* JADX WARN: Removed duplicated region for block: B:689:0x0b26  */
        /* JADX WARN: Removed duplicated region for block: B:780:0x0c5b  */
        /* JADX WARN: Removed duplicated region for block: B:782:0x0c5e A[Catch: all -> 0x0b61, TRY_LEAVE, TryCatch #0 {all -> 0x0b61, blocks: (B:706:0x0b5d, B:757:0x0bfe, B:759:0x0c08, B:761:0x0c0e, B:762:0x0c13, B:764:0x0c19, B:768:0x0c2d, B:774:0x0c3b, B:776:0x0c41, B:782:0x0c5e, B:777:0x0c4b, B:779:0x0c51, B:752:0x0bec), top: B:898:0x0b5d }] */
        /* JADX WARN: Removed duplicated region for block: B:784:0x0c62  */
        /* JADX WARN: Removed duplicated region for block: B:786:0x0c65  */
        /* JADX WARN: Removed duplicated region for block: B:810:0x0ca3  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0166  */
        /* JADX WARN: Removed duplicated region for block: B:833:0x0ce1 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:836:0x0cec  */
        /* JADX WARN: Removed duplicated region for block: B:837:0x0cee  */
        /* JADX WARN: Removed duplicated region for block: B:840:0x0d03  */
        /* JADX WARN: Removed duplicated region for block: B:846:0x0d22  */
        /* JADX WARN: Removed duplicated region for block: B:849:0x0d2c  */
        /* JADX WARN: Removed duplicated region for block: B:853:0x0d39 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:858:0x0d42  */
        /* JADX WARN: Removed duplicated region for block: B:859:0x0d49  */
        /* JADX WARN: Removed duplicated region for block: B:862:0x0d51  */
        /* JADX WARN: Removed duplicated region for block: B:863:0x0d58  */
        /* JADX WARN: Removed duplicated region for block: B:870:0x0d8b  */
        /* JADX WARN: Removed duplicated region for block: B:928:0x02d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:952:0x089d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:978:? A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:99:0x01b9  */
        /* JADX WARN: Type inference failed for: r10v13 */
        /* JADX WARN: Type inference failed for: r10v14 */
        /* JADX WARN: Type inference failed for: r10v15 */
        /* JADX WARN: Type inference failed for: r10v32 */
        /* JADX WARN: Type inference failed for: r10v33, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r10v43 */
        /* JADX WARN: Type inference failed for: r11v12 */
        /* JADX WARN: Type inference failed for: r11v13 */
        /* JADX WARN: Type inference failed for: r11v14 */
        /* JADX WARN: Type inference failed for: r11v15 */
        /* JADX WARN: Type inference failed for: r11v16 */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v18, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r11v19 */
        /* JADX WARN: Type inference failed for: r11v20 */
        /* JADX WARN: Type inference failed for: r11v21 */
        /* JADX WARN: Type inference failed for: r11v22 */
        /* JADX WARN: Type inference failed for: r11v23 */
        /* JADX WARN: Type inference failed for: r11v26, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r11v27 */
        /* JADX WARN: Type inference failed for: r11v31 */
        /* JADX WARN: Type inference failed for: r11v35 */
        /* JADX WARN: Type inference failed for: r11v36, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r11v72 */
        /* JADX WARN: Type inference failed for: r11v73 */
        /* JADX WARN: Type inference failed for: r11v74 */
        /* JADX WARN: Type inference failed for: r13v12 */
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
        /* JADX WARN: Type inference failed for: r13v23 */
        /* JADX WARN: Type inference failed for: r13v24 */
        /* JADX WARN: Type inference failed for: r13v3 */
        /* JADX WARN: Type inference failed for: r13v37 */
        /* JADX WARN: Type inference failed for: r13v38 */
        /* JADX WARN: Type inference failed for: r13v39 */
        /* JADX WARN: Type inference failed for: r13v4 */
        /* JADX WARN: Type inference failed for: r13v40 */
        /* JADX WARN: Type inference failed for: r13v41 */
        /* JADX WARN: Type inference failed for: r18v10 */
        /* JADX WARN: Type inference failed for: r18v11 */
        /* JADX WARN: Type inference failed for: r18v12 */
        /* JADX WARN: Type inference failed for: r18v26 */
        /* JADX WARN: Type inference failed for: r18v27 */
        /* JADX WARN: Type inference failed for: r18v28 */
        /* JADX WARN: Type inference failed for: r18v29 */
        /* JADX WARN: Type inference failed for: r18v3 */
        /* JADX WARN: Type inference failed for: r18v4 */
        /* JADX WARN: Type inference failed for: r18v5 */
        /* JADX WARN: Type inference failed for: r18v6 */
        /* JADX WARN: Type inference failed for: r18v7 */
        /* JADX WARN: Type inference failed for: r18v8 */
        /* JADX WARN: Type inference failed for: r18v9 */
        /* JADX WARN: Type inference failed for: r2v111 */
        /* JADX WARN: Type inference failed for: r2v112 */
        /* JADX WARN: Type inference failed for: r2v113 */
        /* JADX WARN: Type inference failed for: r2v114 */
        /* JADX WARN: Type inference failed for: r2v115 */
        /* JADX WARN: Type inference failed for: r2v116 */
        /* JADX WARN: Type inference failed for: r2v117 */
        /* JADX WARN: Type inference failed for: r2v118 */
        /* JADX WARN: Type inference failed for: r2v24 */
        /* JADX WARN: Type inference failed for: r2v25, types: [int] */
        /* JADX WARN: Type inference failed for: r2v26 */
        /* JADX WARN: Type inference failed for: r2v27 */
        /* JADX WARN: Type inference failed for: r2v28 */
        /* JADX WARN: Type inference failed for: r2v32 */
        /* JADX WARN: Type inference failed for: r2v33 */
        /* JADX WARN: Type inference failed for: r2v34 */
        /* JADX WARN: Type inference failed for: r2v35 */
        /* JADX WARN: Type inference failed for: r2v36 */
        /* JADX WARN: Type inference failed for: r2v39, types: [org.telegram.messenger.ImageLoader$CacheImage] */
        /* JADX WARN: Type inference failed for: r2v40 */
        /* JADX WARN: Type inference failed for: r2v41 */
        /* JADX WARN: Type inference failed for: r2v43 */
        /* JADX WARN: Type inference failed for: r2v46, types: [int] */
        /* JADX WARN: Type inference failed for: r2v47 */
        /* JADX WARN: Type inference failed for: r2v49 */
        /* JADX WARN: Type inference failed for: r2v82 */
        /* JADX WARN: Type inference failed for: r38v17 */
        /* JADX WARN: Type inference failed for: r38v21 */
        /* JADX WARN: Type inference failed for: r38v35 */
        /* JADX WARN: Type inference failed for: r38v36 */
        /* JADX WARN: Type inference failed for: r38v37 */
        /* JADX WARN: Type inference failed for: r38v38 */
        /* JADX WARN: Type inference failed for: r38v39 */
        /* JADX WARN: Type inference failed for: r38v40 */
        /* JADX WARN: Type inference failed for: r38v5 */
        /* JADX WARN: Type inference failed for: r38v6 */
        /* JADX WARN: Type inference failed for: r3v155 */
        /* JADX WARN: Type inference failed for: r3v156 */
        /* JADX WARN: Type inference failed for: r3v157 */
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
        /* JADX WARN: Type inference failed for: r3v22 */
        /* JADX WARN: Type inference failed for: r3v23 */
        /* JADX WARN: Type inference failed for: r3v24 */
        /* JADX WARN: Type inference failed for: r3v25 */
        /* JADX WARN: Type inference failed for: r3v27, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r3v28, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v29, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v30 */
        /* JADX WARN: Type inference failed for: r3v31 */
        /* JADX WARN: Type inference failed for: r3v33, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v48 */
        /* JADX WARN: Type inference failed for: r3v49 */
        /* JADX WARN: Type inference failed for: r3v50 */
        /* JADX WARN: Type inference failed for: r3v51 */
        /* JADX WARN: Type inference failed for: r3v53 */
        /* JADX WARN: Type inference failed for: r3v54 */
        /* JADX WARN: Type inference failed for: r3v55, types: [java.io.File] */
        /* JADX WARN: Type inference failed for: r3v59 */
        /* JADX WARN: Type inference failed for: r3v74 */
        /* JADX WARN: Type inference failed for: r41v0, types: [org.telegram.messenger.ImageLoader$CacheOutTask] */
        /* JADX WARN: Type inference failed for: r4v13, types: [android.graphics.Canvas] */
        /* JADX WARN: Type inference failed for: r4v22, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r5v15 */
        /* JADX WARN: Type inference failed for: r5v21, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r5v22, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r5v29, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r5v30 */
        /* JADX WARN: Type inference failed for: r5v31 */
        /* JADX WARN: Type inference failed for: r5v32 */
        /* JADX WARN: Type inference failed for: r5v33, types: [android.graphics.Bitmap] */
        /* JADX WARN: Type inference failed for: r5v34, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r5v35 */
        /* JADX WARN: Type inference failed for: r5v37 */
        /* JADX WARN: Type inference failed for: r5v42 */
        /* JADX WARN: Type inference failed for: r5v43 */
        /* JADX WARN: Type inference failed for: r5v46 */
        /* JADX WARN: Type inference failed for: r5v47 */
        /* JADX WARN: Type inference failed for: r5v69 */
        /* JADX WARN: Type inference failed for: r5v70, types: [java.io.RandomAccessFile] */
        /* JADX WARN: Type inference failed for: r5v71 */
        /* JADX WARN: Type inference failed for: r5v83 */
        /* JADX WARN: Type inference failed for: r5v84 */
        /* JADX WARN: Type inference failed for: r5v85 */
        /* JADX WARN: Type inference failed for: r5v86 */
        /* JADX WARN: Type inference failed for: r5v87 */
        /* JADX WARN: Type inference failed for: r5v88 */
        /* JADX WARN: Type inference failed for: r7v12 */
        /* JADX WARN: Type inference failed for: r7v13, types: [android.graphics.Bitmap, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r7v62 */
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
            char c2;
            boolean z8;
            boolean z9;
            Bitmap bitmap2;
            boolean zContains;
            ?? r38;
            boolean z10;
            Bitmap bitmap3;
            ?? r382;
            boolean z11;
            ?? r3;
            int i;
            boolean z12;
            ?? r32;
            ?? r33;
            boolean z13;
            int i2;
            ?? ApplyWallpaperSetting;
            ?? r34;
            ?? r2;
            FileInputStream fileInputStream;
            ?? DecodeByteArray;
            char c3;
            CacheImage cacheImage;
            String str3;
            Object obj;
            ?? IntValue;
            ?? r11;
            ?? CreateScaledBitmap;
            ?? frameAtTime;
            ?? r18;
            ?? DecodeByteArray2;
            ?? DecodeStream;
            ?? CreateScaledBitmap2;
            boolean z14;
            int i3;
            FileInputStream fileInputStream2;
            ?? r132;
            Rect rect;
            File file;
            Bitmap thumbnail;
            String str4;
            Bitmap bitmap4;
            int i4;
            boolean z15;
            boolean z16;
            boolean z17;
            boolean z18;
            ?? r383;
            boolean z19;
            boolean z20;
            boolean z21;
            char c4;
            char c5;
            FileInputStream fileInputStream3;
            boolean z22;
            float fMin;
            int i5;
            boolean z23;
            boolean z24;
            Long lValueOf2;
            String strSubstring;
            byte[] bArr2;
            boolean z25;
            boolean z26;
            boolean z27;
            boolean z28;
            boolean z29;
            Bitmap frameAtTime2;
            MediaMetadataRetriever mediaMetadataRetriever;
            BitmapsCache.CacheOptions cacheOptions;
            boolean z30;
            AnimatedFileDrawable animatedFileDrawable;
            int i6;
            int i7;
            String str5;
            int i8;
            int i9;
            int i10;
            boolean z31;
            boolean z32;
            boolean z33;
            boolean zContains2;
            boolean z34;
            int i11;
            String str6;
            ?? r22;
            Throwable th;
            ?? r5;
            RandomAccessFile randomAccessFile;
            boolean z35;
            BitmapsCache.CacheOptions cacheOptions2;
            int i12;
            RLottieDrawable rLottieDrawable;
            int i13;
            RLottieDrawable rLottieDiceDrawable;
            byte[] bArr3;
            int i14;
            int i15;
            boolean z36;
            boolean z37;
            boolean zContains3;
            boolean z38;
            int i16;
            int i17;
            String str7;
            int i18;
            int i19;
            int i20;
            int i21;
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
                    int i22 = cacheImage2.imageType;
                    if (i22 == 5) {
                        try {
                            CacheImage cacheImage3 = this.cacheImage;
                            themePreviewDrawable = new ThemePreviewDrawable(cacheImage3.finalFilePath, (DocumentObject.ThemeDocument) cacheImage3.imageLocation.document);
                        } catch (Throwable th2) {
                            FileLog.m992e(th2);
                            themePreviewDrawable = null;
                        }
                        onPostExecute(themePreviewDrawable);
                        return;
                    }
                    boolean z39 = true;
                    if (i22 == 3 || i22 == 4) {
                        Point point = AndroidUtilities.displaySize;
                        int i23 = point.x;
                        int i24 = point.y;
                        String str8 = cacheImage2.filter;
                        if (str8 != null) {
                            String[] strArrSplit = str8.split("_");
                            if (strArrSplit.length >= 2) {
                                z = false;
                                float f5 = Float.parseFloat(strArrSplit[0]);
                                z2 = true;
                                float f6 = Float.parseFloat(strArrSplit[1]);
                                float f7 = AndroidUtilities.density;
                                int i25 = (int) (f6 * f7);
                                i23 = (int) (f5 * f7);
                                i24 = i25;
                            } else {
                                z = false;
                                z2 = true;
                            }
                        }
                        try {
                            CacheImage cacheImage4 = this.cacheImage;
                            svgBitmap = SvgHelper.getSvgBitmap(cacheImage4.finalFilePath, i23, i24, cacheImage4.imageType == 4 ? z2 : z);
                            try {
                                bitmapApplyWallpaperSetting = svgBitmap.getBitmap();
                                svgResult = svgBitmap;
                            } catch (Throwable th3) {
                                th = th3;
                                FileLog.m992e(th);
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
                    if (i22 == 1) {
                        int iMin = Math.min(512, AndroidUtilities.dp(170.6f));
                        int iMin2 = Math.min(512, AndroidUtilities.dp(170.6f));
                        String str9 = this.cacheImage.filter;
                        if (str9 != null) {
                            String[] strArrSplit2 = str9.split("_");
                            if (strArrSplit2.length >= 2) {
                                float f8 = Float.parseFloat(strArrSplit2[0]);
                                float f9 = Float.parseFloat(strArrSplit2[1]);
                                int iMin3 = Math.min(512, (int) (AndroidUtilities.density * f8));
                                int iMin4 = Math.min(512, (int) (AndroidUtilities.density * f9));
                                if (f8 > 90.0f || f9 > 90.0f || this.cacheImage.filter.contains("nolimit")) {
                                    iMin2 = iMin4;
                                    z36 = false;
                                    i21 = iMin3;
                                } else {
                                    int iMin5 = Math.min(iMin3, 160);
                                    iMin2 = Math.min(iMin4, 160);
                                    z36 = true;
                                    i21 = iMin5;
                                }
                                boolean z40 = (strArrSplit2.length >= 3 && "pcache".equals(strArrSplit2[2])) || this.cacheImage.filter.contains("pcache") || !(this.cacheImage.filter.contains("nolimit") || SharedConfig.getDevicePerformanceClass() == 2);
                                zContains2 = this.cacheImage.filter.contains("lastframe");
                                i15 = 4;
                                zContains3 = this.cacheImage.filter.contains("lastreactframe");
                                if (zContains3) {
                                    zContains2 = true;
                                }
                                if (this.cacheImage.filter.contains("firstframe")) {
                                    z37 = true;
                                    i16 = i21;
                                    z38 = z40;
                                } else {
                                    z37 = false;
                                    i16 = i21;
                                    z38 = z40;
                                }
                            } else {
                                i15 = 4;
                                z36 = false;
                                z37 = false;
                                zContains3 = false;
                                z38 = false;
                                zContains2 = false;
                                i16 = iMin;
                            }
                            if (strArrSplit2.length >= 3) {
                                i17 = 3;
                                if ("nr".equals(strArrSplit2[2])) {
                                    i10 = 2;
                                } else if ("nrs".equals(strArrSplit2[2])) {
                                    i10 = 3;
                                } else if ("dice".equals(strArrSplit2[2])) {
                                    str7 = strArrSplit2[3];
                                    i10 = 2;
                                    if (strArrSplit2.length < 5) {
                                        i18 = i16;
                                        z34 = z36;
                                        i11 = 0;
                                        i8 = iMin2;
                                        i19 = i18;
                                        str6 = str7;
                                        z32 = zContains3;
                                        r22 = i16;
                                        i9 = i19;
                                        z31 = z37;
                                        z33 = z38;
                                    } else {
                                        if (!"c1".equals(strArrSplit2[i15])) {
                                            if ("c2".equals(strArrSplit2[i15])) {
                                                i18 = i16;
                                                z34 = z36;
                                                i11 = i17;
                                            } else if ("c3".equals(strArrSplit2[i15])) {
                                                i18 = i16;
                                                z34 = z36;
                                                i11 = i15;
                                            } else if ("c4".equals(strArrSplit2[i15])) {
                                                i18 = i16;
                                                z34 = z36;
                                                i11 = 5;
                                            } else {
                                                i20 = "c5".equals(strArrSplit2[i15]) ? 6 : 12;
                                                i18 = i16;
                                                z34 = z36;
                                                i11 = 0;
                                            }
                                            i8 = iMin2;
                                            i19 = i18;
                                            str6 = str7;
                                            z32 = zContains3;
                                            r22 = i16;
                                            i9 = i19;
                                            z31 = z37;
                                            z33 = z38;
                                        }
                                        z34 = z36;
                                        i11 = i20;
                                        i8 = iMin2;
                                        i19 = i16;
                                        str6 = str7;
                                        z32 = zContains3;
                                        r22 = i16;
                                        i9 = i19;
                                        z31 = z37;
                                        z33 = z38;
                                    }
                                }
                                str7 = null;
                                if (strArrSplit2.length < 5) {
                                }
                            } else {
                                i17 = 3;
                            }
                            i10 = 1;
                            str7 = null;
                            if (strArrSplit2.length < 5) {
                            }
                        } else {
                            i8 = iMin2;
                            i9 = iMin;
                            i10 = 1;
                            z31 = false;
                            z32 = false;
                            z33 = false;
                            zContains2 = false;
                            z34 = false;
                            i11 = 0;
                            str6 = null;
                            r22 = iMin;
                        }
                        if (str6 != null) {
                            if ("🎰".equals(str6)) {
                                rLottieDiceDrawable = new SlotsDrawable(str6, i9, i8);
                            } else {
                                rLottieDiceDrawable = new RLottieDiceDrawable(str6, i9, i8);
                            }
                            i12 = i8;
                            i14 = i9;
                        } else {
                            File file2 = this.cacheImage.finalFilePath;
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
                                        FileLog.m992e(e);
                                        if (randomAccessFile != null) {
                                            try {
                                                randomAccessFile.close();
                                            } catch (Exception e2) {
                                                FileLog.m992e(e2);
                                            }
                                        }
                                        z35 = false;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    r5 = r22;
                                    if (r5 == 0) {
                                        try {
                                            r5.close();
                                            throw th;
                                        } catch (Exception e3) {
                                            FileLog.m992e(e3);
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
                                boolean z41 = bArr3[1] == -117;
                                try {
                                    randomAccessFile.close();
                                    z35 = z41;
                                } catch (Exception e5) {
                                    FileLog.m992e(e5);
                                    z35 = z41;
                                }
                                if (zContains2 || z31) {
                                    z33 = false;
                                }
                                if (z33 || zContains2 || z31) {
                                    BitmapsCache.CacheOptions cacheOptions3 = new BitmapsCache.CacheOptions();
                                    if (!zContains2 && !z31) {
                                        String str10 = this.cacheImage.filter;
                                        if (str10 != null && str10.contains("compress")) {
                                            cacheOptions3.compressQuality = 60;
                                        }
                                        String str11 = this.cacheImage.filter;
                                        if (str11 != null && str11.contains("flbk")) {
                                            cacheOptions3.fallback = true;
                                        }
                                    } else {
                                        cacheOptions3.firstFrame = true;
                                    }
                                    cacheOptions2 = cacheOptions3;
                                } else {
                                    cacheOptions2 = null;
                                }
                                ImageLocation imageLocation2 = this.cacheImage.imageLocation;
                                boolean z42 = imageLocation2 != null && MessageObject.isTextColorEmoji(imageLocation2.document);
                                if (z35) {
                                    File file3 = this.cacheImage.finalFilePath;
                                    i12 = i8;
                                    int i26 = i9;
                                    rLottieDrawable = new RLottieDrawable(file3, ImageLoader.decompressGzip(file3), i26 == true ? 1 : 0, i12, cacheOptions2, z34, null, i11, z42);
                                    i13 = i26;
                                } else {
                                    i12 = i8;
                                    int i27 = i9;
                                    rLottieDrawable = new RLottieDrawable(this.cacheImage.finalFilePath, null, i27 == true ? 1 : 0, i12, cacheOptions2, z34, null, i11, z42);
                                    i13 = i27;
                                }
                                rLottieDiceDrawable = rLottieDrawable;
                                i14 = i13;
                            }
                        }
                        if (zContains2 || z31) {
                            loadLastFrame(rLottieDiceDrawable, i12, i14 == true ? 1 : 0, zContains2, z32);
                            return;
                        } else {
                            rLottieDiceDrawable.setAutoRepeat(i10);
                            onPostExecute(rLottieDiceDrawable);
                            return;
                        }
                    }
                    int i28 = 4;
                    if (i22 == 2) {
                        long j = imageLocation != null ? imageLocation.videoSeekTo : 0L;
                        String str12 = cacheImage2.filter;
                        if (str12 != null) {
                            String[] strArrSplit3 = str12.split("_");
                            if (strArrSplit3.length >= 2) {
                                z25 = Float.parseFloat(strArrSplit3[0]) <= 90.0f && Float.parseFloat(strArrSplit3[1]) <= 90.0f && !this.cacheImage.filter.contains("nolimit");
                                int i29 = 0;
                                boolean z43 = false;
                                boolean z44 = false;
                                boolean z45 = false;
                                boolean z46 = false;
                                while (i29 < strArrSplit3.length) {
                                    boolean z47 = z44;
                                    if ("pcache".equals(strArrSplit3[i29])) {
                                        z47 = true;
                                    }
                                    if ("firstframe".equals(strArrSplit3[i29])) {
                                        z43 = true;
                                    }
                                    boolean z48 = z46;
                                    if ("nostream".equals(strArrSplit3[i29])) {
                                        z48 = true;
                                    }
                                    if ("pframe".equals(strArrSplit3[i29])) {
                                        z45 = true;
                                    }
                                    i29++;
                                    z44 = z47;
                                    z45 = z45;
                                    z46 = z48;
                                }
                                z29 = z43;
                                z26 = z44;
                                z27 = z45;
                                z28 = z46;
                                if (z43) {
                                    z28 = true;
                                    z26 = z44;
                                    z27 = z45;
                                }
                            }
                        } else {
                            z25 = false;
                            z26 = false;
                            z27 = false;
                            z28 = false;
                            z29 = false;
                        }
                        if (z27) {
                            try {
                                mediaMetadataRetriever = new MediaMetadataRetriever();
                                mediaMetadataRetriever.setDataSource(this.cacheImage.finalFilePath.getAbsolutePath());
                                frameAtTime2 = mediaMetadataRetriever.getFrameAtTime(2L);
                            } catch (Exception e6) {
                                e = e6;
                                frameAtTime2 = null;
                            }
                            try {
                                mediaMetadataRetriever.release();
                            } catch (Exception e7) {
                                e = e7;
                                e.printStackTrace();
                            }
                            Thread.interrupted();
                            if (frameAtTime2 == null) {
                                onPostExecute(null);
                                return;
                            } else {
                                onPostExecute(new BitmapDrawable(frameAtTime2));
                                return;
                            }
                        }
                        if (!z26 || z29) {
                            cacheOptions = null;
                        } else {
                            BitmapsCache.CacheOptions cacheOptions4 = new BitmapsCache.CacheOptions();
                            String str13 = this.cacheImage.filter;
                            if (str13 != null && str13.contains("compress")) {
                                cacheOptions4.compressQuality = 60;
                            }
                            cacheOptions = cacheOptions4;
                        }
                        if (ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter) || ImageLoader.AUTOPLAY_FILTER.equals(this.cacheImage.filter) || ImageLoader.AUTOPLAY_FILTER_NONLOOP.equals(this.cacheImage.filter)) {
                            TLRPC.Document document = this.cacheImage.imageLocation.document;
                            if (!(document instanceof TLRPC.TL_documentEncrypted) && !z26) {
                                TLRPC.Document document2 = document != null ? this.cacheImage.imageLocation.document : null;
                                CacheImage cacheImage5 = this.cacheImage;
                                long j2 = document2 != null ? cacheImage5.size : cacheImage5.imageLocation.currentSize;
                                int i30 = document2 != null ? 1 : 0;
                                int i31 = this.cacheImage.cacheType;
                                int i32 = i31 > 1 ? i31 : i30;
                                CacheImage cacheImage6 = this.cacheImage;
                                AnimatedFileDrawable animatedFileDrawable2 = new AnimatedFileDrawable(cacheImage6.finalFilePath, z29, z28 ? 0L : j2, cacheImage6.priority, z28 ? null : document2, (document2 != null || z28) ? null : cacheImage6.imageLocation, cacheImage6.parentObject, j, cacheImage6.currentAccount, false, 0, 0, cacheOptions, i32, !ImageLoader.AUTOPLAY_FILTER_NONLOOP.equals(cacheImage6.filter));
                                z30 = z29;
                                if (!MessageObject.isWebM(document2) && !MessageObject.isVideoSticker(document2) && !ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                    z39 = false;
                                }
                                animatedFileDrawable2.setIsWebmSticker(z39);
                                animatedFileDrawable = animatedFileDrawable2;
                            } else {
                                z30 = z29;
                                String str14 = this.cacheImage.filter;
                                if (str14 != null) {
                                    String[] strArrSplit4 = str14.split("_");
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
                                    boolean z49 = z30 || ((str5 = this.cacheImage.filter) != null && ("d".equals(str5) || this.cacheImage.filter.contains("_d")));
                                    int i33 = (z28 ? null : this.cacheImage.imageLocation.document) != null ? 1 : 0;
                                    int i34 = this.cacheImage.cacheType;
                                    int i35 = i34 > 1 ? i34 : i33;
                                    CacheImage cacheImage7 = this.cacheImage;
                                    animatedFileDrawable = new AnimatedFileDrawable(cacheImage7.finalFilePath, z49, 0L, cacheImage7.priority, z28 ? null : cacheImage7.imageLocation.document, null, null, j, cacheImage7.currentAccount, false, i6, i7, cacheOptions, i35, true);
                                    if (!MessageObject.isWebM(this.cacheImage.imageLocation.document) && !MessageObject.isVideoSticker(this.cacheImage.imageLocation.document) && !ImageLoader.this.isAnimatedAvatar(this.cacheImage.filter)) {
                                        z39 = false;
                                    }
                                    animatedFileDrawable.setIsWebmSticker(z39);
                                }
                            }
                        }
                        if (z30) {
                            Bitmap frameAtTime3 = animatedFileDrawable.getFrameAtTime(0L, false);
                            animatedFileDrawable.recycle();
                            Thread.interrupted();
                            if (frameAtTime3 == null) {
                                onPostExecute(null);
                                return;
                            } else {
                                onPostExecute(new BitmapDrawable(frameAtTime3));
                                return;
                            }
                        }
                        animatedFileDrawable.setLimitFps(z25);
                        Thread.interrupted();
                        onPostExecute(animatedFileDrawable);
                        return;
                    }
                    File file4 = cacheImage2.finalFilePath;
                    boolean z50 = (cacheImage2.secureDocument == null && (cacheImage2.encryptionKeyPath == null || file4 == null || !file4.getAbsolutePath().endsWith(".enc"))) ? false : true;
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
                    String str15 = cacheImage8.imageLocation.path;
                    if (str15 == null) {
                        z3 = true;
                        z4 = false;
                        str = null;
                        lValueOf = null;
                        r13 = z4;
                        z5 = z3;
                    } else if (str15.startsWith("thumb://")) {
                        int iIndexOf = str15.indexOf(":", 8);
                        if (iIndexOf >= 0) {
                            lValueOf = Long.valueOf(Long.parseLong(str15.substring(8, iIndexOf)));
                            strSubstring = str15.substring(iIndexOf + 1);
                        } else {
                            strSubstring = null;
                            lValueOf = null;
                        }
                        str = strSubstring;
                        r13 = 0;
                        z5 = false;
                    } else if (str15.startsWith("vthumb://")) {
                        int iIndexOf2 = str15.indexOf(":", 9);
                        if (iIndexOf2 >= 0) {
                            lValueOf2 = Long.valueOf(Long.parseLong(str15.substring(9, iIndexOf2)));
                            z24 = true;
                        } else {
                            z24 = false;
                            lValueOf2 = null;
                        }
                        lValueOf = lValueOf2;
                        z5 = false;
                        r13 = z24;
                        str = null;
                    } else {
                        if (!str15.startsWith("http")) {
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
                    boolean z51 = ImageLoader.this.canForce8888;
                    try {
                        str4 = this.cacheImage.filter;
                    } catch (Throwable th7) {
                        th = th7;
                        z6 = z50;
                        str2 = str;
                        f = 1.2f;
                        f2 = 0.0f;
                    }
                    if (str4 != null) {
                        f2 = 0.0f;
                        try {
                            String[] strArrSplit5 = str4.split("_");
                            if (strArrSplit5.length >= 2) {
                                try {
                                    f3 = Float.parseFloat(strArrSplit5[0]) * AndroidUtilities.density;
                                    try {
                                        f4 = Float.parseFloat(strArrSplit5[1]) * AndroidUtilities.density;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        z17 = z50;
                                        c2 = 0;
                                        zContains = false;
                                        str2 = str;
                                        f4 = 0.0f;
                                        bitmap3 = null;
                                        f = 1.2f;
                                        z10 = z51;
                                        r38 = z17;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    z17 = z50;
                                    c2 = 0;
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
                                        c2 = 4;
                                    } else if (this.cacheImage.filter.contains("b2")) {
                                        c2 = 3;
                                    } else if (this.cacheImage.filter.contains("b1")) {
                                        c2 = 2;
                                    } else {
                                        c2 = this.cacheImage.filter.contains("b") ? (char) 1 : (char) 0;
                                    }
                                } catch (Throwable th10) {
                                    th = th10;
                                    z8 = z50;
                                    str2 = str;
                                    bitmap = null;
                                    z7 = z8;
                                    c2 = 0;
                                    bitmap2 = bitmap;
                                    z9 = z7;
                                }
                            } catch (Throwable th11) {
                                th = th11;
                                z8 = z50;
                                str2 = str;
                                f = 1.2f;
                            }
                        } catch (Throwable th12) {
                            th = th12;
                            z6 = z50;
                            str2 = str;
                            f = 1.2f;
                            f3 = f2;
                            f4 = f3;
                            z8 = z6;
                            bitmap = null;
                            z7 = z8;
                            c2 = 0;
                            bitmap2 = bitmap;
                            z9 = z7;
                            zContains = false;
                            bitmap3 = bitmap2;
                            z10 = z51;
                            r38 = z9;
                            FileLog.m992e(th);
                            r3 = bitmap3;
                            z11 = z10;
                            r382 = r38;
                            float f13 = f4;
                            i = this.cacheImage.type;
                            ImageLoader imageLoader = ImageLoader.this;
                            if (i != 1) {
                            }
                            Thread.interrupted();
                            if (BuildVars.LOGS_ENABLED) {
                            }
                            if (ApplyWallpaperSetting != 0) {
                            }
                            cacheImage = this.cacheImage;
                            if (cacheImage != null) {
                            }
                            onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                        }
                        try {
                            zContains = this.cacheImage.filter.contains("i");
                            try {
                                String str16 = "f";
                                if (this.cacheImage.filter.contains("f")) {
                                    z51 = true;
                                } else {
                                    str16 = "F";
                                    z51 = z51;
                                    if (this.cacheImage.filter.contains("F")) {
                                        z51 = false;
                                    }
                                }
                                if (f3 == 0.0f || f4 == 0.0f) {
                                    z21 = z50;
                                    c4 = c2;
                                    str2 = str;
                                } else {
                                    options.inJustDecodeBounds = true;
                                    try {
                                        try {
                                            if (lValueOf == null || str != null) {
                                                boolean z52 = z50;
                                                c4 = c2;
                                                if (secureDocumentKey != null) {
                                                    RandomAccessFile randomAccessFile2 = new RandomAccessFile(file4, "r");
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
                                                    boolean z53 = z52;
                                                    str2 = str;
                                                    boolean z54 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr4, 0, (long) length), bArr);
                                                    int i36 = bArr4[0] & UByte.MAX_VALUE;
                                                    int i37 = length - i36;
                                                    z22 = z53;
                                                    if (!z54) {
                                                        BitmapFactory.decodeByteArray(bArr4, i36, i37, options);
                                                        z22 = z53;
                                                    }
                                                } else {
                                                    boolean z55 = z52;
                                                    str2 = str;
                                                    if (z55) {
                                                        fileInputStream3 = new EncryptedFileInputStream(file4, this.cacheImage.encryptionKeyPath);
                                                    } else {
                                                        fileInputStream3 = new FileInputStream(file4);
                                                    }
                                                    BitmapFactory.decodeStream(fileInputStream3, null, options);
                                                    fileInputStream3.close();
                                                    z22 = z55;
                                                }
                                            } else {
                                                if (r13 != 0) {
                                                    try {
                                                        z23 = z50;
                                                        c4 = c2;
                                                        MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                    } catch (Throwable th13) {
                                                        th = th13;
                                                        z18 = z50;
                                                        z20 = z51;
                                                        str2 = str;
                                                        z19 = z20;
                                                        r383 = z18;
                                                        bitmap3 = null;
                                                        z10 = z19;
                                                        r38 = r383;
                                                        FileLog.m992e(th);
                                                        r3 = bitmap3;
                                                        z11 = z10;
                                                        r382 = r38;
                                                    }
                                                } else {
                                                    z23 = z50;
                                                    c4 = c2;
                                                    MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                                }
                                                z22 = z23;
                                                str2 = str;
                                            }
                                            float f14 = options.outWidth;
                                            float f15 = options.outHeight;
                                            if (f3 >= f4 && f14 > f15) {
                                                fMin = Math.max(f14 / f3, f15 / f4);
                                            } else {
                                                fMin = Math.min(f14 / f3, f15 / f4);
                                            }
                                            if (fMin < 1.2f) {
                                                fMin = 1.0f;
                                            }
                                            options.inJustDecodeBounds = false;
                                            if (fMin > 1.0f && (f14 > f3 || f15 > f4)) {
                                                int i38 = 1;
                                                while (true) {
                                                    i5 = i38 * 2;
                                                    if (i38 * 4 >= fMin) {
                                                        break;
                                                    } else {
                                                        i38 = i5;
                                                    }
                                                }
                                                options.inSampleSize = i5;
                                                z21 = z22;
                                            } else {
                                                options.inSampleSize = (int) fMin;
                                                z21 = z22;
                                            }
                                        } catch (Throwable th14) {
                                            th = th14;
                                            c2 = c5;
                                            z19 = z51;
                                            bitmap3 = null;
                                            z10 = z19;
                                            r38 = r383;
                                            FileLog.m992e(th);
                                            r3 = bitmap3;
                                            z11 = z10;
                                            r382 = r38;
                                            float f132 = f4;
                                            i = this.cacheImage.type;
                                            ImageLoader imageLoader2 = ImageLoader.this;
                                            if (i != 1) {
                                            }
                                            Thread.interrupted();
                                            if (BuildVars.LOGS_ENABLED) {
                                            }
                                            if (ApplyWallpaperSetting != 0) {
                                            }
                                            cacheImage = this.cacheImage;
                                            if (cacheImage != null) {
                                            }
                                            onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                        }
                                    } catch (Throwable th15) {
                                        th = th15;
                                        r383 = str16;
                                        str2 = str;
                                        c2 = c5;
                                        z19 = z51;
                                        bitmap3 = null;
                                        z10 = z19;
                                        r38 = r383;
                                        FileLog.m992e(th);
                                        r3 = bitmap3;
                                        z11 = z10;
                                        r382 = r38;
                                        float f1322 = f4;
                                        i = this.cacheImage.type;
                                        ImageLoader imageLoader22 = ImageLoader.this;
                                        if (i != 1) {
                                        }
                                        Thread.interrupted();
                                        if (BuildVars.LOGS_ENABLED) {
                                        }
                                        if (ApplyWallpaperSetting != 0) {
                                        }
                                        cacheImage = this.cacheImage;
                                        if (cacheImage != null) {
                                        }
                                        onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                    }
                                }
                                c2 = c4;
                                bitmap4 = null;
                                z16 = z51;
                                z15 = z21;
                                r3 = bitmap4;
                                z11 = z16;
                                r382 = z15;
                            } catch (Throwable th16) {
                                th = th16;
                                z18 = z50;
                                z20 = z51;
                            }
                        } catch (Throwable th17) {
                            th = th17;
                            z9 = z50;
                            str2 = str;
                            bitmap2 = null;
                            zContains = false;
                            bitmap3 = bitmap2;
                            z10 = z51;
                            r38 = z9;
                        }
                        float f13222 = f4;
                        i = this.cacheImage.type;
                        ImageLoader imageLoader222 = ImageLoader.this;
                        if (i != 1) {
                            try {
                                imageLoader222.lastCacheOutTime = SystemClock.elapsedRealtime();
                            } catch (Throwable th18) {
                                th = th18;
                                z12 = false;
                                r32 = r3;
                            }
                            synchronized (this.sync) {
                                try {
                                    if (this.isCancelled) {
                                        return;
                                    }
                                    if (secureDocumentKey != null) {
                                        RandomAccessFile randomAccessFile3 = new RandomAccessFile(file4, "r");
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
                                        EncryptedFileInputStream.decryptBytesWithKeyFile(bArr5, 0, length2, secureDocumentKey);
                                        boolean z56 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr5, 0, (long) length2), bArr);
                                        int i39 = bArr5[0] & UByte.MAX_VALUE;
                                        int i40 = length2 - i39;
                                        DecodeByteArray = r3;
                                        if (!z56) {
                                            DecodeByteArray = BitmapFactory.decodeByteArray(bArr5, i39, i40, options);
                                        }
                                    } else {
                                        if (r382 != 0) {
                                            fileInputStream = new EncryptedFileInputStream(file4, this.cacheImage.encryptionKeyPath);
                                        } else {
                                            fileInputStream = new FileInputStream(file4);
                                        }
                                        Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream, null, options);
                                        fileInputStream.close();
                                        DecodeByteArray = bitmapDecodeStream;
                                    }
                                    if (DecodeByteArray == 0) {
                                        if (file4.length() == 0 || this.cacheImage.filter == null) {
                                            file4.delete();
                                        }
                                        z12 = false;
                                        r33 = DecodeByteArray;
                                    } else {
                                        ?? r35 = DecodeByteArray;
                                        if (this.cacheImage.filter != null) {
                                            float width = DecodeByteArray.getWidth();
                                            float height = DecodeByteArray.getHeight();
                                            r35 = DecodeByteArray;
                                            if (f3 != f2) {
                                                r35 = DecodeByteArray;
                                                if (width != f3) {
                                                    r35 = DecodeByteArray;
                                                    if (width > f3 + 20.0f) {
                                                        Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(DecodeByteArray, (int) f3, (int) (height / (width / f3)), true);
                                                        r35 = DecodeByteArray;
                                                        if (DecodeByteArray != bitmapCreateScaledBitmap) {
                                                            DecodeByteArray.recycle();
                                                            r35 = bitmapCreateScaledBitmap;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        if (zContains) {
                                            z12 = Utilities.needInvert(r35) != 0;
                                        } else {
                                            z12 = false;
                                        }
                                        try {
                                            if (c2 == 1) {
                                                Bitmap.Config config = r35.getConfig();
                                                r33 = r35;
                                                if (config == Bitmap.Config.ARGB_8888) {
                                                    Utilities.blurBitmap(r35, 3);
                                                    r33 = r35;
                                                }
                                            } else if (c2 == 2) {
                                                Bitmap.Config config2 = r35.getConfig();
                                                r33 = r35;
                                                if (config2 == Bitmap.Config.ARGB_8888) {
                                                    Utilities.blurBitmap(r35, 1);
                                                    r33 = r35;
                                                }
                                            } else {
                                                if (c2 != 3) {
                                                    c3 = 4;
                                                    r33 = r35;
                                                    if (c2 == 4) {
                                                    }
                                                } else {
                                                    c3 = 4;
                                                }
                                                Bitmap.Config config3 = r35.getConfig();
                                                r33 = r35;
                                                ?? r36 = r35;
                                                if (config3 == Bitmap.Config.ARGB_8888) {
                                                    if (c2 == c3) {
                                                        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r35.getWidth(), r35.getHeight(), r35.getConfig());
                                                        ?? canvas = new Canvas(bitmapCreateBitmap);
                                                        canvas.save();
                                                        float f16 = f;
                                                        canvas.scale(f16, f16, r35.getWidth() / 2.0f, r35.getHeight() / 2.0f);
                                                        float f17 = f2;
                                                        canvas.drawBitmap(r35, f17, f17, null);
                                                        canvas.restore();
                                                        Path path = new Path();
                                                        path.addCircle(r35.getWidth() / 2.0f, r35.getHeight() / 2.0f, Math.min(r35.getWidth(), r35.getHeight()) / 2.0f, Path.Direction.CW);
                                                        canvas.clipPath(path);
                                                        canvas.drawBitmap(r35, 0.0f, 0.0f, null);
                                                        r35.recycle();
                                                        r36 = bitmapCreateBitmap;
                                                    }
                                                    Utilities.blurBitmap(r36, 7);
                                                    Utilities.blurBitmap(r36, 7);
                                                    Utilities.blurBitmap(r36, 7);
                                                    r33 = r36;
                                                }
                                            }
                                        } catch (Throwable th19) {
                                            th = th19;
                                            r32 = r35;
                                            FileLog.m992e(th);
                                            r33 = r32;
                                        }
                                    }
                                    z13 = z12;
                                    i2 = 0;
                                    ApplyWallpaperSetting = r33;
                                    r34 = file4;
                                    r2 = 0;
                                } finally {
                                }
                            }
                        } else {
                            ?? r112 = r3;
                            try {
                                imageLoader222.lastCacheOutTime = SystemClock.elapsedRealtime();
                            } catch (Throwable th20) {
                                th = th20;
                                r3 = file4;
                            }
                            synchronized (this.sync) {
                                try {
                                    try {
                                    } catch (Throwable th21) {
                                        th = th21;
                                    }
                                    if (this.isCancelled) {
                                        return;
                                    }
                                    if (!z11) {
                                        CacheImage cacheImage9 = this.cacheImage;
                                        if (cacheImage9.filter == null || c2 != 0 || cacheImage9.imageLocation.path != null) {
                                            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                        } else {
                                            options.inPreferredConfig = Bitmap.Config.RGB_565;
                                        }
                                        options.inDither = false;
                                        if (lValueOf == null || str2 != null) {
                                            r3 = file4;
                                            frameAtTime = r112;
                                            r18 = z11;
                                        } else {
                                            if (r13 == 0) {
                                                file = file4;
                                                thumbnail = MediaStore.Images.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                            } else if (lValueOf.longValue() == 0) {
                                                AnimatedFileDrawable animatedFileDrawable3 = new AnimatedFileDrawable(file4, true, 0L, 0, null, null, null, 0L, 0, true, null);
                                                r3 = file4;
                                                frameAtTime = animatedFileDrawable3.getFrameAtTime(0L, true);
                                                try {
                                                    animatedFileDrawable3.recycle();
                                                    r3 = r3;
                                                    frameAtTime = frameAtTime;
                                                    r18 = animatedFileDrawable3;
                                                } catch (Throwable th22) {
                                                    th = th22;
                                                    r112 = frameAtTime;
                                                }
                                            } else {
                                                file = file4;
                                                thumbnail = MediaStore.Video.Thumbnails.getThumbnail(ApplicationLoader.applicationContext.getContentResolver(), lValueOf.longValue(), 1, options);
                                            }
                                            frameAtTime = thumbnail;
                                            r3 = file;
                                            r18 = z11;
                                        }
                                        if (frameAtTime == 0) {
                                            if (frameAtTime == 0) {
                                                if (secureDocumentKey != null) {
                                                    fileInputStream2 = new EncryptedFileInputStream((File) r3, secureDocumentKey);
                                                } else if (r382 != 0) {
                                                    fileInputStream2 = new EncryptedFileInputStream((File) r3, this.cacheImage.encryptionKeyPath);
                                                } else {
                                                    try {
                                                        fileInputStream2 = new FileInputStream((File) r3);
                                                    } catch (Throwable th23) {
                                                        th = th23;
                                                        r112 = frameAtTime;
                                                        IntValue = 0;
                                                        z13 = false;
                                                        i28 = 0;
                                                        r3 = r3;
                                                        r11 = r112;
                                                    }
                                                }
                                                IntValue = this.cacheImage;
                                                try {
                                                    if (IntValue.imageLocation.document instanceof TLRPC.TL_document) {
                                                        Pair<Integer, Integer> imageOrientation = AndroidUtilities.getImageOrientation(fileInputStream2);
                                                        int iIntValue = ((Integer) imageOrientation.first).intValue();
                                                        try {
                                                            IntValue = ((Integer) imageOrientation.second).intValue();
                                                            if (secureDocumentKey == null) {
                                                                try {
                                                                    if (this.cacheImage.encryptionKeyPath != null) {
                                                                        r13 = frameAtTime;
                                                                        i28 = iIntValue;
                                                                        try {
                                                                            fileInputStream2.close();
                                                                            r132 = r13;
                                                                            if (secureDocumentKey != null) {
                                                                                fileInputStream2 = new EncryptedFileInputStream((File) r3, secureDocumentKey);
                                                                                r132 = r13;
                                                                            } else if (r382 != 0) {
                                                                                fileInputStream2 = new EncryptedFileInputStream((File) r3, this.cacheImage.encryptionKeyPath);
                                                                                r132 = r13;
                                                                            }
                                                                        } catch (Throwable th24) {
                                                                            th = th24;
                                                                            DecodeStream = r13;
                                                                            z13 = false;
                                                                            IntValue = IntValue;
                                                                            r3 = r3;
                                                                            r11 = DecodeStream;
                                                                            FileLog.m992e(th);
                                                                            CreateScaledBitmap = r11;
                                                                            i2 = i28;
                                                                            r2 = IntValue;
                                                                            r34 = r3;
                                                                            ApplyWallpaperSetting = CreateScaledBitmap;
                                                                            Thread.interrupted();
                                                                            if (BuildVars.LOGS_ENABLED) {
                                                                            }
                                                                            if (ApplyWallpaperSetting != 0) {
                                                                            }
                                                                            cacheImage = this.cacheImage;
                                                                            if (cacheImage != null) {
                                                                            }
                                                                            onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                                        }
                                                                    } else {
                                                                        r132 = frameAtTime;
                                                                        i28 = iIntValue;
                                                                        fileInputStream2.getChannel().position(0L);
                                                                    }
                                                                    rect = null;
                                                                    IntValue = IntValue;
                                                                    r13 = r132;
                                                                    DecodeStream = BitmapFactory.decodeStream(fileInputStream2, rect, options);
                                                                    try {
                                                                        fileInputStream2.close();
                                                                        IntValue = IntValue;
                                                                        DecodeByteArray2 = DecodeStream;
                                                                    } catch (Throwable th25) {
                                                                        th = th25;
                                                                        z13 = false;
                                                                        IntValue = IntValue;
                                                                        r3 = r3;
                                                                        r11 = DecodeStream;
                                                                        FileLog.m992e(th);
                                                                        CreateScaledBitmap = r11;
                                                                        i2 = i28;
                                                                        r2 = IntValue;
                                                                        r34 = r3;
                                                                        ApplyWallpaperSetting = CreateScaledBitmap;
                                                                        Thread.interrupted();
                                                                        if (BuildVars.LOGS_ENABLED) {
                                                                        }
                                                                        if (ApplyWallpaperSetting != 0) {
                                                                        }
                                                                        cacheImage = this.cacheImage;
                                                                        if (cacheImage != null) {
                                                                        }
                                                                        onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                                    }
                                                                } catch (Throwable th26) {
                                                                    th = th26;
                                                                    r13 = frameAtTime;
                                                                    i28 = iIntValue;
                                                                    DecodeStream = r13;
                                                                    z13 = false;
                                                                    IntValue = IntValue;
                                                                    r3 = r3;
                                                                    r11 = DecodeStream;
                                                                    FileLog.m992e(th);
                                                                    CreateScaledBitmap = r11;
                                                                    i2 = i28;
                                                                    r2 = IntValue;
                                                                    r34 = r3;
                                                                    ApplyWallpaperSetting = CreateScaledBitmap;
                                                                    Thread.interrupted();
                                                                    if (BuildVars.LOGS_ENABLED) {
                                                                    }
                                                                    if (ApplyWallpaperSetting != 0) {
                                                                    }
                                                                    cacheImage = this.cacheImage;
                                                                    if (cacheImage != null) {
                                                                    }
                                                                    onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                                }
                                                            }
                                                        } catch (Throwable th27) {
                                                            th = th27;
                                                            i28 = iIntValue;
                                                            DecodeStream = frameAtTime;
                                                            IntValue = 0;
                                                            z13 = false;
                                                            IntValue = IntValue;
                                                            r3 = r3;
                                                            r11 = DecodeStream;
                                                            FileLog.m992e(th);
                                                            CreateScaledBitmap = r11;
                                                            i2 = i28;
                                                            r2 = IntValue;
                                                            r34 = r3;
                                                            ApplyWallpaperSetting = CreateScaledBitmap;
                                                            Thread.interrupted();
                                                            if (BuildVars.LOGS_ENABLED) {
                                                            }
                                                            if (ApplyWallpaperSetting != 0) {
                                                            }
                                                            cacheImage = this.cacheImage;
                                                            if (cacheImage != null) {
                                                            }
                                                            onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                                                        }
                                                    } else {
                                                        String str17 = IntValue.filter;
                                                        if (str17 != null) {
                                                            if (str17.contains("exif")) {
                                                            }
                                                            DecodeStream = BitmapFactory.decodeStream(fileInputStream2, rect, options);
                                                            fileInputStream2.close();
                                                            IntValue = IntValue;
                                                            DecodeByteArray2 = DecodeStream;
                                                        }
                                                        r13 = frameAtTime;
                                                        IntValue = 0;
                                                        rect = null;
                                                        i28 = 0;
                                                        DecodeStream = BitmapFactory.decodeStream(fileInputStream2, rect, options);
                                                        fileInputStream2.close();
                                                        IntValue = IntValue;
                                                        DecodeByteArray2 = DecodeStream;
                                                    }
                                                } catch (Throwable th28) {
                                                    th = th28;
                                                }
                                            } else {
                                                DecodeByteArray2 = frameAtTime;
                                                IntValue = 0;
                                                i28 = 0;
                                            }
                                            if (DecodeByteArray2 == 0) {
                                                try {
                                                    RandomAccessFile randomAccessFile4 = new RandomAccessFile((File) r3, "r");
                                                    int length3 = (int) randomAccessFile4.length();
                                                    byte[] bArr6 = (byte[]) ImageLoader.bytesLocal.get();
                                                    if (bArr6 == null || bArr6.length < length3) {
                                                        bArr6 = null;
                                                    }
                                                    if (bArr6 == null) {
                                                        bArr6 = new byte[length3];
                                                        if (length3 < 52428800) {
                                                            ImageLoader.bytesLocal.set(bArr6);
                                                        }
                                                    }
                                                    randomAccessFile4.readFully(bArr6, 0, length3);
                                                    randomAccessFile4.close();
                                                    try {
                                                        if (secureDocumentKey != null) {
                                                            EncryptedFileInputStream.decryptBytesWithKeyFile(bArr6, 0, length3, secureDocumentKey);
                                                            r18 = zContains;
                                                            z14 = bArr == null || !Arrays.equals(Utilities.computeSHA256(bArr6, 0, (long) length3), bArr);
                                                            i3 = bArr6[0] & UByte.MAX_VALUE;
                                                            length3 -= i3;
                                                        } else {
                                                            r18 = zContains;
                                                            if (r382 != 0) {
                                                                EncryptedFileInputStream.decryptBytesWithKeyFile(bArr6, 0, length3, this.cacheImage.encryptionKeyPath);
                                                            }
                                                            z14 = false;
                                                            i3 = 0;
                                                        }
                                                        if (!z14) {
                                                            DecodeByteArray2 = BitmapFactory.decodeByteArray(bArr6, i3, length3, options);
                                                        }
                                                    } catch (Throwable th29) {
                                                        th = th29;
                                                        r18 = r18;
                                                        FileLog.m992e(th);
                                                    }
                                                } catch (Throwable th30) {
                                                    th = th30;
                                                    r18 = zContains;
                                                }
                                            } else {
                                                r18 = zContains;
                                            }
                                        } else {
                                            r18 = zContains;
                                            DecodeByteArray2 = frameAtTime;
                                            IntValue = 0;
                                            i28 = 0;
                                        }
                                        if (DecodeByteArray2 != 0) {
                                            if (this.cacheImage.filter != null) {
                                                float width2 = DecodeByteArray2.getWidth();
                                                float height2 = DecodeByteArray2.getHeight();
                                                if (f3 == 0.0f || width2 == f3 || width2 <= f3 + 20.0f) {
                                                    CreateScaledBitmap = DecodeByteArray2;
                                                    if (CreateScaledBitmap != 0) {
                                                        if (r18 != 0) {
                                                            try {
                                                                ?? CreateScaledBitmap3 = CreateScaledBitmap.getWidth() * CreateScaledBitmap.getHeight() > 22500 ? Bitmaps.createScaledBitmap(CreateScaledBitmap, 100, 100, false) : CreateScaledBitmap;
                                                                boolean z57 = Utilities.needInvert(CreateScaledBitmap3) != 0;
                                                                if (CreateScaledBitmap3 != CreateScaledBitmap) {
                                                                    try {
                                                                        CreateScaledBitmap3.recycle();
                                                                    } catch (Throwable th31) {
                                                                        th = th31;
                                                                        r11 = CreateScaledBitmap;
                                                                        z13 = z57;
                                                                        IntValue = IntValue;
                                                                        r3 = r3;
                                                                    }
                                                                }
                                                                z13 = z57;
                                                            } catch (Throwable th32) {
                                                                th = th32;
                                                                DecodeStream = CreateScaledBitmap;
                                                                z13 = false;
                                                                IntValue = IntValue;
                                                                r3 = r3;
                                                                r11 = DecodeStream;
                                                            }
                                                        } else {
                                                            z13 = false;
                                                        }
                                                        CreateScaledBitmap = CreateScaledBitmap;
                                                        if (c2 != 0) {
                                                            if (height2 <= 100.0f) {
                                                                CreateScaledBitmap = CreateScaledBitmap;
                                                                if (width2 > 100.0f) {
                                                                    try {
                                                                        height2 = 80.0f;
                                                                        CreateScaledBitmap = Bitmaps.createScaledBitmap(CreateScaledBitmap, 80, 80, false);
                                                                        width2 = 80.0f;
                                                                    } catch (Throwable th33) {
                                                                        th = th33;
                                                                        r11 = CreateScaledBitmap;
                                                                        IntValue = IntValue;
                                                                        r3 = r3;
                                                                        FileLog.m992e(th);
                                                                        CreateScaledBitmap = r11;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        if (c2 != 0 && height2 < 100.0f && width2 < 100.0f && CreateScaledBitmap.getConfig() == Bitmap.Config.ARGB_8888) {
                                                            Utilities.blurBitmap(CreateScaledBitmap, 3);
                                                        }
                                                    }
                                                    i2 = i28;
                                                    r2 = IntValue;
                                                    r34 = r3;
                                                    ApplyWallpaperSetting = CreateScaledBitmap;
                                                } else if (width2 <= height2 || f3 <= f13222) {
                                                    float f18 = height2 / f13222;
                                                    CreateScaledBitmap2 = f18 > 1.0f ? Bitmaps.createScaledBitmap(DecodeByteArray2, (int) (width2 / f18), (int) f13222, true) : DecodeByteArray2;
                                                    if (DecodeByteArray2 == CreateScaledBitmap2) {
                                                        DecodeByteArray2.recycle();
                                                        CreateScaledBitmap = CreateScaledBitmap2;
                                                    }
                                                    if (CreateScaledBitmap != 0) {
                                                    }
                                                    i2 = i28;
                                                    r2 = IntValue;
                                                    r34 = r3;
                                                    ApplyWallpaperSetting = CreateScaledBitmap;
                                                } else {
                                                    float f19 = width2 / f3;
                                                    if (f19 > 1.0f) {
                                                        CreateScaledBitmap2 = Bitmaps.createScaledBitmap(DecodeByteArray2, (int) f3, (int) (height2 / f19), true);
                                                    }
                                                    if (DecodeByteArray2 == CreateScaledBitmap2) {
                                                    }
                                                    if (CreateScaledBitmap != 0) {
                                                    }
                                                    i2 = i28;
                                                    r2 = IntValue;
                                                    r34 = r3;
                                                    ApplyWallpaperSetting = CreateScaledBitmap;
                                                }
                                            }
                                            z13 = false;
                                            i2 = i28;
                                            r2 = IntValue;
                                            r34 = r3;
                                            ApplyWallpaperSetting = CreateScaledBitmap;
                                        } else if (z5 && (r3.length() == 0 || this.cacheImage.filter == null)) {
                                            r3.delete();
                                        }
                                        CreateScaledBitmap = DecodeByteArray2;
                                        z13 = false;
                                        i2 = i28;
                                        r2 = IntValue;
                                        r34 = r3;
                                        ApplyWallpaperSetting = CreateScaledBitmap;
                                    }
                                    i2 = i28;
                                    r2 = IntValue;
                                    r34 = r3;
                                    ApplyWallpaperSetting = CreateScaledBitmap;
                                } finally {
                                    th = th;
                                    while (true) {
                                        try {
                                        } catch (Throwable th34) {
                                            th = th34;
                                        }
                                    }
                                }
                                IntValue = 0;
                                z13 = false;
                                i28 = 0;
                                r3 = r3;
                                r11 = r112;
                                FileLog.m992e(th);
                                CreateScaledBitmap = r11;
                            }
                        }
                        Thread.interrupted();
                        if (BuildVars.LOGS_ENABLED && r382 != 0) {
                            ?? sb = new StringBuilder("Image Loader image is empty = ");
                            sb.append(ApplyWallpaperSetting != 0);
                            sb.append(" ");
                            sb.append(r34);
                            FileLog.m990e(sb.toString());
                        }
                        if (ApplyWallpaperSetting != 0 && !TextUtils.isEmpty(this.cacheImage.filter) && this.cacheImage.filter.contains("wallpaper")) {
                            obj = this.cacheImage.parentObject;
                            if (obj instanceof TLRPC.WallPaper) {
                                ApplyWallpaperSetting = applyWallpaperSetting(ApplyWallpaperSetting, (TLRPC.WallPaper) obj);
                            }
                        }
                        cacheImage = this.cacheImage;
                        if ((cacheImage != null || (str3 = cacheImage.filter) == null || !str3.contains("ignoreOrientation")) && (z13 || i2 != 0 || r2 != 0)) {
                            onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, i2, r2) : null);
                            return;
                        } else {
                            onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                        }
                    }
                    boolean z58 = z50;
                    str2 = str;
                    f = 1.2f;
                    f2 = 0.0f;
                    if (str2 != null) {
                        try {
                            options.inJustDecodeBounds = true;
                            options.inPreferredConfig = z51 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
                            FileInputStream fileInputStream4 = new FileInputStream(file4);
                            Bitmap bitmapDecodeStream2 = BitmapFactory.decodeStream(fileInputStream4, null, options);
                            try {
                                fileInputStream4.close();
                                int i41 = options.outWidth;
                                int i42 = options.outHeight;
                                options.inJustDecodeBounds = false;
                                float fMin2 = (Math.min(i42, i41) / Math.max(66, Math.min(AndroidUtilities.getRealScreenSize().x, AndroidUtilities.getRealScreenSize().y))) * 6.0f;
                                if (fMin2 < 1.0f) {
                                    fMin2 = 1.0f;
                                }
                                if (fMin2 > 1.0f) {
                                    int i43 = 1;
                                    while (true) {
                                        i4 = i43 * 2;
                                        if (i43 * 4 > fMin2) {
                                            break;
                                        } else {
                                            i43 = i4;
                                        }
                                    }
                                    options.inSampleSize = i4;
                                } else {
                                    options.inSampleSize = (int) fMin2;
                                }
                                bitmap4 = bitmapDecodeStream2;
                                f3 = 0.0f;
                                f4 = 0.0f;
                            } catch (Throwable th35) {
                                th = th35;
                                bitmap = bitmapDecodeStream2;
                                f3 = 0.0f;
                                f4 = 0.0f;
                                z7 = z58;
                                c2 = 0;
                                bitmap2 = bitmap;
                                z9 = z7;
                                zContains = false;
                                bitmap3 = bitmap2;
                                z10 = z51;
                                r38 = z9;
                                FileLog.m992e(th);
                                r3 = bitmap3;
                                z11 = z10;
                                r382 = r38;
                            }
                        } catch (Throwable th36) {
                            th = th36;
                            z6 = z58;
                            f3 = f2;
                            f4 = f3;
                            z8 = z6;
                            bitmap = null;
                            z7 = z8;
                        }
                    } else {
                        f3 = 0.0f;
                        f4 = 0.0f;
                        bitmap4 = null;
                    }
                    c2 = 0;
                    zContains = false;
                    z16 = z51;
                    z15 = z58;
                    r3 = bitmap4;
                    z11 = z16;
                    r382 = z15;
                    float f132222 = f4;
                    i = this.cacheImage.type;
                    ImageLoader imageLoader2222 = ImageLoader.this;
                    if (i != 1) {
                    }
                    Thread.interrupted();
                    if (BuildVars.LOGS_ENABLED) {
                        ?? sb2 = new StringBuilder("Image Loader image is empty = ");
                        sb2.append(ApplyWallpaperSetting != 0);
                        sb2.append(" ");
                        sb2.append(r34);
                        FileLog.m990e(sb2.toString());
                    }
                    if (ApplyWallpaperSetting != 0) {
                        obj = this.cacheImage.parentObject;
                        if (obj instanceof TLRPC.WallPaper) {
                        }
                    }
                    cacheImage = this.cacheImage;
                    if (cacheImage != null) {
                        onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, i2, r2) : null);
                        return;
                    } else {
                        onPostExecute(ApplyWallpaperSetting != 0 ? new ExtendedBitmapDrawable(ApplyWallpaperSetting, i2, r2) : null);
                        return;
                    }
                    onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
                    c2 = 0;
                    bitmap2 = bitmap;
                    z9 = z7;
                    zContains = false;
                    bitmap3 = bitmap2;
                    z10 = z51;
                    r38 = z9;
                    FileLog.m992e(th);
                    r3 = bitmap3;
                    z11 = z10;
                    r382 = r38;
                    float f1322222 = f4;
                    i = this.cacheImage.type;
                    ImageLoader imageLoader22222 = ImageLoader.this;
                    if (i != 1) {
                    }
                    Thread.interrupted();
                    if (BuildVars.LOGS_ENABLED) {
                    }
                    if (ApplyWallpaperSetting != 0) {
                    }
                    cacheImage = this.cacheImage;
                    if (cacheImage != null) {
                    }
                    onPostExecute(ApplyWallpaperSetting == 0 ? new BitmapDrawable((Bitmap) ApplyWallpaperSetting) : null);
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
            bitmapDecodeByteArray = bitmapCreateBitmap;
        }
        if (bitmapDecodeByteArray != null && !TextUtils.isEmpty(str) && str.contains("b")) {
            Utilities.blurBitmap(bitmapDecodeByteArray, 3);
        }
        return bitmapDecodeByteArray;
    }

    public class CacheImage {
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
            ArrayList<ImageReceiver> arrayList;
            int iIntValue = this.type;
            int i = 0;
            while (true) {
                int size = this.imageReceiverArray.size();
                arrayList = this.imageReceiverArray;
                if (i >= size) {
                    break;
                }
                ImageReceiver imageReceiver2 = arrayList.get(i);
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
            if (arrayList.isEmpty()) {
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
                    ImageLoader imageLoader = ImageLoader.this;
                    if (iIntValue == 1) {
                        imageLoader.cacheThumbOutQueue.cancelRunnable(this.cacheTask);
                    } else {
                        imageLoader.cacheOutQueue.cancelRunnable(this.cacheTask);
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
        public void changePriority(int i) {
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
            ArrayList<ImageReceiver> arrayList;
            if (drawable != null) {
                final ArrayList arrayList2 = new ArrayList(this.imageReceiverArray);
                final ArrayList arrayList3 = new ArrayList(this.imageReceiverGuidsArray);
                cacheImage = this;
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.ImageLoader$CacheImage$$ExternalSyntheticLambda0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$setImageAndClear$0(drawable, arrayList2, arrayList3, str);
                    }
                });
            } else {
                cacheImage = this;
            }
            int i = 0;
            while (true) {
                int size = cacheImage.imageReceiverArray.size();
                arrayList = cacheImage.imageReceiverArray;
                if (i >= size) {
                    break;
                }
                ImageLoader.this.imageLoadingByTag.remove(arrayList.get(i).getTag(cacheImage.type));
                i++;
            }
            arrayList.clear();
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
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

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
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }

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
            @Override // org.telegram.messenger.LruCache
            public int sizeOf(String str, BitmapDrawable bitmapDrawable) {
                return ImageLoader.this.sizeOfBitmapDrawable(bitmapDrawable);
            }
        };
        this.lottieMemCache = new LruCache<BitmapDrawable>(10485760) { // from class: org.telegram.messenger.ImageLoader.4
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
                FileLog.m992e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        for (int i = 0; i < 16; i++) {
            FileLoader.getInstance(i).setDelegate(new C26265(i));
        }
        FileLoader.setMediaDirs(sparseArray);
        C26276 c26276 = new C26276();
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
                ApplicationLoader.applicationContext.registerReceiver(c26276, intentFilter, 4);
            } else {
                ApplicationLoader.applicationContext.registerReceiver(c26276, intentFilter);
            }
        } catch (Throwable unused) {
        }
        checkMediaPaths();
    }

    /* JADX INFO: renamed from: org.telegram.messenger.ImageLoader$5 */
    public class C26265 implements FileLoader.FileLoaderDelegate {
        final /* synthetic */ int val$currentAccount;

        public C26265(int i) {
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
                int i3 = cacheOutTask.cacheImage.type;
                ImageLoader imageLoader = ImageLoader.this;
                if (i3 == 1) {
                    imageLoader.cacheThumbOutQueue.postRunnable(cacheOutTask);
                } else {
                    imageLoader.cacheOutQueue.postRunnable(cacheOutTask, cacheOutTask.cacheImage.priority);
                }
            }
        }
    }

    /* JADX INFO: renamed from: org.telegram.messenger.ImageLoader$6 */
    public class C26276 extends BroadcastReceiver {
        public C26276() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (BuildVars.LOGS_ENABLED) {
                FileLog.m989d("file system changed");
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
            return ((AnimatedFileDrawable) bitmapDrawable).estimateSizeInCache();
        }
        if (bitmapDrawable instanceof RLottieDrawable) {
            return ((RLottieDrawable) bitmapDrawable).estimateSizeInCache();
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
                ImageLoader.m5201$r8$lambda$bace6vELOUCoq4DLR0nHnQHBEk(sparseArrayCreateMediaPaths, runnable);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$bac-e6vELOUCoq4DLR0nHnQHBEk, reason: not valid java name */
    public static /* synthetic */ void m5201$r8$lambda$bace6vELOUCoq4DLR0nHnQHBEk(SparseArray sparseArray, Runnable runnable) {
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
                    Stream<j$.nio.file.Path> list = Files.list(FileRetargetClass.toPath(file));
                    try {
                        list.forEach(new Consumer() { // from class: org.telegram.messenger.ImageLoader$$ExternalSyntheticLambda11
                            @Override // java.util.function.Consumer
                            public final void accept(Object obj) {
                                ImageLoader.m5203$r8$lambda$gOJHwLnGci070vSdd2ZIzBwZVo(file2, (j$.nio.file.Path) obj);
                            }
                        });
                        list.close();
                    } finally {
                    }
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
            }
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$gOJ-HwLnGci070vSdd2ZIzBwZVo, reason: not valid java name */
    public static /* synthetic */ void m5203$r8$lambda$gOJHwLnGci070vSdd2ZIzBwZVo(File file, j$.nio.file.Path path) {
        File file2 = new File(file, path.getFileName().toString());
        if (Files.isDirectory(path, new LinkOption[0])) {
            moveDirectory(path.toFile(), file2);
            return;
        }
        try {
            Files.move(path, FileRetargetClass.toPath(file2), new CopyOption[0]);
        } catch (Exception e) {
            FileLog.m992e(e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x0167 A[Catch: Exception -> 0x00aa, TryCatch #1 {Exception -> 0x00aa, blocks: (B:12:0x004e, B:14:0x005b, B:16:0x0069, B:19:0x0071, B:21:0x0078, B:24:0x00a7, B:27:0x00ad, B:29:0x00b9, B:32:0x00c2, B:34:0x00c5, B:38:0x00e6, B:37:0x00ca, B:39:0x00e9, B:56:0x012a, B:73:0x018d, B:75:0x019a, B:77:0x01a5, B:79:0x01ad, B:81:0x01b5, B:83:0x01c1, B:84:0x01cc, B:85:0x01cf, B:147:0x034c, B:137:0x030a, B:127:0x02c9, B:117:0x0288, B:107:0x0247, B:149:0x0351, B:170:0x03bc, B:160:0x0388, B:174:0x03ca, B:97:0x0213, B:55:0x0127, B:57:0x0139, B:59:0x0141, B:72:0x0186, B:62:0x014e, B:64:0x0154, B:69:0x0161, B:71:0x0167, B:67:0x015b, B:171:0x03c0, B:173:0x03c4, B:138:0x030d, B:140:0x031f, B:142:0x0326, B:144:0x0335, B:128:0x02cc, B:130:0x02de, B:132:0x02e5, B:134:0x02f4, B:88:0x01e2, B:90:0x01f2, B:92:0x01f8, B:94:0x01ff, B:161:0x038b, B:163:0x0399, B:165:0x039f, B:167:0x03a8, B:118:0x028b, B:120:0x029d, B:122:0x02a4, B:124:0x02b3, B:151:0x0357, B:153:0x0365, B:155:0x036b, B:157:0x0374, B:108:0x024a, B:110:0x025c, B:112:0x0263, B:114:0x0272, B:98:0x0216, B:100:0x0226, B:102:0x022c, B:104:0x0233), top: B:180:0x004e, inners: #0, #2, #4, #6, #8, #9, #10, #11 }] */
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
                FileLog.m992e(e);
            }
        }
        AndroidUtilities.createEmptyFile(new File(cacheDir, ".nomedia"));
        sparseArray.put(4, cacheDir);
        if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("cache path = " + cacheDir);
        }
        FileLog.m989d("selected SD card = " + SharedConfig.storageCacheDir);
        try {
        } catch (Exception e2) {
            FileLog.m992e(e2);
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
                        FileLog.m989d("root dir " + i + " " + file3);
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
                            FileLog.m989d("dirsDebug " + i2 + " " + externalFilesDirs[i2]);
                        }
                    }
                }
            }
            FileLog.m989d("external storage = " + externalStorageDirectory);
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
                            FileLog.m992e(e);
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
                        FileLog.m989d("can't write to this directory = " + externalStorageDirectory + " use files dir");
                        externalStorageDirectory = ApplicationLoader.applicationContext.getExternalFilesDir(null);
                    } else if (externalStorageDirectory.mkdirs()) {
                        if (!externalStorageDirectory.canWrite()) {
                            FileLog.m989d("can't write to this directory = " + externalStorageDirectory + " use files dir");
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
                            FileLog.m989d("image path = " + file6);
                        }
                    }
                } catch (Exception e6) {
                    FileLog.m992e(e6);
                }
                try {
                    File file7 = new File(this.telegramPath, "exteraGram Video");
                    file7.mkdir();
                    if (file7.isDirectory() && canMoveFiles(cacheDir, file7, 2)) {
                        sparseArray.put(2, file7);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("video path = " + file7);
                        }
                    }
                } catch (Exception e7) {
                    FileLog.m992e(e7);
                }
                try {
                    File file8 = new File(this.telegramPath, "exteraGram Audio");
                    file8.mkdir();
                    if (file8.isDirectory() && canMoveFiles(cacheDir, file8, 1)) {
                        AndroidUtilities.createEmptyFile(new File(file8, ".nomedia"));
                        sparseArray.put(1, file8);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("audio path = " + file8);
                        }
                    }
                } catch (Exception e8) {
                    FileLog.m992e(e8);
                }
                try {
                    File file9 = new File(this.telegramPath, "exteraGram Documents");
                    file9.mkdir();
                    if (file9.isDirectory() && canMoveFiles(cacheDir, file9, 3)) {
                        AndroidUtilities.createEmptyFile(new File(file9, ".nomedia"));
                        sparseArray.put(3, file9);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("documents path = " + file9);
                        }
                    }
                } catch (Exception e9) {
                    FileLog.m992e(e9);
                }
                try {
                    File file10 = new File(this.telegramPath, "exteraGram Files");
                    file10.mkdir();
                    if (file10.isDirectory() && canMoveFiles(cacheDir, file10, 5)) {
                        AndroidUtilities.createEmptyFile(new File(file10, ".nomedia"));
                        sparseArray.put(5, file10);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("files path = " + file10);
                        }
                    }
                } catch (Exception e10) {
                    FileLog.m992e(e10);
                }
                try {
                    File file11 = new File(this.telegramPath, "exteraGram Stories");
                    file11.mkdir();
                    if (file11.isDirectory() && canMoveFiles(cacheDir, file11, 6)) {
                        AndroidUtilities.createEmptyFile(new File(file11, ".nomedia"));
                        sparseArray.put(6, file11);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("stories path = " + file11);
                        }
                    }
                } catch (Exception e11) {
                    FileLog.m992e(e11);
                }
            }
            if (file2 != null && file2.isDirectory()) {
                try {
                    File file12 = new File(file2, "exteraGram Images");
                    file12.mkdir();
                    if (file12.isDirectory() && canMoveFiles(cacheDir, file12, 0)) {
                        sparseArray.put(100, file12);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("image path = " + file12);
                        }
                    }
                } catch (Exception e12) {
                    FileLog.m992e(e12);
                }
                try {
                    File file13 = new File(file2, "exteraGram Video");
                    file13.mkdir();
                    if (file13.isDirectory() && canMoveFiles(cacheDir, file13, 2)) {
                        sparseArray.put(101, file13);
                        if (BuildVars.LOGS_ENABLED) {
                            FileLog.m989d("video path = " + file13);
                        }
                    }
                } catch (Exception e13) {
                    FileLog.m992e(e13);
                }
            }
        } else if (BuildVars.LOGS_ENABLED) {
            FileLog.m989d("this Android can't rename files");
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
            FileLog.m992e(e);
            if (randomAccessFile2 == null) {
                return false;
            }
            try {
                randomAccessFile2.close();
                return false;
            } catch (Exception e3) {
                FileLog.m992e(e3);
                return false;
            }
        } catch (Throwable th2) {
            th = th2;
            randomAccessFile2 = randomAccessFile;
            if (randomAccessFile2 != null) {
                try {
                    randomAccessFile2.close();
                } catch (Exception e4) {
                    FileLog.m992e(e4);
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
        HashMap<String, Integer> map = this.bitmapUseCounts;
        if (num == null) {
            map.put(str, 1);
        } else {
            map.put(str, Integer.valueOf(num.intValue() + 1));
        }
    }

    public boolean decrementUseCount(String str) {
        Integer num = this.bitmapUseCounts.get(str);
        if (num == null) {
            return true;
        }
        int iIntValue = num.intValue();
        HashMap<String, Integer> map = this.bitmapUseCounts;
        if (iIntValue == 1) {
            map.remove(str);
            return true;
        }
        map.put(str, Integer.valueOf(num.intValue() - 1));
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
                removeFromWaitingForThumb(tag, imageReceiver);
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
            strMD5 = document.dc_id + "_" + document.id;
        } else if (tLObject instanceof SecureDocument) {
            SecureDocument secureDocument = (SecureDocument) tLObject;
            strMD5 = secureDocument.secureFile.dc_id + "_" + secureDocument.secureFile.id;
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
    /* JADX WARN: Removed duplicated region for block: B:23:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0527  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x0545  */
    /* JADX WARN: Removed duplicated region for block: B:331:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0210  */
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
        long j2;
        int i14;
        int i15;
        int i16;
        int i17;
        String str9;
        String str10;
        File file2;
        long j3;
        String str11;
        File file3;
        File file4;
        String str12;
        String str13;
        int i18;
        int i19;
        int i20;
        CacheImage cacheImage;
        CacheImage cacheImage2;
        int i21;
        ImageReceiver imageReceiver2 = imageReceiver;
        TLRPC.Document document2 = document;
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
                i21 = 1;
                if (i21 == 0 && cacheImage2 != null) {
                    cacheImage2.addImageReceiver(imageReceiver2, str2, str3, i4, i3);
                    i21 = 1;
                }
                if (i21 == 0 || cacheImage == null) {
                    imageReceiver2 = imageReceiver;
                    str5 = str3;
                    i8 = i21;
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
            i21 = i7;
            if (i21 == 0) {
                cacheImage2.addImageReceiver(imageReceiver2, str2, str3, i4, i3);
                i21 = 1;
            }
            if (i21 == 0) {
                imageReceiver2 = imageReceiver;
                str5 = str3;
                i8 = i21;
            }
        } else {
            str5 = str3;
            i7 = 0;
            i8 = 0;
        }
        if (i8 != 0) {
            return;
        }
        String str14 = imageLocation.path;
        if (str14 != null) {
            if (!str14.startsWith("http") && !str14.startsWith("athumb")) {
                if (str14.startsWith("thumb://")) {
                    int iIndexOf = str14.indexOf(":", 8);
                    file = iIndexOf >= 0 ? new File(str14.substring(iIndexOf + 1)) : null;
                    i11 = 1;
                } else {
                    if (str14.startsWith("vthumb://")) {
                        int iIndexOf2 = str14.indexOf(":", 9);
                        if (iIndexOf2 >= 0) {
                            file = new File(str14.substring(iIndexOf2 + 1));
                        }
                    } else {
                        file = new File(str14);
                    }
                    i11 = 1;
                }
                if (i9 == i12) {
                    boolean zIsEncrypted = imageLocation.isEncrypted();
                    int i22 = i11;
                    CacheImage cacheImage6 = new CacheImage();
                    cacheImage6.priority = imageReceiver2.getFileLoadingPriority() == 0 ? i7 : 1;
                    if (!z) {
                        if (imageLocation.imageType == i12 || MessageObject.isGifDocument(imageLocation.webFile) || MessageObject.isGifDocument(imageLocation.document) || MessageObject.isRoundVideoDocument(imageLocation.document) || MessageObject.isVideoSticker(imageLocation.document)) {
                            cacheImage6.imageType = i12;
                        } else {
                            String str15 = imageLocation.path;
                            if (str15 != null && !str15.startsWith("vthumb") && !str15.startsWith("thumb")) {
                                String httpUrlExtension = getHttpUrlExtension(str15, "jpg");
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
                            int i23 = i10;
                            str9 = AUTOPLAY_FILTER;
                            str10 = AUTOPLAY_FILTER_NONLOOP;
                            i10 = i23;
                            file2 = file;
                            i15 = 1;
                        } else {
                            SecureDocument secureDocument = imageLocation.secureDocument;
                            if (secureDocument != null) {
                                cacheImage6.secureDocument = secureDocument;
                                int i24 = secureDocument.secureFile.dc_id == Integer.MIN_VALUE ? 1 : i7;
                                str8 = str;
                                File file5 = new File(FileLoader.getDirectory(4), str8);
                                str9 = AUTOPLAY_FILTER;
                                i15 = i24;
                                file2 = file5;
                                str10 = AUTOPLAY_FILTER_NONLOOP;
                                j3 = 0;
                                i13 = i6;
                            } else {
                                str8 = str;
                                int i25 = i10;
                                if (AUTOPLAY_FILTER.equals(str5) || AUTOPLAY_FILTER_NONLOOP.equals(str5) || isAnimatedAvatar(str5)) {
                                    i13 = i6;
                                    str11 = "_";
                                } else {
                                    if (i6 == 0) {
                                        str11 = "_";
                                        if (j > 0 && imageLocation.path == null && !zIsEncrypted) {
                                            i13 = i6;
                                        }
                                    }
                                    File file6 = new File(FileLoader.getDirectory(4), str8);
                                    if (file6.exists()) {
                                        i13 = i6;
                                        i19 = i22;
                                        i20 = 1;
                                    } else {
                                        i13 = i6;
                                        if (i13 == 2) {
                                            i19 = i22;
                                            file6 = new File(FileLoader.getDirectory(4), str8 + ".enc");
                                        } else {
                                            i19 = i22;
                                        }
                                        i20 = i25;
                                    }
                                    TLRPC.Document document3 = imageLocation.document;
                                    if (document3 == null) {
                                        i15 = i19;
                                        str9 = AUTOPLAY_FILTER;
                                        i10 = i20;
                                        file2 = file6;
                                        str10 = AUTOPLAY_FILTER_NONLOOP;
                                    } else {
                                        if (document3 instanceof DocumentObject.ThemeDocument) {
                                            int i26 = ((DocumentObject.ThemeDocument) document3).wallpaper == null ? 1 : i19;
                                            cacheImage6.imageType = 5;
                                            i15 = i26;
                                        } else if ("application/x-tgsdice".equals(document3.mime_type)) {
                                            cacheImage6.imageType = 1;
                                            i15 = 1;
                                        } else {
                                            if ("application/x-tgsticker".equals(imageLocation.document.mime_type)) {
                                                cacheImage6.imageType = 1;
                                            } else if ("application/x-tgwallpattern".equals(imageLocation.document.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                                cacheImage6.imageType = 3;
                                            }
                                            i15 = i19;
                                        }
                                        str9 = AUTOPLAY_FILTER;
                                        i10 = i20;
                                        file2 = file6;
                                        str10 = AUTOPLAY_FILTER_NONLOOP;
                                    }
                                }
                                TLRPC.Document document4 = imageLocation.document;
                                if (document4 != null) {
                                    if (document4 instanceof TLRPC.TL_documentEncrypted) {
                                        file4 = new File(FileLoader.getDirectory(4), str8);
                                    } else if (MessageObject.isVideoDocument(document4)) {
                                        file4 = new File(FileLoader.getDirectory(2), str8);
                                    } else {
                                        file4 = new File(FileLoader.getDirectory(3), str8);
                                    }
                                    if ((isAnimatedAvatar(str5) || AUTOPLAY_FILTER.equals(str5) || AUTOPLAY_FILTER_NONLOOP.equals(str5)) && !file4.exists()) {
                                        File directory = FileLoader.getDirectory(4);
                                        str12 = AUTOPLAY_FILTER_NONLOOP;
                                        StringBuilder sb = new StringBuilder();
                                        str13 = AUTOPLAY_FILTER;
                                        sb.append(document4.dc_id);
                                        sb.append(str11);
                                        sb.append(document4.id);
                                        sb.append(".temp");
                                        file4 = new File(directory, sb.toString());
                                    } else {
                                        str13 = AUTOPLAY_FILTER;
                                        str12 = AUTOPLAY_FILTER_NONLOOP;
                                    }
                                    if (document4 instanceof DocumentObject.ThemeDocument) {
                                        int i27 = ((DocumentObject.ThemeDocument) document4).wallpaper == null ? 1 : i22;
                                        cacheImage6.imageType = 5;
                                        i18 = i27;
                                    } else if ("application/x-tgsdice".equals(imageLocation.document.mime_type)) {
                                        i18 = 1;
                                        cacheImage6.imageType = 1;
                                    } else {
                                        if ("application/x-tgsticker".equals(document4.mime_type)) {
                                            cacheImage6.imageType = 1;
                                        } else if ("application/x-tgwallpattern".equals(document4.mime_type) || FileLoader.getDocumentFileName(imageLocation.document).endsWith(".svg")) {
                                            cacheImage6.imageType = 3;
                                        }
                                        i18 = i22;
                                        file2 = file4;
                                        j3 = document4.size;
                                        i10 = i25;
                                        str5 = str3;
                                        i15 = i18;
                                        str10 = str12;
                                        str9 = str13;
                                    }
                                    file2 = file4;
                                    j3 = document4.size;
                                    i10 = i25;
                                    str5 = str3;
                                    i15 = i18;
                                    str10 = str12;
                                    str9 = str13;
                                } else {
                                    String str16 = str11;
                                    if (imageLocation.webFile != null) {
                                        i10 = i25;
                                        str5 = str3;
                                        i15 = i22;
                                        file2 = new File(FileLoader.getDirectory(3), str8);
                                        str10 = AUTOPLAY_FILTER_NONLOOP;
                                        str9 = AUTOPLAY_FILTER;
                                    } else {
                                        if (i13 == 1) {
                                            file3 = new File(FileLoader.getDirectory(4), str8);
                                        } else {
                                            file3 = new File(FileLoader.getDirectory(i7), str8);
                                        }
                                        str5 = str3;
                                        File file7 = file3;
                                        if (isAnimatedAvatar(str5)) {
                                            str10 = AUTOPLAY_FILTER_NONLOOP;
                                            str9 = AUTOPLAY_FILTER;
                                        } else {
                                            str9 = AUTOPLAY_FILTER;
                                            if (str9.equals(str5)) {
                                                str10 = AUTOPLAY_FILTER_NONLOOP;
                                            } else {
                                                str10 = AUTOPLAY_FILTER_NONLOOP;
                                                if (str10.equals(str5)) {
                                                }
                                                i10 = i25;
                                                i15 = i22;
                                                file2 = file7;
                                            }
                                            if (imageLocation.location != null && !file7.exists()) {
                                            }
                                            i10 = i25;
                                            i15 = i22;
                                            file2 = file7;
                                        }
                                        file7 = new File(FileLoader.getDirectory(4), imageLocation.location.volume_id + str16 + imageLocation.location.local_id + ".temp");
                                        i10 = i25;
                                        i15 = i22;
                                        file2 = file7;
                                    }
                                }
                            }
                            if (!hasAutoplayFilter(str5) || isAnimatedAvatar(str5)) {
                                cacheImage6.imageType = 2;
                                cacheImage6.size = j3;
                                cacheImage6.isPFrame = isPFrame(str5);
                                if (!str9.equals(str5) || str10.equals(str5) || isAnimatedAvatar(str5)) {
                                    i14 = i4;
                                    file = file2;
                                    i15 = 1;
                                } else {
                                    i14 = i4;
                                    file = file2;
                                }
                            }
                        }
                        j3 = 0;
                        if (!hasAutoplayFilter(str5)) {
                            cacheImage6.imageType = 2;
                            cacheImage6.size = j3;
                            cacheImage6.isPFrame = isPFrame(str5);
                            if (str9.equals(str5)) {
                            }
                            i14 = i4;
                            file = file2;
                            i15 = 1;
                        }
                    } else {
                        str8 = str;
                        i13 = i6;
                        j2 = 0;
                        i14 = i4;
                        i15 = i22;
                    }
                    cacheImage6.type = i14;
                    cacheImage6.key = str2;
                    cacheImage6.cacheType = i13;
                    cacheImage6.filter = str5;
                    cacheImage6.imageLocation = imageLocation;
                    cacheImage6.ext = str4;
                    cacheImage6.currentAccount = i5;
                    cacheImage6.parentObject = obj;
                    int i28 = imageLocation.imageType;
                    if (i28 != 0) {
                        cacheImage6.imageType = i28;
                    }
                    if (i13 == 2) {
                        File internalCacheDir = FileLoader.getInternalCacheDir();
                        i16 = i10;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(str8);
                        i17 = i15;
                        sb2.append(".enc.key");
                        cacheImage6.encryptionKeyPath = new File(internalCacheDir, sb2.toString());
                    } else {
                        i16 = i10;
                        i17 = i15;
                    }
                    int i29 = i13;
                    String str17 = str6;
                    cacheImage6.addImageReceiver(imageReceiver, str2, str5, i14, i3);
                    if (i17 != 0 || i16 != 0 || file.exists()) {
                        cacheImage6.finalFilePath = file;
                        cacheImage6.imageLocation = imageLocation;
                        cacheImage6.cacheTask = new CacheOutTask(cacheImage6);
                        this.imageLoadingByKeys.put(str2, cacheImage6);
                        this.imageLoadingKeys.add(cutFilter(str2));
                        if (i != 0) {
                            this.cacheThumbOutQueue.postRunnable(cacheImage6.cacheTask);
                            return;
                        } else {
                            cacheImage6.runningTask = this.cacheOutQueue.postRunnable(cacheImage6.cacheTask, cacheImage6.priority);
                            return;
                        }
                    }
                    cacheImage6.url = str8;
                    this.imageLoadingByUrl.put(str8, cacheImage6);
                    if (cacheImage6.isPFrame) {
                        this.imageLoadingByUrlPframe.put(str8, cacheImage6);
                    }
                    String str18 = imageLocation.path;
                    if (str18 != null) {
                        String strMD5 = Utilities.MD5(str18);
                        cacheImage6.tempFilePath = new File(FileLoader.getDirectory(4), strMD5 + "_temp.jpg");
                        cacheImage6.finalFilePath = file;
                        if (imageLocation.path.startsWith(str17)) {
                            ArtworkLoadTask artworkLoadTask = new ArtworkLoadTask(cacheImage6);
                            cacheImage6.artworkTask = artworkLoadTask;
                            this.artworkTasks.add(artworkLoadTask);
                            runArtworkTasks(i7);
                            return;
                        }
                        HttpImageTask httpImageTask = new HttpImageTask(cacheImage6, j);
                        cacheImage6.httpTask = httpImageTask;
                        this.httpTasks.add(httpImageTask);
                        runHttpTasks(i7);
                        return;
                    }
                    int i30 = i7;
                    int fileLoadingPriority = i != 0 ? 3 : imageReceiver.getFileLoadingPriority();
                    if (imageLocation.location != null) {
                        FileLoader.getInstance(i5).loadFile(imageLocation, obj, str4, fileLoadingPriority, (i29 != 0 || (j > j2 && imageLocation.key == null)) ? i29 : 1);
                    } else if (imageLocation.document != null) {
                        FileLoader.getInstance(i5).loadFile(imageLocation.document, obj, fileLoadingPriority, i29);
                    } else if (imageLocation.secureDocument != null) {
                        FileLoader.getInstance(i5).loadFile(imageLocation.secureDocument, fileLoadingPriority);
                    } else if (imageLocation.webFile != null) {
                        FileLoader.getInstance(i5).loadFile(imageLocation.webFile, fileLoadingPriority, i29);
                    }
                    if (imageReceiver.isForceLoding()) {
                        this.forceLoadingImages.put(cacheImage6.key, Integer.valueOf(i30));
                        return;
                    }
                    return;
                }
                return;
            }
            i11 = i7;
            file = null;
            i9 = i;
            str6 = "athumb";
            i10 = i7;
        } else {
            if (i == 0 && z) {
                if (obj instanceof MessageObject) {
                    MessageObject messageObject = (MessageObject) obj;
                    TLRPC.Document document5 = messageObject.getDocument();
                    str7 = messageObject.messageOwner.attachPath;
                    str6 = "athumb";
                    document2 = document5;
                    pathToMessage = FileLoader.getInstance(i5).getPathToMessage(messageObject.messageOwner);
                    mediaType = messageObject.getMediaType();
                    z4 = i7;
                } else {
                    str6 = "athumb";
                    if (document2 != null) {
                        File pathToAttach = FileLoader.getInstance(i5).getPathToAttach(document2, true);
                        mediaType = MessageObject.isVideoDocument(document2) ? 2 : 3;
                        pathToMessage = pathToAttach;
                        z4 = 1;
                        str7 = null;
                    } else {
                        int i31 = i7;
                        mediaType = i31 == true ? 1 : 0;
                        document2 = null;
                        str7 = null;
                        pathToMessage = null;
                        z4 = i31;
                    }
                }
                if (document2 != null) {
                    if (z2) {
                        File file8 = new File(FileLoader.getDirectory(4), "q_" + document2.dc_id + "_" + document2.id + ".jpg");
                        if (file8.exists()) {
                            i10 = 1;
                        } else {
                            i10 = i7;
                            file8 = null;
                        }
                        if (!TextUtils.isEmpty(str7)) {
                            File file9 = new File(str7);
                            if (!file9.exists()) {
                                file9 = null;
                            }
                            if (file9 == null) {
                                file9 = pathToMessage;
                            }
                            if (file8 == null) {
                                String attachFileName = FileLoader.getAttachFileName(document2);
                                ThumbGenerateInfo thumbGenerateInfo = this.waitingForQualityThumb.get(attachFileName);
                                if (thumbGenerateInfo == null) {
                                    thumbGenerateInfo = new ThumbGenerateInfo();
                                    thumbGenerateInfo.parentDocument = document2;
                                    thumbGenerateInfo.filter = str5;
                                    thumbGenerateInfo.big = z4;
                                    this.waitingForQualityThumb.put(attachFileName, thumbGenerateInfo);
                                }
                                if (!thumbGenerateInfo.imageReceiverArray.contains(imageReceiver2)) {
                                    thumbGenerateInfo.imageReceiverArray.add(imageReceiver2);
                                    thumbGenerateInfo.imageReceiverGuidsArray.add(Integer.valueOf(i3));
                                }
                                this.waitingForQualityThumbByTag.put(i2, attachFileName);
                                if (file9.exists() && z3) {
                                    generateThumb(mediaType, file9, thumbGenerateInfo);
                                    return;
                                }
                                return;
                            }
                            i9 = i;
                            file = file8;
                            i11 = 1;
                        }
                    }
                    if (i9 == i12) {
                    }
                } else {
                    i9 = i;
                    i10 = i7;
                    i11 = 1;
                }
            } else {
                str6 = "athumb";
                i9 = i;
                i10 = i7;
                i11 = i10;
            }
            i12 = 2;
            file = null;
            if (i9 == i12) {
            }
        }
        i12 = 2;
        if (i9 == i12) {
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
                                    key = "q_".concat(key);
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
        final ImageLoader imageLoader;
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
                    FileLog.m992e(th);
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
                FileLog.m992e(th2);
                return false;
            }
        }
        float f = options.outWidth;
        float f2 = options.outHeight;
        return f / f2 > 10.0f || f2 / f > 10.0f;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(28:0|2|(1:19)(3:7|(1:9)(3:11|(2:161|15)|19)|10)|20|(1:22)(16:(3:143|24|25)|30|(1:32)(1:33)|34|(1:36)|37|(3:39|(2:40|(1:42)(1:165))|43)|137|44|(5:149|48|151|49|(1:51))|55|(6:61|145|62|(5:64|(1:66)(1:67)|68|(1:70)(1:71)|72)|73|(1:75))(1:60)|76|(2:(1:79)|80)|81|(5:141|83|(3:163|85|(3:87|88|131))|91|167)(1:(6:139|108|(3:157|110|(2:112|113)(1:116))(0)|135|117|171)(1:169)))|29|30|(0)(0)|34|(0)|37|(0)|137|44|(6:46|149|48|151|49|(0))|55|(2:57|59)|61|145|62|(0)|73|(0)|76|(0)|81|(0)(0)|(2:(0)|(1:148))) */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7 A[Catch: all -> 0x00e4, PHI: r8 r10
  0x00c7: PHI (r8v7 android.util.Pair<java.lang.Integer, java.lang.Integer>) = 
  (r8v4 android.util.Pair<java.lang.Integer, java.lang.Integer>)
  (r8v9 android.util.Pair<java.lang.Integer, java.lang.Integer>)
 binds: [B:54:0x00ce, B:50:0x00c5] A[DONT_GENERATE, DONT_INLINE]
  0x00c7: PHI (r10v20 java.io.InputStream) = (r10v19 java.io.InputStream), (r10v23 java.io.InputStream) binds: [B:54:0x00ce, B:50:0x00c5] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #1 {all -> 0x00e4, blocks: (B:44:0x009f, B:46:0x00ad, B:51:0x00c7, B:55:0x00cf, B:57:0x00d9, B:61:0x00e6), top: B:137:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00d9 A[Catch: all -> 0x00e4, TryCatch #1 {all -> 0x00e4, blocks: (B:44:0x009f, B:46:0x00ad, B:51:0x00c7, B:55:0x00cf, B:57:0x00d9, B:61:0x00e6), top: B:137:0x009f }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00f5 A[Catch: all -> 0x0129, TryCatch #5 {all -> 0x0129, blocks: (B:62:0x00eb, B:64:0x00f5, B:68:0x0104, B:72:0x0110, B:73:0x0113, B:75:0x011d), top: B:145:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x011d A[Catch: all -> 0x0129, TRY_LEAVE, TryCatch #5 {all -> 0x0129, blocks: (B:62:0x00eb, B:64:0x00f5, B:68:0x0104, B:72:0x0110, B:73:0x0113, B:75:0x011d), top: B:145:0x00eb }] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0131  */
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
                        FileLog.m992e(th);
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
                    FileLog.m992e(th2);
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
                                FileLog.m992e(th);
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
                    FileLog.m992e(th5);
                    return bitmapDecodeFile2;
                }
            }
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str2, options);
                if (bitmapDecodeFile != null) {
                    try {
                        Bitmap bitmapCreateBitmap2 = Bitmaps.createBitmap(bitmapDecodeFile, 0, 0, bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight(), matrix22, true);
                        if (bitmapCreateBitmap2 != bitmapDecodeFile) {
                            bitmapDecodeFile.recycle();
                            return bitmapCreateBitmap2;
                        }
                    } catch (Throwable th6) {
                        th = th6;
                        bitmapDecodeFile2 = bitmapDecodeFile;
                        FileLog.m992e(th);
                        getInstance().clearMemory();
                        if (bitmapDecodeFile2 == null) {
                            try {
                                bitmapDecodeFile2 = BitmapFactory.decodeFile(str2, options);
                            } catch (Throwable th7) {
                                th = th7;
                                FileLog.m992e(th);
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
                                FileLog.m992e(th);
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
                    FileLog.m992e(th);
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
            tL_photoSize_layer127.f1017w = i;
            tL_photoSize_layer127.f1016h = i2;
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
            FileLog.m992e(e);
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
            tL_inputPhoto.id = photo.id;
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
                photoSize.f1017w = bitmapCreateScaledBitmap.getWidth();
                int height = bitmapCreateScaledBitmap.getHeight();
                photoSize.f1016h = height;
                int i4 = photoSize.f1017w;
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
        int i5 = C26287.$SwitchMap$android$graphics$Bitmap$CompressFormat[compressFormat.ordinal()];
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
    public static /* synthetic */ class C26287 {
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
                        FileLog.m992e(th);
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
        if (photoSizeFindPhotoCachedSize.f1016h <= 50 && photoSizeFindPhotoCachedSize.f1017w <= 50) {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.f1016h = photoSizeFindPhotoCachedSize.f1016h;
            tL_photoSize_layer127.f1017w = photoSizeFindPhotoCachedSize.f1017w;
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
                        FileLog.m992e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.f1017w = photoSizeFindPhotoCachedSize.f1017w;
            tL_photoSize_layer127.f1016h = photoSizeFindPhotoCachedSize.f1016h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        }
        TLRPC.MessageMedia messageMedia2 = message.media;
        if (messageMedia2 instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia2.photo.sizes.size();
            while (i < size) {
                if (message.media.photo.sizes.get(i) instanceof TLRPC.TL_photoCachedSize) {
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
                if (message.media.webpage.photo.sizes.get(i) instanceof TLRPC.TL_photoCachedSize) {
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
        if (photoSizeFindPhotoCachedSize.f1016h <= 50 && photoSizeFindPhotoCachedSize.f1017w <= 50) {
            tL_photoSize_layer127 = new TLRPC.TL_photoStrippedSize();
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.bytes = photoSizeFindPhotoCachedSize.bytes;
            tL_photoSize_layer127.f1016h = photoSizeFindPhotoCachedSize.f1016h;
            tL_photoSize_layer127.f1017w = photoSizeFindPhotoCachedSize.f1017w;
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
                        FileLog.m992e(e);
                    }
                }
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(pathToAttach, "rws");
                randomAccessFile2.write(photoSizeFindPhotoCachedSize.bytes);
                randomAccessFile2.close();
            }
            tL_photoSize_layer127 = new TLRPC.TL_photoSize_layer127();
            tL_photoSize_layer127.f1017w = photoSizeFindPhotoCachedSize.f1017w;
            tL_photoSize_layer127.f1016h = photoSizeFindPhotoCachedSize.f1016h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
        }
        if (messageMedia instanceof TLRPC.TL_messageMediaPhoto) {
            int size = messageMedia.photo.sizes.size();
            while (i < size) {
                if (messageMedia.photo.sizes.get(i) instanceof TLRPC.TL_photoCachedSize) {
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
                if (messageMedia.webpage.photo.sizes.get(i) instanceof TLRPC.TL_photoCachedSize) {
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
                TLRPC.PhotoSize photoSize = message.media.photo.sizes.get(i);
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
                TLRPC.PhotoSize photoSize3 = message.media.webpage.photo.sizes.get(i);
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
                TLRPC.PhotoSize photoSize = messageMedia.photo.sizes.get(i);
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
                TLRPC.PhotoSize photoSize3 = messageMedia.webpage.photo.sizes.get(i);
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
            tL_photoSize_layer127.f1017w = photoSizeFindPhotoCachedSize.f1017w;
            tL_photoSize_layer127.f1016h = photoSizeFindPhotoCachedSize.f1016h;
            tL_photoSize_layer127.location = photoSizeFindPhotoCachedSize.location;
            tL_photoSize_layer127.size = photoSizeFindPhotoCachedSize.size;
            tL_photoSize_layer127.type = photoSizeFindPhotoCachedSize.type;
            if (pathToAttach.exists() && message.grouped_id == 0) {
                PointF messageSize = ChatMessageCell.getMessageSize(photoSizeFindPhotoCachedSize.f1017w, photoSizeFindPhotoCachedSize.f1016h);
                String str = String.format(Locale.US, "%d_%d@%d_%d_b", Long.valueOf(photoSizeFindPhotoCachedSize.location.volume_id), Integer.valueOf(photoSizeFindPhotoCachedSize.location.local_id), Integer.valueOf((int) (messageSize.x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize.y / AndroidUtilities.density)));
                if (!getInstance().isInMemCache(str, false)) {
                    String path = pathToAttach.getPath();
                    float f = messageSize.x;
                    float f2 = AndroidUtilities.density;
                    Bitmap bitmapLoadBitmap = loadBitmap(path, null, (int) (f / f2), (int) (messageSize.y / f2), false);
                    if (bitmapLoadBitmap != null) {
                        Utilities.blurBitmap(bitmapLoadBitmap, 3);
                        float f3 = messageSize.x;
                        float f4 = AndroidUtilities.density;
                        Bitmap bitmapCreateScaledBitmap = Bitmaps.createScaledBitmap(bitmapLoadBitmap, (int) (f3 / f4), (int) (messageSize.y / f4), true);
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
                                    i2 = tL_documentAttributeVideo.f1014h;
                                    i = tL_documentAttributeVideo.f1015w;
                                    break;
                                }
                                i4++;
                            }
                        } else {
                            i2 = closestPhotoSizeWithSize.f1016h;
                            i = closestPhotoSizeWithSize.f1017w;
                        }
                        PointF messageSize2 = ChatMessageCell.getMessageSize(i, i2);
                        String str2 = String.format(Locale.US, "%s_false@%d_%d_b", ImageLocation.getStrippedKey(message, message, photoSize), Integer.valueOf((int) (messageSize2.x / AndroidUtilities.density)), Integer.valueOf((int) (messageSize2.y / AndroidUtilities.density)));
                        if (!getInstance().isInMemCache(str2, false) && (strippedPhotoBitmap = getStrippedPhotoBitmap(photoSize.bytes, null)) != null) {
                            Utilities.blurBitmap(strippedPhotoBitmap, 3);
                            float f5 = messageSize2.x;
                            float f6 = AndroidUtilities.density;
                            Bitmap bitmapCreateScaledBitmap2 = Bitmaps.createScaledBitmap(strippedPhotoBitmap, (int) (f5 / f6), (int) (messageSize2.y / f6), true);
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
