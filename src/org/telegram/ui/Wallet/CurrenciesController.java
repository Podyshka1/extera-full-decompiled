package org.telegram.ui.Wallet;

import android.icu.util.ULocale;
import android.text.TextUtils;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import java.util.ArrayList;
import java.util.Currency;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AiTonesController$$ExternalSyntheticLambda0;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.utils.BillingUtilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.tl.TL_wallet;

/* JADX INFO: loaded from: classes8.dex */
public class CurrenciesController {
    private TL_wallet.currencyRates currencyRates;
    private String currencyRatesLanguage = "en";
    private String currencySetting;
    public final int currentAccount;
    private boolean loadingCurrencyRates;
    private final GramWallet wallet;

    public CurrenciesController(GramWallet gramWallet) {
        this.wallet = gramWallet;
        this.currentAccount = gramWallet.currentAccount;
        loadPrefs();
        if (TextUtils.equals(getCurrency(), "USD")) {
            return;
        }
        getCurrencies();
    }

    private void loadPrefs() {
        try {
            this.currencySetting = ApplicationLoader.applicationContext.getSharedPreferences("gram_wallet", 0).getString("currency", getCurrency());
        } catch (Exception e) {
            FileLog.m1039e("[gram-wallet] failed to load currency prefs", e);
        }
    }

    private void savePrefs() {
        try {
            ApplicationLoader.applicationContext.getSharedPreferences("gram_wallet", 0).edit().putString("currency", getCurrency()).apply();
        } catch (Exception e) {
            FileLog.m1039e("[gram-wallet] failed to save currency prefs", e);
        }
    }

    public TL_wallet.currencyRate getSelectedCurrencyRate() {
        String currency = getCurrency();
        if (this.currencyRates == null) {
            if (TextUtils.equals(currency, "USD")) {
                return createFallbackUsdRate();
            }
            return null;
        }
        for (int i = 0; i < this.currencyRates.rates.size(); i++) {
            TL_wallet.currencyRate currencyrate = this.currencyRates.rates.get(i);
            if (TextUtils.equals(currencyrate.currency, currency)) {
                return currencyrate;
            }
        }
        return null;
    }

    public String getCurrency() {
        String str = this.currencySetting;
        return str == null ? "USD" : str;
    }

    public String getCurrencyTitle() {
        String currency = getCurrency();
        TL_wallet.currencyRates currencies = getCurrencies();
        if (currencies != null) {
            for (int i = 0; i < currencies.rates.size(); i++) {
                TL_wallet.currencyRate currencyrate = currencies.rates.get(i);
                if (TextUtils.equals(currencyrate.currency, currency)) {
                    return TextUtils.isEmpty(currencyrate.translatedTitle) ? currencyrate.title : currencyrate.translatedTitle;
                }
            }
            return _UrlKt.FRAGMENT_ENCODE_SET;
        }
        return _UrlKt.FRAGMENT_ENCODE_SET;
    }

    public void setCurrency(String str) {
        if (TextUtils.equals(this.currencySetting, str)) {
            return;
        }
        this.currencySetting = str;
        savePrefs();
        this.wallet.notifyUpdate();
    }

    public double getCurrencyRate() {
        String currency = getCurrency();
        if (TextUtils.equals(currency, "USD")) {
            return 1.0d;
        }
        if (this.currencyRates == null) {
            return 0.0d;
        }
        for (int i = 0; i < this.currencyRates.rates.size(); i++) {
            TL_wallet.currencyRate currencyrate = this.currencyRates.rates.get(i);
            if (TextUtils.equals(currencyrate.currency, currency)) {
                return currencyrate.rate;
            }
        }
        return 0.0d;
    }

    public TL_wallet.currencyRates getCurrencies() {
        String language;
        if (this.currencyRates == null) {
            if (this.loadingCurrencyRates) {
                return null;
            }
            this.loadingCurrencyRates = true;
            ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(new TL_wallet.getCurrencyRates(), new AiTonesController$$ExternalSyntheticLambda0(), new Utilities.Callback2() { // from class: org.telegram.ui.Wallet.CurrenciesController$$ExternalSyntheticLambda0
                @Override // org.telegram.messenger.Utilities.Callback2
                public final void run(Object obj, Object obj2) {
                    this.f$0.lambda$getCurrencies$2((TL_wallet.currencyRates) obj, (TLRPC.TL_error) obj2);
                }
            });
        } else {
            Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
            if (currentLocale == null || TextUtils.isEmpty(currentLocale.getLanguage())) {
                language = "en";
            } else {
                language = currentLocale.getLanguage();
            }
            if (!TextUtils.equals(this.currencyRatesLanguage, language)) {
                boolean zEquals = TextUtils.equals(language, "en");
                for (int i = 0; i < this.currencyRates.rates.size(); i++) {
                    TL_wallet.currencyRate currencyrate = this.currencyRates.rates.get(i);
                    if (currencyrate != null) {
                        currencyrate.translatedTitle = null;
                        if (!zEquals && !TextUtils.isEmpty(currencyrate.currency)) {
                            try {
                                currencyrate.translatedTitle = capitalizeFirstLetter(Currency.getInstance(currencyrate.currency).getDisplayName(currentLocale), currentLocale);
                            } catch (IllegalArgumentException unused) {
                            }
                        }
                    }
                }
                this.currencyRatesLanguage = language;
            }
        }
        return this.currencyRates;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrencies$2(final TL_wallet.currencyRates currencyrates, TLRPC.TL_error tL_error) {
        if (tL_error != null) {
            FileLog.m1037d("[gram-wallet] failed to load currency rates: " + tL_error.text);
            return;
        }
        Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.ui.Wallet.CurrenciesController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getCurrencies$1(currencyrates);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrencies$1(final TL_wallet.currencyRates currencyrates) {
        BillingUtilities.fillTitles(currencyrates);
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Wallet.CurrenciesController$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$getCurrencies$0(currencyrates);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getCurrencies$0(TL_wallet.currencyRates currencyrates) {
        this.currencyRates = currencyrates;
        this.loadingCurrencyRates = false;
        this.wallet.notifyUpdate();
    }

    public static String capitalizeFirstLetter(String str, Locale locale) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        while (i < str.length()) {
            int iCodePointAt = str.codePointAt(i);
            int iCharCount = Character.charCount(iCodePointAt) + i;
            if (Character.isLetter(iCodePointAt)) {
                return str.substring(0, i) + str.substring(i, iCharCount).toUpperCase(locale) + str.substring(iCharCount);
            }
            i = iCharCount;
        }
        return str;
    }

    public ArrayList<TL_wallet.currencyRate> getHintCurrencies() {
        TL_wallet.currencyRate currencyrate;
        ArrayList<TL_wallet.currencyRate> arrayList;
        ArrayList<TL_wallet.currencyRate> arrayList2 = new ArrayList<>();
        TL_wallet.currencyRates currencies = getCurrencies();
        TL_wallet.currencyRate currencyrateCreateFallbackUsdRate = null;
        if (currencies == null || (arrayList = currencies.rates) == null) {
            currencyrate = null;
        } else {
            int size = arrayList.size();
            int i = 0;
            currencyrate = null;
            while (i < size) {
                TL_wallet.currencyRate currencyrate2 = arrayList.get(i);
                i++;
                TL_wallet.currencyRate currencyrate3 = currencyrate2;
                if (currencyrate3 != null && TextUtils.equals(currencyrate3.currency, "USD")) {
                    currencyrateCreateFallbackUsdRate = currencyrate3;
                } else if (currencyrate3 != null && TextUtils.equals(currencyrate3.currency, "EUR")) {
                    currencyrate = currencyrate3;
                }
            }
        }
        if (currencyrateCreateFallbackUsdRate == null) {
            currencyrateCreateFallbackUsdRate = createFallbackUsdRate();
        }
        arrayList2.add(currencyrateCreateFallbackUsdRate);
        if (currencyrate != null) {
            arrayList2.add(currencyrate);
        }
        if (currencies != null && currencies.rates != null) {
            LinkedHashSet<String> linkedHashSet = new LinkedHashSet();
            linkedHashSet.add(getCurrency());
            addKeyboardCurrencyHints(linkedHashSet);
            addCurrencyHintForCountry(linkedHashSet, MessagesController.getInstance(this.currentAccount).config.phoneCountryIso2.get());
            addCurrencyHintForLocale(linkedHashSet, LocaleController.getInstance().getCurrentLocale());
            addCurrencyHintForLocale(linkedHashSet, LocaleController.getInstance().getSystemDefaultLocale());
            for (String str : linkedHashSet) {
                if (!TextUtils.equals(str, "USD") && !TextUtils.equals(str, "EUR")) {
                    ArrayList<TL_wallet.currencyRate> arrayList3 = currencies.rates;
                    int size2 = arrayList3.size();
                    int i2 = 0;
                    while (true) {
                        if (i2 < size2) {
                            TL_wallet.currencyRate currencyrate4 = arrayList3.get(i2);
                            i2++;
                            TL_wallet.currencyRate currencyrate5 = currencyrate4;
                            if (currencyrate5 != null && TextUtils.equals(currencyrate5.currency, str)) {
                                arrayList2.add(currencyrate5);
                                break;
                            }
                        }
                    }
                }
            }
        }
        return arrayList2;
    }

    private TL_wallet.currencyRate createFallbackUsdRate() {
        TL_wallet.currencyRate currencyrate = new TL_wallet.currencyRate();
        currencyrate.currency = "USD";
        currencyrate.rate = 1.0d;
        currencyrate.title = LocaleController.getString(C2807R.string.WalletCurrencyUSD);
        currencyrate.symbol = "$";
        currencyrate.thousandsSeparator = ",";
        currencyrate.decimalSeparator = ".";
        currencyrate.symbolLeft = true;
        currencyrate.spaceBetween = false;
        currencyrate.dropZeros = false;
        currencyrate.exp = 2;
        return currencyrate;
    }

    private static void addKeyboardCurrencyHints(LinkedHashSet<String> linkedHashSet) {
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) ApplicationLoader.applicationContext.getSystemService("input_method");
            if (inputMethodManager == null) {
                return;
            }
            addCurrencyHintForKeyboardSubtype(linkedHashSet, inputMethodManager.getCurrentInputMethodSubtype());
            Iterator<InputMethodInfo> it = inputMethodManager.getEnabledInputMethodList().iterator();
            while (it.hasNext()) {
                Iterator<InputMethodSubtype> it2 = inputMethodManager.getEnabledInputMethodSubtypeList(it.next(), true).iterator();
                while (it2.hasNext()) {
                    addCurrencyHintForKeyboardSubtype(linkedHashSet, it2.next());
                }
            }
        } catch (Exception e) {
            FileLog.m1040e(e);
        }
    }

    private static void addCurrencyHintForKeyboardSubtype(LinkedHashSet<String> linkedHashSet, InputMethodSubtype inputMethodSubtype) {
        if (inputMethodSubtype == null || !"keyboard".equals(inputMethodSubtype.getMode())) {
            return;
        }
        String languageTag = inputMethodSubtype.getLanguageTag();
        if (TextUtils.isEmpty(languageTag)) {
            languageTag = inputMethodSubtype.getLocale();
        }
        if (TextUtils.isEmpty(languageTag)) {
            return;
        }
        addCurrencyHintForLocale(linkedHashSet, Locale.forLanguageTag(languageTag.replace('_', SignatureVisitor.SUPER)));
    }

    private static void addCurrencyHintForLocale(LinkedHashSet<String> linkedHashSet, Locale locale) {
        if (locale == null) {
            return;
        }
        String country = locale.getCountry();
        if (TextUtils.isEmpty(country)) {
            country = ULocale.addLikelySubtags(ULocale.forLocale(locale)).getCountry();
        }
        addCurrencyHintForCountry(linkedHashSet, country);
    }

    private static void addCurrencyHintForCountry(LinkedHashSet<String> linkedHashSet, String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            Currency currency = Currency.getInstance(new Locale(_UrlKt.FRAGMENT_ENCODE_SET, str.toUpperCase(Locale.US)));
            if (currency != null) {
                linkedHashSet.add(currency.getCurrencyCode());
            }
        } catch (IllegalArgumentException unused) {
        }
    }
}
