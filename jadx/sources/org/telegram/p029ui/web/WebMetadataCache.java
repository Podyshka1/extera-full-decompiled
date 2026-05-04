package org.telegram.p029ui.web;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import androidx.annotation.Keep;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.BuildVars;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Components.LayoutHelper;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.web.BotWebViewContainer;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.SerializedData;
import org.telegram.tgnet.TLObject;

/* JADX INFO: loaded from: classes7.dex */
public class WebMetadataCache {
    private static WebMetadataCache instance;
    private HashMap cache;
    private boolean loaded;
    private boolean loading;
    private boolean saving;

    /* JADX INFO: renamed from: $r8$lambda$hGKEBwZ-3Lbre7Hy0YG0iTwqWDs, reason: not valid java name */
    public static /* synthetic */ void m20832$r8$lambda$hGKEBwZ3Lbre7Hy0YG0iTwqWDs(String str) {
    }

    public static WebMetadataCache getInstance() {
        if (instance == null) {
            instance = new WebMetadataCache();
        }
        return instance;
    }

    public static class WebMetadata extends TLObject {
        public int actionBarColor;
        public int backgroundColor;
        public String domain;
        public Bitmap favicon;
        public byte[] faviconBytes;
        public String sitename;
        public long time = System.currentTimeMillis();
        public String title;

        public static WebMetadata from(BotWebViewContainer.MyWebView myWebView) {
            WebMetadata webMetadata = new WebMetadata();
            String hostAuthority = AndroidUtilities.getHostAuthority(myWebView.getUrl(), true);
            webMetadata.domain = hostAuthority;
            if (TextUtils.isEmpty(hostAuthority)) {
                return null;
            }
            if (myWebView.lastTitleGot) {
                webMetadata.title = myWebView.lastTitle;
            }
            webMetadata.sitename = myWebView.lastSiteName;
            if (myWebView.lastActionBarColorGot) {
                webMetadata.actionBarColor = myWebView.lastActionBarColor;
            }
            if (myWebView.lastBackgroundColorGot) {
                webMetadata.backgroundColor = myWebView.lastBackgroundColor;
            }
            if (myWebView.lastFaviconGot) {
                webMetadata.favicon = myWebView.lastFavicon;
            }
            return webMetadata;
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt64(this.time);
            String str = this.domain;
            String str2 = _UrlKt.FRAGMENT_ENCODE_SET;
            if (str == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            outputSerializedData.writeString(str);
            String str3 = this.title;
            if (str3 == null) {
                str3 = _UrlKt.FRAGMENT_ENCODE_SET;
            }
            outputSerializedData.writeString(str3);
            String str4 = this.sitename;
            if (str4 != null) {
                str2 = str4;
            }
            outputSerializedData.writeString(str2);
            outputSerializedData.writeInt32(this.actionBarColor);
            outputSerializedData.writeInt32(this.backgroundColor);
            if (this.favicon == null) {
                outputSerializedData.writeInt32(1450380236);
                return;
            }
            outputSerializedData.writeInt32(953850003);
            byte[] bArr = this.faviconBytes;
            if (bArr != null) {
                outputSerializedData.writeByteArray(bArr);
                return;
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            if (Build.VERSION.SDK_INT >= 30) {
                this.favicon.compress(Bitmap.CompressFormat.WEBP_LOSSY, 80, byteArrayOutputStream);
            } else {
                this.favicon.compress(Bitmap.CompressFormat.WEBP, 80, byteArrayOutputStream);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            this.faviconBytes = byteArray;
            outputSerializedData.writeByteArray(byteArray);
            try {
                byteArrayOutputStream.close();
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            this.time = inputSerializedData.readInt64(z);
            this.domain = inputSerializedData.readString(z);
            this.title = inputSerializedData.readString(z);
            this.sitename = inputSerializedData.readString(z);
            this.actionBarColor = inputSerializedData.readInt32(z);
            this.backgroundColor = inputSerializedData.readInt32(z);
            if (inputSerializedData.readInt32(z) == 1450380236) {
                this.favicon = null;
            } else {
                this.faviconBytes = inputSerializedData.readByteArray(z);
                this.favicon = BitmapFactory.decodeStream(new ByteArrayInputStream(this.faviconBytes));
            }
        }
    }

    private static final class MetadataFile extends TLObject {
        public final ArrayList array;

        private MetadataFile() {
            this.array = new ArrayList();
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(this.array.size());
            for (int i = 0; i < this.array.size(); i++) {
                ((WebMetadata) this.array.get(i)).serializeToStream(outputSerializedData);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            for (int i = 0; i < int32; i++) {
                WebMetadata webMetadata = new WebMetadata();
                webMetadata.readParams(inputSerializedData, z);
                if (TextUtils.isEmpty(webMetadata.domain)) {
                    return;
                }
                this.array.add(webMetadata);
            }
        }
    }

    public File getCacheFile() {
        return new File(FileLoader.getDirectory(4), "webmetacache.dat");
    }

    public WebMetadata get(String str) {
        load();
        WebMetadata webMetadata = (WebMetadata) this.cache.get(str);
        if (webMetadata == null) {
            return null;
        }
        webMetadata.time = Math.max(webMetadata.time, System.currentTimeMillis());
        scheduleSave();
        return webMetadata;
    }

    public void save(WebMetadata webMetadata) {
        if (webMetadata == null) {
            return;
        }
        if (this.cache == null) {
            this.cache = new HashMap();
        }
        if (TextUtils.isEmpty(webMetadata.domain)) {
            return;
        }
        this.cache.put(webMetadata.domain, webMetadata);
        load();
        scheduleSave();
    }

    public void load() {
        if (this.loaded || this.loading) {
            return;
        }
        this.loading = true;
        if (this.cache == null) {
            this.cache = new HashMap();
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$1();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$1() {
        File cacheFile = getCacheFile();
        if (!cacheFile.exists()) {
            this.loaded = true;
            return;
        }
        final ArrayList arrayList = new ArrayList();
        try {
            SerializedData serializedData = new SerializedData(cacheFile);
            MetadataFile metadataFile = new MetadataFile();
            metadataFile.readParams(serializedData, true);
            arrayList.addAll(metadataFile.array);
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$load$0(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$load$0(ArrayList arrayList) {
        for (int i = 0; i < arrayList.size(); i++) {
            WebMetadata webMetadata = (WebMetadata) arrayList.get(i);
            this.cache.put(webMetadata.domain, webMetadata);
        }
        this.loaded = true;
        this.loading = false;
    }

    public void scheduleSave() {
        AndroidUtilities.cancelRunOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.save();
            }
        });
        if (this.saving) {
            return;
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.save();
            }
        }, BuildVars.DEBUG_PRIVATE_VERSION ? 1L : 1000L);
    }

    public void save() {
        if (this.saving) {
            return;
        }
        this.saving = true;
        long jCurrentTimeMillis = System.currentTimeMillis();
        final ArrayList arrayList = new ArrayList();
        for (WebMetadata webMetadata : this.cache.values()) {
            if (!TextUtils.isEmpty(webMetadata.domain) && jCurrentTimeMillis - webMetadata.time <= 604800000) {
                arrayList.add(0, webMetadata);
                if (arrayList.size() >= 100) {
                    break;
                }
            }
        }
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$save$3(arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$3(ArrayList arrayList) {
        File cacheFile = getCacheFile();
        if (!cacheFile.exists()) {
            try {
                cacheFile.createNewFile();
            } catch (Exception e) {
                FileLog.m1136e(e);
                this.saving = false;
                return;
            }
        }
        MetadataFile metadataFile = new MetadataFile();
        metadataFile.array.addAll(arrayList);
        SerializedData serializedData = new SerializedData(metadataFile.getObjectSize());
        metadataFile.serializeToStream(serializedData);
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(cacheFile);
            fileOutputStream.write(serializedData.toByteArray());
            fileOutputStream.close();
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$save$2();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$save$2() {
        this.saving = false;
    }

    public void clear() {
        HashMap map = this.cache;
        if (map == null) {
            this.loading = false;
            this.loaded = true;
            this.cache = new HashMap();
        } else {
            map.clear();
        }
        scheduleSave();
    }

    /* JADX INFO: Access modifiers changed from: private */
    static class SitenameProxy {
        private final Utilities.Callback whenReceived;

        public SitenameProxy(Utilities.Callback callback) {
            this.whenReceived = callback;
        }

        @JavascriptInterface
        @Keep
        public void post(final String str, final String str2) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$SitenameProxy$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$post$0(str, str2);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$post$0(String str, String str2) {
            str.getClass();
            if (str.equals("siteNameEmpty")) {
                this.whenReceived.run(null);
            } else if (str.equals("siteName")) {
                this.whenReceived.run(str2);
            }
        }
    }

    public static void retrieveFaviconAndSitename(final String str, final Utilities.Callback2 callback2) {
        if (callback2 == null) {
            return;
        }
        Context context = LaunchActivity.instance;
        if (context == null) {
            context = ApplicationLoader.applicationContext;
        }
        Activity activityFindActivity = AndroidUtilities.findActivity(context);
        if (activityFindActivity == null) {
            callback2.run(null, null);
            return;
        }
        View rootView = activityFindActivity.findViewById(R.id.content).getRootView();
        if (!(rootView instanceof ViewGroup)) {
            callback2.run(null, null);
            return;
        }
        final FrameLayout frameLayout = new FrameLayout(context) { // from class: org.telegram.ui.web.WebMetadataCache.1
            @Override // android.view.ViewGroup, android.view.View
            public boolean dispatchTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.view.ViewGroup
            protected boolean drawChild(Canvas canvas, View view, long j) {
                return false;
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return false;
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i, int i2) {
                super.onMeasure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(500.0f), TLObject.FLAG_30), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m1124dp(500.0f), TLObject.FLAG_30));
            }
        };
        ((ViewGroup) rootView).addView(frameLayout);
        final WebView webView = new WebView(context);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setGeolocationEnabled(false);
        settings.setDomStorageEnabled(true);
        settings.setDatabaseEnabled(false);
        settings.setSupportMultipleWindows(false);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setCacheMode(1);
        settings.setSaveFormData(false);
        settings.setSavePassword(false);
        webView.setVerticalScrollBarEnabled(false);
        try {
            settings.setUserAgentString(settings.getUserAgentString().replace("; wv)", ")"));
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        final boolean[] zArr = {false};
        final String[] strArr = {null};
        final Bitmap[] bitmapArr = {null};
        final Utilities.Callback callback = new Utilities.Callback() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda5
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WebMetadataCache.$r8$lambda$0jzBBAgSj89vS1Cu70FDhgSMQos(zArr, strArr, bitmapArr, str, webView, frameLayout, callback2, (Boolean) obj);
            }
        };
        webView.setWebChromeClient(new WebChromeClient() { // from class: org.telegram.ui.web.WebMetadataCache.2
            @Override // android.webkit.WebChromeClient
            public void onReceivedIcon(WebView webView2, Bitmap bitmap) {
                if (bitmap == null) {
                    return;
                }
                Bitmap bitmap2 = bitmapArr[0];
                if (bitmap2 == null || (bitmap2.getWidth() < bitmap.getWidth() && bitmapArr[0].getHeight() < bitmap.getHeight())) {
                    bitmapArr[0] = bitmap;
                    callback.run(Boolean.FALSE);
                }
            }
        });
        final Runnable runnable = new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                webView.evaluateJavascript(AndroidUtilities.readRes(C2888R.raw.webview_ext).replace("$DEBUG$", _UrlKt.FRAGMENT_ENCODE_SET + BuildVars.DEBUG_VERSION), new ValueCallback() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda9
                    @Override // android.webkit.ValueCallback
                    public final void onReceiveValue(Object obj) {
                        WebMetadataCache.m20832$r8$lambda$hGKEBwZ3Lbre7Hy0YG0iTwqWDs((String) obj);
                    }
                });
            }
        };
        webView.setWebViewClient(new WebViewClient() { // from class: org.telegram.ui.web.WebMetadataCache.3
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str2) {
                super.onPageFinished(webView2, str2);
                runnable.run();
            }
        });
        webView.addJavascriptInterface(new SitenameProxy(new Utilities.Callback() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                WebMetadataCache.m20831$r8$lambda$ZoyHLRb3wsdEQOnB35Kd28P3WY(strArr, callback, (String) obj);
            }
        }), "TelegramWebview");
        frameLayout.addView(webView, LayoutHelper.createFrame(-1, -1.0f));
        webView.loadUrl(str);
        runnable.run();
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.web.WebMetadataCache$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                callback.run(Boolean.TRUE);
            }
        }, 10000L);
    }

    public static /* synthetic */ void $r8$lambda$0jzBBAgSj89vS1Cu70FDhgSMQos(boolean[] zArr, String[] strArr, Bitmap[] bitmapArr, String str, WebView webView, FrameLayout frameLayout, Utilities.Callback2 callback2, Boolean bool) {
        Bitmap bitmap;
        if (zArr[0]) {
            return;
        }
        if (bool.booleanValue() || (!TextUtils.isEmpty(strArr[0]) && (bitmap = bitmapArr[0]) != null && bitmap.getWidth() > AndroidUtilities.m1124dp(28.0f) && bitmapArr[0].getHeight() > AndroidUtilities.m1124dp(28.0f))) {
            zArr[0] = true;
            WebMetadata webMetadata = new WebMetadata();
            webMetadata.domain = AndroidUtilities.getHostAuthority(str, true);
            webMetadata.sitename = strArr[0];
            Bitmap bitmap2 = bitmapArr[0];
            if (bitmap2 != null) {
                webMetadata.favicon = Bitmap.createBitmap(bitmap2);
            }
            getInstance().save(webMetadata);
            webView.destroy();
            AndroidUtilities.removeFromParent(webView);
            AndroidUtilities.removeFromParent(frameLayout);
            callback2.run(strArr[0], bitmapArr[0]);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.webViewResolved, str);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$ZoyHLRb3wsdEQOnB-35Kd28P3WY, reason: not valid java name */
    public static /* synthetic */ void m20831$r8$lambda$ZoyHLRb3wsdEQOnB35Kd28P3WY(String[] strArr, Utilities.Callback callback, String str) {
        strArr[0] = str;
        callback.run(Boolean.FALSE);
    }
}
