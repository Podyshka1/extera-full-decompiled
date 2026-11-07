package com.exteragram.messenger.pillstack.ui.pills.crypto.utils;

import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.ai.network.backend.RestBackend$Endpoint$$ExternalSyntheticRecord0;
import com.exteragram.messenger.utils.network.ExchangeRates;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Arrays;
import java.util.Currency;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.ui.Wallet.CurrenciesController;

/* JADX INFO: loaded from: classes.dex */
public abstract class PillStackCurrencies {
    private static final HashSet<String> AMBIGUOUS_SYMBOLS = new HashSet<>(Arrays.asList("$", "kr", "Fr", "₩"));
    private static final Map<String, CurrencyInfo> CURRENCIES;
    private static final HashSet<String> PILL_CURRENCIES;
    public static final String[] TARGET_CURRENCIES;

    public static final class CurrencyInfo extends RecordTag {
        private final boolean suffixSymbol;
        private final String symbolOverride;

        private /* synthetic */ boolean $record$equals(Object obj) {
            if (!(obj instanceof CurrencyInfo)) {
                return false;
            }
            CurrencyInfo currencyInfo = (CurrencyInfo) obj;
            return this.suffixSymbol == currencyInfo.suffixSymbol && Objects.equals(this.symbolOverride, currencyInfo.symbolOverride);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.symbolOverride, Boolean.valueOf(this.suffixSymbol)};
        }

        private CurrencyInfo(String str, boolean z) {
            this.symbolOverride = str;
            this.suffixSymbol = z;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return RestBackend$Endpoint$$ExternalSyntheticRecord0.m240m(this.suffixSymbol, this.symbolOverride);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m238m($record$getFieldsAsObjects(), CurrencyInfo.class, "symbolOverride;suffixSymbol");
        }
    }

    static {
        List<String> list = ExchangeRates.FIAT_CURRENCIES;
        HashSet<String> hashSet = new HashSet<>(list);
        PILL_CURRENCIES = hashSet;
        CURRENCIES = new HashMap();
        hashSet.addAll(Arrays.asList("TON", "BTC", "ETH", "SOL"));
        int i = 0;
        addCurrency("USD", "$", false);
        addCurrency("RUB", "₽", true);
        addCurrency("KZT", "₸", true);
        addCurrency("TRY", "₺", true);
        addCurrency("UAH", "₴", true);
        addCurrency("PLN", "zł", true);
        addCurrency("CNY", "CN¥", false);
        addCurrency("BYN", "Br", true);
        addCurrency("ILS", "₪", false);
        addCurrency("CZK", "Kč", true);
        addCurrency("INR", "₹", false);
        String[] strArr = new String[list.size() + 1];
        TARGET_CURRENCIES = strArr;
        strArr[0] = "AUTO";
        while (true) {
            List<String> list2 = ExchangeRates.FIAT_CURRENCIES;
            if (i >= list2.size()) {
                return;
            }
            int i2 = i + 1;
            TARGET_CURRENCIES[i2] = list2.get(i);
            i = i2;
        }
    }

    private static void addCurrency(String str, String str2, boolean z) {
        CURRENCIES.put(normalize(str), new CurrencyInfo(str2, z));
    }

    public static CharSequence getTargetCurrencySubtext(String str) {
        if (str == null || "AUTO".equalsIgnoreCase(str)) {
            return LocaleController.getString(C2807R.string.QualityAuto);
        }
        return getCurrencyName(str);
    }

    public static String getCurrencyName(String str) {
        String strNormalize = normalize(str);
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        try {
            return CurrenciesController.capitalizeFirstLetter(Currency.getInstance(strNormalize).getDisplayName(currentLocale), currentLocale);
        } catch (IllegalArgumentException unused) {
            return strNormalize;
        }
    }

    public static String resolveTargetCurrency(int i, String str) {
        String strNormalize = normalize(str);
        if (!"AUTO".equals(strNormalize)) {
            return PILL_CURRENCIES.contains(strNormalize) ? strNormalize : "USD";
        }
        String localCurrency = ExchangeRates.getLocalCurrency(i);
        return (localCurrency == null || !PILL_CURRENCIES.contains(localCurrency)) ? "USD" : localCurrency;
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
                CurrencyInfo currencyInfo = CURRENCIES.get(strNormalize);
                String symbol = currencyInfo != null ? currencyInfo.symbolOverride : null;
                boolean z = symbol != null;
                if (!z) {
                    try {
                        symbol = Currency.getInstance(strNormalize).getSymbol(locale);
                    } catch (Exception e) {
                        FileLog.m1040e(e);
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
