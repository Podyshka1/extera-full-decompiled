package androidx.core.provider;

import android.content.ContentProviderClient;
import android.content.ContentUris;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.RemoteException;
import android.util.Log;
import androidx.camera.camera2.config.UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import androidx.tracing.Trace;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
abstract class FontProvider {
    private static final LruCache sProviderCache = new LruCache(2);
    private static final Comparator sByteArrayComparator = new Comparator() { // from class: androidx.core.provider.FontProvider$$ExternalSyntheticLambda0
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return FontProvider.$r8$lambda$YnOn4sMaJN6i8fkk9HOHIkI5PVE((byte[]) obj, (byte[]) obj2);
        }
    };

    static FontsContractCompat.FontFamilyResult getFontFamilyResult(Context context, List list, CancellationSignal cancellationSignal) {
        String systemFont;
        Typeface systemFontFamily;
        Trace.beginSection("FontProvider.getFontFamilyResult");
        try {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                FontRequest fontRequest = (FontRequest) list.get(i);
                if (Build.VERSION.SDK_INT >= 31 && (systemFontFamily = TypefaceCompat.getSystemFontFamily((systemFont = fontRequest.getSystemFont()))) != null && TypefaceCompat.guessPrimaryFont(systemFontFamily) != null) {
                    arrayList.add(new FontsContractCompat.FontInfo[]{new FontsContractCompat.FontInfo(systemFont, fontRequest.getVariationSettings())});
                } else {
                    ProviderInfo provider = getProvider(context.getPackageManager(), fontRequest, context.getResources());
                    if (provider == null) {
                        return FontsContractCompat.FontFamilyResult.create(1, (FontsContractCompat.FontInfo[]) null);
                    }
                    arrayList.add(query(context, fontRequest, provider.authority, cancellationSignal));
                }
            }
            return FontsContractCompat.FontFamilyResult.create(0, arrayList);
        } finally {
            Trace.endSection();
        }
    }

    private static class ProviderCacheKey {
        String mAuthority;
        List mCertificates;
        String mPackageName;

        ProviderCacheKey(String str, String str2, List list) {
            this.mAuthority = str;
            this.mPackageName = str2;
            this.mCertificates = list;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ProviderCacheKey)) {
                return false;
            }
            ProviderCacheKey providerCacheKey = (ProviderCacheKey) obj;
            return Objects.equals(this.mAuthority, providerCacheKey.mAuthority) && Objects.equals(this.mPackageName, providerCacheKey.mPackageName) && Objects.equals(this.mCertificates, providerCacheKey.mCertificates);
        }

        public int hashCode() {
            return Objects.hash(this.mAuthority, this.mPackageName, this.mCertificates);
        }
    }

    static ProviderInfo getProvider(PackageManager packageManager, FontRequest fontRequest, Resources resources) {
        Trace.beginSection("FontProvider.getProvider");
        try {
            List certificates = getCertificates(fontRequest, resources);
            ProviderCacheKey providerCacheKey = new ProviderCacheKey(fontRequest.getProviderAuthority(), fontRequest.getProviderPackage(), certificates);
            ProviderInfo providerInfo = (ProviderInfo) sProviderCache.get(providerCacheKey);
            if (providerInfo != null) {
                return providerInfo;
            }
            String providerAuthority = fontRequest.getProviderAuthority();
            ProviderInfo providerInfoResolveContentProvider = packageManager.resolveContentProvider(providerAuthority, 0);
            if (providerInfoResolveContentProvider == null) {
                throw new PackageManager.NameNotFoundException("No package found for authority: " + providerAuthority);
            }
            if (!providerInfoResolveContentProvider.packageName.equals(fontRequest.getProviderPackage())) {
                throw new PackageManager.NameNotFoundException("Found content provider " + providerAuthority + ", but package was not " + fontRequest.getProviderPackage());
            }
            List listConvertToByteArrayList = convertToByteArrayList(packageManager.getPackageInfo(providerInfoResolveContentProvider.packageName, 64).signatures);
            Collections.sort(listConvertToByteArrayList, sByteArrayComparator);
            for (int i = 0; i < certificates.size(); i++) {
                ArrayList arrayList = new ArrayList((Collection) certificates.get(i));
                Collections.sort(arrayList, sByteArrayComparator);
                if (equalsByteArrayList(listConvertToByteArrayList, arrayList)) {
                    sProviderCache.put(providerCacheKey, providerInfoResolveContentProvider);
                    return providerInfoResolveContentProvider;
                }
            }
            Trace.endSection();
            return null;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v2, types: [androidx.core.provider.FontProvider$ContentQueryWrapper] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    static FontsContractCompat.FontInfo[] query(Context context, FontRequest fontRequest, String str, CancellationSignal cancellationSignal) {
        ?? r16;
        ContentQueryWrapper contentQueryWrapper;
        ContentQueryWrapper contentQueryWrapper2;
        Uri uriWithAppendedId;
        boolean z;
        Trace.beginSection("FontProvider.query");
        try {
            ArrayList arrayList = new ArrayList();
            Uri uriBuild = new Uri.Builder().scheme("content").authority(str).build();
            Uri uriBuild2 = new Uri.Builder().scheme("content").authority(str).appendPath("file").build();
            ContentQueryWrapper contentQueryWrapperMake = ContentQueryWrapper.CC.make(context, uriBuild);
            Cursor cursorQuery = null;
            try {
                String[] strArr = {"_id", "file_id", "font_ttc_index", "font_variation_settings", "font_weight", "font_italic", "result_code"};
                Trace.beginSection("ContentQueryWrapper.query");
                try {
                    try {
                        cursorQuery = contentQueryWrapperMake.query(uriBuild, strArr, "query = ?", new String[]{fontRequest.getQuery()}, null, cancellationSignal);
                        if (cursorQuery == null || cursorQuery.getCount() <= 0) {
                            contentQueryWrapper = contentQueryWrapperMake;
                        } else {
                            int columnIndex = cursorQuery.getColumnIndex("result_code");
                            ArrayList arrayList2 = new ArrayList();
                            int columnIndex2 = cursorQuery.getColumnIndex("_id");
                            int columnIndex3 = cursorQuery.getColumnIndex("file_id");
                            int columnIndex4 = cursorQuery.getColumnIndex("font_ttc_index");
                            int columnIndex5 = cursorQuery.getColumnIndex("font_weight");
                            int columnIndex6 = cursorQuery.getColumnIndex("font_italic");
                            while (cursorQuery.moveToNext()) {
                                int i = columnIndex != -1 ? cursorQuery.getInt(columnIndex) : 0;
                                int i2 = columnIndex4 != -1 ? cursorQuery.getInt(columnIndex4) : 0;
                                if (columnIndex3 == -1) {
                                    contentQueryWrapper2 = contentQueryWrapperMake;
                                    uriWithAppendedId = ContentUris.withAppendedId(uriBuild, cursorQuery.getLong(columnIndex2));
                                } else {
                                    contentQueryWrapper2 = contentQueryWrapperMake;
                                    uriWithAppendedId = ContentUris.withAppendedId(uriBuild2, cursorQuery.getLong(columnIndex3));
                                }
                                int i3 = columnIndex5 != -1 ? cursorQuery.getInt(columnIndex5) : 400;
                                if (columnIndex6 != -1) {
                                    z = true;
                                    if (cursorQuery.getInt(columnIndex6) != 1) {
                                        z = false;
                                    }
                                }
                                arrayList2.add(FontsContractCompat.FontInfo.create(uriWithAppendedId, i2, i3, z, i));
                                contentQueryWrapperMake = contentQueryWrapper2;
                            }
                            contentQueryWrapper = contentQueryWrapperMake;
                            arrayList = arrayList2;
                        }
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        contentQueryWrapper.close();
                        return (FontsContractCompat.FontInfo[]) arrayList.toArray(new FontsContractCompat.FontInfo[0]);
                    } finally {
                    }
                } catch (Throwable th) {
                    th = th;
                    r16 = context;
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    r16.close();
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                r16 = contentQueryWrapperMake;
            }
        } finally {
            Trace.endSection();
        }
    }

    private static List getCertificates(FontRequest fontRequest, Resources resources) {
        if (fontRequest.getCertificates() != null) {
            return fontRequest.getCertificates();
        }
        return FontResourcesParserCompat.readCerts(resources, fontRequest.getCertificatesArrayResId());
    }

    public static /* synthetic */ int $r8$lambda$YnOn4sMaJN6i8fkk9HOHIkI5PVE(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return bArr.length - bArr2.length;
        }
        for (int i = 0; i < bArr.length; i++) {
            byte b = bArr[i];
            byte b2 = bArr2[i];
            if (b != b2) {
                return b - b2;
            }
        }
        return 0;
    }

    private static boolean equalsByteArrayList(List list, List list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        for (int i = 0; i < list.size(); i++) {
            if (!Arrays.equals((byte[]) list.get(i), (byte[]) list2.get(i))) {
                return false;
            }
        }
        return true;
    }

    private static List convertToByteArrayList(Signature[] signatureArr) {
        ArrayList arrayList = new ArrayList();
        for (Signature signature : signatureArr) {
            arrayList.add(signature.toByteArray());
        }
        return arrayList;
    }

    private interface ContentQueryWrapper {
        void close();

        Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal);

        /* JADX INFO: renamed from: androidx.core.provider.FontProvider$ContentQueryWrapper$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static ContentQueryWrapper make(Context context, Uri uri) {
                if (Build.VERSION.SDK_INT < 24) {
                    return new ContentQueryWrapperApi16Impl(context, uri);
                }
                return new ContentQueryWrapperApi24Impl(context, uri);
            }
        }
    }

    /* JADX INFO: loaded from: classes4.dex */
    private static class ContentQueryWrapperApi16Impl implements ContentQueryWrapper {
        private final ContentProviderClient mClient;

        ContentQueryWrapperApi16Impl(Context context, Uri uri) {
            this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public void close() {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient != null) {
                contentProviderClient.release();
            }
        }
    }

    private static class ContentQueryWrapperApi24Impl implements ContentQueryWrapper {
        private final ContentProviderClient mClient;

        ContentQueryWrapperApi24Impl(Context context, Uri uri) {
            this.mClient = context.getContentResolver().acquireUnstableContentProviderClient(uri);
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2, CancellationSignal cancellationSignal) {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient == null) {
                return null;
            }
            try {
                return contentProviderClient.query(uri, strArr, str, strArr2, str2, cancellationSignal);
            } catch (RemoteException e) {
                Log.w("FontsProvider", "Unable to query the content provider", e);
                return null;
            }
        }

        @Override // androidx.core.provider.FontProvider.ContentQueryWrapper
        public void close() throws Exception {
            ContentProviderClient contentProviderClient = this.mClient;
            if (contentProviderClient != null) {
                UseCaseGraphContext$$ExternalSyntheticAutoCloseableDispatcher0.m22m(contentProviderClient);
            }
        }
    }
}
