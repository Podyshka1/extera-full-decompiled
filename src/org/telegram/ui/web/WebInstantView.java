package org.telegram.ui.web;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.JsonReader;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import com.google.android.gms.cast.MediaTrack;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageReceiver;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.SvgHelper;
import org.telegram.messenger.Timer;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_iv;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.LaunchActivity;
import org.telegram.ui.web.BotWebViewContainer;
import org.telegram.ui.web.MHTML;
import org.telegram.ui.web.WebInstantView;

/* JADX INFO: loaded from: classes3.dex */
public class WebInstantView {
    public static final HashMap<TLRPC.WebPage, WebInstantView> instants = new HashMap<>();
    private static HashMap<String, ArrayList<Pair<ImageReceiver, Runnable>>> loadingPhotos;
    public final HashMap<String, Bitmap> loadedPhotos = new HashMap<>();
    public MHTML mhtml;
    public String url;
    public TLRPC.WebPage webpage;

    public static /* synthetic */ void $r8$lambda$Us0B0feOaqe1AirXDilnz7RNinI(String str) {
    }

    public static Runnable generate(WebView webView, boolean z, final Utilities.Callback<WebInstantView> callback) {
        if (callback == null) {
            return null;
        }
        if (webView == null) {
            callback.run(null);
            return null;
        }
        final boolean[] zArr = {false};
        final WebInstantView webInstantView = new WebInstantView();
        webInstantView.url = webView.getUrl();
        final Timer timerCreate = Timer.create("WebInstantView");
        final Timer.Task taskStart = Timer.start(timerCreate, "getHTML");
        webInstantView.getHTML(webView, z, new Utilities.Callback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WebInstantView.$r8$lambda$YlCjfT0mhFdTUR2hES1ATvDObGA(taskStart, zArr, timerCreate, webInstantView, callback, (InputStream) obj);
            }
        });
        return new Runnable() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                WebInstantView.$r8$lambda$5OKLd3KNjqeekGH8Do5VRgOXNAo(zArr);
            }
        };
    }

    public static /* synthetic */ void $r8$lambda$YlCjfT0mhFdTUR2hES1ATvDObGA(Timer.Task task, final boolean[] zArr, final Timer timer, final WebInstantView webInstantView, final Utilities.Callback callback, InputStream inputStream) {
        Timer.done(task);
        if (zArr[0]) {
            return;
        }
        final Timer.Task taskStart = Timer.start(timer, "readHTML");
        webInstantView.readHTML(webInstantView.url, inputStream, new Utilities.Callback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda6
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WebInstantView.$r8$lambda$Yh_rHIiOF3DpDgaZCNIA7rZXO0Q(taskStart, zArr, timer, webInstantView, callback, (JSONObject) obj);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$Yh_rHIiOF3DpDgaZCNIA7rZXO0Q(Timer.Task task, boolean[] zArr, Timer timer, WebInstantView webInstantView, Utilities.Callback callback, JSONObject jSONObject) {
        Timer.done(task);
        if (zArr[0]) {
            return;
        }
        Timer.Task taskStart = Timer.start(timer, "parseJSON");
        try {
            webInstantView.webpage = webInstantView.parseJSON(webInstantView.url, jSONObject);
        } catch (Exception e) {
            Timer.log(timer, "error: " + e);
            FileLog.m1040e(e);
        }
        Timer.done(taskStart);
        callback.run(webInstantView);
        TLRPC.WebPage webPage = webInstantView.webpage;
        if (webPage != null) {
            instants.put(webPage, webInstantView);
        }
        Timer.finish(timer);
    }

    public static /* synthetic */ void $r8$lambda$5OKLd3KNjqeekGH8Do5VRgOXNAo(boolean[] zArr) {
        zArr[0] = true;
    }

    public void recycle() {
        TL_iv.Page page;
        ArrayList<TLRPC.Photo> arrayList;
        instants.remove(this.webpage);
        Iterator<Map.Entry<String, Bitmap>> it = this.loadedPhotos.entrySet().iterator();
        while (it.hasNext()) {
            AndroidUtilities.recycleBitmap(it.next().getValue());
        }
        this.loadedPhotos.clear();
        TLRPC.WebPage webPage = this.webpage;
        if (webPage == null || (page = webPage.cached_page) == null || (arrayList = page.photos) == null) {
            return;
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            TLRPC.Photo photo = arrayList.get(i);
            i++;
            TLRPC.Photo photo2 = photo;
            if (photo2 instanceof WebPhoto) {
                WebPhoto webPhoto = (WebPhoto) photo2;
                HashMap<String, ArrayList<Pair<ImageReceiver, Runnable>>> map = loadingPhotos;
                if (map != null) {
                    map.remove(webPhoto.url);
                }
            }
        }
    }

    /* JADX INFO: loaded from: classes8.dex */
    public class WebPhoto extends TLRPC.Photo {

        /* JADX INFO: renamed from: h */
        public int f1276h;
        public TL_iv.textImage inlineImage;
        public WebInstantView instantView;
        public String url;
        public HashSet<String> urls = new HashSet<>();

        /* JADX INFO: renamed from: w */
        public int f1277w;

        public WebPhoto() {
        }
    }

    public static void loadPhoto(WebPhoto webPhoto, ImageReceiver imageReceiver, Runnable runnable) {
        WebInstantView webInstantView;
        if (webPhoto == null || (webInstantView = webPhoto.instantView) == null) {
            return;
        }
        webInstantView.loadPhotoInternal(webPhoto, imageReceiver, runnable);
    }

    private void loadPhotoInternal(final WebPhoto webPhoto, ImageReceiver imageReceiver, Runnable runnable) {
        MHTML.Entry entry;
        Bitmap bitmapDecodeStream;
        try {
            if (this.mhtml != null) {
                Iterator<String> it = webPhoto.urls.iterator();
                entry = null;
                while (it.hasNext()) {
                    entry = this.mhtml.entriesByLocation.get(it.next());
                    if (entry != null) {
                        break;
                    }
                }
            } else {
                entry = null;
            }
            if (entry != null) {
                if (entry.getType().contains("svg")) {
                    if (webPhoto.f1277w > 0 && webPhoto.f1276h > 0) {
                        bitmapDecodeStream = SvgHelper.getBitmap(entry.getInputStream(), AndroidUtilities.dp(webPhoto.f1277w), AndroidUtilities.dp(webPhoto.f1276h), false);
                    }
                    return;
                }
                if (webPhoto.f1277w <= 0 || webPhoto.f1276h <= 0) {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(entry.getInputStream(), null, options);
                    int i = webPhoto.f1277w;
                    if (i == 0 && webPhoto.f1276h == 0) {
                        webPhoto.f1277w = options.outWidth;
                        webPhoto.f1276h = options.outHeight;
                    } else if (i == 0) {
                        webPhoto.f1277w = (int) ((options.outWidth / options.outHeight) * webPhoto.f1276h);
                    } else if (webPhoto.f1276h == 0) {
                        webPhoto.f1276h = (int) ((options.outHeight / options.outWidth) * i);
                    }
                    TL_iv.textImage textimage = webPhoto.inlineImage;
                    if (textimage != null) {
                        textimage.f1053w = webPhoto.f1277w;
                        textimage.f1052h = webPhoto.f1276h;
                    }
                    if (runnable != null) {
                        runnable.run();
                    }
                }
                bitmapDecodeStream = BitmapFactory.decodeStream(entry.getInputStream());
                imageReceiver.setImageBitmap(bitmapDecodeStream);
                return;
            }
            if (this.loadedPhotos.containsKey(webPhoto.url)) {
                imageReceiver.setImageBitmap(this.loadedPhotos.get(webPhoto.url));
                return;
            }
            if (loadingPhotos == null) {
                loadingPhotos = new HashMap<>();
            }
            ArrayList<Pair<ImageReceiver, Runnable>> arrayList = loadingPhotos.get(webPhoto.url);
            if (arrayList != null) {
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (arrayList.get(i2).first == imageReceiver) {
                        return;
                    }
                }
                arrayList.add(new Pair<>(imageReceiver, runnable));
                return;
            }
            loadingPhotos.put(webPhoto.url, new ArrayList<>());
            new HttpGetBitmapTask(new Utilities.Callback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$loadPhotoInternal$4(webPhoto, (Bitmap) obj);
                }
            }).execute(webPhoto.url);
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPhotoInternal$4(final WebPhoto webPhoto, final Bitmap bitmap) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$loadPhotoInternal$3(webPhoto, bitmap);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadPhotoInternal$3(WebPhoto webPhoto, Bitmap bitmap) {
        Object obj;
        if (loadingPhotos == null) {
            return;
        }
        int i = 0;
        boolean z = (webPhoto.f1277w <= 0 || webPhoto.f1276h <= 0) && bitmap != null;
        if (bitmap != null) {
            this.loadedPhotos.put(webPhoto.url, bitmap);
            if (z) {
                int i2 = webPhoto.f1277w;
                if (i2 == 0 && webPhoto.f1276h == 0) {
                    webPhoto.f1277w = bitmap.getWidth();
                    webPhoto.f1276h = bitmap.getHeight();
                } else if (i2 == 0) {
                    webPhoto.f1277w = (int) ((bitmap.getWidth() / bitmap.getHeight()) * webPhoto.f1276h);
                } else if (webPhoto.f1276h == 0) {
                    webPhoto.f1276h = (int) ((bitmap.getHeight() / bitmap.getWidth()) * webPhoto.f1277w);
                }
                TL_iv.textImage textimage = webPhoto.inlineImage;
                if (textimage != null) {
                    textimage.f1053w = webPhoto.f1277w;
                    textimage.f1052h = webPhoto.f1276h;
                }
            }
        }
        ArrayList<Pair<ImageReceiver, Runnable>> arrayListRemove = loadingPhotos.remove(webPhoto.url);
        if (arrayListRemove == null) {
            return;
        }
        int size = arrayListRemove.size();
        while (i < size) {
            Pair<ImageReceiver, Runnable> pair = arrayListRemove.get(i);
            i++;
            Pair<ImageReceiver, Runnable> pair2 = pair;
            ((ImageReceiver) pair2.first).setImageBitmap(bitmap);
            if (z && (obj = pair2.second) != null) {
                ((Runnable) obj).run();
            }
        }
    }

    public static void cancelLoadPhoto(ImageReceiver imageReceiver) {
        HashMap<String, ArrayList<Pair<ImageReceiver, Runnable>>> map = loadingPhotos;
        if (map == null) {
            return;
        }
        for (Map.Entry<String, ArrayList<Pair<ImageReceiver, Runnable>>> entry : map.entrySet()) {
            String key = entry.getKey();
            ArrayList<Pair<ImageReceiver, Runnable>> value = entry.getValue();
            int i = 0;
            while (true) {
                if (i >= value.size()) {
                    break;
                }
                if (value.get(i).first == imageReceiver) {
                    value.remove(i);
                    break;
                }
                i++;
            }
            if (value.isEmpty()) {
                loadingPhotos.remove(key);
                return;
            }
        }
    }

    public static void recycle(TLRPC.WebPage webPage) {
        WebInstantView webInstantViewRemove = instants.remove(webPage);
        if (webInstantViewRemove != null) {
            webInstantViewRemove.recycle();
        }
    }

    public void getHTML(final WebView webView, boolean z, final Utilities.Callback<InputStream> callback) {
        if (callback == null) {
            return;
        }
        if (webView == null) {
            callback.run(null);
        } else {
            if (z) {
                webView.evaluateJavascript("document.documentElement.outerHTML", new ValueCallback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda4
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj) {
                        WebInstantView.$r8$lambda$5eCdyRlTVedsQRAWARfZXK7zwEo(callback, (String) obj);
                    }
                });
                return;
            }
            System.currentTimeMillis();
            final File file = new File(AndroidUtilities.getCacheDir(), "archive.mht");
            webView.evaluateJavascript(AndroidUtilities.readRes(C2807R.raw.open_collapsed).replace("$OPEN$", "true"), new ValueCallback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda5
                @Override // android.webkit.ValueCallback
                public final void onReceiveValue(Object obj) {
                    this.f$0.lambda$getHTML$8(webView, file, callback, (String) obj);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$5eCdyRlTVedsQRAWARfZXK7zwEo(Utilities.Callback callback, String str) {
        try {
            JsonReader jsonReader = new JsonReader(new StringReader(str));
            jsonReader.setLenient(true);
            String strNextString = jsonReader.nextString();
            jsonReader.close();
            callback.run(new ByteArrayInputStream(strNextString.getBytes(StandardCharsets.UTF_8)));
        } catch (Exception e) {
            FileLog.m1040e(e);
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getHTML$8(final WebView webView, final File file, final Utilities.Callback callback, String str) {
        webView.saveWebArchive(file.getAbsolutePath(), false, new ValueCallback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda7
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                this.f$0.lambda$getHTML$7(webView, file, callback, (String) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getHTML$7(WebView webView, File file, Utilities.Callback callback, String str) {
        webView.evaluateJavascript(AndroidUtilities.readRes(C2807R.raw.open_collapsed).replace("$OPEN$", "false"), new ValueCallback() { // from class: org.telegram.ui.web.WebInstantView$$ExternalSyntheticLambda8
            @Override // android.webkit.ValueCallback
            public final void onReceiveValue(Object obj) {
                WebInstantView.$r8$lambda$Us0B0feOaqe1AirXDilnz7RNinI((String) obj);
            }
        });
        try {
            MHTML mhtml = new MHTML(file);
            this.mhtml = mhtml;
            if (!mhtml.entries.isEmpty()) {
                callback.run(this.mhtml.entries.get(0).getInputStream());
                return;
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
        callback.run(null);
    }

    public void readHTML(String str, final InputStream inputStream, Utilities.Callback<JSONObject> callback) {
        if (callback == null) {
            return;
        }
        if (inputStream == null) {
            callback.run(null);
            return;
        }
        Context context = LaunchActivity.instance;
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity == null) {
            callback.run(null);
            return;
        }
        View rootView = activityFindActivity.findViewById(R.id.content).getRootView();
        if (!(rootView instanceof ViewGroup)) {
            callback.run(null);
            return;
        }
        FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.web.WebInstantView.1
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.ViewGroup
            public boolean drawChild(Canvas canvas, View view, long j) {
                return false;
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.widget.FrameLayout, android.view.View
            public void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(500.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.dp(500.0f), TLObject.FLAG_30));
            }
        };
        ((ViewGroup) rootView).addView(frameLayout);
        WebView webView = new WebView(context);
        WebSettings settings = webView.getSettings();
        settings.setAllowContentAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setAllowFileAccess(false);
        settings.setJavaScriptEnabled(true);
        settings.setSaveFormData(false);
        settings.setGeolocationEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        webView.setWebViewClient(new WebViewClient() { // from class: org.telegram.ui.web.WebInstantView.2
            private boolean firstLoad = true;
            private boolean streamLoaded;

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView2, String str2) {
                InputStream inputStream2;
                String str3;
                if (this.firstLoad) {
                    this.firstLoad = false;
                    return new WebResourceResponse("text/html", "UTF-8", new ByteArrayInputStream(("<script>\n" + AndroidUtilities.readRes(C2807R.raw.instant).replace("$DEBUG$", _UrlKt.FRAGMENT_ENCODE_SET + BuildVars.DEBUG_VERSION) + "\n</script>").getBytes(StandardCharsets.UTF_8)));
                }
                if (str2 != null && str2.endsWith("/index.html")) {
                    str3 = "application/octet-stream";
                    if (this.streamLoaded) {
                        MHTML mhtml = WebInstantView.this.mhtml;
                        MHTML.Entry entry = mhtml != null ? mhtml.entries.get(0) : null;
                        if (entry == null) {
                            return new WebResourceResponse("text/plain", "utf-8", 404, "Not Found", null, null);
                        }
                        try {
                            inputStream2 = entry.getInputStream();
                        } catch (IOException e) {
                            FileLog.m1040e(e);
                            return new WebResourceResponse("text/plain", "utf-8", 503, "Server error", null, null);
                        }
                    } else {
                        InputStream inputStream3 = inputStream;
                        this.streamLoaded = true;
                        inputStream2 = inputStream3;
                    }
                } else {
                    MHTML mhtml2 = WebInstantView.this.mhtml;
                    MHTML.Entry entry2 = mhtml2 != null ? mhtml2.entriesByLocation.get(str2) : null;
                    if (entry2 == null) {
                        return new WebResourceResponse("text/plain", "utf-8", 404, "Not Found", null, null);
                    }
                    String type = entry2.getType();
                    if (!"text/html".equalsIgnoreCase(type) && !"text/css".equalsIgnoreCase(type)) {
                        return new WebResourceResponse("text/plain", "utf-8", 404, "Not Found", null, null);
                    }
                    try {
                        inputStream2 = entry2.getInputStream();
                        str3 = type;
                    } catch (IOException e2) {
                        FileLog.m1040e(e2);
                        return new WebResourceResponse("text/plain", "utf-8", 503, "Server error", null, null);
                    }
                }
                return new WebResourceResponse(str3, null, inputStream2);
            }
        });
        webView.setWebChromeClient(new WebChromeClient() { // from class: org.telegram.ui.web.WebInstantView.3
        });
        frameLayout.addView(webView, LayoutHelper.createFrame(-1, -1.0f));
        webView.addJavascriptInterface(new C67344(new boolean[]{false}, webView, frameLayout, callback), "Instant");
        webView.loadUrl(str);
    }

    /* JADX INFO: renamed from: org.telegram.ui.web.WebInstantView$4 */
    /* JADX INFO: loaded from: classes8.dex */
    public class C67344 {
        final /* synthetic */ boolean[] val$done;
        final /* synthetic */ WebView val$webView;
        final /* synthetic */ FrameLayout val$webViewContainer;
        final /* synthetic */ Utilities.Callback val$whenDone;

        public C67344(boolean[] zArr, WebView webView, FrameLayout frameLayout, Utilities.Callback callback) {
            this.val$done = zArr;
            this.val$webView = webView;
            this.val$webViewContainer = frameLayout;
            this.val$whenDone = callback;
        }

        @JavascriptInterface
        @Keep
        public void done(final String str) {
            final boolean[] zArr = this.val$done;
            final WebView webView = this.val$webView;
            final FrameLayout frameLayout = this.val$webViewContainer;
            final Utilities.Callback callback = this.val$whenDone;
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebInstantView$4$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    WebInstantView.C67344.$r8$lambda$K36wTf6YNhOLbQXYDc9HGQ7ErYU(zArr, webView, frameLayout, str, callback);
                }
            });
        }

        public static /* synthetic */ void $r8$lambda$K36wTf6YNhOLbQXYDc9HGQ7ErYU(boolean[] zArr, WebView webView, FrameLayout frameLayout, String str, Utilities.Callback callback) {
            JSONObject jSONObject;
            if (zArr[0]) {
                return;
            }
            zArr[0] = true;
            if (!BuildVars.DEBUG_PRIVATE_VERSION) {
                webView.onPause();
                webView.destroy();
                AndroidUtilities.removeFromParent(webView);
                AndroidUtilities.removeFromParent(frameLayout);
            }
            try {
                jSONObject = new JSONObject(str);
            } catch (Exception e) {
                FileLog.m1040e(e);
                jSONObject = null;
            }
            callback.run(jSONObject);
        }
    }

    public TLRPC.TL_webPage parseJSON(String str, JSONObject jSONObject) throws JSONException {
        TLRPC.TL_webPage tL_webPage = new TLRPC.TL_webPage();
        tL_webPage.id = 0L;
        tL_webPage.url = str;
        tL_webPage.display_url = str;
        String string = jSONObject.getString("siteName");
        if (string != null && !"null".equals(string)) {
            tL_webPage.flags |= 2;
            tL_webPage.site_name = string;
        }
        String strOptString = jSONObject.optString("title");
        if (strOptString != null && !"null".equals(strOptString)) {
            tL_webPage.flags |= 4;
            tL_webPage.title = strOptString;
        }
        String strOptString2 = jSONObject.optString("byline");
        if (strOptString2 != null && !"null".equals(strOptString2) && !"by".equalsIgnoreCase(strOptString2)) {
            tL_webPage.flags |= 256;
            tL_webPage.author = strOptString2;
        }
        String strOptString3 = jSONObject.optString("excerpt");
        if (strOptString3 != null && !"null".equals(strOptString3)) {
            tL_webPage.flags |= 8;
            tL_webPage.description = strOptString3;
        }
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
        if (jSONArrayOptJSONArray != null && !"null".equals(jSONArrayOptJSONArray)) {
            tL_webPage.flags |= 1024;
            tL_webPage.cached_page = parsePage(str, jSONObject);
        }
        return tL_webPage;
    }

    public TL_iv.TL_page parsePage(String str, JSONObject jSONObject) {
        String strOptString = jSONObject.optString("title");
        if ("null".equals(strOptString)) {
            strOptString = null;
        }
        "null".equals(jSONObject.optString("publishedTime"));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
        TL_iv.TL_page tL_page = new TL_iv.TL_page();
        tL_page.web = true;
        tL_page.url = str;
        tL_page.blocks.addAll(parsePageBlocks(str, jSONArrayOptJSONArray, tL_page));
        if (!tL_page.blocks.isEmpty() && (tL_page.blocks.get(0) instanceof TL_iv.pageBlockHeader)) {
            return tL_page;
        }
        TL_iv.pageBlockTitle pageblocktitle = new TL_iv.pageBlockTitle();
        pageblocktitle.text = trim(parseRichText(strOptString));
        tL_page.blocks.add(0, pageblocktitle);
        return tL_page;
    }

    public ArrayList<TL_iv.PageBlock> parsePageBlocks(String str, JSONArray jSONArray, TL_iv.TL_page tL_page) throws JSONException {
        JSONObject jSONObject;
        JSONArray jSONArrayOptJSONArray;
        ArrayList<TL_iv.PageBlock> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof String) {
                TL_iv.pageBlockParagraph pageblockparagraph = new TL_iv.pageBlockParagraph();
                pageblockparagraph.text = parseRichText((String) obj);
                arrayList.add(pageblockparagraph);
            } else if (obj instanceof JSONObject) {
                jSONObject = (JSONObject) obj;
                String strOptString = jSONObject.optString("tag");
                jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
                strOptString.getClass();
                switch (strOptString) {
                    case "figure":
                    case "picture":
                        TL_iv.pageBlockPhoto figure = parseFigure(jSONObject, tL_page);
                        if (figure != null) {
                            arrayList.add(figure);
                            break;
                        } else {
                            break;
                        }
                        break;
                    case "strong":
                    case "a":
                    case "b":
                    case "i":
                    case "s":
                    case "sub":
                    case "sup":
                    case "code":
                    case "mark":
                    case "span":
                        JSONArray jSONArray2 = new JSONArray();
                        jSONArray2.put(jSONObject);
                        TL_iv.pageBlockParagraph pageblockparagraph2 = new TL_iv.pageBlockParagraph();
                        pageblockparagraph2.text = parseRichText(jSONArray2, tL_page);
                        arrayList.add(pageblockparagraph2);
                        break;
                    case "p":
                        TL_iv.pageBlockParagraph pageblockparagraph3 = new TL_iv.pageBlockParagraph();
                        pageblockparagraph3.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockparagraph3);
                        break;
                    case "h1":
                        TL_iv.pageBlockHeading1 pageblockheading1 = new TL_iv.pageBlockHeading1();
                        pageblockheading1.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading1);
                        break;
                    case "h2":
                        TL_iv.pageBlockHeading2 pageblockheading2 = new TL_iv.pageBlockHeading2();
                        pageblockheading2.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading2);
                        break;
                    case "h3":
                        TL_iv.pageBlockHeading3 pageblockheading3 = new TL_iv.pageBlockHeading3();
                        pageblockheading3.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading3);
                        break;
                    case "h4":
                        TL_iv.pageBlockHeading4 pageblockheading4 = new TL_iv.pageBlockHeading4();
                        pageblockheading4.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading4);
                        break;
                    case "h5":
                        TL_iv.pageBlockHeading5 pageblockheading5 = new TL_iv.pageBlockHeading5();
                        pageblockheading5.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading5);
                        break;
                    case "h6":
                        TL_iv.pageBlockHeading6 pageblockheading6 = new TL_iv.pageBlockHeading6();
                        pageblockheading6.text = trim(parseRichText(jSONObject, tL_page));
                        arrayList.add(pageblockheading6);
                        break;
                    case "hr":
                        arrayList.add(new TL_iv.pageBlockDivider());
                        break;
                    case "ol":
                    case "ul":
                        arrayList.add(parseList(str, jSONObject, tL_page));
                        break;
                    case "img":
                        TL_iv.pageBlockPhoto image = parseImage(jSONObject, tL_page);
                        if (image != null) {
                            arrayList.add(image);
                            break;
                        } else {
                            break;
                        }
                        break;
                    case "pre":
                        TL_iv.pageBlockPreformatted pageblockpreformatted = new TL_iv.pageBlockPreformatted();
                        TL_iv.textFixed textfixed = new TL_iv.textFixed();
                        textfixed.text = trim(parseRichText(jSONObject, tL_page));
                        pageblockpreformatted.text = textfixed;
                        pageblockpreformatted.language = _UrlKt.FRAGMENT_ENCODE_SET;
                        arrayList.add(pageblockpreformatted);
                        break;
                    case "table":
                        arrayList.add(parseTable(str, jSONObject, tL_page));
                        break;
                    case "blockquote":
                        TL_iv.pageBlockBlockquote pageblockblockquote = new TL_iv.pageBlockBlockquote();
                        pageblockblockquote.text = trim(parseRichText(jSONObject, tL_page));
                        TL_iv.textItalic textitalic = new TL_iv.textItalic();
                        textitalic.text = pageblockblockquote.text;
                        pageblockblockquote.text = textitalic;
                        arrayList.add(pageblockblockquote);
                        break;
                    case "details":
                        TL_iv.pageBlockDetails details = parseDetails(str, jSONObject, tL_page);
                        if (details != null) {
                            arrayList.add(details);
                            break;
                        } else {
                            break;
                        }
                        break;
                    default:
                        if (jSONArrayOptJSONArray != null) {
                            arrayList.addAll(parsePageBlocks(str, jSONArrayOptJSONArray, tL_page));
                            break;
                        } else {
                            break;
                        }
                        break;
                }
            }
        }
        return arrayList;
    }

    public static TL_iv.RichText applyAnchor(TL_iv.RichText richText, JSONObject jSONObject) {
        if (jSONObject != null) {
            String strOptString = jSONObject.optString("id");
            if (!TextUtils.isEmpty(strOptString)) {
                TL_iv.textAnchor textanchor = new TL_iv.textAnchor();
                textanchor.text = richText;
                textanchor.name = strOptString;
                return textanchor;
            }
        }
        return richText;
    }

    public TL_iv.pageBlockPhoto parseFigure(JSONObject jSONObject, TL_iv.TL_page tL_page) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
        ArrayList arrayList = new ArrayList();
        WebPhoto webPhoto = null;
        int i = 0;
        TL_iv.pageBlockPhoto image = null;
        TL_iv.RichText richTextTrim = null;
        for (int i2 = 0; i2 < jSONArrayOptJSONArray.length(); i2++) {
            Object obj = jSONArrayOptJSONArray.get(i2);
            if (obj instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) obj;
                String strOptString = jSONObject2.optString("tag");
                if ("figurecaption".equalsIgnoreCase(strOptString) || MediaTrack.ROLE_CAPTION.equalsIgnoreCase(strOptString)) {
                    richTextTrim = trim(parseRichText(jSONObject2, tL_page));
                } else if ("img".equalsIgnoreCase(strOptString)) {
                    image = parseImage(jSONObject2, tL_page);
                } else if ("source".equalsIgnoreCase(strOptString)) {
                    String strOptString2 = jSONObject2.optString("src");
                    if (!TextUtils.isEmpty(strOptString2)) {
                        arrayList.add(strOptString2);
                    } else {
                        String strOptString3 = jSONObject2.optString("srcset");
                        if (!TextUtils.isEmpty(strOptString3)) {
                            for (String str : strOptString3.split(",")) {
                                arrayList.add(str.trim().split(" ")[0].trim());
                            }
                        }
                    }
                }
            }
        }
        if (image == null) {
            return null;
        }
        if (richTextTrim != null) {
            TL_iv.PageCaption pageCaption = new TL_iv.PageCaption();
            image.caption = pageCaption;
            pageCaption.text = richTextTrim;
            pageCaption.credit = new TL_iv.textEmpty();
        }
        while (true) {
            if (i >= tL_page.photos.size()) {
                break;
            }
            if ((tL_page.photos.get(i) instanceof WebPhoto) && tL_page.photos.get(i).id == image.photo_id) {
                webPhoto = (WebPhoto) tL_page.photos.get(i);
                break;
            }
            i++;
        }
        if (webPhoto != null) {
            webPhoto.urls.addAll(arrayList);
        }
        return image;
    }

    public TL_iv.pageBlockPhoto parseImage(JSONObject jSONObject, TL_iv.TL_page tL_page) {
        TL_iv.pageBlockPhoto pageblockphoto = new TL_iv.pageBlockPhoto();
        pageblockphoto.caption = new TL_iv.PageCaption();
        String strOptString = jSONObject.optString("alt");
        if (strOptString != null) {
            pageblockphoto.caption.text = trim(parseRichText(strOptString));
            pageblockphoto.caption.credit = trim(parseRichText(_UrlKt.FRAGMENT_ENCODE_SET));
        }
        String strOptString2 = jSONObject.optString("src");
        if (strOptString2 == null) {
            return null;
        }
        WebPhoto webPhoto = new WebPhoto();
        webPhoto.instantView = this;
        webPhoto.id = (-1) - tL_page.photos.size();
        webPhoto.url = strOptString2;
        webPhoto.urls.add(strOptString2);
        try {
            webPhoto.f1277w = Integer.parseInt(jSONObject.optString("width"));
        } catch (Exception unused) {
        }
        try {
            webPhoto.f1276h = Integer.parseInt(jSONObject.optString("height"));
        } catch (Exception unused2) {
        }
        if (webPhoto.f1277w == 0) {
            webPhoto.f1277w = webPhoto.f1276h;
        }
        if (webPhoto.f1276h == 0) {
            webPhoto.f1276h = webPhoto.f1277w;
        }
        pageblockphoto.photo_id = webPhoto.id;
        pageblockphoto.url = strOptString2;
        tL_page.photos.add(webPhoto);
        return pageblockphoto;
    }

    public TL_iv.textImage parseInlineImage(JSONObject jSONObject, TL_iv.TL_page tL_page) {
        TL_iv.textImage textimage = new TL_iv.textImage();
        String strOptString = jSONObject.optString("src");
        if (strOptString == null) {
            return null;
        }
        WebPhoto webPhoto = new WebPhoto();
        webPhoto.instantView = this;
        webPhoto.id = (-1) - tL_page.photos.size();
        webPhoto.url = strOptString;
        webPhoto.urls.add(strOptString);
        try {
            webPhoto.f1277w = Integer.parseInt(jSONObject.optString("width"));
        } catch (Exception unused) {
        }
        try {
            webPhoto.f1276h = Integer.parseInt(jSONObject.optString("height"));
        } catch (Exception unused2) {
        }
        textimage.url = strOptString;
        tL_page.photos.add(webPhoto);
        if (webPhoto.f1277w == 0) {
            webPhoto.f1277w = webPhoto.f1276h;
        }
        if (webPhoto.f1276h == 0) {
            webPhoto.f1276h = webPhoto.f1277w;
        }
        try {
            textimage.f1053w = Integer.parseInt(jSONObject.optString("width"));
        } catch (Exception unused3) {
        }
        try {
            textimage.f1052h = Integer.parseInt(jSONObject.optString("height"));
        } catch (Exception unused4) {
        }
        if (textimage.f1053w == 0) {
            textimage.f1053w = textimage.f1052h;
        }
        if (textimage.f1052h == 0) {
            textimage.f1052h = textimage.f1053w;
        }
        textimage.photo_id = webPhoto.id;
        return textimage;
    }

    public TL_iv.pageBlockDetails parseDetails(String str, JSONObject jSONObject, TL_iv.TL_page tL_page) throws JSONException {
        TL_iv.pageBlockDetails pageblockdetails = new TL_iv.pageBlockDetails();
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            if (i >= jSONArrayOptJSONArray.length()) {
                break;
            }
            Object obj = jSONArrayOptJSONArray.get(i);
            if (obj instanceof JSONObject) {
                JSONObject jSONObject2 = (JSONObject) obj;
                if ("summary".equals(jSONObject2.optString("tag"))) {
                    pageblockdetails.title = trim(parseRichText(jSONObject2, tL_page));
                    jSONArrayOptJSONArray.remove(i);
                    break;
                }
            }
            i++;
        }
        pageblockdetails.blocks.addAll(parsePageBlocks(str, jSONArrayOptJSONArray, tL_page));
        pageblockdetails.open = jSONObject.has("open");
        return pageblockdetails;
    }

    public TL_iv.RichText parseRichText(JSONObject jSONObject, TL_iv.TL_page tL_page) {
        TL_iv.RichText richTextApplyAnchor = applyAnchor(parseRichText(jSONObject.getJSONArray("content"), tL_page), jSONObject);
        if (jSONObject.has("bold")) {
            TL_iv.textBold textbold = new TL_iv.textBold();
            textbold.text = richTextApplyAnchor;
            richTextApplyAnchor = textbold;
        }
        if (!jSONObject.has("italic")) {
            return richTextApplyAnchor;
        }
        TL_iv.textItalic textitalic = new TL_iv.textItalic();
        textitalic.text = richTextApplyAnchor;
        return textitalic;
    }

    public TL_iv.RichText parseRichText(JSONArray jSONArray, TL_iv.TL_page tL_page) throws JSONException {
        JSONObject jSONObject;
        TL_iv.RichText richText;
        TL_iv.RichText richText2;
        ArrayList<TL_iv.RichText> arrayList = new ArrayList<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof String) {
                arrayList.add(parseRichText((String) obj));
            } else {
                jSONObject = (JSONObject) obj;
                String strOptString = jSONObject.optString("tag");
                strOptString.getClass();
                switch (strOptString) {
                    case "strong":
                    case "b":
                        TL_iv.textBold textbold = new TL_iv.textBold();
                        textbold.text = parseRichText(jSONObject, tL_page);
                        richText2 = textbold;
                        break;
                    case "a":
                        String strOptString2 = jSONObject.optString("href");
                        if (strOptString2 == null) {
                            richText2 = parseRichText(jSONObject, tL_page);
                            break;
                        } else {
                            if (strOptString2.startsWith("tel:")) {
                                TL_iv.textPhone textphone = new TL_iv.textPhone();
                                textphone.phone = strOptString2.substring(4);
                                textphone.text = parseRichText(jSONObject, tL_page);
                                richText = textphone;
                            } else if (strOptString2.startsWith("mailto:")) {
                                TL_iv.textEmail textemail = new TL_iv.textEmail();
                                textemail.email = strOptString2.substring(7);
                                textemail.text = parseRichText(jSONObject, tL_page);
                                richText = textemail;
                            } else {
                                TL_iv.textUrl texturl = new TL_iv.textUrl();
                                texturl.url = strOptString2;
                                texturl.text = parseRichText(jSONObject, tL_page);
                                richText = texturl;
                            }
                            richText2 = richText;
                            break;
                        }
                        break;
                    case "i":
                        TL_iv.textItalic textitalic = new TL_iv.textItalic();
                        textitalic.text = parseRichText(jSONObject, tL_page);
                        richText2 = textitalic;
                        break;
                    case "p":
                        if (!arrayList.isEmpty()) {
                            addNewLine(arrayList.get(arrayList.size() - 1));
                        }
                        richText2 = parseRichText(jSONObject, tL_page);
                        break;
                    case "s":
                        TL_iv.textStrike textstrike = new TL_iv.textStrike();
                        textstrike.text = parseRichText(jSONObject, tL_page);
                        richText2 = textstrike;
                        break;
                    case "br":
                        if (!arrayList.isEmpty()) {
                            addNewLine(arrayList.get(arrayList.size() - 1));
                        }
                        richText2 = null;
                        break;
                    case "img":
                        if (!arrayList.isEmpty()) {
                            addLastSpace(arrayList.get(arrayList.size() - 1));
                        }
                        richText2 = parseInlineImage(jSONObject, tL_page);
                        break;
                    case "pre":
                    case "code":
                        TL_iv.textFixed textfixed = new TL_iv.textFixed();
                        textfixed.text = parseRichText(jSONObject, tL_page);
                        richText2 = textfixed;
                        break;
                    case "sub":
                        TL_iv.textSubscript textsubscript = new TL_iv.textSubscript();
                        textsubscript.text = parseRichText(jSONObject, tL_page);
                        richText2 = textsubscript;
                        break;
                    case "sup":
                        TL_iv.textSuperscript textsuperscript = new TL_iv.textSuperscript();
                        textsuperscript.text = parseRichText(jSONObject, tL_page);
                        richText2 = textsuperscript;
                        break;
                    case "mark":
                        TL_iv.textMarked textmarked = new TL_iv.textMarked();
                        textmarked.text = parseRichText(jSONObject, tL_page);
                        richText2 = textmarked;
                        break;
                    default:
                        richText2 = parseRichText(jSONObject, tL_page);
                        break;
                }
                if (richText2 != null) {
                    arrayList.add(applyAnchor(richText2, jSONObject));
                }
            }
        }
        if (arrayList.isEmpty()) {
            return new TL_iv.textEmpty();
        }
        if (arrayList.size() == 1) {
            return arrayList.get(0);
        }
        TL_iv.textConcat textconcat = new TL_iv.textConcat();
        textconcat.texts = arrayList;
        return textconcat;
    }

    public static TL_iv.RichText addLastSpace(TL_iv.RichText richText) {
        TL_iv.textPlain textplain;
        String str;
        if (richText == null) {
            return richText;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            addLastSpace(richText2);
            return richText;
        }
        if (!richText.texts.isEmpty()) {
            addLastSpace(richText.texts.get(r0.size() - 1));
            return richText;
        }
        if ((richText instanceof TL_iv.textPlain) && (str = (textplain = (TL_iv.textPlain) richText).text) != null && !str.endsWith(" ")) {
            textplain.text += ' ';
        }
        return richText;
    }

    public static TL_iv.RichText addNewLine(TL_iv.RichText richText) {
        if (richText == null) {
            return richText;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            addNewLine(richText2);
            return richText;
        }
        if (!richText.texts.isEmpty()) {
            addNewLine(richText.texts.get(r0.size() - 1));
            return richText;
        }
        if (richText instanceof TL_iv.textPlain) {
            StringBuilder sb = new StringBuilder();
            TL_iv.textPlain textplain = (TL_iv.textPlain) richText;
            sb.append(textplain.text);
            sb.append('\n');
            textplain.text = sb.toString();
        }
        return richText;
    }

    public static TL_iv.RichText trimStart(TL_iv.RichText richText) {
        TL_iv.textPlain textplain;
        String str;
        if (richText == null) {
            return richText;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            trimStart(richText2);
            return richText;
        }
        if (!richText.texts.isEmpty()) {
            trimStart(richText.texts.get(0));
            return richText;
        }
        if ((richText instanceof TL_iv.textPlain) && (str = (textplain = (TL_iv.textPlain) richText).text) != null) {
            textplain.text = str.replaceAll("^\\s+", _UrlKt.FRAGMENT_ENCODE_SET);
        }
        return richText;
    }

    public static TL_iv.RichText trim(TL_iv.RichText richText) {
        TL_iv.textPlain textplain;
        String str;
        if (richText == null) {
            return richText;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            trim(richText2);
            return richText;
        }
        int size = richText.texts.size();
        ArrayList<TL_iv.RichText> arrayList = richText.texts;
        if (size == 1) {
            trim(arrayList.get(0));
            return richText;
        }
        if (!arrayList.isEmpty()) {
            trimStart(richText.texts.get(0));
            ArrayList<TL_iv.RichText> arrayList2 = richText.texts;
            trimEnd(arrayList2.get(arrayList2.size() - 1));
            return richText;
        }
        if ((richText instanceof TL_iv.textPlain) && (str = (textplain = (TL_iv.textPlain) richText).text) != null) {
            textplain.text = str.trim();
        }
        return richText;
    }

    public static TL_iv.RichText trimEnd(TL_iv.RichText richText) {
        TL_iv.textPlain textplain;
        String str;
        if (richText == null) {
            return richText;
        }
        TL_iv.RichText richText2 = richText.text;
        if (richText2 != null) {
            trimEnd(richText2);
            return richText;
        }
        if (!richText.texts.isEmpty()) {
            trimEnd(richText.texts.get(r0.size() - 1));
            return richText;
        }
        if ((richText instanceof TL_iv.textPlain) && (str = (textplain = (TL_iv.textPlain) richText).text) != null) {
            textplain.text = str.replaceAll("\\s+$", _UrlKt.FRAGMENT_ENCODE_SET);
        }
        return richText;
    }

    public static TL_iv.RichText parseRichText(String str) {
        TL_iv.textPlain textplain = new TL_iv.textPlain();
        textplain.text = str;
        return textplain;
    }

    public TL_iv.pageBlockTable parseTable(String str, JSONObject jSONObject, TL_iv.TL_page tL_page) throws JSONException {
        TL_iv.pageBlockTable pageblocktable = new TL_iv.pageBlockTable();
        pageblocktable.bordered = true;
        pageblocktable.striped = true;
        String strOptString = jSONObject.optString("title");
        if (strOptString == null) {
            strOptString = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        pageblocktable.title = trim(applyAnchor(parseRichText(strOptString), jSONObject));
        pageblocktable.rows.addAll(parseTableRows(str, jSONObject.getJSONArray("content"), tL_page));
        return pageblocktable;
    }

    public ArrayList<TL_iv.pageTableRow> parseTableRows(String str, JSONArray jSONArray, TL_iv.TL_page tL_page) throws JSONException {
        ArrayList<TL_iv.pageTableRow> arrayList = new ArrayList<>();
        new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (obj instanceof JSONObject) {
                JSONObject jSONObject = (JSONObject) obj;
                if ("tr".equals(jSONObject.optString("tag"))) {
                    arrayList.add(parseTableRow(str, jSONObject, tL_page));
                } else {
                    JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("content");
                    if (jSONArrayOptJSONArray != null) {
                        arrayList.addAll(parseTableRows(str, jSONArrayOptJSONArray, tL_page));
                    }
                }
            }
        }
        return arrayList;
    }

    public TL_iv.pageTableRow parseTableRow(String str, JSONObject jSONObject, TL_iv.TL_page tL_page) throws JSONException {
        JSONObject jSONObject2;
        String strOptString;
        TL_iv.pageTableRow pagetablerow = new TL_iv.pageTableRow();
        JSONArray jSONArray = jSONObject.getJSONArray("content");
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if ((obj instanceof JSONObject) && (strOptString = (jSONObject2 = (JSONObject) obj).optString("tag")) != null && ("td".equals(strOptString) || "th".equals(strOptString))) {
                TL_iv.pageTableCell pagetablecell = new TL_iv.pageTableCell();
                pagetablecell.header = "th".equals(strOptString);
                try {
                    pagetablecell.colspan = Integer.parseInt(jSONObject2.optString("colspan"));
                    pagetablecell.flags |= 2;
                } catch (Exception unused) {
                }
                try {
                    pagetablecell.rowspan = Integer.parseInt(jSONObject2.optString("rowspan"));
                    pagetablecell.flags |= 4;
                } catch (Exception unused2) {
                }
                pagetablecell.text = trim(parseRichText(jSONObject2.getJSONArray("content"), tL_page));
                if (jSONObject2.has("bold") || pagetablecell.header) {
                    TL_iv.textBold textbold = new TL_iv.textBold();
                    textbold.text = pagetablecell.text;
                    pagetablecell.text = textbold;
                }
                if (jSONObject2.has("italic")) {
                    TL_iv.textItalic textitalic = new TL_iv.textItalic();
                    textitalic.text = pagetablecell.text;
                    pagetablecell.text = textitalic;
                }
                pagetablecell.align_center = jSONObject2.has("xcenter");
                pagetablerow.cells.add(pagetablecell);
            }
        }
        return pagetablerow;
    }

    public boolean isInline(JSONArray jSONArray) throws JSONException {
        List listAsList = Arrays.asList("b", "strong", "span", "img", "i", "s", "a", "code", "mark", "sub", "sup");
        for (int i = 0; i < jSONArray.length(); i++) {
            Object obj = jSONArray.get(i);
            if (!(obj instanceof String)) {
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject = (JSONObject) obj;
                    String strOptString = jSONObject.optString("tag");
                    if (!listAsList.contains(strOptString)) {
                        if ("div".equalsIgnoreCase(strOptString) || "span".equalsIgnoreCase(strOptString)) {
                            isInline(jSONObject.optJSONArray("content"));
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public TL_iv.PageBlock parseList(String str, JSONObject jSONObject, TL_iv.TL_page tL_page) throws JSONException {
        int i = 0;
        if ("ol".equals(jSONObject.optString("tag"))) {
            TL_iv.pageBlockOrderedList pageblockorderedlist = new TL_iv.pageBlockOrderedList();
            JSONArray jSONArray = jSONObject.getJSONArray("content");
            while (i < jSONArray.length()) {
                Object obj = jSONArray.get(i);
                if (obj instanceof JSONObject) {
                    JSONObject jSONObject2 = (JSONObject) obj;
                    if ("li".equals(jSONObject2.optString("tag"))) {
                        JSONArray jSONArrayOptJSONArray = jSONObject2.optJSONArray("content");
                        if (isInline(jSONArrayOptJSONArray)) {
                            TL_iv.TL_pageListOrderedItemText tL_pageListOrderedItemText = new TL_iv.TL_pageListOrderedItemText();
                            tL_pageListOrderedItemText.text = parseRichText(jSONArrayOptJSONArray, tL_page);
                            pageblockorderedlist.items.add(tL_pageListOrderedItemText);
                        } else {
                            TL_iv.TL_pageListOrderedItemBlocks tL_pageListOrderedItemBlocks = new TL_iv.TL_pageListOrderedItemBlocks();
                            tL_pageListOrderedItemBlocks.blocks.addAll(parsePageBlocks(str, jSONArrayOptJSONArray, tL_page));
                            pageblockorderedlist.items.add(tL_pageListOrderedItemBlocks);
                        }
                    }
                }
                i++;
            }
            return pageblockorderedlist;
        }
        TL_iv.pageBlockList pageblocklist = new TL_iv.pageBlockList();
        JSONArray jSONArray2 = jSONObject.getJSONArray("content");
        while (i < jSONArray2.length()) {
            Object obj2 = jSONArray2.get(i);
            if (obj2 instanceof JSONObject) {
                JSONObject jSONObject3 = (JSONObject) obj2;
                if ("li".equals(jSONObject3.optString("tag"))) {
                    JSONArray jSONArrayOptJSONArray2 = jSONObject3.optJSONArray("content");
                    if (isInline(jSONArrayOptJSONArray2)) {
                        TL_iv.TL_pageListItemText tL_pageListItemText = new TL_iv.TL_pageListItemText();
                        tL_pageListItemText.text = parseRichText(jSONArrayOptJSONArray2, tL_page);
                        pageblocklist.items.add(tL_pageListItemText);
                    } else {
                        TL_iv.TL_pageListItemBlocks tL_pageListItemBlocks = new TL_iv.TL_pageListItemBlocks();
                        tL_pageListItemBlocks.blocks.addAll(parsePageBlocks(str, jSONArrayOptJSONArray2, tL_page));
                        pageblocklist.items.add(tL_pageListItemBlocks);
                    }
                }
            }
            i++;
        }
        return pageblocklist;
    }

    /* JADX INFO: loaded from: classes8.dex */
    public static class Loader {
        private Runnable cancelLocal;
        private boolean cancelled;
        private final int currentAccount;
        public boolean currentIsLoaded;
        public float currentProgress;
        public String currentUrl;
        private boolean gotLocal;
        private boolean gotRemote;
        private final ArrayList<Runnable> listeners = new ArrayList<>();
        private TLRPC.WebPage localPage;
        private TLRPC.WebPage remotePage;
        private int reqId;
        private boolean started;

        public Loader(int i) {
            this.currentAccount = i;
        }

        public void retryLocal(BotWebViewContainer.MyWebView myWebView) {
            if (this.cancelled) {
                return;
            }
            TLRPC.WebPage webPage = this.localPage;
            if (webPage != null) {
                WebInstantView.recycle(webPage);
                this.localPage = null;
            }
            this.gotLocal = false;
            this.currentUrl = myWebView.getUrl();
            this.currentProgress = myWebView.getProgress();
            this.currentIsLoaded = myWebView.isPageLoaded();
            Runnable runnable = this.cancelLocal;
            if (runnable != null) {
                runnable.run();
            }
            this.cancelLocal = WebInstantView.generate(myWebView, false, new Utilities.Callback() { // from class: org.telegram.ui.web.WebInstantView$Loader$$ExternalSyntheticLambda2
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$retryLocal$0((WebInstantView) obj);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$retryLocal$0(WebInstantView webInstantView) {
            this.cancelLocal = null;
            this.gotLocal = true;
            TLRPC.WebPage webPage = this.localPage;
            if (webPage != null) {
                WebInstantView.recycle(webPage);
            }
            this.localPage = webInstantView.webpage;
            notifyUpdate();
        }

        public void start(BotWebViewContainer.MyWebView myWebView) {
            if (this.started) {
                return;
            }
            this.started = true;
            this.currentUrl = myWebView.getUrl();
            this.currentProgress = myWebView.getProgress();
            this.currentIsLoaded = myWebView.isPageLoaded();
            this.cancelLocal = WebInstantView.generate(myWebView, false, new Utilities.Callback() { // from class: org.telegram.ui.web.WebInstantView$Loader$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback
                public final void run(Object obj) {
                    this.f$0.lambda$start$1((WebInstantView) obj);
                }
            });
            TLRPC.TL_messages_getWebPage tL_messages_getWebPage = new TLRPC.TL_messages_getWebPage();
            tL_messages_getWebPage.url = this.currentUrl;
            tL_messages_getWebPage.hash = 0;
            this.reqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tL_messages_getWebPage, new RequestDelegate() { // from class: org.telegram.ui.web.WebInstantView$Loader$$ExternalSyntheticLambda1
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$start$3(tLObject, tL_error);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$1(WebInstantView webInstantView) {
            this.cancelLocal = null;
            this.gotLocal = true;
            TLRPC.WebPage webPage = this.localPage;
            if (webPage != null) {
                WebInstantView.recycle(webPage);
            }
            this.localPage = webInstantView.webpage;
            notifyUpdate();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$start$3(final TLObject tLObject, TLRPC.TL_error tL_error) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebInstantView$Loader$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$start$2(tLObject);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:10:0x0035  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public /* synthetic */ void lambda$start$2(TLObject tLObject) {
            Runnable runnable;
            this.gotRemote = true;
            if (tLObject instanceof TLRPC.TL_messages_webPage) {
                TLRPC.TL_messages_webPage tL_messages_webPage = (TLRPC.TL_messages_webPage) tLObject;
                MessagesController.getInstance(this.currentAccount).putUsers(tL_messages_webPage.users, false);
                MessagesController.getInstance(this.currentAccount).putChats(tL_messages_webPage.chats, false);
                this.remotePage = tL_messages_webPage.webpage;
            } else if (tLObject instanceof TLRPC.TL_webPage) {
                TLRPC.TL_webPage tL_webPage = (TLRPC.TL_webPage) tLObject;
                if (tL_webPage.cached_page instanceof TL_iv.TL_page) {
                    this.remotePage = tL_webPage;
                } else {
                    this.remotePage = null;
                }
            }
            TLRPC.WebPage webPage = this.remotePage;
            if (webPage != null && webPage.cached_page == null) {
                this.remotePage = null;
            }
            if (!SharedConfig.onlyLocalInstantView && this.remotePage != null && (runnable = this.cancelLocal) != null) {
                runnable.run();
            }
            notifyUpdate();
        }

        public boolean isDone() {
            return (this.gotRemote && this.gotLocal) || this.remotePage != null || this.localPage != null || this.cancelled;
        }

        public TLRPC.WebPage getWebPage() {
            TLRPC.WebPage webPage;
            if (!SharedConfig.onlyLocalInstantView && (webPage = this.remotePage) != null) {
                return webPage;
            }
            TLRPC.WebPage webPage2 = this.localPage;
            if (webPage2 != null) {
                return webPage2;
            }
            return null;
        }

        public void cancel() {
            Runnable runnable;
            if (this.cancelled) {
                return;
            }
            this.cancelled = true;
            if (!this.gotRemote) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.reqId, true);
            }
            if (this.gotLocal || (runnable = this.cancelLocal) == null) {
                return;
            }
            runnable.run();
        }

        public void recycle() {
            TLRPC.WebPage webPage = this.localPage;
            if (webPage != null) {
                WebInstantView.recycle(webPage);
                this.localPage = null;
            }
        }

        public Runnable listen(final Runnable runnable) {
            this.listeners.add(runnable);
            return new Runnable() { // from class: org.telegram.ui.web.WebInstantView$Loader$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$listen$4(runnable);
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$listen$4(Runnable runnable) {
            this.listeners.remove(runnable);
        }

        private void notifyUpdate() {
            ArrayList<Runnable> arrayList = this.listeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Runnable runnable = arrayList.get(i);
                i++;
                runnable.run();
            }
        }
    }

    public static TL_iv.RichText filterRecursiveAnchorLinks(TL_iv.RichText richText, String str, String str2) {
        TL_iv.textUrl texturl;
        String str3;
        if (richText == null) {
            return richText;
        }
        if (richText instanceof TL_iv.textConcat) {
            TL_iv.textConcat textconcat = (TL_iv.textConcat) richText;
            TL_iv.textConcat textconcat2 = new TL_iv.textConcat();
            for (int i = 0; i < textconcat.texts.size(); i++) {
                TL_iv.RichText richTextFilterRecursiveAnchorLinks = filterRecursiveAnchorLinks(textconcat.texts.get(i), str, str2);
                if (richTextFilterRecursiveAnchorLinks != null) {
                    textconcat2.texts.add(richTextFilterRecursiveAnchorLinks);
                }
            }
            return textconcat2;
        }
        if (!(richText instanceof TL_iv.textUrl) || (str3 = (texturl = (TL_iv.textUrl) richText).url) == null) {
            return richText;
        }
        if (!str3.toLowerCase().equals("#" + str2)) {
            if (!TextUtils.equals(texturl.url.toLowerCase(), str + "#" + str2)) {
                return richText;
            }
        }
        return null;
    }
}
