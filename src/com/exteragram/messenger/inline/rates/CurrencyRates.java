package com.exteragram.messenger.inline.rates;

import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u001f\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0005H&¢\u0006\u0002\u0010\n¨\u0006\u000bÀ\u0006\u0003"}, d2 = {"Lcom/exteragram/messenger/inline/rates/CurrencyRates;", _UrlKt.FRAGMENT_ENCODE_SET, "supports", _UrlKt.FRAGMENT_ENCODE_SET, "code", _UrlKt.FRAGMENT_ENCODE_SET, "rate", _UrlKt.FRAGMENT_ENCODE_SET, "from", "to", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public interface CurrencyRates {
    Double rate(String from, String to);

    boolean supports(String code);
}
