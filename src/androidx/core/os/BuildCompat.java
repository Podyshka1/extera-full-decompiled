package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;
import java.util.Locale;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.DurationKt;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\f\u0010\u000bR\u0014\u0010\u000e\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u000fR\u0014\u0010\u0011\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u000fR\u0014\u0010\u0012\u001a\u00020\r8\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u000f¨\u0006\u0014"}, d2 = {"Landroidx/core/os/BuildCompat;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", _UrlKt.FRAGMENT_ENCODE_SET, "codename", "buildCodename", _UrlKt.FRAGMENT_ENCODE_SET, "isAtLeastPreReleaseCodename", "(Ljava/lang/String;Ljava/lang/String;)Z", "isAtLeastT", "()Z", "isAtLeastB_1", _UrlKt.FRAGMENT_ENCODE_SET, "R_EXTENSION_INT", "I", "S_EXTENSION_INT", "T_EXTENSION_INT", "AD_SERVICES_EXTENSION_INT", "Api30Impl", "core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
public final class BuildCompat {

    @JvmField
    public static final int AD_SERVICES_EXTENSION_INT;
    public static final BuildCompat INSTANCE = new BuildCompat();

    @JvmField
    public static final int R_EXTENSION_INT;

    @JvmField
    public static final int S_EXTENSION_INT;

    @JvmField
    public static final int T_EXTENSION_INT;

    private BuildCompat() {
    }

    private static final Integer isAtLeastPreReleaseCodename$codenameToInt(String str) {
        return Intrinsics.areEqual(str.toUpperCase(Locale.ROOT), "BAKLAVA") ? 0 : null;
    }

    @JvmStatic
    public static final boolean isAtLeastPreReleaseCodename(String codename, String buildCodename) {
        if (Intrinsics.areEqual("REL", buildCodename)) {
            return false;
        }
        Integer numIsAtLeastPreReleaseCodename$codenameToInt = isAtLeastPreReleaseCodename$codenameToInt(buildCodename);
        Integer numIsAtLeastPreReleaseCodename$codenameToInt2 = isAtLeastPreReleaseCodename$codenameToInt(codename);
        if (numIsAtLeastPreReleaseCodename$codenameToInt != null && numIsAtLeastPreReleaseCodename$codenameToInt2 != null) {
            return numIsAtLeastPreReleaseCodename$codenameToInt.intValue() >= numIsAtLeastPreReleaseCodename$codenameToInt2.intValue();
        }
        if (numIsAtLeastPreReleaseCodename$codenameToInt != null || numIsAtLeastPreReleaseCodename$codenameToInt2 != null) {
            return numIsAtLeastPreReleaseCodename$codenameToInt != null;
        }
        Locale locale = Locale.ROOT;
        return buildCodename.toUpperCase(locale).compareTo(codename.toUpperCase(locale)) >= 0;
    }

    @Deprecated(message = "Android Tiramisu is a finalized release and this method is no longer necessary. It will be removed in a future release of this library. Instead, use `Build.VERSION.SDK_INT >= 33`.", replaceWith = @ReplaceWith(expression = "android.os.Build.VERSION.SDK_INT >= 33", imports = {}))
    @JvmStatic
    public static final boolean isAtLeastT() {
        int i = Build.VERSION.SDK_INT;
        if (i < 33) {
            return i >= 32 && isAtLeastPreReleaseCodename("Tiramisu", Build.VERSION.CODENAME);
        }
        return true;
    }

    @JvmStatic
    public static final boolean isAtLeastB_1() {
        return Build.VERSION.SDK_INT >= 36 && BuildCompat$$ExternalSyntheticBackportWithForwarding1.m99m() >= 3600001;
    }

    static {
        int i = Build.VERSION.SDK_INT;
        R_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(30) : 0;
        S_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(31) : 0;
        T_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(33) : 0;
        AD_SERVICES_EXTENSION_INT = i >= 30 ? Api30Impl.INSTANCE.getExtensionVersion(DurationKt.NANOS_IN_MILLIS) : 0;
    }

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\bÃ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"Landroidx/core/os/BuildCompat$Api30Impl;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "()V", "getExtensionVersion", _UrlKt.FRAGMENT_ENCODE_SET, "extension", "core"}, m754k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Api30Impl {
        public static final Api30Impl INSTANCE = new Api30Impl();

        private Api30Impl() {
        }

        public final int getExtensionVersion(int extension) {
            return SdkExtensions.getExtensionVersion(extension);
        }
    }
}
