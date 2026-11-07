package com.exteragram.messenger.translator.core;

import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.translator.FormattedTranslation;
import com.exteragram.messenger.translator.TranslatorUtils;
import com.exteragram.messenger.translator.core.TranslationDispatcher;
import com.exteragram.messenger.translator.core.TranslationError;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.sun.jna.Callback;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.url._UrlKt;
import org.telegram.tgnet.TLRPC;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\b&\u0018\u0000 (2\u00020\u0001:\u0001(B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J0\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\b\b\u0002\u0010\u0013\u001a\u00020\u0014H&J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH&J&\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u001e\u001a\u00020\u001fJB\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u001a\u0010 \u001a\u0016\u0012\u0004\u0012\u00020\"\u0018\u00010!j\n\u0012\u0004\u0012\u00020\"\u0018\u0001`#2\u0006\u0010\u001e\u001a\u00020\u001fJ\u0010\u0010$\u001a\u00020%2\u0006\u0010\u0017\u001a\u00020\u0018H\u0004J\u0010\u0010&\u001a\u00020'2\u0006\u0010\u0017\u001a\u00020\u0018H\u0004R\u0012\u0010\u0004\u001a\u00020\u0005X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006)"}, d2 = {"Lcom/exteragram/messenger/translator/core/HttpTranslator;", "Lcom/exteragram/messenger/translator/core/BaseTranslator;", "<init>", "()V", "limits", "Lcom/exteragram/messenger/translator/core/ProviderLimits;", "getLimits", "()Lcom/exteragram/messenger/translator/core/ProviderLimits;", "client", "Lokhttp3/OkHttpClient;", "getClient", "()Lokhttp3/OkHttpClient;", "buildRequest", "Lokhttp3/Request;", "texts", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "fromLang", "toLang", "html", _UrlKt.FRAGMENT_ENCODE_SET, "parseResponse", "Lcom/exteragram/messenger/translator/core/ProviderResponse;", PluginsConstants.RESPONSE, "Lokhttp3/Response;", "expected", _UrlKt.FRAGMENT_ENCODE_SET, "translate", _UrlKt.FRAGMENT_ENCODE_SET, "text", Callback.METHOD_NAME, "Lcom/exteragram/messenger/translator/TranslatorUtils$TranslateCallback;", "entities", "Ljava/util/ArrayList;", "Lorg/telegram/tgnet/TLRPC$MessageEntity;", "Lkotlin/collections/ArrayList;", "httpError", "Lcom/exteragram/messenger/translator/core/TranslationError;", "retryAfterMs", _UrlKt.FRAGMENT_ENCODE_SET, "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public abstract class HttpTranslator extends BaseTranslator {
    public abstract Request buildRequest(List<String> texts, String fromLang, String toLang, boolean html);

    public abstract ProviderLimits getLimits();

    public abstract ProviderResponse parseResponse(Response response, int expected);

    public OkHttpClient getClient() {
        return ExteraHttpClient.INSTANCE.getClient();
    }

    @Override // com.exteragram.messenger.translator.core.BaseTranslator
    public final void translate(String text, String fromLang, String toLang, final TranslatorUtils.TranslateCallback callback) {
        if (StringsKt.isBlank(text)) {
            callback.onFailed(TranslationError.Fatal.INSTANCE);
        } else {
            TranslationDispatcher.enqueue$default(this, 0L, CollectionsKt.listOf(text), fromLang, toLang, true, false, new TranslationDispatcher.Completion() { // from class: com.exteragram.messenger.translator.core.HttpTranslator$$ExternalSyntheticLambda1
                @Override // com.exteragram.messenger.translator.core.TranslationDispatcher.Completion
                public final void onDone(List list, TranslationError translationError) {
                    HttpTranslator.$r8$lambda$jSPAM0EKvxpcBjvYueCfZMWI2q4(callback, list, translationError);
                }
            }, 64, null);
        }
    }

    public static void $r8$lambda$jSPAM0EKvxpcBjvYueCfZMWI2q4(TranslatorUtils.TranslateCallback translateCallback, List list, TranslationError translationError) {
        String str = list != null ? (String) CollectionsKt.firstOrNull(list) : null;
        if (str != null && str.length() != 0) {
            translateCallback.onSuccess(str);
            return;
        }
        if (translationError == null) {
            translationError = TranslationError.Fatal.INSTANCE;
        }
        translateCallback.onFailed(translationError);
    }

    public final void translate(String text, String fromLang, String toLang, ArrayList<TLRPC.MessageEntity> entities, final TranslatorUtils.TranslateCallback callback) {
        TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        tL_textWithEntities.text = text;
        if (entities == null) {
            entities = new ArrayList<>();
        }
        tL_textWithEntities.entities = entities;
        FormattedTranslation.translate(0L, CollectionsKt.listOf(tL_textWithEntities), fromLang, toLang, this, true, new FormattedTranslation.Callback() { // from class: com.exteragram.messenger.translator.core.HttpTranslator$$ExternalSyntheticLambda0
            @Override // com.exteragram.messenger.translator.FormattedTranslation.Callback
            public final void onResult(List list, TranslationError translationError) {
                HttpTranslator.m3313$r8$lambda$OYzBBAqqTUTLb5RFV8Veh5MgC0(callback, list, translationError);
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$OYzBBAqqTUTLb5-RFV8Veh5MgC0, reason: not valid java name */
    public static void m3313$r8$lambda$OYzBBAqqTUTLb5RFV8Veh5MgC0(TranslatorUtils.TranslateCallback translateCallback, List list, TranslationError translationError) {
        String str;
        TLRPC.TL_textWithEntities tL_textWithEntities = (TLRPC.TL_textWithEntities) CollectionsKt.firstOrNull(list);
        if (tL_textWithEntities != null && (str = tL_textWithEntities.text) != null && str.length() != 0) {
            translateCallback.onSuccess(tL_textWithEntities.text);
            translateCallback.onSuccess(tL_textWithEntities);
        } else {
            if (translationError == null) {
                translationError = TranslationError.Fatal.INSTANCE;
            }
            translateCallback.onFailed(translationError);
        }
    }

    public final TranslationError httpError(Response response) {
        if (response.code() == 429) {
            return new TranslationError.RateLimited(retryAfterMs(response));
        }
        int iCode = response.code();
        return (500 > iCode || iCode >= 600) ? TranslationError.Fatal.INSTANCE : TranslationError.Transient.INSTANCE;
    }

    public final long retryAfterMs(Response response) {
        String string;
        String strHeader$default = Response.header$default(response, "Retry-After", null, 2, null);
        if (strHeader$default == null || (string = StringsKt.trim((CharSequence) strHeader$default).toString()) == null) {
            return 0L;
        }
        Long longOrNull = StringsKt.toLongOrNull(string);
        return (longOrNull != null ? longOrNull.longValue() : 0L) * 1000;
    }
}
