package androidx.webkit.internal;

import android.content.pm.PackageInfo;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ApiHelperForO {
    public static PackageInfo getCurrentWebViewPackage() {
        return WebView.getCurrentWebViewPackage();
    }
}
