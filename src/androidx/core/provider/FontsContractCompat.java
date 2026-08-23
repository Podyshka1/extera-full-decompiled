package androidx.core.provider;

import android.content.Context;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.camera.core.ImageCapture$$ExternalSyntheticBackport1;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.util.Preconditions;
import java.util.Collections;
import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class FontsContractCompat {

    /* JADX INFO: loaded from: classes4.dex */
    public static class FontRequestCallback {
        public abstract void onTypefaceRequestFailed(int i);

        public abstract void onTypefaceRetrieved(Typeface typeface);
    }

    public static Typeface buildTypeface(Context context, CancellationSignal cancellationSignal, FontInfo[] fontInfoArr) {
        return TypefaceCompat.createFromFontInfo(context, cancellationSignal, fontInfoArr, 0);
    }

    public static FontFamilyResult fetchFonts(Context context, CancellationSignal cancellationSignal, FontRequest fontRequest) {
        return FontProvider.getFontFamilyResult(context, ImageCapture$$ExternalSyntheticBackport1.m75m(new Object[]{fontRequest}), cancellationSignal);
    }

    public static Typeface requestFont(Context context, List list, int i, boolean z, int i2, Handler handler, FontRequestCallback fontRequestCallback) {
        CallbackWrapper callbackWrapper = new CallbackWrapper(fontRequestCallback, RequestExecutor.createHandlerExecutor(handler));
        if (z) {
            if (list.size() > 1) {
                throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
            }
            return FontRequestWorker.requestFontSync(context, (FontRequest) list.get(0), callbackWrapper, i, i2);
        }
        return FontRequestWorker.requestFontAsync(context, list, i, null, callbackWrapper);
    }

    public static class FontInfo {
        private final boolean mItalic;
        private final int mResultCode;
        private final int mTtcIndex;
        private final Uri mUri;
        private final String mVariationSettings;
        private final int mWeight;

        public FontInfo(Uri uri, int i, int i2, boolean z, int i3) {
            this(uri, i, i2, z, null, i3);
        }

        static FontInfo create(Uri uri, int i, int i2, boolean z, int i3) {
            return new FontInfo(uri, i, i2, z, i3);
        }

        public FontInfo(Uri uri, int i, int i2, boolean z, String str, int i3) {
            this.mUri = (Uri) Preconditions.checkNotNull(uri);
            this.mTtcIndex = i;
            this.mWeight = i2;
            this.mItalic = z;
            this.mVariationSettings = str;
            this.mResultCode = i3;
        }

        public FontInfo(String str, String str2) {
            this.mUri = new Uri.Builder().scheme("systemfont").authority(str).build();
            this.mTtcIndex = 0;
            this.mWeight = 400;
            this.mItalic = false;
            this.mVariationSettings = str2;
            this.mResultCode = 0;
        }

        public Uri getUri() {
            return this.mUri;
        }

        public int getTtcIndex() {
            return this.mTtcIndex;
        }

        public int getWeight() {
            return this.mWeight;
        }

        public boolean isItalic() {
            return this.mItalic;
        }

        public String getVariationSettings() {
            return this.mVariationSettings;
        }

        public String getSystemFont() {
            if (isSystemFont()) {
                return this.mUri.getAuthority();
            }
            return null;
        }

        public boolean isSystemFont() {
            return Objects.equals(this.mUri.getScheme(), "systemfont");
        }

        public int getResultCode() {
            return this.mResultCode;
        }
    }

    public static class FontFamilyResult {
        private final List mFonts;
        private final int mStatusCode;

        public FontFamilyResult(int i, FontInfo[] fontInfoArr) {
            this.mStatusCode = i;
            this.mFonts = Collections.singletonList(fontInfoArr);
        }

        FontFamilyResult(int i, List list) {
            this.mStatusCode = i;
            this.mFonts = list;
        }

        public int getStatusCode() {
            return this.mStatusCode;
        }

        public FontInfo[] getFonts() {
            return (FontInfo[]) this.mFonts.get(0);
        }

        boolean hasFallback() {
            return this.mFonts.size() > 1;
        }

        public List getFontsWithFallbacks() {
            return this.mFonts;
        }

        static FontFamilyResult create(int i, FontInfo[] fontInfoArr) {
            return new FontFamilyResult(i, fontInfoArr);
        }

        static FontFamilyResult create(int i, List list) {
            return new FontFamilyResult(i, list);
        }
    }
}
