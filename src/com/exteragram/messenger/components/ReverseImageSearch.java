package com.exteragram.messenger.components;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.CookieManager;
import android.webkit.WebSettings;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ReverseImageSearch {
    private static final String UPLOAD_URL = "https://yandex.com/images/touch/search?rpt=imageview&format=json&request=" + Uri.encode("{\"blocks\":[{\"block\":\"cbir-uploader__get-cbir-id\"}]}");

    public enum Provider {
        YANDEX,
        GOOGLE,
        BING,
        TINEYE
    }

    public static Runnable search(final File file, final Provider provider, final Utilities.Callback<String> callback) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean();
        final AtomicReference atomicReference = new AtomicReference();
        Utilities.globalQueue.postRunnable(new Runnable() { // from class: com.exteragram.messenger.components.ReverseImageSearch$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                ReverseImageSearch.m2363$r8$lambda$3o5J5mMV6jBElrtsegbb3jkqqk(file, atomicBoolean, callback, atomicReference, provider);
            }
        });
        return new Runnable() { // from class: com.exteragram.messenger.components.ReverseImageSearch$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                ReverseImageSearch.$r8$lambda$AQNPVPdHoWFPzxBgtBUBUecJwjg(atomicBoolean, atomicReference);
            }
        };
    }

    /* JADX INFO: renamed from: $r8$lambda$3o5J5mMV6-jBElrtsegbb3jkqqk, reason: not valid java name */
    public static /* synthetic */ void m2363$r8$lambda$3o5J5mMV6jBElrtsegbb3jkqqk(File file, final AtomicBoolean atomicBoolean, final Utilities.Callback callback, AtomicReference atomicReference, final Provider provider) {
        byte[] bArrEncodeImage;
        try {
            bArrEncodeImage = encodeImage(file);
        } catch (Throwable th) {
            FileLog.m1040e(th);
            bArrEncodeImage = null;
        }
        if (atomicBoolean.get()) {
            return;
        }
        if (bArrEncodeImage == null) {
            deliver(atomicBoolean, callback, null);
            return;
        }
        Call callNewCall = ExteraHttpClient.INSTANCE.getClient().newCall(buildUploadRequest(bArrEncodeImage));
        atomicReference.set(callNewCall);
        if (atomicBoolean.get()) {
            callNewCall.cancel();
        } else {
            callNewCall.enqueue(new Callback() { // from class: com.exteragram.messenger.components.ReverseImageSearch.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    if (!call.getCanceled()) {
                        FileLog.m1040e(iOException);
                    }
                    ReverseImageSearch.deliver(atomicBoolean, callback, null);
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    String strBuildUrl = null;
                    try {
                        try {
                            ResponseBody responseBodyBody = response.body();
                            if (response.getIsSuccessful() && responseBodyBody != null) {
                                JSONObject jSONObject = new JSONObject(responseBodyBody.string()).getJSONArray("blocks").getJSONObject(0).getJSONObject(PluginsConstants.PARAMS);
                                String strOptString = jSONObject.optString("cbirId");
                                String strOptString2 = jSONObject.optString("originalImageUrl");
                                if (!TextUtils.isEmpty(strOptString) && !TextUtils.isEmpty(strOptString2)) {
                                    strBuildUrl = ReverseImageSearch.buildUrl(provider, response.request().url().host(), strOptString, strOptString2);
                                }
                            }
                            response.close();
                        } finally {
                        }
                    } catch (Throwable th2) {
                        FileLog.m1040e(th2);
                    }
                    ReverseImageSearch.deliver(atomicBoolean, callback, strBuildUrl);
                }
            });
        }
    }

    public static /* synthetic */ void $r8$lambda$AQNPVPdHoWFPzxBgtBUBUecJwjg(AtomicBoolean atomicBoolean, AtomicReference atomicReference) {
        atomicBoolean.set(true);
        Call call = (Call) atomicReference.get();
        if (call != null) {
            call.cancel();
        }
    }

    public static void open(Context context, String str) {
        seedConsentCookies();
        Browser.openInTelegramBrowser(context, str, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void deliver(final AtomicBoolean atomicBoolean, final Utilities.Callback<String> callback, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.components.ReverseImageSearch$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                ReverseImageSearch.m2364$r8$lambda$qwn5HLXZuahNnpwTi6itIh9jYs(atomicBoolean, callback, str);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$qwn5HLXZuahNnpwTi6i-tIh9jYs, reason: not valid java name */
    public static /* synthetic */ void m2364$r8$lambda$qwn5HLXZuahNnpwTi6itIh9jYs(AtomicBoolean atomicBoolean, Utilities.Callback callback, String str) {
        if (atomicBoolean.get()) {
            return;
        }
        callback.run(str);
    }

    private static Request buildUploadRequest(byte[] bArr) {
        Request.Builder builderHeader = new Request.Builder().url(UPLOAD_URL).post(new MultipartBody.Builder().setType(MultipartBody.FORM).addFormDataPart("upfile", "image.jpg", RequestBody.create(bArr, MediaType.get("image/jpeg"))).build()).header("Accept", "application/json").header("X-Requested-With", "XMLHttpRequest").header("Cookie", "gdpr=0");
        try {
            String defaultUserAgent = WebSettings.getDefaultUserAgent(ApplicationLoader.applicationContext);
            if (!TextUtils.isEmpty(defaultUserAgent)) {
                builderHeader.header("User-Agent", defaultUserAgent);
            }
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
        return builderHeader.build();
    }

    /* JADX INFO: renamed from: com.exteragram.messenger.components.ReverseImageSearch$2 */
    public static /* synthetic */ class C12922 {

        /* JADX INFO: renamed from: $SwitchMap$com$exteragram$messenger$components$ReverseImageSearch$Provider */
        static final /* synthetic */ int[] f177xd7bb802e;

        static {
            int[] iArr = new int[Provider.values().length];
            f177xd7bb802e = iArr;
            try {
                iArr[Provider.YANDEX.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f177xd7bb802e[Provider.GOOGLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f177xd7bb802e[Provider.BING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f177xd7bb802e[Provider.TINEYE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String buildUrl(Provider provider, String str, String str2, String str3) {
        String strEncode = Uri.encode(str3);
        int i = C12922.f177xd7bb802e[provider.ordinal()];
        if (i == 1) {
            return "https://" + str + "/images/search?rpt=imageview&cbir_id=" + Uri.encode(str2) + "&url=" + strEncode;
        }
        if (i == 2) {
            return "https://lens.google.com/uploadbyurl?url=" + strEncode;
        }
        if (i == 3) {
            return "https://www.bing.com/images/search?view=detailv2&iss=sbi&form=SBIVSP&sbisrc=UrlPaste&q=imgurl:" + strEncode;
        }
        if (i != 4) {
            throw new IncompatibleClassChangeError();
        }
        return "https://tineye.com/search?url=" + strEncode;
    }

    private static void seedConsentCookies() {
        try {
            CookieManager cookieManager = CookieManager.getInstance();
            cookieManager.setAcceptCookie(true);
            cookieManager.setCookie("https://www.google.com", "SOCS=CAISHAgBEhJnd3NfMjAyNjA2MjYtMF9SQzEaAmVuIAEaBgiAjozSBg; Domain=.google.com; Path=/; Secure; SameSite=Lax");
            cookieManager.setCookie("https://www.bing.com", "BCP=AD=1&AL=1&SM=1; Domain=.bing.com; Path=/; Secure");
            cookieManager.setCookie("https://tineye.com", "cookie_consent=accepted; Path=/");
            cookieManager.setCookie("https://yandex.com", "gdpr=0; Domain=.yandex.com; Path=/; Secure");
            cookieManager.setCookie("https://yandex.ru", "gdpr=0; Domain=.yandex.ru; Path=/; Secure");
            cookieManager.flush();
        } catch (Throwable th) {
            FileLog.m1040e(th);
        }
    }

    private static byte[] encodeImage(File file) {
        if (file == null || !file.exists()) {
            return null;
        }
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        int i = 1;
        while (Math.max(options.outWidth, options.outHeight) / i > 2560) {
            i *= 2;
        }
        options2.inSampleSize = i;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options2);
        if (bitmapDecodeFile == null) {
            return null;
        }
        int width = bitmapDecodeFile.getWidth();
        int height = bitmapDecodeFile.getHeight();
        int iMax = Math.max(width, height);
        if (iMax > 1280) {
            float f = 1280.0f / iMax;
            Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, Math.round(width * f), Math.round(height * f), true);
            if (bitmapCreateScaledBitmap != bitmapDecodeFile) {
                bitmapDecodeFile.recycle();
                bitmapDecodeFile = bitmapCreateScaledBitmap;
            }
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmapDecodeFile.compress(Bitmap.CompressFormat.JPEG, 90, byteArrayOutputStream);
        bitmapDecodeFile.recycle();
        return byteArrayOutputStream.toByteArray();
    }
}
