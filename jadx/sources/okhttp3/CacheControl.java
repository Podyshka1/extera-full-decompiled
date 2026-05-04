package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import okhttp3.internal._CacheControlCommonKt;

/* JADX INFO: loaded from: classes.dex */
public final class CacheControl {
    public static final Companion Companion;
    public static final CacheControl FORCE_CACHE;
    public static final CacheControl FORCE_NETWORK;
    private String headerValue;
    private final boolean immutable;
    private final boolean isPrivate;
    private final boolean isPublic;
    private final int maxAgeSeconds;
    private final int maxStaleSeconds;
    private final int minFreshSeconds;
    private final boolean mustRevalidate;
    private final boolean noCache;
    private final boolean noStore;
    private final boolean noTransform;
    private final boolean onlyIfCached;
    private final int sMaxAgeSeconds;

    public static final CacheControl parse(Headers headers) {
        return Companion.parse(headers);
    }

    public CacheControl(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.noCache = z;
        this.noStore = z2;
        this.maxAgeSeconds = i;
        this.sMaxAgeSeconds = i2;
        this.isPrivate = z3;
        this.isPublic = z4;
        this.mustRevalidate = z5;
        this.maxStaleSeconds = i3;
        this.minFreshSeconds = i4;
        this.onlyIfCached = z6;
        this.noTransform = z7;
        this.immutable = z8;
        this.headerValue = str;
    }

    public final boolean noCache() {
        return this.noCache;
    }

    public final boolean noStore() {
        return this.noStore;
    }

    public final int maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final int sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    public final boolean isPrivate() {
        return this.isPrivate;
    }

    public final boolean isPublic() {
        return this.isPublic;
    }

    public final boolean mustRevalidate() {
        return this.mustRevalidate;
    }

    public final int maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    public final int minFreshSeconds() {
        return this.minFreshSeconds;
    }

    public final boolean onlyIfCached() {
        return this.onlyIfCached;
    }

    public final boolean noTransform() {
        return this.noTransform;
    }

    public final boolean immutable() {
        return this.immutable;
    }

    public final String getHeaderValue$okhttp() {
        return this.headerValue;
    }

    public final void setHeaderValue$okhttp(String str) {
        this.headerValue = str;
    }

    /* JADX INFO: renamed from: -deprecated_noCache, reason: not valid java name */
    public final boolean m3752deprecated_noCache() {
        return this.noCache;
    }

    /* JADX INFO: renamed from: -deprecated_noStore, reason: not valid java name */
    public final boolean m3753deprecated_noStore() {
        return this.noStore;
    }

    /* JADX INFO: renamed from: -deprecated_maxAgeSeconds, reason: not valid java name */
    public final int m3748deprecated_maxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_sMaxAgeSeconds, reason: not valid java name */
    public final int m3756deprecated_sMaxAgeSeconds() {
        return this.sMaxAgeSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_mustRevalidate, reason: not valid java name */
    public final boolean m3751deprecated_mustRevalidate() {
        return this.mustRevalidate;
    }

    /* JADX INFO: renamed from: -deprecated_maxStaleSeconds, reason: not valid java name */
    public final int m3749deprecated_maxStaleSeconds() {
        return this.maxStaleSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_minFreshSeconds, reason: not valid java name */
    public final int m3750deprecated_minFreshSeconds() {
        return this.minFreshSeconds;
    }

    /* JADX INFO: renamed from: -deprecated_onlyIfCached, reason: not valid java name */
    public final boolean m3755deprecated_onlyIfCached() {
        return this.onlyIfCached;
    }

    /* JADX INFO: renamed from: -deprecated_noTransform, reason: not valid java name */
    public final boolean m3754deprecated_noTransform() {
        return this.noTransform;
    }

    /* JADX INFO: renamed from: -deprecated_immutable, reason: not valid java name */
    public final boolean m3747deprecated_immutable() {
        return this.immutable;
    }

    public String toString() {
        return _CacheControlCommonKt.commonToString(this);
    }

    public static final class Builder {
        private boolean immutable;
        private int maxAgeSeconds = -1;
        private int maxStaleSeconds = -1;
        private int minFreshSeconds = -1;
        private boolean noCache;
        private boolean noStore;
        private boolean noTransform;
        private boolean onlyIfCached;

        public final boolean getNoCache$okhttp() {
            return this.noCache;
        }

        public final void setNoCache$okhttp(boolean z) {
            this.noCache = z;
        }

        public final boolean getNoStore$okhttp() {
            return this.noStore;
        }

        public final void setNoStore$okhttp(boolean z) {
            this.noStore = z;
        }

        public final int getMaxAgeSeconds$okhttp() {
            return this.maxAgeSeconds;
        }

        public final void setMaxAgeSeconds$okhttp(int i) {
            this.maxAgeSeconds = i;
        }

        public final int getMaxStaleSeconds$okhttp() {
            return this.maxStaleSeconds;
        }

        public final void setMaxStaleSeconds$okhttp(int i) {
            this.maxStaleSeconds = i;
        }

        public final int getMinFreshSeconds$okhttp() {
            return this.minFreshSeconds;
        }

        public final void setMinFreshSeconds$okhttp(int i) {
            this.minFreshSeconds = i;
        }

        public final boolean getOnlyIfCached$okhttp() {
            return this.onlyIfCached;
        }

        public final void setOnlyIfCached$okhttp(boolean z) {
            this.onlyIfCached = z;
        }

        public final boolean getNoTransform$okhttp() {
            return this.noTransform;
        }

        public final void setNoTransform$okhttp(boolean z) {
            this.noTransform = z;
        }

        public final boolean getImmutable$okhttp() {
            return this.immutable;
        }

        public final void setImmutable$okhttp(boolean z) {
            this.immutable = z;
        }

        public final Builder noCache() {
            return _CacheControlCommonKt.commonNoCache(this);
        }

        public final Builder noStore() {
            return _CacheControlCommonKt.commonNoStore(this);
        }

        public final Builder onlyIfCached() {
            return _CacheControlCommonKt.commonOnlyIfCached(this);
        }

        public final Builder noTransform() {
            return _CacheControlCommonKt.commonNoTransform(this);
        }

        public final Builder immutable() {
            return _CacheControlCommonKt.commonImmutable(this);
        }

        /* JADX INFO: renamed from: maxAge-LRDsOJo, reason: not valid java name */
        public final Builder m3757maxAgeLRDsOJo(long j) {
            long jM3637getInWholeSecondsimpl = Duration.m3637getInWholeSecondsimpl(j);
            if (jM3637getInWholeSecondsimpl < 0) {
                throw new IllegalArgumentException(("maxAge < 0: " + jM3637getInWholeSecondsimpl).toString());
            }
            this.maxAgeSeconds = _CacheControlCommonKt.commonClampToInt(jM3637getInWholeSecondsimpl);
            return this;
        }

        /* JADX INFO: renamed from: maxStale-LRDsOJo, reason: not valid java name */
        public final Builder m3758maxStaleLRDsOJo(long j) {
            long jM3637getInWholeSecondsimpl = Duration.m3637getInWholeSecondsimpl(j);
            if (jM3637getInWholeSecondsimpl < 0) {
                throw new IllegalArgumentException(("maxStale < 0: " + jM3637getInWholeSecondsimpl).toString());
            }
            this.maxStaleSeconds = _CacheControlCommonKt.commonClampToInt(jM3637getInWholeSecondsimpl);
            return this;
        }

        /* JADX INFO: renamed from: minFresh-LRDsOJo, reason: not valid java name */
        public final Builder m3759minFreshLRDsOJo(long j) {
            long jM3637getInWholeSecondsimpl = Duration.m3637getInWholeSecondsimpl(j);
            if (jM3637getInWholeSecondsimpl < 0) {
                throw new IllegalArgumentException(("minFresh < 0: " + jM3637getInWholeSecondsimpl).toString());
            }
            this.minFreshSeconds = _CacheControlCommonKt.commonClampToInt(jM3637getInWholeSecondsimpl);
            return this;
        }

        public final Builder maxAge(int i, TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            if (i < 0) {
                throw new IllegalArgumentException(("maxAge < 0: " + i).toString());
            }
            this.maxAgeSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i));
            return this;
        }

        public final Builder maxStale(int i, TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            if (i < 0) {
                throw new IllegalArgumentException(("maxStale < 0: " + i).toString());
            }
            this.maxStaleSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i));
            return this;
        }

        public final Builder minFresh(int i, TimeUnit timeUnit) {
            Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
            if (i < 0) {
                throw new IllegalArgumentException(("minFresh < 0: " + i).toString());
            }
            this.minFreshSeconds = _CacheControlCommonKt.commonClampToInt(timeUnit.toSeconds(i));
            return this;
        }

        public final CacheControl build() {
            return _CacheControlCommonKt.commonBuild(this);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final CacheControl parse(Headers headers) {
            Intrinsics.checkNotNullParameter(headers, "headers");
            return _CacheControlCommonKt.commonParse(this, headers);
        }
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        FORCE_NETWORK = _CacheControlCommonKt.commonForceNetwork(companion);
        FORCE_CACHE = _CacheControlCommonKt.commonForceCache(companion);
    }
}
