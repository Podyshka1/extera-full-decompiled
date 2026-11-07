package androidx.webkit;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.webkit.WebView;
import androidx.webkit.internal.ApiHelperForO;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import androidx.webkit.internal.WebViewProviderAdapter;
import androidx.webkit.internal.WebViewProviderFactory;
import java.lang.reflect.InvocationTargetException;
import java.util.Set;
import java.util.WeakHashMap;
import okhttp3.internal.url._UrlKt;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: loaded from: classes4.dex */
public abstract class WebViewCompat {
    private static final Uri WILDCARD_URI = Uri.parse("*");
    private static final Uri EMPTY_URI = Uri.parse(_UrlKt.FRAGMENT_ENCODE_SET);
    private static final WeakHashMap<WebView, WebViewProviderAdapter> sProviderAdapterCache = new WeakHashMap<>();

    public interface WebMessageListener {
        void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy);
    }

    public static PackageInfo getCurrentLoadedWebViewPackage() {
        if (Build.VERSION.SDK_INT >= 26) {
            return ApiHelperForO.getCurrentWebViewPackage();
        }
        try {
            return getLoadedWebViewPackageInfo();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @SuppressLint({"PrivateApi", "BanUncheckedReflection"})
    private static PackageInfo getLoadedWebViewPackageInfo() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
    }

    private static WebViewProviderAdapter getProvider(WebView webView) {
        if (WebViewFeatureInternal.PROVIDER_WEAKLY_REF_WEBVIEW.isSupportedByWebView()) {
            WeakHashMap<WebView, WebViewProviderAdapter> weakHashMap = sProviderAdapterCache;
            WebViewProviderAdapter webViewProviderAdapter = weakHashMap.get(webView);
            if (webViewProviderAdapter != null) {
                return webViewProviderAdapter;
            }
            WebViewProviderAdapter webViewProviderAdapter2 = new WebViewProviderAdapter(createProvider(webView));
            weakHashMap.put(webView, webViewProviderAdapter2);
            return webViewProviderAdapter2;
        }
        return new WebViewProviderAdapter(createProvider(webView));
    }

    public static void addWebMessageListener(WebView webView, String str, Set<String> set, WebMessageListener webMessageListener) {
        if (WebViewFeatureInternal.WEB_MESSAGE_LISTENER.isSupportedByWebView()) {
            getProvider(webView).addWebMessageListener(str, (String[]) set.toArray(new String[0]), webMessageListener);
            return;
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static ScriptHandler addDocumentStartJavaScript(WebView webView, String str, Set<String> set) {
        if (WebViewFeatureInternal.DOCUMENT_START_SCRIPT.isSupportedByWebView()) {
            return getProvider(webView).addDocumentStartJavaScript(str, (String[]) set.toArray(new String[0]));
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    public static boolean isMultiProcessEnabled() {
        if (WebViewFeatureInternal.MULTI_PROCESS.isSupportedByWebView()) {
            return getFactory().getStatics().isMultiProcessEnabled();
        }
        throw WebViewFeatureInternal.getUnsupportedOperationException();
    }

    private static WebViewProviderFactory getFactory() {
        return WebViewGlueCommunicator.getFactory();
    }

    private static WebViewProviderBoundaryInterface createProvider(WebView webView) {
        return getFactory().createWebView(webView);
    }
}
