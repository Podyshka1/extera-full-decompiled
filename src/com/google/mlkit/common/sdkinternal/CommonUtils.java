package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes.dex */
public abstract class CommonUtils {
    private static final GmsLogger zza = new GmsLogger("CommonUtils", _UrlKt.FRAGMENT_ENCODE_SET);

    public static String getAppVersion(Context context) {
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException e) {
            zza.m344e("CommonUtils", "Exception thrown when trying to get app version ".concat(e.toString()));
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
    }

    public static String languageTagFromLocale(Locale locale) {
        if (PlatformVersion.isAtLeastLollipop()) {
            return locale.toLanguageTag();
        }
        StringBuilder sb = new StringBuilder(locale.getLanguage());
        if (!TextUtils.isEmpty(locale.getCountry())) {
            sb.append("-");
            sb.append(locale.getCountry());
        }
        if (!TextUtils.isEmpty(locale.getVariant())) {
            sb.append("-");
            sb.append(locale.getVariant());
        }
        return sb.toString();
    }
}
