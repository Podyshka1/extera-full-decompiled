package com.exteragram.messenger.translators;

import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Set;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.FileLog;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class GoogleTranslator extends BaseTranslator {
    private static final OkHttpClient client = ExteraHttpClient.INSTANCE.getClient();
    private static GoogleTranslator instance;

    public static GoogleTranslator getInstance() {
        if (instance == null) {
            instance = new GoogleTranslator();
        }
        return instance;
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public String getDisplayName() {
        return "Google";
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public Set getSupportedLanguages() {
        return Collections.EMPTY_SET;
    }

    @Override // com.exteragram.messenger.translators.BaseTranslator
    public void translate(String str, String str2, String str3, final TranslatorUtils.TranslateCallback translateCallback) {
        try {
            client.newCall(new Request.Builder().url("https://translate.googleapis.com/translate_a/single?dj=1&q=" + URLEncoder.encode(str, "UTF-8") + "&sl=" + str2 + "&tl=" + str3 + "&ie=UTF-8&oe=UTF-8&client=at&dt=t&otf=2").header("User-Agent", TranslatorUtils.formatUserAgent()).build()).enqueue(new Callback() { // from class: com.exteragram.messenger.translators.GoogleTranslator.1
                @Override // okhttp3.Callback
                public void onFailure(Call call, IOException iOException) {
                    FileLog.m1136e(iOException);
                    TranslatorUtils.TranslateCallback translateCallback2 = translateCallback;
                    Objects.requireNonNull(translateCallback2);
                    AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback2));
                }

                @Override // okhttp3.Callback
                public void onResponse(Call call, Response response) {
                    try {
                        ResponseBody responseBodyBody = response.body();
                        try {
                            if (!response.isSuccessful()) {
                                TranslatorUtils.TranslateCallback translateCallback2 = translateCallback;
                                Objects.requireNonNull(translateCallback2);
                                AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback2));
                                if (responseBodyBody == null) {
                                    return;
                                }
                            } else {
                                GoogleTranslator.this.processJsonResponse(responseBodyBody.string(), "sentences", translateCallback);
                            }
                            responseBodyBody.close();
                        } finally {
                        }
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                        TranslatorUtils.TranslateCallback translateCallback3 = translateCallback;
                        Objects.requireNonNull(translateCallback3);
                        AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback3));
                    }
                }
            });
        } catch (Exception e) {
            FileLog.m1136e(e);
            Objects.requireNonNull(translateCallback);
            AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback));
        }
    }
}
