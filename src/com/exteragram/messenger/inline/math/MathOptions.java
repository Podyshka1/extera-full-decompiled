package com.exteragram.messenger.inline.math;

import com.exteragram.messenger.inline.rates.CurrencyRates;
import com.exteragram.messenger.inline.time.TimeZoneOptions;
import kotlin.Metadata;
import okhttp3.internal.url._UrlKt;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018\u00002\u00020\u0001Bg\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\b\b\u0002\u0010\f\u001a\u00020\t\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\b\b\u0002\u0010\u000f\u001a\u00020\t¢\u0006\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0015R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0019R\u0011\u0010\f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0019R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0011\u0010\u000f\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u0019¨\u0006 "}, d2 = {"Lcom/exteragram/messenger/inline/math/MathOptions;", _UrlKt.FRAGMENT_ENCODE_SET, "decimalSeparator", _UrlKt.FRAGMENT_ENCODE_SET, "rates", "Lcom/exteragram/messenger/inline/rates/CurrencyRates;", "localCurrency", _UrlKt.FRAGMENT_ENCODE_SET, "arithmetic", _UrlKt.FRAGMENT_ENCODE_SET, "units", "degrees", "grouping", "timeZones", "Lcom/exteragram/messenger/inline/time/TimeZoneOptions;", "imperial", "<init>", "(CLcom/exteragram/messenger/inline/rates/CurrencyRates;Ljava/lang/String;ZZZZLcom/exteragram/messenger/inline/time/TimeZoneOptions;Z)V", "getDecimalSeparator", "()C", "getRates", "()Lcom/exteragram/messenger/inline/rates/CurrencyRates;", "getLocalCurrency", "()Ljava/lang/String;", "getArithmetic", "()Z", "getUnits", "getDegrees", "getGrouping", "getTimeZones", "()Lcom/exteragram/messenger/inline/time/TimeZoneOptions;", "getImperial", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
public final class MathOptions {
    private final boolean arithmetic;
    private final char decimalSeparator;
    private final boolean degrees;
    private final boolean grouping;
    private final boolean imperial;
    private final String localCurrency;
    private final CurrencyRates rates;
    private final TimeZoneOptions timeZones;
    private final boolean units;

    public MathOptions(char c2, CurrencyRates currencyRates, String str, boolean z, boolean z2, boolean z3, boolean z4, TimeZoneOptions timeZoneOptions, boolean z5) {
        this.decimalSeparator = c2;
        this.rates = currencyRates;
        this.localCurrency = str;
        this.arithmetic = z;
        this.units = z2;
        this.degrees = z3;
        this.grouping = z4;
        this.timeZones = timeZoneOptions;
        this.imperial = z5;
    }

    public final char getDecimalSeparator() {
        return this.decimalSeparator;
    }

    public final CurrencyRates getRates() {
        return this.rates;
    }

    public final String getLocalCurrency() {
        return this.localCurrency;
    }

    public final boolean getArithmetic() {
        return this.arithmetic;
    }

    public final boolean getUnits() {
        return this.units;
    }

    public final boolean getDegrees() {
        return this.degrees;
    }

    public final boolean getGrouping() {
        return this.grouping;
    }

    public final TimeZoneOptions getTimeZones() {
        return this.timeZones;
    }

    public final boolean getImperial() {
        return this.imperial;
    }
}
