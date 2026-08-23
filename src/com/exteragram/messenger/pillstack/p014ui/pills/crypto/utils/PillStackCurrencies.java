package com.exteragram.messenger.pillstack.p014ui.pills.crypto.utils;

import com.android.tools.p007r8.RecordTag;
import com.exteragram.messenger.export.api.ApiWrap$Poll$Answer$$ExternalSyntheticRecord0;
import com.exteragram.messenger.p008ai.p009ui.AbstractC1011x1d8a54ff;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import p022j$.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public abstract class PillStackCurrencies {
    private static final HashSet AMBIGUOUS_SYMBOLS = new HashSet(Arrays.asList("$", "kr", "Fr", "₩"));
    private static final Map CURRENCIES = new HashMap();
    public static final String[] TARGET_CURRENCIES;

    private static final class CurrencyInfo extends RecordTag {
        private final String code;
        private final int nameResId;
        private final boolean suffixSymbol;
        private final String symbolOverride;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof CurrencyInfo)) {
                return false;
            }
            CurrencyInfo currencyInfo = (CurrencyInfo) obj;
            return this.suffixSymbol == currencyInfo.suffixSymbol && this.nameResId == currencyInfo.nameResId && Objects.equals(this.code, currencyInfo.code) && Objects.equals(this.symbolOverride, currencyInfo.symbolOverride);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.code, Integer.valueOf(this.nameResId), this.symbolOverride, Boolean.valueOf(this.suffixSymbol)};
        }

        private CurrencyInfo(String str, int i, String str2, boolean z) {
            this.code = str;
            this.nameResId = i;
            this.symbolOverride = str2;
            this.suffixSymbol = z;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return ApiWrap$Poll$Answer$$ExternalSyntheticRecord0.m239m(this.suffixSymbol, this.nameResId, this.code, this.symbolOverride);
        }

        public final String toString() {
            return AbstractC1011x1d8a54ff.m224m($record$getFieldsAsObjects(), CurrencyInfo.class, "code;nameResId;symbolOverride;suffixSymbol");
        }
    }

    static {
        addCurrency("USD", C2888R.string.CryptoCurrencyUsd, "$", false);
        addCurrency("EUR", C2888R.string.CryptoCurrencyEur, null, false);
        addCurrency("RUB", C2888R.string.CryptoCurrencyRub, "₽", true);
        addCurrency("GBP", C2888R.string.CryptoCurrencyGbp, null, false);
        addCurrency("KZT", C2888R.string.CryptoCurrencyKzt, "₸", true);
        addCurrency("TRY", C2888R.string.CryptoCurrencyTry, "₺", true);
        addCurrency("UAH", C2888R.string.CryptoCurrencyUah, "₴", true);
        addCurrency("PLN", C2888R.string.CryptoCurrencyPln, "zł", true);
        addCurrency("AED", C2888R.string.CryptoCurrencyAed, null, false);
        addCurrency("CNY", C2888R.string.CryptoCurrencyCny, "CN¥", false);
        addCurrency("JPY", C2888R.string.CryptoCurrencyJpy, null, false);
        addCurrency("BYN", C2888R.string.CryptoCurrencyByn, "Br", true);
        addCurrency("ILS", C2888R.string.CryptoCurrencyIls, "₪", false);
        addCurrency("CZK", C2888R.string.CryptoCurrencyCzk, "Kč", true);
        addCurrency("INR", C2888R.string.CryptoCurrencyInr, "₹", false);
        String[] strArr = new String[16];
        TARGET_CURRENCIES = strArr;
        strArr[0] = "AUTO";
        System.arraycopy(new String[]{"AED", "BYN", "CNY", "CZK", "EUR", "GBP", "ILS", "INR", "JPY", "KZT", "PLN", "RUB", "TRY", "UAH", "USD"}, 0, strArr, 1, 15);
    }

    private static void addCurrency(String str, int i, String str2, boolean z) {
        String strNormalize = normalize(str);
        if (strNormalize.isEmpty()) {
            return;
        }
        CURRENCIES.put(strNormalize, new CurrencyInfo(strNormalize, i, str2, z));
    }

    public static CharSequence getTargetCurrencyLabel(String str) {
        if (str == null || "AUTO".equalsIgnoreCase(str)) {
            return LocaleController.getString(C2888R.string.QualityAuto);
        }
        return getCurrencyLabelWithCode(str);
    }

    public static CharSequence getTargetCurrencySubtext(String str) {
        if (str == null || "AUTO".equalsIgnoreCase(str)) {
            return LocaleController.getString(C2888R.string.QualityAuto);
        }
        return getCurrencyName(str);
    }

    public static String getCurrencyName(String str) {
        String strNormalize = normalize(str);
        CurrencyInfo currencyInfo = (CurrencyInfo) CURRENCIES.get(strNormalize);
        return currencyInfo == null ? strNormalize : LocaleController.getString(currencyInfo.nameResId);
    }

    public static String getCurrencyLabelWithCode(String str) {
        String strNormalize = normalize(str);
        CurrencyInfo currencyInfo = (CurrencyInfo) CURRENCIES.get(strNormalize);
        if (currencyInfo == null) {
            return strNormalize;
        }
        return LocaleController.getString(currencyInfo.nameResId) + " — " + strNormalize;
    }

    public static String[] getTargetCurrencies(String str) {
        if (str == null || str.isEmpty()) {
            return TARGET_CURRENCIES;
        }
        int i = 0;
        for (String str2 : TARGET_CURRENCIES) {
            if (!str.equalsIgnoreCase(str2)) {
                i++;
            }
        }
        String[] strArr = new String[i];
        int i2 = 0;
        for (String str3 : TARGET_CURRENCIES) {
            if (!str.equalsIgnoreCase(str3)) {
                strArr[i2] = str3;
                i2++;
            }
        }
        return strArr;
    }

    public static String formatFiatPrice(BigDecimal bigDecimal, String str) {
        if (bigDecimal != null && str != null && !str.isEmpty()) {
            try {
                int iMax = Math.max(0, BillingController.getInstance().getCurrencyExp(str));
                BigDecimal scale = bigDecimal.setScale(iMax, RoundingMode.HALF_UP);
                Locale locale = Locale.US;
                NumberFormat numberInstance = NumberFormat.getNumberInstance(locale);
                numberInstance.setGroupingUsed(true);
                numberInstance.setMinimumFractionDigits(iMax);
                numberInstance.setMaximumFractionDigits(iMax);
                String str2 = numberInstance.format(scale);
                String strNormalize = normalize(str);
                CurrencyInfo currencyInfo = (CurrencyInfo) CURRENCIES.get(strNormalize);
                String symbol = currencyInfo != null ? currencyInfo.symbolOverride : null;
                boolean z = symbol != null;
                if (!z) {
                    try {
                        symbol = Currency.getInstance(strNormalize).getSymbol(locale);
                    } catch (Exception e) {
                        FileLog.m1136e(e);
                    }
                }
                if (symbol != null && !symbol.isEmpty() && !symbol.equalsIgnoreCase(strNormalize)) {
                    if (!z && AMBIGUOUS_SYMBOLS.contains(symbol)) {
                        return str2 + " " + str;
                    }
                    if (currencyInfo != null && currencyInfo.suffixSymbol) {
                        return str2 + " " + symbol;
                    }
                    return symbol + str2;
                }
                return str2 + " " + str;
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static String normalize(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return str.trim().toUpperCase(Locale.ROOT);
    }
}
