package androidx.webkit.internal;

import android.annotation.SuppressLint;
import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.core.content.pm.PackageInfoCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.StartupApiFeature;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mvel2.MVEL$$ExternalSyntheticBUOutline0;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"UnsafeOptInUsageError"})
public abstract class WebViewFeatureInternal {
    public static final ApiFeature.C1041M VISUAL_STATE_CALLBACK = new ApiFeature.C1041M("VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK");
    public static final ApiFeature.C1041M OFF_SCREEN_PRERASTER = new ApiFeature.C1041M("OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER");
    public static final ApiFeature.C1043O SAFE_BROWSING_ENABLE = new ApiFeature.C1043O("SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE");
    public static final ApiFeature.C1042N DISABLED_ACTION_MODE_MENU_ITEMS = new ApiFeature.C1042N("DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS");
    public static final ApiFeature.O_MR1 START_SAFE_BROWSING = new ApiFeature.O_MR1("START_SAFE_BROWSING", "START_SAFE_BROWSING");

    @Deprecated
    public static final ApiFeature.O_MR1 SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_DEPRECATED = new ApiFeature.O_MR1("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST");

    @Deprecated
    public static final ApiFeature.O_MR1 SAFE_BROWSING_ALLOWLIST_DEPRECATED_TO_PREFERRED = new ApiFeature.O_MR1("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_ALLOWLIST");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_DEPRECATED = new ApiFeature.O_MR1("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_WHITELIST");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_ALLOWLIST_PREFERRED_TO_PREFERRED = new ApiFeature.O_MR1("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_ALLOWLIST");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_PRIVACY_POLICY_URL = new ApiFeature.O_MR1("SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL");
    public static final ApiFeature.C1042N SERVICE_WORKER_BASIC_USAGE = new ApiFeature.C1042N("SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE");
    public static final ApiFeature.C1042N SERVICE_WORKER_CACHE_MODE = new ApiFeature.C1042N("SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE");
    public static final ApiFeature.C1042N SERVICE_WORKER_CONTENT_ACCESS = new ApiFeature.C1042N("SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS");
    public static final ApiFeature.C1042N SERVICE_WORKER_FILE_ACCESS = new ApiFeature.C1042N("SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS");
    public static final ApiFeature.C1042N SERVICE_WORKER_BLOCK_NETWORK_LOADS = new ApiFeature.C1042N("SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS");
    public static final ApiFeature.C1042N SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST = new ApiFeature.C1042N("SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST");
    public static final ApiFeature.C1041M RECEIVE_WEB_RESOURCE_ERROR = new ApiFeature.C1041M("RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR");
    public static final ApiFeature.C1041M RECEIVE_HTTP_ERROR = new ApiFeature.C1041M("RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR");
    public static final ApiFeature.C1042N SHOULD_OVERRIDE_WITH_REDIRECTS = new ApiFeature.C1042N("SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_HIT = new ApiFeature.O_MR1("SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT");
    public static final ApiFeature.C1042N WEB_RESOURCE_REQUEST_IS_REDIRECT = new ApiFeature.C1042N("WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT");
    public static final ApiFeature.C1041M WEB_RESOURCE_ERROR_GET_DESCRIPTION = new ApiFeature.C1041M("WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION");
    public static final ApiFeature.C1041M WEB_RESOURCE_ERROR_GET_CODE = new ApiFeature.C1041M("WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY = new ApiFeature.O_MR1("SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_RESPONSE_PROCEED = new ApiFeature.O_MR1("SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED");
    public static final ApiFeature.O_MR1 SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL = new ApiFeature.O_MR1("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
    public static final ApiFeature.C1041M WEB_MESSAGE_PORT_POST_MESSAGE = new ApiFeature.C1041M("WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE");
    public static final ApiFeature.C1041M WEB_MESSAGE_PORT_CLOSE = new ApiFeature.C1041M("WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE");
    public static final ApiFeature.NoFramework WEB_MESSAGE_ARRAY_BUFFER = new ApiFeature.NoFramework("WEB_MESSAGE_ARRAY_BUFFER", "WEB_MESSAGE_ARRAY_BUFFER");
    public static final ApiFeature.C1041M WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK = new ApiFeature.C1041M("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK");
    public static final ApiFeature.C1041M CREATE_WEB_MESSAGE_CHANNEL = new ApiFeature.C1041M("CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL");
    public static final ApiFeature.C1041M POST_WEB_MESSAGE = new ApiFeature.C1041M("POST_WEB_MESSAGE", "POST_WEB_MESSAGE");
    public static final ApiFeature.C1041M WEB_MESSAGE_CALLBACK_ON_MESSAGE = new ApiFeature.C1041M("WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE");
    public static final ApiFeature.C1043O GET_WEB_VIEW_CLIENT = new ApiFeature.C1043O("GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT");
    public static final ApiFeature.C1043O GET_WEB_CHROME_CLIENT = new ApiFeature.C1043O("GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT");
    public static final ApiFeature.C1045Q GET_WEB_VIEW_RENDERER = new ApiFeature.C1045Q("GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER");
    public static final ApiFeature.C1045Q WEB_VIEW_RENDERER_TERMINATE = new ApiFeature.C1045Q("WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE");
    public static final ApiFeature.C1044P TRACING_CONTROLLER_BASIC_USAGE = new ApiFeature.C1044P("TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE");
    public static final StartupApiFeature.C1047P STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX = new StartupApiFeature.C1047P("STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX", "STARTUP_FEATURE_SET_DATA_DIRECTORY_SUFFIX");
    public static final StartupApiFeature.NoFramework STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH = new StartupApiFeature.NoFramework("STARTUP_FEATURE_SET_DIRECTORY_BASE_PATHS", "STARTUP_FEATURE_SET_DIRECTORY_BASE_PATH");
    public static final StartupApiFeature.NoFramework STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES = new StartupApiFeature.NoFramework("STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES", "STARTUP_FEATURE_CONFIGURE_PARTITIONED_COOKIES");
    public static final ApiFeature.C1045Q WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE = new ApiFeature.C1045Q("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
    public static final ApiFeature.C1046T ALGORITHMIC_DARKENING = new ApiFeature.C1046T("ALGORITHMIC_DARKENING", "ALGORITHMIC_DARKENING") { // from class: androidx.webkit.internal.WebViewFeatureInternal.1
        private final Pattern mVersionPattern = Pattern.compile("\\A\\d+");

        @Override // androidx.webkit.internal.ApiFeature
        public boolean isSupportedByWebView() {
            boolean zIsSupportedByWebView = super.isSupportedByWebView();
            if (!zIsSupportedByWebView || Build.VERSION.SDK_INT >= 29) {
                return zIsSupportedByWebView;
            }
            PackageInfo currentLoadedWebViewPackage = WebViewCompat.getCurrentLoadedWebViewPackage();
            if (currentLoadedWebViewPackage == null) {
                return false;
            }
            Matcher matcher = this.mVersionPattern.matcher(currentLoadedWebViewPackage.versionName);
            return matcher.find() && Integer.parseInt(currentLoadedWebViewPackage.versionName.substring(matcher.start(), matcher.end())) >= 105;
        }
    };
    public static final ApiFeature.NoFramework PROXY_OVERRIDE = new ApiFeature.NoFramework("PROXY_OVERRIDE", "PROXY_OVERRIDE:3");
    public static final ApiFeature.NoFramework MULTI_PROCESS = new ApiFeature.NoFramework("MULTI_PROCESS", "MULTI_PROCESS_QUERY");
    public static final ApiFeature.C1045Q FORCE_DARK = new ApiFeature.C1045Q("FORCE_DARK", "FORCE_DARK");
    public static final ApiFeature.NoFramework FORCE_DARK_STRATEGY = new ApiFeature.NoFramework("FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR");
    public static final ApiFeature.NoFramework WEB_MESSAGE_LISTENER = new ApiFeature.NoFramework("WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");
    public static final ApiFeature.NoFramework DOCUMENT_START_SCRIPT = new ApiFeature.NoFramework("DOCUMENT_START_SCRIPT", "DOCUMENT_START_SCRIPT:1");
    public static final ApiFeature.NoFramework PROXY_OVERRIDE_REVERSE_BYPASS = new ApiFeature.NoFramework("PROXY_OVERRIDE_REVERSE_BYPASS", "PROXY_OVERRIDE_REVERSE_BYPASS");
    public static final ApiFeature.NoFramework GET_VARIATIONS_HEADER = new ApiFeature.NoFramework("GET_VARIATIONS_HEADER", "GET_VARIATIONS_HEADER");
    public static final ApiFeature.NoFramework ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY = new ApiFeature.NoFramework("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY", "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY");
    public static final ApiFeature.NoFramework GET_COOKIE_INFO = new ApiFeature.NoFramework("GET_COOKIE_INFO", "GET_COOKIE_INFO");

    @Deprecated(forRemoval = true)
    public static final ApiFeature.NoFramework REQUESTED_WITH_HEADER_ALLOW_LIST = new ApiFeature.NoFramework("REQUESTED_WITH_HEADER_ALLOW_LIST", "REQUESTED_WITH_HEADER_ALLOW_LIST");
    public static final ApiFeature.NoFramework USER_AGENT_METADATA = new ApiFeature.NoFramework("USER_AGENT_METADATA", "USER_AGENT_METADATA");
    public static final ApiFeature.NoFramework USER_AGENT_METADATA_FORM_FACTORS = new ApiFeature.NoFramework("USER_AGENT_METADATA_FORM_FACTORS", "USER_AGENT_METADATA") { // from class: androidx.webkit.internal.WebViewFeatureInternal.2
        @Override // androidx.webkit.internal.ApiFeature
        public boolean isSupportedByWebView() {
            PackageInfo currentLoadedWebViewPackage;
            return super.isSupportedByWebView() && (currentLoadedWebViewPackage = WebViewCompat.getCurrentLoadedWebViewPackage()) != null && PackageInfoCompat.getLongVersionCode(currentLoadedWebViewPackage) >= 636700000;
        }
    };
    public static final ApiFeature.NoFramework MULTI_PROFILE = new ApiFeature.NoFramework("MULTI_PROFILE", "MULTI_PROFILE") { // from class: androidx.webkit.internal.WebViewFeatureInternal.3
        @Override // androidx.webkit.internal.ApiFeature
        public boolean isSupportedByWebView() {
            if (super.isSupportedByWebView() && WebViewFeature.isFeatureSupported("MULTI_PROCESS")) {
                return WebViewCompat.isMultiProcessEnabled();
            }
            return false;
        }
    };
    public static final ApiFeature.NoFramework ATTRIBUTION_REGISTRATION_BEHAVIOR = new ApiFeature.NoFramework("ATTRIBUTION_REGISTRATION_BEHAVIOR", "ATTRIBUTION_BEHAVIOR");
    public static final ApiFeature.NoFramework WEBVIEW_MEDIA_INTEGRITY_API_STATUS = new ApiFeature.NoFramework("WEBVIEW_MEDIA_INTEGRITY_API_STATUS", "WEBVIEW_INTEGRITY_API_STATUS");
    public static final ApiFeature.NoFramework MUTE_AUDIO = new ApiFeature.NoFramework("MUTE_AUDIO", "MUTE_AUDIO");
    public static final ApiFeature.NoFramework WEB_AUTHENTICATION = new ApiFeature.NoFramework("WEB_AUTHENTICATION", "WEB_AUTHENTICATION");
    public static final ApiFeature.NoFramework SPECULATIVE_LOADING = new ApiFeature.NoFramework("SPECULATIVE_LOADING_STATUS", "SPECULATIVE_LOADING");
    public static final ApiFeature.NoFramework BACK_FORWARD_CACHE = new ApiFeature.NoFramework("BACK_FORWARD_CACHE", "BACK_FORWARD_CACHE");
    public static final ApiFeature.NoFramework BACK_FORWARD_CACHE_SETTINGS = new ApiFeature.NoFramework("BACK_FORWARD_CACHE_SETTINGS", "BACK_FORWARD_CACHE_SETTINGS");
    public static final ApiFeature.NoFramework BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3 = new ApiFeature.NoFramework("BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V3", "BACK_FORWARD_CACHE_SETTINGS_V3");
    public static final ApiFeature.NoFramework BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4 = new ApiFeature.NoFramework("BACK_FORWARD_CACHE_SETTINGS_EXPERIMENTAL_V4", "BACK_FORWARD_CACHE_SETTINGS_V4");
    public static final ApiFeature.NoFramework DELETE_BROWSING_DATA = new ApiFeature.NoFramework("DELETE_BROWSING_DATA", "WEB_STORAGE_DELETE_BROWSING_DATA");
    public static final ApiFeature.NoFramework PROFILE_URL_PREFETCH = new ApiFeature.NoFramework("PREFETCH_URL_V5", "PREFETCH_URL_V5") { // from class: androidx.webkit.internal.WebViewFeatureInternal.4
        @Override // androidx.webkit.internal.ApiFeature
        public boolean isSupportedByWebView() {
            if (WebViewFeature.isFeatureSupported("MULTI_PROFILE")) {
                return super.isSupportedByWebView();
            }
            return false;
        }
    };
    public static final ApiFeature.NoFrameworkInternal ASYNC_WEBVIEW_STARTUP_V2 = new ApiFeature.NoFrameworkInternal("ASYNC_WEBVIEW_STARTUP_V2");

    @Deprecated
    public static final ApiFeature.NoFrameworkInternal ASYNC_WEBVIEW_STARTUP = new ApiFeature.NoFrameworkInternal("ASYNC_WEBVIEW_STARTUP");
    public static final ApiFeature.NoFrameworkInternal ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS = new ApiFeature.NoFrameworkInternal("ASYNC_WEBVIEW_STARTUP_ASYNC_STARTUP_LOCATIONS");
    public static final ApiFeature.NoFramework DEFAULT_TRAFFICSTATS_TAGGING = new ApiFeature.NoFramework("DEFAULT_TRAFFICSTATS_TAGGING", "DEFAULT_TRAFFICSTATS_TAGGING");
    public static final ApiFeature.NoFramework PRERENDER_WITH_URL = new ApiFeature.NoFramework("PRERENDER_URL_V2", "PRERENDER_URL_V3");
    public static final ApiFeature.NoFramework SPECULATIVE_LOADING_CONFIG = new ApiFeature.NoFramework("SPECULATIVE_LOADING_CONFIG_V2", "SPECULATIVE_LOADING_CONFIG_V2");
    public static final ApiFeature.NoFramework PREFETCH_CACHE = new ApiFeature.NoFramework("PREFETCH_CACHE_V1", "PREFETCH_CACHE_V1");
    public static final ApiFeature.NoFrameworkInternal PREFETCH_WITH_CALLBACK_RESULT = new ApiFeature.NoFrameworkInternal("PREFETCH_WITH_CALLBACK_RESULT_V1");
    public static final ApiFeature.NoFramework SET_MAX_PRERENDERS = new ApiFeature.NoFramework("SET_MAX_PRERENDERS_V1", "SET_MAX_PRERENDERS_V1");
    public static final ApiFeature.NoFramework SAVE_STATE = new ApiFeature.NoFramework("SAVE_STATE", "SAVE_STATE");
    public static final ApiFeature.NoFramework NAVIGATION_GET_WEB_RESOURCE_ERROR = new ApiFeature.NoFramework("NAVIGATION_GET_WEB_RESOURCE_ERROR", "NAVIGATION_GET_WEB_RESOURCE_ERROR");
    public static final ApiFeature.NoFramework NAVIGATION_LISTENER = new ApiFeature.NoFramework("NAVIGATION_LISTENER", "PAGE_GET_URL");
    public static final ApiFeature.NoFramework PROVIDER_WEAKLY_REF_WEBVIEW = new ApiFeature.NoFramework("PROVIDER_WEAKLY_REF_WEBVIEW", "PROVIDER_WEAKLY_REF_WEBVIEW");
    public static final ApiFeature.NoFramework PAYMENT_REQUEST = new ApiFeature.NoFramework("PAYMENT_REQUEST", "PAYMENT_REQUEST");
    public static final ApiFeature.NoFramework WEBVIEW_BUILDER_V1 = new ApiFeature.NoFramework("WEBVIEW_BUILDER_EXPERIMENTAL_V1", "WEBVIEW_BUILDER_V1");
    public static final ApiFeature.NoFramework WEBVIEW_BUILDER_V2 = new ApiFeature.NoFramework("WEBVIEW_BUILDER_EXPERIMENTAL_V2", "WEBVIEW_BUILDER_V2");
    public static final ApiFeature.NoFramework COOKIE_INTERCEPT = new ApiFeature.NoFramework("COOKIE_INTERCEPT", "COOKIE_INTERCEPT");
    public static final ApiFeature.NoFramework WARM_UP_RENDERER_PROCESS = new ApiFeature.NoFramework("WARM_UP_RENDERER_PROCESS", "WARM_UP_RENDERER_PROCESS");
    public static final ApiFeature.NoFramework CUSTOM_REQUEST_HEADERS = new ApiFeature.NoFramework("CUSTOM_REQUEST_HEADERS", "CUSTOM_REQUEST_HEADERS");
    public static final StartupApiFeature.NoFramework STARTUP_FEATURE_SET_PROFILES_TO_LOAD = new StartupApiFeature.NoFramework("STARTUP_FEATURE_SET_PROFILES_TO_LOAD", "STARTUP_FEATURE_SET_PROFILES_TO_LOAD");

    @Deprecated
    public static final StartupApiFeature.NoFramework STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE = new StartupApiFeature.NoFramework("STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE", "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE");
    public static final StartupApiFeature.NoFramework STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2 = new StartupApiFeature.NoFramework("STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2", "STARTUP_FEATURE_SET_UI_THREAD_STARTUP_MODE_V2");
    public static final ApiFeature.NoFramework PRECONNECT = new ApiFeature.NoFramework("PRECONNECT", "PRECONNECT");
    public static final ApiFeature.NoFramework ENQUEUE_PRECONNECT = new ApiFeature.NoFramework("ENQUEUE_PRECONNECT", "ENQUEUE_PRECONNECT");
    public static final ApiFeature.NoFramework ADD_QUIC_HINTS_V1 = new ApiFeature.NoFramework("ADD_QUIC_HINTS", "ADD_QUIC_HINTS_V1");
    public static final ApiFeature.NoFramework HYPERLINK_CONTEXT_MENU_ITEMS = new ApiFeature.NoFramework("HYPERLINK_CONTEXT_MENU_ITEMS", "HYPERLINK_CONTEXT_MENU_ITEMS");
    public static final ApiFeature.NoFramework JS_INJECTION_IN_FRAME_AND_WORLD = new ApiFeature.NoFramework("JS_INJECTION_IN_FRAME_AND_WORLD", "JS_INJECTION_IN_FRAME_AND_WORLD");
    public static final ApiFeature.NoFramework WEBVIEW_NAVIGATE_V1 = new ApiFeature.NoFramework("WEBVIEW_NAVIGATE_EXPERIMENTAL_V1", "WEBVIEW_NAVIGATE_V1");
    public static final ApiFeature.NoFramework DOWNLOAD_FAVICONS_ENABLED = new ApiFeature.NoFramework("DOWNLOAD_FAVICONS_ENABLED", "DOWNLOAD_FAVICONS_ENABLED");
    public static final ApiFeature.NoFramework HTTP_CACHE_MANAGER = new ApiFeature.NoFramework("HTTP_CACHE_MANAGER", "HTTP_CACHE_MANAGER");

    public static boolean isSupported(String str) {
        return isSupported(str, ApiFeature.values());
    }

    public static <T extends ConditionallySupportedFeature> boolean isSupported(String str, Collection<T> collection) {
        HashSet hashSet = new HashSet();
        for (T t : collection) {
            if (t.getPublicFeatureName().equals(str)) {
                hashSet.add(t);
            }
        }
        if (hashSet.isEmpty()) {
            MVEL$$ExternalSyntheticBUOutline0.m957m("Unknown feature ", str);
            return false;
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            if (((ConditionallySupportedFeature) it.next()).isSupported()) {
                return true;
            }
        }
        return false;
    }

    public static UnsupportedOperationException getUnsupportedOperationException() {
        return new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }
}
