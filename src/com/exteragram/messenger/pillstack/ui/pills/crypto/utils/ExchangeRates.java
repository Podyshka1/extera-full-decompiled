package com.exteragram.messenger.pillstack.ui.pills.crypto.utils;

import android.text.TextUtils;
import com.android.tools.r8.RecordTag;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.ai.network.Client$ImagePayload$$ExternalSyntheticRecord1;
import com.exteragram.messenger.pillstack.core.PillStackConfig;
import com.exteragram.messenger.pillstack.core.PillType;
import com.exteragram.messenger.utils.network.ExteraHttpClient;
import com.exteragram.messenger.utils.network.RemoteUtils;
import com.google.gson.annotations.SerializedName;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.BillingController;
import org.telegram.messenger.CacheFetcher;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;

/* JADX INFO: loaded from: classes.dex */
public abstract class ExchangeRates {
    private static volatile State cacheValue;
    private static final CacheFetcher<Integer, State> fetcher;
    private static boolean remoteInFlight;
    public static final String[] MAIN_CURRENCIES = {"USD", "EUR", "RUB", "GBP", "KZT", "TRY", "UAH", "PLN", "AED", "CNY", "JPY", "BYN", "ILS", "CZK", "INR", "TON", "BTC", "ETH", "SOL"};
    public static final String[] CRYPTO_CURRENCIES = {"BTC", "ETH", "SOL", "TON", "USD", "EUR"};
    private static final ArrayList<Utilities.Callback4<Boolean, State, Long, Boolean>> pendingRemote = new ArrayList<>();

    static {
        NotificationCenter.getGlobalInstance().addObserver(new NotificationCenter.NotificationCenterDelegate() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ExchangeRates$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
            public final void didReceivedNotification(int i, int i2, Object[] objArr) {
                ExchangeRates.$r8$lambda$cWqt41mowJXyOQJBhkZjVVpZpSM(i, i2, objArr);
            }
        }, NotificationCenter.pillStackSettingsChanged);
        fetcher = new CacheFetcher<Integer, State>(300000) { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ExchangeRates.1
            @Override // org.telegram.messenger.CacheFetcher
            public boolean saveLastTimeRequested() {
                return true;
            }

            @Override // org.telegram.messenger.CacheFetcher
            public void getLocal(int i, Integer num, Utilities.Callback2<Long, State> callback2) {
                callback2.run(0L, ExchangeRates.getCached());
            }

            @Override // org.telegram.messenger.CacheFetcher
            public void setLocal(int i, Integer num, State state, long j) {
                if (state == null) {
                    return;
                }
                ExchangeRates.cacheValue = state;
                try {
                    PillStackConfig.getEditor().putString("exchangeRatesCache", ExteraConfig.getGSON().toJson(state)).apply();
                } catch (Exception e) {
                    FileLog.m992e(e);
                }
            }

            @Override // org.telegram.messenger.CacheFetcher
            public void getRemote(int i, Integer num, long j, Utilities.Callback4<Boolean, State, Long, Boolean> callback4) {
                synchronized (ExchangeRates.pendingRemote) {
                    try {
                        ExchangeRates.pendingRemote.add(callback4);
                        if (ExchangeRates.remoteInFlight) {
                            return;
                        }
                        ExchangeRates.remoteInFlight = true;
                        ExteraHttpClient.INSTANCE.getClient().newCall(new Request.Builder().url("https://api.coinbase.com/v2/exchange-rates?currency=USD").build()).enqueue(new Callback() { // from class: com.exteragram.messenger.pillstack.ui.pills.crypto.utils.ExchangeRates.1.1
                            @Override // okhttp3.Callback
                            public void onFailure(Call call, IOException iOException) {
                                FileLog.m992e(iOException);
                                ExchangeRates.completeRemote(null);
                            }

                            @Override // okhttp3.Callback
                            public void onResponse(Call call, Response response) {
                                if (!response.getIsSuccessful()) {
                                    response.close();
                                    onFailure(call, new IOException("Unexpected code " + response));
                                    return;
                                }
                                try {
                                    ResponseBody responseBodyBody = response.body();
                                    try {
                                        ExchangeRates.completeRemote(ExchangeRates.parseState((CoinbaseResponse) ExteraConfig.getGSON().fromJson(responseBodyBody.charStream(), CoinbaseResponse.class)));
                                        responseBodyBody.close();
                                    } finally {
                                    }
                                } catch (Exception e) {
                                    FileLog.m992e(e);
                                    ExchangeRates.completeRemote(null);
                                }
                            }
                        });
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // org.telegram.messenger.CacheFetcher
            public long getSavedLastTimeRequested(int i) {
                return PillStackConfig.getPreferences().getLong("exchangeRatesTimestamp", 0L);
            }

            @Override // org.telegram.messenger.CacheFetcher
            public void setSavedLastTimeRequested(int i, long j) {
                PillStackConfig.getEditor().putLong("exchangeRatesTimestamp", j).apply();
            }
        };
    }

    public static class CoinbaseResponse {

        @SerializedName("data")
        Data data;

        private CoinbaseResponse() {
        }
    }

    public static class Data {

        @SerializedName("currency")
        String currency;

        @SerializedName("rates")
        Map<String, String> rates;

        private Data() {
        }
    }

    public static final class State extends RecordTag {
        public static final DecimalFormat formatter;
        private final Map<String, BigDecimal> usdRates;

        private /* synthetic */ boolean $record$equals(Object obj) {
            return (obj instanceof State) && Objects.equals(this.usdRates, ((State) obj).usdRates);
        }

        private /* synthetic */ Object[] $record$getFieldsAsObjects() {
            return new Object[]{this.usdRates};
        }

        public State(Map<String, BigDecimal> map) {
            this.usdRates = map;
        }

        public final boolean equals(Object obj) {
            return $record$equals(obj);
        }

        public final int hashCode() {
            return Objects.hashCode(this.usdRates);
        }

        public final String toString() {
            return Client$ImagePayload$$ExternalSyntheticRecord1.m235m($record$getFieldsAsObjects(), State.class, "usdRates");
        }

        public Map<String, BigDecimal> usdRates() {
            return this.usdRates;
        }

        static {
            DecimalFormat decimalFormat = new DecimalFormat("#.##");
            formatter = decimalFormat;
            decimalFormat.setDecimalFormatSymbols(DecimalFormatSymbols.getInstance(Locale.ENGLISH));
        }

        public BigDecimal getUsdRate(String str) {
            if (str == null) {
                return null;
            }
            return this.usdRates.get(ExchangeRates.normalize(str));
        }

        public BigDecimal getRate(String str, String str2) {
            BigDecimal usdRate = getUsdRate(str);
            BigDecimal usdRate2 = getUsdRate(str2);
            if (usdRate == null || usdRate2 == null || usdRate2.signum() == 0) {
                return null;
            }
            return usdRate.divide(usdRate2, 12, RoundingMode.HALF_UP);
        }

        public double formatDonate(String str, double d) {
            BigDecimal rate = getRate("USD", str);
            if (rate != null) {
                d = rate.doubleValue();
            }
            double dFloatValue = d * ((double) RemoteUtils.getFloatConfigValue("donates_amount_usd", 5.0f).floatValue());
            if ("ton".equalsIgnoreCase(str)) {
                dFloatValue += (((double) RemoteUtils.getIntConfigValue("donates_ton_markup_percent", 10).intValue()) / 100.0d) * dFloatValue;
            }
            return Double.parseDouble(formatter.format(dFloatValue));
        }
    }

    public static /* synthetic */ void $r8$lambda$cWqt41mowJXyOQJBhkZjVVpZpSM(int i, int i2, Object[] objArr) {
        if (i == NotificationCenter.pillStackSettingsChanged && PillStackConfig.shouldUpdatePill(objArr, PillType.GRAM.getId(), PillType.BTC.getId(), PillType.USD.getId())) {
            clearCache();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void completeRemote(State state) {
        int i;
        ArrayList arrayList;
        ArrayList<Utilities.Callback4<Boolean, State, Long, Boolean>> arrayList2 = pendingRemote;
        synchronized (arrayList2) {
            i = 0;
            remoteInFlight = false;
            arrayList = new ArrayList(arrayList2);
            arrayList2.clear();
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            Utilities.Callback4 callback4 = (Utilities.Callback4) obj;
            if (state == null) {
                callback4.run(Boolean.TRUE, null, 0L, Boolean.FALSE);
            } else {
                callback4.run(Boolean.FALSE, state, 0L, Boolean.TRUE);
            }
        }
    }

    public static State getCached() {
        if (cacheValue == null) {
            try {
                String string = PillStackConfig.getPreferences().getString("exchangeRatesCache", null);
                if (string != null) {
                    cacheValue = (State) ExteraConfig.getGSON().fromJson(string, State.class);
                }
            } catch (Exception e) {
                FileLog.m992e(e);
            }
        }
        return cacheValue;
    }

    public static void clearCache() {
        PillStackConfig.getEditor().putLong("exchangeRatesTimestamp", 0L).apply();
        fetcher.forceRequest(0, 0);
    }

    public static boolean isSupportedCurrency(String str) {
        if (str == null) {
            return false;
        }
        String strNormalize = normalize(str);
        for (String str2 : MAIN_CURRENCIES) {
            if (str2.equals(strNormalize)) {
                return true;
            }
        }
        return false;
    }

    public static String resolveTargetCurrency(int i, String str) {
        String strNormalize = normalize(str);
        if (!"AUTO".equals(strNormalize)) {
            return (TextUtils.isEmpty(strNormalize) || !isSupportedCurrency(strNormalize)) ? "USD" : strNormalize;
        }
        String targetCurrency = BillingController.getInstance().getTargetCurrency(i, false);
        if (targetCurrency == null) {
            return "USD";
        }
        String strNormalize2 = normalize(targetCurrency);
        return isSupportedCurrency(strNormalize2) ? strNormalize2 : "USD";
    }

    public static void fetch(Utilities.Callback<State> callback) {
        if (callback == null) {
            return;
        }
        fetcher.fetch(0, 0, callback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static State parseState(CoinbaseResponse coinbaseResponse) {
        Data data;
        if (coinbaseResponse == null || (data = coinbaseResponse.data) == null || data.rates == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str : MAIN_CURRENCIES) {
            BigDecimal usdRate = parseUsdRate(str, coinbaseResponse.data.rates);
            if (usdRate != null) {
                map.put(str, usdRate);
            }
        }
        if (map.isEmpty()) {
            return null;
        }
        return new State(map);
    }

    private static BigDecimal parseUsdRate(String str, Map<String, String> map) {
        if ("USD".equals(str)) {
            return BigDecimal.ONE;
        }
        String str2 = map.get(str);
        if (str2 == null) {
            return null;
        }
        try {
            BigDecimal bigDecimal = new BigDecimal(str2);
            if (bigDecimal.signum() == 0) {
                return null;
            }
            return BigDecimal.ONE.divide(bigDecimal, 16, RoundingMode.HALF_UP);
        } catch (Exception e) {
            FileLog.m992e(e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String normalize(String str) {
        if (str == null) {
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return str.trim().toUpperCase(Locale.ROOT);
    }
}
