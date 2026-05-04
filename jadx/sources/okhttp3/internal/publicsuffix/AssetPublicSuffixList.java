package okhttp3.internal.publicsuffix;

import android.content.Context;
import android.content.res.AssetManager;
import android.os.Build;
import java.io.IOException;
import java.io.InputStream;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.platform.PlatformRegistry;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes5.dex */
public final class AssetPublicSuffixList extends BasePublicSuffixList {
    public static final Companion Companion = new Companion(null);
    private static final String PUBLIC_SUFFIX_RESOURCE = "PublicSuffixDatabase.list";
    private final String path;

    /* JADX WARN: Multi-variable type inference failed */
    public AssetPublicSuffixList() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public AssetPublicSuffixList(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
    }

    public /* synthetic */ AssetPublicSuffixList(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? PUBLIC_SUFFIX_RESOURCE : str);
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public String getPath() {
        return this.path;
    }

    @Override // okhttp3.internal.publicsuffix.BasePublicSuffixList
    public Source listSource() throws IOException {
        Context applicationContext = PlatformRegistry.INSTANCE.getApplicationContext();
        AssetManager assets = applicationContext != null ? applicationContext.getAssets() : null;
        if (assets == null) {
            if (Build.FINGERPRINT == null) {
                throw new IOException("Platform applicationContext not initialized. Possibly running Android unit test without Robolectric. Android tests should run with Robolectric and call OkHttp.initialize before test");
            }
            throw new IOException("Platform applicationContext not initialized. Startup Initializer possibly disabled, call OkHttp.initialize before test.");
        }
        InputStream inputStreamOpen = assets.open(getPath());
        Intrinsics.checkNotNullExpressionValue(inputStreamOpen, "open(...)");
        return Okio.source(inputStreamOpen);
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getPUBLIC_SUFFIX_RESOURCE() {
            return AssetPublicSuffixList.PUBLIC_SUFFIX_RESOURCE;
        }
    }
}
