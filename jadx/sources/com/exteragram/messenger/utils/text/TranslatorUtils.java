package com.exteragram.messenger.utils.text;

import android.text.TextUtils;
import android.text.style.URLSpan;
import com.chaquo.python.internal.Common;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.translators.BaseTranslator;
import com.exteragram.messenger.translators.BaseTranslator$$ExternalSyntheticLambda0;
import com.exteragram.messenger.translators.DeepLTranslator;
import com.exteragram.messenger.translators.GoogleTranslator;
import com.exteragram.messenger.translators.TelegramTranslator;
import com.exteragram.messenger.translators.YandexTranslator;
import com.exteragram.messenger.utils.chats.ChatUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import okhttp3.internal.url._UrlKt;
import org.mvel2.asm.signature.SignatureVisitor;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.ChatActivity;
import org.telegram.p029ui.Components.TranslateAlert2;
import org.telegram.p029ui.RestrictedLanguagesSelectActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import p022j$.util.Collection;
import p022j$.util.Comparator;
import p022j$.util.List;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;

/* JADX INFO: loaded from: classes.dex */
public abstract class TranslatorUtils {
    private static final String[] DEVICE_MODELS = {"Galaxy S6", "Galaxy S7", "Galaxy S8", "Galaxy S9", "Galaxy S10", "Galaxy S21", "Pixel 3", "Pixel 4", "Pixel 5", "OnePlus 6", "OnePlus 7", "OnePlus 8", "OnePlus 9", "Xperia XZ", "Xperia XZ2", "Xperia XZ3", "Xperia 1", "Xperia 5", "Xperia 10", "Xperia L4"};
    private static final String[] CHROME_VERSIONS = {"111.0.5563.57", "94.0.4606.81", "80.0.3987.119", "69.0.3497.100", "92.0.4515.159", "71.0.3578.99"};

    /* JADX INFO: renamed from: $r8$lambda$owEUwwVJj2_NHWS0lkyBgFXh-Vc, reason: not valid java name */
    public static /* synthetic */ void m2808$r8$lambda$owEUwwVJj2_NHWS0lkyBgFXhVc(Exception exc) {
    }

    private static List getLanguages() {
        return new ArrayList(TranslateController.getLanguages());
    }

    private static List getIndexedTargetLanguages() {
        return getCurrentTargetLanguages();
    }

    public static String normalizeLanguageCode(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String strReplace = str.trim().toLowerCase(Locale.US).replace('_', SignatureVisitor.SUPER);
        return "nb".equals(strReplace) ? "no" : strReplace;
    }

    public static String primaryLanguageOf(String str) {
        String strNormalizeLanguageCode = normalizeLanguageCode(str);
        if (TextUtils.isEmpty(strNormalizeLanguageCode)) {
            return null;
        }
        int iIndexOf = strNormalizeLanguageCode.indexOf(45);
        return iIndexOf >= 0 ? strNormalizeLanguageCode.substring(0, iIndexOf) : strNormalizeLanguageCode;
    }

    public static boolean isTargetLanguageFollowApp() {
        return Common.ASSET_APP.equalsIgnoreCase(ExteraConfig.targetLang);
    }

    public static boolean isRestrictedLanguage(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (TextUtils.equals(primaryLanguageOf(str), primaryLanguageOf(getResolvedTargetLanguageCode()))) {
            return true;
        }
        String strPrimaryLanguageOf = primaryLanguageOf(str);
        if (TextUtils.isEmpty(strPrimaryLanguageOf)) {
            return false;
        }
        Iterator it = RestrictedLanguagesSelectActivity.getRestrictedLanguages().iterator();
        while (it.hasNext()) {
            if (TextUtils.equals(strPrimaryLanguageOf, primaryLanguageOf((String) it.next()))) {
                return true;
            }
        }
        return false;
    }

    private static TranslateController.Language createLanguageItem(String str) {
        String strNormalizeLanguageCode = normalizeLanguageCode(str);
        TranslateController.Language language = new TranslateController.Language();
        language.code = strNormalizeLanguageCode;
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        String upperCase = _UrlKt.FRAGMENT_ENCODE_SET;
        Locale localeForLanguageTag = Locale.forLanguageTag(strNormalizeLanguageCode == null ? _UrlKt.FRAGMENT_ENCODE_SET : strNormalizeLanguageCode);
        String displayName = localeForLanguageTag.getDisplayName(currentLocale);
        String displayName2 = localeForLanguageTag.getDisplayName(localeForLanguageTag);
        if (TextUtils.isEmpty(displayName)) {
            displayName = TranslateAlert2.capitalFirst(TranslateAlert2.languageName(strNormalizeLanguageCode));
        }
        if (TextUtils.isEmpty(displayName2)) {
            displayName2 = TranslateAlert2.capitalFirst(TranslateAlert2.systemLanguageName(strNormalizeLanguageCode, true));
        }
        if (TextUtils.isEmpty(displayName)) {
            if (strNormalizeLanguageCode != null) {
                upperCase = strNormalizeLanguageCode.toUpperCase(Locale.US);
            }
            displayName = upperCase;
        }
        if (TextUtils.isEmpty(displayName2)) {
            displayName2 = displayName;
        }
        language.displayName = TranslateAlert2.capitalFirst(displayName);
        language.ownDisplayName = TranslateAlert2.capitalFirst(displayName2);
        language.f1618q = (language.displayName + " " + language.ownDisplayName).toLowerCase(Locale.US);
        return language;
    }

    public static ArrayList getCurrentTargetLanguages() {
        BaseTranslator currentTranslator = getCurrentTranslator();
        Set supportedLanguages = currentTranslator.getSupportedLanguages();
        if (supportedLanguages == null || supportedLanguages.isEmpty()) {
            ArrayList arrayList = new ArrayList(TranslateController.getLanguages());
            if (currentTranslator == TelegramTranslator.getInstance()) {
                Collection.EL.removeIf(arrayList, new Predicate() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda3
                    public /* synthetic */ Predicate and(Predicate predicate) {
                        return Predicate$CC.$default$and(this, predicate);
                    }

                    public /* synthetic */ Predicate negate() {
                        return Predicate$CC.$default$negate(this);
                    }

                    /* JADX INFO: renamed from: or */
                    public /* synthetic */ Predicate m288or(Predicate predicate) {
                        return Predicate$CC.$default$or(this, predicate);
                    }

                    @Override // java.util.function.Predicate
                    public final boolean test(Object obj) {
                        return TranslatorUtils.m2800$r8$lambda$u3qoQyKPFjQQxfvY3tDPXiLrqg((TranslateController.Language) obj);
                    }
                });
            }
            return arrayList;
        }
        HashSet hashSet = new HashSet();
        Iterator it = supportedLanguages.iterator();
        while (it.hasNext()) {
            String strNormalizeLanguageCode = normalizeLanguageCode((String) it.next());
            if (!TextUtils.isEmpty(strNormalizeLanguageCode)) {
                hashSet.add(strNormalizeLanguageCode);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            arrayList2.add(createLanguageItem((String) it2.next()));
        }
        List.EL.sort(arrayList2, Comparator.CC.comparing(new Function() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda4
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TranslatorUtils.m2801$r8$lambda$18OxWnu_CeW2xKMEINptzp4GGI((TranslateController.Language) obj);
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }, new java.util.Comparator() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda5
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return ((String) obj).compareToIgnoreCase((String) obj2);
            }
        }));
        return arrayList2;
    }

    /* JADX INFO: renamed from: $r8$lambda$-u3qoQyKPFjQQxfvY3tDPXiLrqg, reason: not valid java name */
    public static /* synthetic */ boolean m2800$r8$lambda$u3qoQyKPFjQQxfvY3tDPXiLrqg(TranslateController.Language language) {
        return language == null || TextUtils.isEmpty(language.code) || language.code.contains("-") || language.code.contains("_");
    }

    /* JADX INFO: renamed from: $r8$lambda$18OxWnu_CeW2xKMEINptzp4-GGI, reason: not valid java name */
    public static /* synthetic */ String m2801$r8$lambda$18OxWnu_CeW2xKMEINptzp4GGI(TranslateController.Language language) {
        String str = language.displayName;
        return str == null ? _UrlKt.FRAGMENT_ENCODE_SET : str;
    }

    private static String getResolvedAppLanguageCode() {
        Locale currentLocale = LocaleController.getInstance().getCurrentLocale();
        if (currentLocale == null) {
            currentLocale = Locale.getDefault();
        }
        String strNormalizeLanguageCode = normalizeLanguageCode(currentLocale.getLanguage());
        String country = currentLocale.getCountry();
        if (!TextUtils.isEmpty(strNormalizeLanguageCode) && !TextUtils.isEmpty(country)) {
            String strNormalizeLanguageCode2 = normalizeLanguageCode(strNormalizeLanguageCode + "-" + country);
            if (isTargetLanguageSupportedForCurrentProvider(strNormalizeLanguageCode2)) {
                return strNormalizeLanguageCode2;
            }
        }
        if (!isTargetLanguageSupportedForCurrentProvider(strNormalizeLanguageCode)) {
            String strNormalizeLanguageCode3 = normalizeLanguageCode(LocaleController.getString(C2888R.string.LanguageCode));
            if (isTargetLanguageSupportedForCurrentProvider(strNormalizeLanguageCode3)) {
                return strNormalizeLanguageCode3;
            }
        }
        return strNormalizeLanguageCode;
    }

    public static String getResolvedTargetLanguageCode(String str) {
        if (Common.ASSET_APP.equalsIgnoreCase(str)) {
            return getResolvedAppLanguageCode();
        }
        String strNormalizeLanguageCode = normalizeLanguageCode(str);
        return TextUtils.isEmpty(strNormalizeLanguageCode) ? getResolvedAppLanguageCode() : strNormalizeLanguageCode;
    }

    public static String getResolvedTargetLanguageCode() {
        return getResolvedTargetLanguageCode(ExteraConfig.targetLang);
    }

    public static CharSequence[] getTargetLanguageTitles() {
        String str;
        java.util.List indexedTargetLanguages = getIndexedTargetLanguages();
        CharSequence[] charSequenceArr = new CharSequence[indexedTargetLanguages.size() + 1];
        int i = 0;
        charSequenceArr[0] = LocaleController.getString(C2888R.string.TranslationTargetApp);
        while (i < indexedTargetLanguages.size()) {
            TranslateController.Language language = (TranslateController.Language) indexedTargetLanguages.get(i);
            i++;
            StringBuilder sb = new StringBuilder();
            sb.append(language.displayName);
            if (language.ownDisplayName == null) {
                str = _UrlKt.FRAGMENT_ENCODE_SET;
            } else {
                str = " – " + language.ownDisplayName;
            }
            sb.append(str);
            charSequenceArr[i] = sb.toString();
        }
        return charSequenceArr;
    }

    public static int getTargetLanguageIndexByCode(String str) {
        if (Common.ASSET_APP.equalsIgnoreCase(str)) {
            return 0;
        }
        java.util.List indexedTargetLanguages = getIndexedTargetLanguages();
        String resolvedTargetLanguageCode = getResolvedTargetLanguageCode(str);
        for (int i = 0; i < indexedTargetLanguages.size(); i++) {
            if (TextUtils.equals(((TranslateController.Language) indexedTargetLanguages.get(i)).code, resolvedTargetLanguageCode)) {
                return i + 1;
            }
        }
        return 0;
    }

    public static String getTargetLanguageCodeByIndex(int i) {
        if (i == 0) {
            return Common.ASSET_APP;
        }
        java.util.List indexedTargetLanguages = getIndexedTargetLanguages();
        int i2 = i - 1;
        if (i2 < 0 || i2 >= indexedTargetLanguages.size()) {
            return null;
        }
        return ((TranslateController.Language) indexedTargetLanguages.get(i2)).code;
    }

    public static String getTargetLanguageTitle() {
        if (isTargetLanguageFollowApp()) {
            return LocaleController.getString(C2888R.string.TranslationTargetApp);
        }
        return getLanguageTitleSystem(getResolvedTargetLanguageCode());
    }

    public static String getResolvedSendTargetLanguageCode() {
        String string = ExteraConfig.preferences.getString("targetLangSend", null);
        if (TextUtils.isEmpty(string)) {
            return "en";
        }
        return getResolvedTargetLanguageCode(string);
    }

    public static int getSendTargetLanguageIndex() {
        String string = ExteraConfig.preferences.getString("targetLangSend", null);
        if (TextUtils.isEmpty(string)) {
            string = "en";
        }
        return getTargetLanguageIndexByCode(string);
    }

    public static String getSendTargetLanguageTitle() {
        return getLanguageTitleSystem(getResolvedSendTargetLanguageCode());
    }

    public static void setTargetLanguage(String str) {
        String str2 = Common.ASSET_APP;
        String strNormalizeLanguageCode = Common.ASSET_APP.equalsIgnoreCase(str) ? Common.ASSET_APP : normalizeLanguageCode(str);
        if (!TextUtils.isEmpty(strNormalizeLanguageCode)) {
            str2 = strNormalizeLanguageCode;
        }
        ExteraConfig.targetLang = str2;
        ExteraConfig.editor.putString("targetLang", str2).apply();
        if (MessagesController.getGlobalMainSettings().getBoolean("translate_button_restricted_languages_changed", false)) {
            return;
        }
        MessagesController.getGlobalMainSettings().edit().remove("translate_button_restricted_languages").apply();
        RestrictedLanguagesSelectActivity.invalidateRestrictedLanguages();
        RestrictedLanguagesSelectActivity.checkRestrictedLanguages(false);
        for (int i = 0; i < 16; i++) {
            try {
                MessagesController.getInstance(i).getTranslateController().checkRestrictedLanguagesUpdate();
            } catch (Exception unused) {
            }
        }
    }

    public static boolean isTargetLanguageSupportedForCurrentProvider(String str) {
        if (Common.ASSET_APP.equalsIgnoreCase(str)) {
            return true;
        }
        String strNormalizeLanguageCode = normalizeLanguageCode(str);
        if (TextUtils.isEmpty(strNormalizeLanguageCode)) {
            return false;
        }
        BaseTranslator currentTranslator = getCurrentTranslator();
        Set supportedLanguages = currentTranslator.getSupportedLanguages();
        if (supportedLanguages == null || supportedLanguages.isEmpty()) {
            return (currentTranslator == TelegramTranslator.getInstance() && strNormalizeLanguageCode.contains("-")) ? false : true;
        }
        Iterator it = supportedLanguages.iterator();
        while (it.hasNext()) {
            if (TextUtils.equals((String) it.next(), strNormalizeLanguageCode)) {
                return true;
            }
        }
        return false;
    }

    public static void ensureTargetLanguageCompatibleWithProvider() {
        if (isTargetLanguageSupportedForCurrentProvider(ExteraConfig.targetLang)) {
            return;
        }
        setTargetLanguage(Common.ASSET_APP);
    }

    public static String formatUserAgent() {
        String strValueOf = String.valueOf(Utilities.random.nextInt(7) + 6);
        String[] strArr = DEVICE_MODELS;
        String str = strArr[Utilities.random.nextInt(strArr.length)];
        String[] strArr2 = CHROME_VERSIONS;
        return String.format("Mozilla/5.0 (Linux; Android %s; %s) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/%s Mobile Safari/537.36", strValueOf, str, strArr2[Utilities.random.nextInt(strArr2.length)]);
    }

    public static String getLanguageTitleSystem(final String str) {
        if ("none".equals(str)) {
            return LocaleController.getString(C2888R.string.None);
        }
        return (String) Collection.EL.stream(getLanguages()).filter(new Predicate() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda0
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m287or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals(((TranslateController.Language) obj).code, str);
            }
        }).findFirst().map(new Function() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda1
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((TranslateController.Language) obj).displayName;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).orElseGet(new Supplier() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda2
            @Override // java.util.function.Supplier
            public final Object get() {
                return TranslatorUtils.$r8$lambda$CUNhdWfofK4WEKCqbzsQcZNLbg0(str);
            }
        });
    }

    public static /* synthetic */ String $r8$lambda$CUNhdWfofK4WEKCqbzsQcZNLbg0(String str) {
        String strNormalizeLanguageCode = normalizeLanguageCode(str);
        return TextUtils.isEmpty(strNormalizeLanguageCode) ? _UrlKt.FRAGMENT_ENCODE_SET : strNormalizeLanguageCode.toUpperCase(Locale.US);
    }

    public static String getLanguageDisplayName(final String str) {
        return (String) Collection.EL.stream(getLanguages()).filter(new Predicate() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda6
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m289or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return TextUtils.equals(((TranslateController.Language) obj).code, str);
            }
        }).findFirst().map(new Function() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda7
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((TranslateController.Language) obj).ownDisplayName;
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).orElse(null);
    }

    public static void translateWithAlert(final MessageObject messageObject, MessageObject.GroupedMessages groupedMessages, final TLRPC.InputPeer inputPeer, final int i, final BaseFragment baseFragment) {
        if (messageObject == null) {
            return;
        }
        final ChatActivity chatActivity = (ChatActivity) baseFragment;
        final Utilities.CallbackReturn callbackReturn = new Utilities.CallbackReturn() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda11
            @Override // org.telegram.messenger.Utilities.CallbackReturn
            public final Object run(Object obj) {
                return TranslatorUtils.$r8$lambda$U_6tsGn7Rfja4H7xsuJ40kLqVJQ(chatActivity, messageObject, (URLSpan) obj);
            }
        };
        TLRPC.Message message = messageObject.messageOwner;
        final ArrayList arrayList = message != null ? message.entities : null;
        final CharSequence messageText = ChatUtils.getInstance().getMessageText(messageObject, groupedMessages);
        LanguageDetector.detectLanguage(messageText == null ? _UrlKt.FRAGMENT_ENCODE_SET : messageText.toString(), new LanguageDetector.StringCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda12
            @Override // org.telegram.messenger.LanguageDetector.StringCallback
            public final void run(String str) {
                TranslatorUtils.m2805$r8$lambda$ad1GOSTL0OhL2pO1dr5PThm1k8(baseFragment, inputPeer, i, messageText, arrayList, callbackReturn, chatActivity, str);
            }
        }, new LanguageDetector.ExceptionCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda13
            @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
            public final void run(Exception exc) {
                TranslatorUtils.m2808$r8$lambda$owEUwwVJj2_NHWS0lkyBgFXhVc(exc);
            }
        });
    }

    public static /* synthetic */ Boolean $r8$lambda$U_6tsGn7Rfja4H7xsuJ40kLqVJQ(ChatActivity chatActivity, MessageObject messageObject, URLSpan uRLSpan) {
        chatActivity.didPressMessageUrl(uRLSpan, false, messageObject, null);
        return Boolean.TRUE;
    }

    /* JADX INFO: renamed from: $r8$lambda$ad1GOSTL-0OhL2pO1dr5PThm1k8, reason: not valid java name */
    public static /* synthetic */ void m2805$r8$lambda$ad1GOSTL0OhL2pO1dr5PThm1k8(BaseFragment baseFragment, TLRPC.InputPeer inputPeer, int i, CharSequence charSequence, ArrayList arrayList, Utilities.CallbackReturn callbackReturn, final ChatActivity chatActivity, String str) {
        String toLanguage = TranslateAlert2.getToLanguage();
        if (str != null) {
            if ((!TextUtils.equals(primaryLanguageOf(str), primaryLanguageOf(toLanguage)) || TranslateController.UNKNOWN_LANGUAGE.equals(str)) && !isRestrictedLanguage(str)) {
                TranslateAlert2.showAlert(baseFragment.getContext(), baseFragment, UserConfig.selectedAccount, inputPeer, i, false, str, toLanguage, charSequence, arrayList, false, callbackReturn, new Runnable() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda14
                    @Override // java.lang.Runnable
                    public final void run() {
                        chatActivity.dimBehindView(false);
                    }
                });
            }
        }
    }

    public static void translateWithDefault(final CharSequence charSequence, TLRPC.InputPeer inputPeer, int i, String str, ArrayList arrayList, final TranslateCallback translateCallback) {
        final String resolvedTargetLanguageCode = getResolvedTargetLanguageCode(str);
        TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
        final TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        tL_textWithEntities.text = charSequence == null ? _UrlKt.FRAGMENT_ENCODE_SET : charSequence.toString();
        if (arrayList != null) {
            tL_textWithEntities.entities = arrayList;
        }
        if (inputPeer != null) {
            tL_messages_translateText.flags |= 1;
            tL_messages_translateText.peer = inputPeer;
            tL_messages_translateText.f1786id.add(Integer.valueOf(i));
        } else {
            tL_messages_translateText.flags |= 2;
            tL_messages_translateText.text.add(tL_textWithEntities);
        }
        String strTrim = resolvedTargetLanguageCode != null ? resolvedTargetLanguageCode.trim() : resolvedTargetLanguageCode;
        if ("nb".equals(strTrim)) {
            strTrim = "no";
        }
        tL_messages_translateText.to_lang = strTrim;
        translateCallback.onReqId(ConnectionsManager.getInstance(UserConfig.selectedAccount).sendRequest(tL_messages_translateText, new RequestDelegate() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda10
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                TranslatorUtils.$r8$lambda$9t69im2ijQLumUQhKu9IaNtd33o(charSequence, resolvedTargetLanguageCode, translateCallback, tL_textWithEntities, tLObject, tL_error);
            }
        }));
    }

    public static /* synthetic */ void $r8$lambda$9t69im2ijQLumUQhKu9IaNtd33o(CharSequence charSequence, String str, final TranslateCallback translateCallback, TLRPC.TL_textWithEntities tL_textWithEntities, TLObject tLObject, final TLRPC.TL_error tL_error) {
        String str2;
        if (tL_error != null && "TRANSLATIONS_DISABLED_ALT".equalsIgnoreCase(tL_error.text)) {
            GoogleTranslator.getInstance().translate(charSequence.toString(), "auto", str, new TranslateCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils.1
                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public /* synthetic */ void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities2) {
                    TranslateCallback.CC.$default$onSuccess(this, tL_textWithEntities2);
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onSuccess(String str3) {
                    if (TextUtils.isEmpty(str3)) {
                        TranslateCallback translateCallback2 = translateCallback;
                        Objects.requireNonNull(translateCallback2);
                        AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback2));
                    } else {
                        translateCallback.onSuccess(str3);
                        TLRPC.TL_textWithEntities tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
                        tL_textWithEntities2.text = str3;
                        translateCallback.onSuccess(tL_textWithEntities2);
                    }
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onSuccess(TLObject tLObject2, TLRPC.TL_error tL_error2) {
                    translateCallback.onSuccess(tLObject2, tL_error2);
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onFailed() {
                    translateCallback.onFailed();
                }

                @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
                public void onReqId(int i) {
                    translateCallback.onReqId(i);
                }
            });
            return;
        }
        if (tLObject instanceof TLRPC.TL_messages_translateResult) {
            final TLRPC.TL_messages_translateResult tL_messages_translateResult = (TLRPC.TL_messages_translateResult) tLObject;
            if (!tL_messages_translateResult.result.isEmpty() && tL_messages_translateResult.result.get(0) != null && ((TLRPC.TL_textWithEntities) tL_messages_translateResult.result.get(0)).text != null) {
                final TLRPC.TL_textWithEntities tL_textWithEntities2 = (TLRPC.TL_textWithEntities) tL_messages_translateResult.result.get(0);
                final TLRPC.TL_textWithEntities tL_textWithEntitiesPreprocess = TranslateAlert2.preprocess(tL_textWithEntities, tL_textWithEntities2);
                if (tL_textWithEntitiesPreprocess == null || (str2 = tL_textWithEntitiesPreprocess.text) == null) {
                    str2 = tL_textWithEntities2.text;
                }
                final String str3 = str2;
                if (TextUtils.isEmpty(str3)) {
                    Objects.requireNonNull(translateCallback);
                    AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback));
                    return;
                } else {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda15
                        @Override // java.lang.Runnable
                        public final void run() {
                            TranslatorUtils.m2803$r8$lambda$TYf6X6lWV59OzxWR31cZ1banm4(translateCallback, tL_messages_translateResult, tL_error, tL_textWithEntitiesPreprocess, tL_textWithEntities2, str3);
                        }
                    });
                    return;
                }
            }
        }
        Objects.requireNonNull(translateCallback);
        AndroidUtilities.runOnUIThread(new BaseTranslator$$ExternalSyntheticLambda0(translateCallback));
    }

    /* JADX INFO: renamed from: $r8$lambda$TYf6X6lWV59OzxWR31cZ1-banm4, reason: not valid java name */
    public static /* synthetic */ void m2803$r8$lambda$TYf6X6lWV59OzxWR31cZ1banm4(TranslateCallback translateCallback, TLRPC.TL_messages_translateResult tL_messages_translateResult, TLRPC.TL_error tL_error, TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_textWithEntities tL_textWithEntities2, String str) {
        translateCallback.onSuccess(tL_messages_translateResult, tL_error);
        if (tL_textWithEntities == null) {
            tL_textWithEntities = tL_textWithEntities2;
        }
        translateCallback.onSuccess(tL_textWithEntities);
        translateCallback.onSuccess(str);
    }

    /* JADX INFO: loaded from: classes4.dex */
    public interface TranslateCallback {
        void onFailed();

        void onReqId(int i);

        void onSuccess(String str);

        void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error);

        void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities);

        /* JADX INFO: renamed from: com.exteragram.messenger.utils.text.TranslatorUtils$TranslateCallback$-CC, reason: invalid class name */
        public abstract /* synthetic */ class CC {
            public static void $default$onSuccess(TranslateCallback translateCallback, String str) {
            }

            public static void $default$onSuccess(TranslateCallback translateCallback, TLRPC.TL_textWithEntities tL_textWithEntities) {
            }

            public static void $default$onSuccess(TranslateCallback translateCallback, TLObject tLObject, TLRPC.TL_error tL_error) {
            }

            public static void $default$onReqId(TranslateCallback translateCallback, int i) {
            }
        }
    }

    public static void translate(final CharSequence charSequence, String str, final ArrayList arrayList, final TranslateCallback translateCallback) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        final String resolvedTargetLanguageCode = getResolvedTargetLanguageCode(str);
        if (LanguageDetector.hasSupport()) {
            LanguageDetector.detectLanguage(charSequence.toString(), new LanguageDetector.StringCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda8
                @Override // org.telegram.messenger.LanguageDetector.StringCallback
                public final void run(String str2) {
                    TranslatorUtils.m2802$r8$lambda$EFiTQJotXuUijfrHn87_q82738(charSequence, resolvedTargetLanguageCode, arrayList, translateCallback, str2);
                }
            }, new LanguageDetector.ExceptionCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                public final void run(Exception exc) {
                    TranslatorUtils.translate(charSequence, "auto", resolvedTargetLanguageCode, arrayList, translateCallback);
                }
            });
        } else {
            translate(charSequence, "auto", resolvedTargetLanguageCode, arrayList, translateCallback);
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$EFi-TQJotXuUijfrHn87_q82738, reason: not valid java name */
    public static /* synthetic */ void m2802$r8$lambda$EFiTQJotXuUijfrHn87_q82738(CharSequence charSequence, String str, ArrayList arrayList, TranslateCallback translateCallback, String str2) {
        if (str2 == null || str2.equals(TranslateController.UNKNOWN_LANGUAGE)) {
            str2 = "auto";
        }
        translate(charSequence, str2, str, arrayList, translateCallback);
    }

    public static void translate(CharSequence charSequence, String str, String str2, ArrayList arrayList, final TranslateCallback translateCallback) {
        BaseTranslator currentTranslator = getCurrentTranslator();
        if (currentTranslator == TelegramTranslator.getInstance()) {
            translateWithDefault(charSequence, null, 0, str2, arrayList, translateCallback);
            return;
        }
        if (!currentTranslator.isLanguageSupported(str2)) {
            currentTranslator = GoogleTranslator.getInstance();
        }
        currentTranslator.translate(charSequence.toString(), str, str2, new TranslateCallback() { // from class: com.exteragram.messenger.utils.text.TranslatorUtils.2
            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public /* synthetic */ void onSuccess(TLRPC.TL_textWithEntities tL_textWithEntities) {
                TranslateCallback.CC.$default$onSuccess(this, tL_textWithEntities);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onSuccess(String str3) {
                if (TextUtils.isEmpty(str3)) {
                    translateCallback.onFailed();
                    return;
                }
                translateCallback.onSuccess(str3);
                TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
                tL_textWithEntities.text = str3;
                translateCallback.onSuccess(tL_textWithEntities);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onSuccess(TLObject tLObject, TLRPC.TL_error tL_error) {
                translateCallback.onSuccess(tLObject, tL_error);
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onFailed() {
                translateCallback.onFailed();
            }

            @Override // com.exteragram.messenger.utils.text.TranslatorUtils.TranslateCallback
            public void onReqId(int i) {
                translateCallback.onReqId(i);
            }
        });
    }

    public static BaseTranslator getCurrentTranslator() {
        int i = ExteraConfig.translationProvider;
        if (i == 0) {
            return TelegramTranslator.getInstance();
        }
        if (i == 2) {
            return YandexTranslator.getInstance();
        }
        if (i == 3) {
            return DeepLTranslator.getInstance();
        }
        return GoogleTranslator.getInstance();
    }

    public static String getCurrentTranslatorName() {
        return getCurrentTranslator().getDisplayName();
    }
}
