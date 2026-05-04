package org.telegram.messenger;

import android.content.SharedPreferences;
import android.content.res.Resources;
import android.icu.text.Collator;
import android.os.Build;
import android.text.TextUtils;
import android.util.LongSparseArray;
import android.util.Pair;
import android.view.inputmethod.InputMethodInfo;
import android.view.inputmethod.InputMethodManager;
import android.view.inputmethod.InputMethodSubtype;
import com.exteragram.messenger.translators.TelegramTranslator;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.function.Function;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.LanguageDetector;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.TranslateController;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.ActionBar.BaseFragment;
import org.telegram.p029ui.Components.BulletinFactory;
import org.telegram.p029ui.Components.TranslateAlert2;
import org.telegram.p029ui.LaunchActivity;
import org.telegram.p029ui.PremiumPreviewFragment;
import org.telegram.p029ui.RestrictedLanguagesSelectActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.InputSerializedData;
import org.telegram.tgnet.OutputSerializedData;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC;
import org.telegram.tgnet.Vector;
import org.telegram.tgnet.p028tl.TL_stories;
import p022j$.util.Comparator;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;

/* JADX INFO: loaded from: classes.dex */
public class TranslateController extends BaseController {
    private static final int GROUPING_TRANSLATIONS_TIMEOUT = 80;
    private static final int MAX_MESSAGES_PER_REQUEST = 20;
    private static final int MAX_SYMBOLS_PER_REQUEST = 25000;
    private static final float REQUIRED_MIN_MESSAGES_TRANSLATABLE_AUTOTRANSLATE = 2.0f;
    private static final float REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN = 0.65f;
    private static final float REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN_AUTOTRANSLATE = 0.8f;
    private static final float REQUIRED_PERCENTAGE_MESSAGES_TRANSLATABLE = 0.6f;
    private static final int REQUIRED_TOTAL_MESSAGES_CHECKED = 6;
    private static final int REQUIRED_TOTAL_MESSAGES_CHECKED_AUTOTRANSLATE = 2;
    public static final String UNKNOWN_LANGUAGE = "und";
    private Boolean chatTranslateEnabled;
    private Boolean contextTranslateEnabled;
    private final HashMap<Long, String> detectedDialogLanguage;
    private final HashSet<MessageKey> detectingPhotos;
    private final HashSet<StoryKey> detectingStories;
    private final Set<Long> hideTranslateDialogs;
    private final HashMap<Long, HashMap<Integer, MessageObject>> keptReplyMessageObjects;
    private final HashSet<Integer> loadingSummarizations;
    private final Set<Integer> loadingTranscriptionTranslations;
    private final Set<Integer> loadingTranslations;
    private MessagesController messagesController;
    private ArrayList<Integer> pendingLanguageChecks;
    private final HashMap<Long, ArrayList<PendingPollTranslation>> pendingPollTranslations;
    private final HashMap<Long, ArrayList<PendingTranslation>> pendingTranscriptionsTranslations;
    private final HashMap<Long, ArrayList<PendingTranslation>> pendingTranslations;
    private final HashMap<Long, TranslatableDecision> translatableDialogMessages;
    private final Set<Long> translatableDialogs;
    private final HashMap<Long, String> translateDialogLanguage;
    private final LongSparseArray<Boolean> translatingDialogs;
    private final HashSet<MessageKey> translatingPhotos;
    private final HashSet<StoryKey> translatingStories;
    private static final List<String> languagesOrder = Arrays.asList("en", "ar", "zh", "fr", "de", "it", "ja", "ko", "pt", "ru", "es", "uk");
    private static final List<String> allLanguages = Arrays.asList("af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-cn", "zh", "zh-tw", "co", "hr", "cs", "da", "nl", "en", "eo", "et", "fi", "fr", "fy", "gl", "ka", "de", "el", "gu", "ht", "ha", "haw", "he", "hi", "hmn", "hu", "is", "ig", "id", "ga", "it", "ja", "jv", "kn", "kk", "km", "rw", "ko", "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my", "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr", "st", "sn", "sd", "si", "sk", "sl", "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh", "yi", "yo", "zu");
    private static LinkedHashSet<String> suggestedLanguageCodes = null;

    public static class Language {
        public String code;
        public String displayName;
        public String ownDisplayName;

        /* JADX INFO: renamed from: q */
        public String f1618q;
    }

    static class TranslatableDecision {
        Set<Integer> certainlyTranslatable = new HashSet();
        Set<Integer> unknown = new HashSet();
        Set<Integer> certainlyNotTranslatable = new HashSet();

        TranslatableDecision() {
        }
    }

    public TranslateController(MessagesController messagesController) {
        super(messagesController.currentAccount);
        this.translatingDialogs = new LongSparseArray<>();
        this.translatableDialogs = new HashSet();
        this.translatableDialogMessages = new HashMap<>();
        this.translateDialogLanguage = new HashMap<>();
        this.detectedDialogLanguage = new HashMap<>();
        this.keptReplyMessageObjects = new HashMap<>();
        this.hideTranslateDialogs = new HashSet();
        this.pendingLanguageChecks = new ArrayList<>();
        this.loadingTranslations = new HashSet();
        this.loadingTranscriptionTranslations = new HashSet();
        this.pendingTranslations = new HashMap<>();
        this.pendingTranscriptionsTranslations = new HashMap<>();
        this.loadingSummarizations = new HashSet<>();
        this.pendingPollTranslations = new HashMap<>();
        this.detectingStories = new HashSet<>();
        this.translatingStories = new HashSet<>();
        this.detectingPhotos = new HashSet<>();
        this.translatingPhotos = new HashSet<>();
        this.messagesController = messagesController;
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.loadTranslatingDialogsCached();
            }
        }, 150L);
    }

    public boolean isFeatureAvailable() {
        return UserConfig.getInstance(this.currentAccount).isPremium() && isChatTranslateEnabled();
    }

    public boolean isFeatureAvailable(long j) {
        if (!isChatTranslateEnabled()) {
            return false;
        }
        TLRPC.Chat chat = getMessagesController().getChat(Long.valueOf(-j));
        if (UserConfig.getInstance(this.currentAccount).isPremium()) {
            return true;
        }
        return chat != null && chat.autotranslation;
    }

    public boolean isChatTranslateEnabled() {
        if (!getMessagesController().isTranslationsAutoEnabled()) {
            return false;
        }
        if (this.chatTranslateEnabled == null) {
            this.chatTranslateEnabled = Boolean.valueOf(this.messagesController.getMainSettings().getBoolean("translate_chat_button", false));
        }
        return this.chatTranslateEnabled.booleanValue();
    }

    public boolean isContextTranslateEnabled() {
        if (!getMessagesController().isTranslationsManualEnabled()) {
            return false;
        }
        if (this.contextTranslateEnabled == null) {
            this.contextTranslateEnabled = Boolean.valueOf(this.messagesController.getMainSettings().getBoolean("translate_button", MessagesController.getGlobalMainSettings().getBoolean("translate_button", true)));
        }
        return this.contextTranslateEnabled.booleanValue();
    }

    public void setContextTranslateEnabled(boolean z) {
        SharedPreferences.Editor editorEdit = this.messagesController.getMainSettings().edit();
        this.contextTranslateEnabled = Boolean.valueOf(z);
        editorEdit.putBoolean("translate_button", z).apply();
    }

    public void setChatTranslateEnabled(boolean z) {
        SharedPreferences.Editor editorEdit = this.messagesController.getMainSettings().edit();
        this.chatTranslateEnabled = Boolean.valueOf(z);
        editorEdit.putBoolean("translate_chat_button", z).apply();
    }

    public static boolean isSummarizable(MessageObject messageObject) {
        TLRPC.Message message;
        if (messageObject == null || (message = messageObject.messageOwner) == null || message.summary_from_language == null || messageObject.isOutOwner() || messageObject.isRestrictedMessage || messageObject.isSponsored()) {
            return false;
        }
        int i = messageObject.type;
        return (i == 0 || i == 3 || i == 1 || i == 9 || i == 14 || i == 17) && !TextUtils.isEmpty(messageObject.messageOwner.message) && messageObject.messageOwner.message.length() > 100;
    }

    public static boolean isTranslatable(MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null || messageObject.isOutOwner() || messageObject.isRestrictedMessage || messageObject.isSponsored()) {
            return false;
        }
        int i = messageObject.type;
        if (i != 0 && i != 3 && i != 1 && i != 2 && i != 5 && i != 9 && i != 14 && i != 17) {
            return false;
        }
        if (TextUtils.isEmpty(messageObject.messageOwner.message) && !(MessageObject.getMedia(messageObject) instanceof TLRPC.TL_messageMediaPoll)) {
            TLRPC.Message message = messageObject.messageOwner;
            if (!message.voiceTranscriptionOpen || TextUtils.isEmpty(message.voiceTranscription) || !messageObject.messageOwner.voiceTranscriptionFinal) {
                return false;
            }
        }
        return true;
    }

    public boolean isDialogTranslatable(long j) {
        return this.translatableDialogs.contains(Long.valueOf(j)) && isFeatureAvailable(j) && !DialogObject.isEncryptedDialog(j) && getUserConfig().getClientUserId() != j;
    }

    public boolean isTranslateDialogHidden(long j) {
        if (this.hideTranslateDialogs.contains(Long.valueOf(j))) {
            return true;
        }
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(-j);
        if (chatFull != null) {
            return chatFull.translations_disabled;
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(j);
        if (userFull != null) {
            return userFull.translations_disabled;
        }
        return false;
    }

    private boolean isChatAutoTranslated(long j) {
        TLRPC.Chat chat;
        return isDialogTranslatable(j) && (chat = getMessagesController().getChat(Long.valueOf(-j))) != null && chat.autotranslation;
    }

    public boolean isTranslatingDialog(long j) {
        return isFeatureAvailable(j) && this.translatingDialogs.get(j, Boolean.valueOf(isChatAutoTranslated(j))).booleanValue();
    }

    public void toggleTranslatingDialog(long j) {
        toggleTranslatingDialog(j, !isTranslatingDialog(j));
    }

    public boolean toggleTranslatingDialog(long j, boolean z) {
        boolean zIsTranslatingDialog = isTranslatingDialog(j);
        boolean z2 = true;
        if (z && !zIsTranslatingDialog) {
            LongSparseArray<Boolean> longSparseArray = this.translatingDialogs;
            Boolean bool = Boolean.TRUE;
            longSparseArray.put(j, bool);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), bool);
        } else if (z || !zIsTranslatingDialog) {
            z2 = false;
        } else {
            LongSparseArray<Boolean> longSparseArray2 = this.translatingDialogs;
            Boolean bool2 = Boolean.FALSE;
            longSparseArray2.put(j, bool2);
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), bool2);
            cancelTranslations(j);
        }
        saveTranslatingDialogsCache();
        return z2;
    }

    private int hash(MessageObject messageObject) {
        if (messageObject == null) {
            return 0;
        }
        return Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()));
    }

    private String currentLanguage() {
        String str = LocaleController.getInstance().getCurrentLocaleInfo().pluralLangCode;
        if (str != null) {
            str = str.split("_")[0];
        }
        return TranslatorUtils.normalizeLanguageCode(str);
    }

    public String getDialogTranslateTo(long j) {
        String toLanguage = this.translateDialogLanguage.get(Long.valueOf(j));
        if (toLanguage == null) {
            toLanguage = TranslateAlert2.getToLanguage();
            if (TextUtils.isEmpty(toLanguage) || TranslatorUtils.isRestrictedLanguage(getDialogDetectedLanguage(j)) || TextUtils.equals(TranslatorUtils.primaryLanguageOf(toLanguage), TranslatorUtils.primaryLanguageOf(getDialogDetectedLanguage(j)))) {
                toLanguage = currentLanguage();
            }
        }
        return "nb".equals(toLanguage) ? "no" : toLanguage;
    }

    public void setDialogTranslateTo(final long j, String str) {
        Boolean bool;
        final String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(str);
        if (TextUtils.equals(getDialogTranslateTo(j), strNormalizeLanguageCode)) {
            return;
        }
        if (isTranslatingDialog(j)) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda31
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$setDialogTranslateTo$0(j, strNormalizeLanguageCode);
                }
            }, 150L);
        } else {
            synchronized (this) {
                this.translateDialogLanguage.put(Long.valueOf(j), strNormalizeLanguageCode);
            }
        }
        cancelTranslations(j);
        synchronized (this) {
            LongSparseArray<Boolean> longSparseArray = this.translatingDialogs;
            bool = Boolean.FALSE;
            longSparseArray.put(j, bool);
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setDialogTranslateTo$0(long j, String str) {
        Boolean bool;
        synchronized (this) {
            this.translateDialogLanguage.put(Long.valueOf(j), str);
            LongSparseArray<Boolean> longSparseArray = this.translatingDialogs;
            bool = Boolean.TRUE;
            longSparseArray.put(j, bool);
            saveTranslatingDialogsCache();
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), bool);
    }

    public void updateDialogFull(long j) {
        boolean z;
        if (isFeatureAvailable(j) && isDialogTranslatable(j)) {
            boolean zContains = this.hideTranslateDialogs.contains(Long.valueOf(j));
            TLRPC.ChatFull chatFull = getMessagesController().getChatFull(-j);
            if (chatFull != null) {
                z = chatFull.translations_disabled;
            } else {
                TLRPC.UserFull userFull = getMessagesController().getUserFull(j);
                z = userFull != null ? userFull.translations_disabled : false;
            }
            synchronized (this) {
                try {
                    if (z) {
                        this.hideTranslateDialogs.add(Long.valueOf(j));
                        this.translatingDialogs.remove(j);
                    } else {
                        this.hideTranslateDialogs.remove(Long.valueOf(j));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (zContains != z) {
                saveTranslatingDialogsCache();
                NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), Boolean.valueOf(isTranslatingDialog(j)));
            }
        }
    }

    public void setHideTranslateDialog(long j, boolean z) {
        setHideTranslateDialog(j, z, false);
    }

    public void setHideTranslateDialog(long j, boolean z, boolean z2) {
        TLRPC.TL_messages_togglePeerTranslations tL_messages_togglePeerTranslations = new TLRPC.TL_messages_togglePeerTranslations();
        tL_messages_togglePeerTranslations.peer = getMessagesController().getInputPeer(j);
        tL_messages_togglePeerTranslations.disabled = z;
        getConnectionsManager().sendRequest(tL_messages_togglePeerTranslations, null);
        TLRPC.ChatFull chatFull = getMessagesController().getChatFull(-j);
        if (chatFull != null) {
            chatFull.translations_disabled = z;
            getMessagesStorage().updateChatInfo(chatFull, true);
        }
        TLRPC.UserFull userFull = getMessagesController().getUserFull(j);
        if (userFull != null) {
            userFull.translations_disabled = z;
            getMessagesStorage().updateUserInfo(userFull, true);
        }
        synchronized (this) {
            try {
                if (z) {
                    this.hideTranslateDialogs.add(Long.valueOf(j));
                    this.translatingDialogs.remove(j);
                } else {
                    this.hideTranslateDialogs.remove(Long.valueOf(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        saveTranslatingDialogsCache();
        if (z2) {
            return;
        }
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, Long.valueOf(j), Boolean.valueOf(isTranslatingDialog(j)));
    }

    public static ArrayList<Language> getLanguages() {
        Set supportedLanguages = TranslatorUtils.getCurrentTranslator().getSupportedLanguages();
        if (supportedLanguages != null && !supportedLanguages.isEmpty()) {
            HashSet<String> hashSet = new HashSet();
            Iterator it = supportedLanguages.iterator();
            while (it.hasNext()) {
                String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode((String) it.next());
                if (!TextUtils.isEmpty(strNormalizeLanguageCode)) {
                    hashSet.add(strNormalizeLanguageCode);
                }
            }
            ArrayList<Language> arrayList = new ArrayList<>();
            for (String str : hashSet) {
                Language language = new Language();
                if ("no".equals(str)) {
                    str = "nb";
                }
                language.code = str;
                language.displayName = TranslateAlert2.capitalFirst(TranslateAlert2.languageName(str));
                language.ownDisplayName = TranslateAlert2.capitalFirst(TranslateAlert2.systemLanguageName(language.code, true));
                if (language.displayName != null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(language.displayName);
                    sb.append(" ");
                    String str2 = language.ownDisplayName;
                    if (str2 == null) {
                        str2 = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    sb.append(str2);
                    language.f1618q = sb.toString().toLowerCase();
                    arrayList.add(language);
                }
            }
            if (Build.VERSION.SDK_INT >= 24) {
                final Collator collator = Collator.getInstance(Locale.getDefault());
                Collections.sort(arrayList, new Comparator() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda23
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return collator.compare(((TranslateController.Language) obj).displayName, ((TranslateController.Language) obj2).displayName);
                    }
                });
                return arrayList;
            }
            Collections.sort(arrayList, Comparator.CC.comparing(new Function() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda24
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
            }));
            return arrayList;
        }
        ArrayList<Language> arrayList2 = new ArrayList<>();
        int i = 0;
        while (true) {
            List<String> list = allLanguages;
            if (i >= list.size()) {
                break;
            }
            Language language2 = new Language();
            language2.code = list.get(i);
            if (TranslatorUtils.getCurrentTranslator() != TelegramTranslator.getInstance() || (!language2.code.contains("-") && !language2.code.contains("_"))) {
                if ("no".equals(language2.code)) {
                    language2.code = "nb";
                }
                language2.displayName = TranslateAlert2.capitalFirst(TranslateAlert2.languageName(language2.code));
                language2.ownDisplayName = TranslateAlert2.capitalFirst(TranslateAlert2.systemLanguageName(language2.code, true));
                if (language2.displayName != null) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(language2.displayName);
                    sb2.append(" ");
                    String str3 = language2.ownDisplayName;
                    if (str3 == null) {
                        str3 = _UrlKt.FRAGMENT_ENCODE_SET;
                    }
                    sb2.append(str3);
                    language2.f1618q = sb2.toString().toLowerCase();
                    arrayList2.add(language2);
                }
            }
            i++;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            final Collator collator2 = Collator.getInstance(Locale.getDefault());
            Collections.sort(arrayList2, new java.util.Comparator() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda25
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return collator2.compare(((TranslateController.Language) obj).displayName, ((TranslateController.Language) obj2).displayName);
                }
            });
            return arrayList2;
        }
        Collections.sort(arrayList2, Comparator.CC.comparing(new Function() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda26
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
        }));
        return arrayList2;
    }

    public static void invalidateSuggestedLanguageCodes() {
        suggestedLanguageCodes = null;
    }

    public static void analyzeSuggestedLanguageCodes() {
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        try {
            String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(LocaleController.getInstance().getCurrentLocaleInfo().pluralLangCode);
            if (!TextUtils.isEmpty(strNormalizeLanguageCode)) {
                linkedHashSet.add(strNormalizeLanguageCode);
            }
        } catch (Exception e) {
            FileLog.m1136e(e);
        }
        try {
            String strNormalizeLanguageCode2 = TranslatorUtils.normalizeLanguageCode(Resources.getSystem().getConfiguration().locale.getLanguage());
            if (!TextUtils.isEmpty(strNormalizeLanguageCode2)) {
                linkedHashSet.add(strNormalizeLanguageCode2);
            }
        } catch (Exception e2) {
            FileLog.m1136e(e2);
        }
        try {
            linkedHashSet.addAll(RestrictedLanguagesSelectActivity.getRestrictedLanguages());
        } catch (Exception e3) {
            FileLog.m1136e(e3);
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) ApplicationLoader.applicationContext.getSystemService("input_method");
            Iterator<InputMethodInfo> it = inputMethodManager.getEnabledInputMethodList().iterator();
            while (it.hasNext()) {
                for (InputMethodSubtype inputMethodSubtype : inputMethodManager.getEnabledInputMethodSubtypeList(it.next(), true)) {
                    if ("keyboard".equals(inputMethodSubtype.getMode())) {
                        String strNormalizeLanguageCode3 = TranslatorUtils.normalizeLanguageCode(inputMethodSubtype.getLocale());
                        if (!TextUtils.isEmpty(strNormalizeLanguageCode3) && TranslateAlert2.languageName(strNormalizeLanguageCode3) != null) {
                            linkedHashSet.add(strNormalizeLanguageCode3);
                        }
                    }
                }
            }
        } catch (Exception e4) {
            FileLog.m1136e(e4);
        }
        suggestedLanguageCodes = linkedHashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList<Language> getSuggestedLanguages(String str) {
        ArrayList<Language> arrayList = new ArrayList<>();
        if (suggestedLanguageCodes == null) {
            analyzeSuggestedLanguageCodes();
            if (suggestedLanguageCodes != null) {
                HashSet hashSet = new HashSet();
                ArrayList<Language> languages = getLanguages();
                int size = languages.size();
                int i = 0;
                while (i < size) {
                    Language language = languages.get(i);
                    i++;
                    Language language2 = language;
                    if (language2 != null && !TextUtils.isEmpty(language2.code)) {
                        hashSet.add(TranslatorUtils.normalizeLanguageCode(language2.code));
                    }
                }
                for (String str2 : suggestedLanguageCodes) {
                    if (!TextUtils.equals(str2, str)) {
                        Language language3 = new Language();
                        String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(str2);
                        language3.code = strNormalizeLanguageCode;
                        if (!TextUtils.isEmpty(strNormalizeLanguageCode) && hashSet.contains(language3.code)) {
                            String str3 = "no".equals(language3.code) ? "nb" : language3.code;
                            language3.displayName = TranslateAlert2.capitalFirst(TranslateAlert2.languageName(str3));
                            language3.ownDisplayName = TranslateAlert2.capitalFirst(TranslateAlert2.systemLanguageName(str3, true));
                            if (language3.displayName != null) {
                                language3.f1618q = (language3.displayName + " " + language3.ownDisplayName).toLowerCase();
                                arrayList.add(language3);
                            }
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public static ArrayList<LocaleController.LocaleInfo> getLocales() {
        String str;
        ArrayList<LocaleController.LocaleInfo> arrayList = new ArrayList<>(LocaleController.getInstance().languagesDict.values());
        int i = 0;
        while (i < arrayList.size()) {
            LocaleController.LocaleInfo localeInfo = arrayList.get(i);
            if (localeInfo == null || (((str = localeInfo.shortName) != null && str.endsWith("_raw")) || !"remote".equals(localeInfo.pathToFile))) {
                arrayList.remove(i);
                i--;
            }
            i++;
        }
        final LocaleController.LocaleInfo currentLocaleInfo = LocaleController.getInstance().getCurrentLocaleInfo();
        Collections.sort(arrayList, new java.util.Comparator() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda11
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return TranslateController.m4941$r8$lambda$I1ZYF6DcBAYUD_g0b0SkyUIzBo(currentLocaleInfo, (LocaleController.LocaleInfo) obj, (LocaleController.LocaleInfo) obj2);
            }
        });
        return arrayList;
    }

    /* JADX INFO: renamed from: $r8$lambda$I1ZYF6DcBAYUD-_g0b0SkyUIzBo, reason: not valid java name */
    public static /* synthetic */ int m4941$r8$lambda$I1ZYF6DcBAYUD_g0b0SkyUIzBo(LocaleController.LocaleInfo localeInfo, LocaleController.LocaleInfo localeInfo2, LocaleController.LocaleInfo localeInfo3) {
        if (localeInfo2 == localeInfo) {
            return -1;
        }
        if (localeInfo3 == localeInfo) {
            return 1;
        }
        List<String> list = languagesOrder;
        int iIndexOf = list.indexOf(localeInfo2.pluralLangCode);
        int iIndexOf2 = list.indexOf(localeInfo3.pluralLangCode);
        if (iIndexOf >= 0 && iIndexOf2 >= 0) {
            return iIndexOf - iIndexOf2;
        }
        if (iIndexOf >= 0) {
            return -1;
        }
        if (iIndexOf2 >= 0) {
            return 1;
        }
        int i = localeInfo2.serverIndex;
        int i2 = localeInfo3.serverIndex;
        if (i == i2) {
            return localeInfo2.name.compareTo(localeInfo3.name);
        }
        if (i > i2) {
            return 1;
        }
        return i < i2 ? -1 : 0;
    }

    public void checkRestrictedLanguagesUpdate() {
        synchronized (this) {
            try {
                this.translatableDialogMessages.clear();
                ArrayList arrayList = new ArrayList();
                for (Long l : this.translatableDialogs) {
                    long jLongValue = l.longValue();
                    String str = this.detectedDialogLanguage.get(l);
                    if (str != null && isLanguageRestricted(str)) {
                        cancelTranslations(jLongValue);
                        this.translatingDialogs.remove(jLongValue);
                        arrayList.add(l);
                    }
                }
                this.translatableDialogs.clear();
                saveTranslatingDialogsCache();
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    Long l2 = (Long) obj;
                    l2.longValue();
                    NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogTranslate, l2, Boolean.FALSE);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public String getDialogDetectedLanguage(long j) {
        return this.detectedDialogLanguage.get(Long.valueOf(j));
    }

    public void checkTranslation(MessageObject messageObject, boolean z) {
        checkTranslation(messageObject, z, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void checkTranslation(final MessageObject messageObject, boolean z, final boolean z2) {
        final MessageObject messageObject2;
        PollText pollText;
        PollText pollText2;
        MessageObject messageObjectFindReplyMessageObject;
        MessageObject messageObject3;
        if (messageObject != null && messageObject.messageOwner != null) {
            final long dialogId = messageObject.getDialogId();
            if (z) {
                TLRPC.Message message = messageObject.messageOwner;
                if (message.summarizedOpen && message.summaryText == null && !isTranslatingDialog(messageObject.getDialogId())) {
                    pushToSummarize(messageObject, null, new Utilities.Callback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda32
                        @Override // org.telegram.messenger.Utilities.Callback
                        public final void run(Object obj) {
                            this.f$0.lambda$checkTranslation$6(messageObject, dialogId, (TLRPC.TL_textWithEntities) obj);
                        }
                    });
                }
            }
            if (isFeatureAvailable(dialogId)) {
                if (!z2 && (messageObject3 = messageObject.replyMessageObject) != null) {
                    checkTranslation(messageObject3, z, true);
                }
                if (isTranslatable(messageObject)) {
                    if (!isTranslatingDialog(dialogId)) {
                        checkLanguage(messageObject);
                        return;
                    }
                    if (!isTranslateDialogHidden(dialogId)) {
                        final String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(getDialogTranslateTo(dialogId));
                        if (!z2) {
                            TLRPC.Message message2 = messageObject.messageOwner;
                            if ((!(((message2.voiceTranscriptionOpen && message2.voiceTranscriptionFinal) ? message2.translatedVoiceTranscription : message2.translatedText) == null && message2.translatedPoll == null) && (((pollText2 = message2.translatedPoll) == null || PollText.isFullyTranslated(messageObject, pollText2)) && TextUtils.equals(strNormalizeLanguageCode, messageObject.messageOwner.translatedToLanguage))) || (messageObjectFindReplyMessageObject = findReplyMessageObject(dialogId, messageObject.getId())) == null) {
                                messageObject2 = messageObject;
                            } else {
                                TLRPC.Message message3 = messageObject.messageOwner;
                                TLRPC.Message message4 = messageObjectFindReplyMessageObject.messageOwner;
                                message3.translatedToLanguage = message4.translatedToLanguage;
                                message3.translatedText = message4.translatedText;
                                message3.translatedPoll = message4.translatedPoll;
                                messageObject2 = messageObjectFindReplyMessageObject;
                            }
                            if (z && isTranslatingDialog(dialogId)) {
                                TLRPC.Message message5 = messageObject2.messageOwner;
                                if (message5.summarizedOpen) {
                                    if (message5.translatedSummaryText == null || !TextUtils.equals(strNormalizeLanguageCode, message5.translatedSummaryLanguage)) {
                                        pushToSummarize(messageObject2, strNormalizeLanguageCode, new Utilities.Callback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda33
                                            @Override // org.telegram.messenger.Utilities.Callback
                                            public final void run(Object obj) {
                                                this.f$0.lambda$checkTranslation$7(messageObject2, strNormalizeLanguageCode, dialogId, (TLRPC.TL_textWithEntities) obj);
                                            }
                                        });
                                    }
                                } else {
                                    if (!(((message5.voiceTranscriptionOpen && message5.voiceTranscriptionFinal) ? message5.translatedVoiceTranscription : message5.translatedText) == null && message5.translatedPoll == null) && (((pollText = message5.translatedPoll) == null || PollText.isFullyTranslated(messageObject2, pollText)) && TextUtils.equals(strNormalizeLanguageCode, messageObject2.messageOwner.translatedToLanguage))) {
                                        if (z2) {
                                            keepReplyMessage(messageObject2);
                                        }
                                    } else {
                                        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslating, messageObject2);
                                        if (MessageObject.getMedia(messageObject2) instanceof TLRPC.TL_messageMediaPoll) {
                                            pushPollToTranslate(messageObject2, strNormalizeLanguageCode, new Utilities.Callback3() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda34
                                                @Override // org.telegram.messenger.Utilities.Callback3
                                                public final void run(Object obj, Object obj2, Object obj3) {
                                                    this.f$0.lambda$checkTranslation$8(messageObject2, z2, dialogId, (Integer) obj, (TranslateController.PollText) obj2, (String) obj3);
                                                }
                                            });
                                        } else {
                                            pushToTranslate(messageObject2, strNormalizeLanguageCode, new Utilities.Callback4() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda35
                                                @Override // org.telegram.messenger.Utilities.Callback4
                                                public final void run(Object obj, Object obj2, Object obj3, Object obj4) {
                                                    this.f$0.lambda$checkTranslation$9(messageObject2, z2, dialogId, (Boolean) obj, (Integer) obj2, (TLRPC.TL_textWithEntities) obj3, (String) obj4);
                                                }
                                            });
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTranslation$6(MessageObject messageObject, long j, TLRPC.TL_textWithEntities tL_textWithEntities) {
        TLRPC.Message message = messageObject.messageOwner;
        message.summaryText = tL_textWithEntities;
        if (tL_textWithEntities == null) {
            message.summarizedOpen = false;
        }
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslated, messageObject, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTranslation$7(MessageObject messageObject, String str, long j, TLRPC.TL_textWithEntities tL_textWithEntities) {
        messageObject.messageOwner.translatedSummaryLanguage = tL_textWithEntities != null ? TranslatorUtils.normalizeLanguageCode(str) : null;
        TLRPC.Message message = messageObject.messageOwner;
        message.translatedSummaryText = tL_textWithEntities;
        if (tL_textWithEntities == null) {
            message.summarizedOpen = false;
        }
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslated, messageObject, Boolean.TRUE);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTranslation$8(MessageObject messageObject, boolean z, long j, Integer num, PollText pollText, String str) {
        if (messageObject.getId() != num.intValue()) {
            FileLog.m1134e("wtf, asked to translate " + messageObject.getId() + " poll but got " + num + "!");
        }
        String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(str);
        TLRPC.Message message = messageObject.messageOwner;
        message.translatedToLanguage = strNormalizeLanguageCode;
        message.translatedText = null;
        message.translatedVoiceTranscription = null;
        message.translatedPoll = pollText;
        if (z) {
            keepReplyMessage(messageObject);
        }
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslated, messageObject);
        ArrayList arrayList = (ArrayList) this.messagesController.dialogMessage.get(j);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                MessageObject messageObject2 = (MessageObject) arrayList.get(i);
                if (messageObject2 != null && messageObject2.getId() == messageObject.getId()) {
                    TLRPC.Message message2 = messageObject2.messageOwner;
                    message2.translatedToLanguage = strNormalizeLanguageCode;
                    message2.translatedText = null;
                    message2.translatedVoiceTranscription = null;
                    message2.translatedPoll = pollText;
                    if (messageObject2.updateTranslation()) {
                        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
                        return;
                    }
                    return;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkTranslation$9(MessageObject messageObject, boolean z, long j, Boolean bool, Integer num, TLRPC.TL_textWithEntities tL_textWithEntities, String str) {
        if (messageObject.getId() != num.intValue()) {
            FileLog.m1134e("wtf, asked to translate " + messageObject.getId() + " but got " + num + "!");
        }
        String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(str);
        messageObject.messageOwner.translatedToLanguage = strNormalizeLanguageCode;
        if (bool.booleanValue()) {
            messageObject.messageOwner.translatedVoiceTranscription = tL_textWithEntities;
        } else {
            messageObject.messageOwner.translatedText = tL_textWithEntities;
        }
        messageObject.messageOwner.translatedPoll = null;
        if (z) {
            keepReplyMessage(messageObject);
        }
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslated, messageObject);
        ArrayList arrayList = (ArrayList) this.messagesController.dialogMessage.get(j);
        if (arrayList != null) {
            for (int i = 0; i < arrayList.size(); i++) {
                MessageObject messageObject2 = (MessageObject) arrayList.get(i);
                if (messageObject2 != null && messageObject2.getId() == messageObject.getId()) {
                    messageObject2.messageOwner.translatedToLanguage = strNormalizeLanguageCode;
                    if (bool.booleanValue()) {
                        messageObject2.messageOwner.translatedVoiceTranscription = tL_textWithEntities;
                    } else {
                        messageObject2.messageOwner.translatedText = tL_textWithEntities;
                    }
                    messageObject2.messageOwner.translatedPoll = null;
                    if (messageObject2.updateTranslation()) {
                        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public void invalidateTranslation(final MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return;
        }
        final long dialogId = messageObject.getDialogId();
        if (isFeatureAvailable(dialogId)) {
            TLRPC.Message message = messageObject.messageOwner;
            message.translatedToLanguage = null;
            message.translatedText = null;
            message.translatedVoiceTranscription = null;
            message.translatedPoll = null;
            message.summaryText = null;
            message.translatedSummaryText = null;
            message.translatedSummaryLanguage = null;
            getMessagesStorage().updateMessageCustomParams(dialogId, messageObject.messageOwner);
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda36
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$invalidateTranslation$10(messageObject, dialogId);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$invalidateTranslation$10(MessageObject messageObject, long j) {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.messageTranslated, messageObject, Boolean.FALSE, Boolean.valueOf(isTranslatingDialog(j)));
    }

    public void checkDialogMessage(long j) {
        if (isFeatureAvailable(j)) {
            checkDialogMessageSure(j);
        }
    }

    public void checkDialogMessageSure(final long j) {
        if (this.translatingDialogs.get(j, Boolean.valueOf(isChatAutoTranslated(j))).booleanValue()) {
            getMessagesStorage().getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkDialogMessageSure$12(j);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDialogMessageSure$12(long j) {
        final ArrayList arrayList = (ArrayList) this.messagesController.dialogMessage.get(j);
        if (arrayList == null) {
            return;
        }
        final ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < arrayList.size(); i++) {
            MessageObject messageObject = (MessageObject) arrayList.get(i);
            if (messageObject == null || messageObject.messageOwner == null) {
                arrayList2.add(null);
            } else {
                arrayList2.add(getMessagesStorage().getMessageWithCustomParamsOnlyInternal(messageObject.getId(), messageObject.getDialogId()));
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkDialogMessageSure$11(arrayList2, arrayList);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDialogMessageSure$11(ArrayList arrayList, ArrayList arrayList2) {
        TLRPC.Message message;
        boolean z = false;
        for (int i = 0; i < Math.min(arrayList.size(), arrayList2.size()); i++) {
            MessageObject messageObject = (MessageObject) arrayList2.get(i);
            TLRPC.Message message2 = (TLRPC.Message) arrayList.get(i);
            if (messageObject != null && (message = messageObject.messageOwner) != null && message2 != null) {
                message.translatedText = message2.translatedText;
                message.translatedPoll = message2.translatedPoll;
                message.translatedToLanguage = message2.translatedToLanguage;
                if (messageObject.updateTranslation(false)) {
                    z = true;
                }
            }
        }
        if (z) {
            NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, 0);
        }
    }

    public void cleanup() {
        cancelAllTranslations();
        resetTranslatingDialogsCache();
        this.translatingDialogs.clear();
        this.translatableDialogs.clear();
        this.translatableDialogMessages.clear();
        this.translateDialogLanguage.clear();
        this.detectedDialogLanguage.clear();
        this.keptReplyMessageObjects.clear();
        this.hideTranslateDialogs.clear();
        this.loadingTranslations.clear();
        this.loadingTranscriptionTranslations.clear();
    }

    public void clearTranslationCache() {
        cleanup();
        getMessagesStorage().clearAllMessageCustomParams();
    }

    public void clearMessageTranslationState(MessageObject messageObject) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return;
        }
        MessageObject messageObject2 = messageObject.replyMessageObject;
        if (messageObject2 != null && messageObject2 != messageObject) {
            clearMessageTranslationState(messageObject2);
        }
        TLRPC.Message message = messageObject.messageOwner;
        message.originalLanguage = null;
        message.translatedText = null;
        message.translatedVoiceTranscription = null;
        message.translatedPoll = null;
        message.translatedToLanguage = null;
        message.summaryText = null;
        message.translatedSummaryText = null;
        message.translatedSummaryLanguage = null;
        messageObject.updateTranslation(false);
    }

    public void reset() {
        this.translatableDialogMessages.clear();
        this.detectedDialogLanguage.clear();
    }

    private void checkLanguage(final MessageObject messageObject) {
        TLRPC.Message message;
        if (LanguageDetector.hasSupport() && isTranslatable(messageObject) && (message = messageObject.messageOwner) != null && !TextUtils.isEmpty(message.message)) {
            if (messageObject.messageOwner.originalLanguage != null) {
                checkDialogTranslatable(messageObject);
                return;
            }
            final long dialogId = messageObject.getDialogId();
            final int iHash = hash(messageObject);
            if (isDialogTranslatable(dialogId) || this.pendingLanguageChecks.contains(Integer.valueOf(iHash))) {
                return;
            }
            this.pendingLanguageChecks.add(Integer.valueOf(iHash));
            Utilities.stageQueue.postRunnable(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda14
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.lambda$checkLanguage$17(messageObject, dialogId, iHash);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLanguage$14(final MessageObject messageObject, final long j, final int i, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkLanguage$13(str, messageObject, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLanguage$17(final MessageObject messageObject, final long j, final int i) {
        LanguageDetector.detectLanguage(messageObject.messageOwner.message, new LanguageDetector.StringCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda7
            @Override // org.telegram.messenger.LanguageDetector.StringCallback
            public final void run(String str) {
                this.f$0.lambda$checkLanguage$14(messageObject, j, i, str);
            }
        }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda8
            @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
            public final void run(Exception exc) {
                this.f$0.lambda$checkLanguage$16(messageObject, j, i, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLanguage$13(String str, MessageObject messageObject, long j, int i) {
        if (str == null) {
            str = UNKNOWN_LANGUAGE;
        }
        messageObject.messageOwner.originalLanguage = str;
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        this.pendingLanguageChecks.remove(Integer.valueOf(i));
        checkDialogTranslatable(messageObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLanguage$16(final MessageObject messageObject, final long j, final int i, Exception exc) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda37
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$checkLanguage$15(messageObject, j, i);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkLanguage$15(MessageObject messageObject, long j, int i) {
        messageObject.messageOwner.originalLanguage = UNKNOWN_LANGUAGE;
        getMessagesStorage().updateMessageCustomParams(j, messageObject.messageOwner);
        this.pendingLanguageChecks.remove(Integer.valueOf(i));
    }

    private void checkDialogTranslatable(MessageObject messageObject) {
        String str;
        String str2;
        if (messageObject == null || messageObject.messageOwner == null) {
            return;
        }
        final long dialogId = messageObject.getDialogId();
        TranslatableDecision translatableDecision = this.translatableDialogMessages.get(Long.valueOf(dialogId));
        if (translatableDecision == null) {
            HashMap<Long, TranslatableDecision> map = this.translatableDialogMessages;
            Long lValueOf = Long.valueOf(dialogId);
            TranslatableDecision translatableDecision2 = new TranslatableDecision();
            map.put(lValueOf, translatableDecision2);
            translatableDecision = translatableDecision2;
        }
        boolean z = false;
        boolean z2 = isTranslatable(messageObject) && ((str2 = messageObject.messageOwner.originalLanguage) == null || UNKNOWN_LANGUAGE.equals(str2));
        if (isTranslatable(messageObject) && (str = messageObject.messageOwner.originalLanguage) != null && !UNKNOWN_LANGUAGE.equals(str) && !isLanguageRestricted(messageObject.messageOwner.originalLanguage)) {
            z = true;
        }
        if (z2) {
            translatableDecision.unknown.add(Integer.valueOf(messageObject.getId()));
        } else {
            (z ? translatableDecision.certainlyTranslatable : translatableDecision.certainlyNotTranslatable).add(Integer.valueOf(messageObject.getId()));
        }
        if (!z2) {
            this.detectedDialogLanguage.put(Long.valueOf(dialogId), messageObject.messageOwner.originalLanguage);
        }
        int size = translatableDecision.certainlyTranslatable.size();
        int size2 = translatableDecision.unknown.size();
        int size3 = size + size2 + translatableDecision.certainlyNotTranslatable.size();
        boolean zIsChatAutoTranslated = isChatAutoTranslated(dialogId);
        if (size3 >= (zIsChatAutoTranslated ? 2 : 6)) {
            if (zIsChatAutoTranslated) {
                if (size < REQUIRED_MIN_MESSAGES_TRANSLATABLE_AUTOTRANSLATE) {
                    return;
                }
            } else if (size / (size + r2) < REQUIRED_PERCENTAGE_MESSAGES_TRANSLATABLE) {
                return;
            }
            if (size2 / size3 < (zIsChatAutoTranslated ? REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN_AUTOTRANSLATE : REQUIRED_MIN_PERCENTAGE_MESSAGES_UNKNOWN)) {
                this.translatableDialogs.add(Long.valueOf(dialogId));
                this.translatableDialogMessages.remove(Long.valueOf(dialogId));
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda18
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$checkDialogTranslatable$18(dialogId);
                    }
                }, 450L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDialogTranslatable$18(long j) {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.dialogIsTranslatable, Long.valueOf(j));
    }

    private void pushToSummarize(MessageObject messageObject, String str, final Utilities.Callback<TLRPC.TL_textWithEntities> callback) {
        final int iHash = Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(str != null ? 1 : 0));
        if (this.loadingSummarizations.contains(Integer.valueOf(iHash))) {
            return;
        }
        this.loadingSummarizations.add(Integer.valueOf(iHash));
        TLRPC.TL_messages_summarizeText tL_messages_summarizeText = new TLRPC.TL_messages_summarizeText();
        tL_messages_summarizeText.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(messageObject.getDialogId());
        tL_messages_summarizeText.f1785id = messageObject.getId();
        if (str != null) {
            tL_messages_summarizeText.flags |= 1;
            tL_messages_summarizeText.to_lang = str;
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequestTyped(tL_messages_summarizeText, new BotForumHelper$$ExternalSyntheticLambda2(), new Utilities.Callback2() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda20
            @Override // org.telegram.messenger.Utilities.Callback2
            public final void run(Object obj, Object obj2) {
                this.f$0.lambda$pushToSummarize$20(iHash, callback, (TLRPC.TL_textWithEntities) obj, (TLRPC.TL_error) obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToSummarize$20(int i, Utilities.Callback callback, TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_error tL_error) {
        final BaseFragment safeLastFragment;
        if (tL_textWithEntities != null) {
            this.loadingSummarizations.remove(Integer.valueOf(i));
            callback.run(tL_textWithEntities);
        } else if (tL_error != null) {
            if ("SUMMARY_FLOOD_PREMIUM".equalsIgnoreCase(tL_error.text) && (safeLastFragment = LaunchActivity.getSafeLastFragment()) != null) {
                BulletinFactory.m1246of(safeLastFragment).createSimpleBulletin(C2888R.raw.star_premium_2, LocaleController.getString(C2888R.string.SummaryLimit), LocaleController.getString(C2888R.string.SummaryLimitUpgrade), new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda45
                    @Override // java.lang.Runnable
                    public final void run() {
                        safeLastFragment.presentFragment(new PremiumPreviewFragment("summarize_limit"));
                    }
                }).setDuration(5000).show(true);
            }
            this.loadingSummarizations.remove(Integer.valueOf(i));
            callback.run(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class PendingTranslation {
        ArrayList<Utilities.Callback4<Boolean, Integer, TLRPC.TL_textWithEntities, String>> callbacks;
        int delay;
        String language;
        ArrayList<Integer> messageIds;
        ArrayList<TLRPC.TL_textWithEntities> messageTexts;
        int reqId;
        Runnable runnable;
        int symbolsCount;

        private PendingTranslation() {
            this.messageIds = new ArrayList<>();
            this.messageTexts = new ArrayList<>();
            this.callbacks = new ArrayList<>();
            this.delay = 80;
            this.reqId = -1;
        }
    }

    private void pushToTranslate(MessageObject messageObject, String str, Utilities.Callback4<Boolean, Integer, TLRPC.TL_textWithEntities, String> callback4) {
        int i;
        PendingTranslation pendingTranslation;
        String str2;
        if (messageObject == null || messageObject.messageOwner == null || messageObject.getId() < 0 || callback4 == null) {
            return;
        }
        TLRPC.Message message = messageObject.messageOwner;
        int length = 0;
        final boolean z = true;
        if (message.voiceTranscription != null && message.voiceTranscriptionFinal && message.voiceTranscriptionOpen) {
            i = 1;
        } else {
            i = 1;
            z = false;
        }
        final long dialogId = messageObject.getDialogId();
        HashMap<Long, ArrayList<PendingTranslation>> map = z ? this.pendingTranscriptionsTranslations : this.pendingTranslations;
        Set<Integer> set = z ? this.loadingTranscriptionTranslations : this.loadingTranslations;
        TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        if (z) {
            String str3 = messageObject.messageOwner.voiceTranscription;
            tL_textWithEntities.text = str3;
            if (TextUtils.isEmpty(str3)) {
                return;
            }
        } else {
            TLRPC.Message message2 = messageObject.messageOwner;
            tL_textWithEntities.text = message2.message;
            tL_textWithEntities.entities = message2.entities;
        }
        synchronized (this) {
            try {
                ArrayList<PendingTranslation> arrayList = map.get(Long.valueOf(dialogId));
                if (arrayList == null) {
                    Long lValueOf = Long.valueOf(dialogId);
                    ArrayList<PendingTranslation> arrayList2 = new ArrayList<>();
                    map.put(lValueOf, arrayList2);
                    arrayList = arrayList2;
                }
                if (arrayList.isEmpty()) {
                    pendingTranslation = new PendingTranslation();
                    arrayList.add(pendingTranslation);
                } else {
                    pendingTranslation = arrayList.get(arrayList.size() - i);
                }
                if (pendingTranslation.messageIds.contains(Integer.valueOf(messageObject.getId()))) {
                    return;
                }
                if (z) {
                    String str4 = messageObject.messageOwner.voiceTranscription;
                    if (str4 != null) {
                        length = str4.length();
                    }
                } else {
                    TLRPC.Message message3 = messageObject.messageOwner;
                    if (message3 != null && (str2 = message3.message) != null) {
                        length = str2.length();
                    } else {
                        CharSequence charSequence = messageObject.caption;
                        if (charSequence != null) {
                            length = charSequence.length();
                        } else {
                            CharSequence charSequence2 = messageObject.messageText;
                            if (charSequence2 != null) {
                                length = charSequence2.length();
                            }
                        }
                    }
                }
                if (pendingTranslation.symbolsCount + length >= MAX_SYMBOLS_PER_REQUEST || pendingTranslation.messageIds.size() + i >= 20) {
                    AndroidUtilities.cancelRunOnUIThread(pendingTranslation.runnable);
                    AndroidUtilities.runOnUIThread(pendingTranslation.runnable);
                    pendingTranslation = new PendingTranslation();
                    arrayList.add(pendingTranslation);
                }
                Runnable runnable = pendingTranslation.runnable;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                }
                set.add(Integer.valueOf(messageObject.getId()));
                pendingTranslation.messageIds.add(Integer.valueOf(messageObject.getId()));
                FileLog.m1133d("pending translation +" + messageObject.getId() + " message");
                pendingTranslation.messageTexts.add(tL_textWithEntities);
                pendingTranslation.callbacks.add(callback4);
                pendingTranslation.language = str;
                pendingTranslation.symbolsCount = pendingTranslation.symbolsCount + length;
                final HashMap<Long, ArrayList<PendingTranslation>> map2 = map;
                final Set<Integer> set2 = set;
                final PendingTranslation pendingTranslation2 = pendingTranslation;
                Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$pushToTranslate$25(map2, dialogId, pendingTranslation2, z, set2);
                    }
                };
                pendingTranslation2.runnable = runnable2;
                AndroidUtilities.runOnUIThread(runnable2, pendingTranslation2.delay);
                pendingTranslation2.delay /= 2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToTranslate$25(HashMap map, final long j, final PendingTranslation pendingTranslation, final boolean z, final Set set) {
        long j2;
        synchronized (this) {
            try {
                ArrayList arrayList = (ArrayList) map.get(Long.valueOf(j));
                if (arrayList != null) {
                    arrayList.remove(pendingTranslation);
                    if (arrayList.isEmpty()) {
                        map.remove(Long.valueOf(j));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        String str = getMessagesController().translationsAutoEnabled;
        if ("alternative".equals(str) || "system".equals(str)) {
            final String str2 = pendingTranslation.language;
            for (int i = 0; i < pendingTranslation.messageIds.size(); i++) {
                final int iIntValue = pendingTranslation.messageIds.get(i).intValue();
                final Utilities.Callback4<Boolean, Integer, TLRPC.TL_textWithEntities, String> callback4 = pendingTranslation.callbacks.get(i);
                TranslateAlert2.alternativeTranslate(pendingTranslation.messageTexts.get(i).text, null, str2, new Utilities.Callback2() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda12
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$pushToTranslate$21(callback4, z, iIntValue, str2, j, (String) obj, (Boolean) obj2);
                    }
                });
            }
            return;
        }
        TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
        if (z) {
            tL_messages_translateText.flags |= 2;
            tL_messages_translateText.text.addAll(pendingTranslation.messageTexts);
            j2 = j;
        } else {
            tL_messages_translateText.flags |= 1;
            j2 = j;
            tL_messages_translateText.peer = getMessagesController().getInputPeer(j2);
            tL_messages_translateText.f1786id = pendingTranslation.messageIds;
        }
        tL_messages_translateText.to_lang = pendingTranslation.language;
        final long j3 = j2;
        int iSendRequest = getConnectionsManager().sendRequest(tL_messages_translateText, new RequestDelegate() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$pushToTranslate$24(pendingTranslation, z, j3, set, tLObject, tL_error);
            }
        });
        synchronized (this) {
            pendingTranslation.reqId = iSendRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToTranslate$21(Utilities.Callback4 callback4, boolean z, int i, String str, long j, String str2, Boolean bool) {
        if (str2 != null) {
            TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
            tL_textWithEntities.text = str2;
            callback4.run(Boolean.valueOf(z), Integer.valueOf(i), tL_textWithEntities, str);
        } else {
            toggleTranslatingDialog(j, false);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(bool.booleanValue() ? C2888R.string.TranslationFailedAlert1 : C2888R.string.TranslationFailedAlert2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToTranslate$24(final PendingTranslation pendingTranslation, final boolean z, final long j, final Set set, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$pushToTranslate$23(pendingTranslation, tLObject, z, tL_error, j, set);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToTranslate$22(Utilities.Callback4 callback4, boolean z, int i, String str, long j, String str2, Boolean bool) {
        if (str2 != null) {
            TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
            tL_textWithEntities.text = str2;
            callback4.run(Boolean.valueOf(z), Integer.valueOf(i), tL_textWithEntities, str);
        } else {
            toggleTranslatingDialog(j, false);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(bool.booleanValue() ? C2888R.string.TranslationFailedAlert1 : C2888R.string.TranslationFailedAlert2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushToTranslate$23(PendingTranslation pendingTranslation, TLObject tLObject, final boolean z, TLRPC.TL_error tL_error, final long j, Set set) {
        ArrayList<Integer> arrayList;
        ArrayList<Utilities.Callback4<Boolean, Integer, TLRPC.TL_textWithEntities, String>> arrayList2;
        ArrayList<TLRPC.TL_textWithEntities> arrayList3;
        final String str;
        synchronized (this) {
            arrayList = pendingTranslation.messageIds;
            arrayList2 = pendingTranslation.callbacks;
            arrayList3 = pendingTranslation.messageTexts;
            str = pendingTranslation.language;
        }
        if (tLObject instanceof TLRPC.TL_messages_translateResult) {
            ArrayList arrayList4 = ((TLRPC.TL_messages_translateResult) tLObject).result;
            int iMin = Math.min(arrayList2.size(), arrayList4.size());
            for (int i = 0; i < iMin; i++) {
                arrayList2.get(i).run(Boolean.valueOf(z), arrayList.get(i), TranslateAlert2.preprocess(arrayList3.get(i), (TLRPC.TL_textWithEntities) arrayList4.get(i)), str);
            }
        } else if (tL_error != null && "TRANSLATIONS_DISABLED_ALT".equalsIgnoreCase(tL_error.text)) {
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                final int iIntValue = arrayList.get(i2).intValue();
                final Utilities.Callback4<Boolean, Integer, TLRPC.TL_textWithEntities, String> callback4 = arrayList2.get(i2);
                TranslateAlert2.alternativeTranslate(arrayList3.get(i2).text, null, str, new Utilities.Callback2() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda21
                    @Override // org.telegram.messenger.Utilities.Callback2
                    public final void run(Object obj, Object obj2) {
                        this.f$0.lambda$pushToTranslate$22(callback4, z, iIntValue, str, j, (String) obj, (Boolean) obj2);
                    }
                });
            }
        } else if (tL_error != null && "TO_LANG_INVALID".equals(tL_error.text)) {
            toggleTranslatingDialog(j, false);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert2));
        } else {
            if (tL_error != null && "QUOTA_EXCEEDED".equals(tL_error.text)) {
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert1));
            }
            for (int i3 = 0; i3 < arrayList2.size(); i3++) {
                arrayList2.get(i3).run(Boolean.valueOf(z), arrayList.get(i3), null, pendingTranslation.language);
            }
        }
        synchronized (this) {
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                try {
                    set.remove(arrayList.get(i4));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class PendingPollTranslation {
        ArrayList<Utilities.Callback3<Integer, PollText, String>> callbacks;
        int delay;
        String language;
        ArrayList<Integer> messageIds;
        ArrayList<Pair<PollText, PollText>> messageTexts;
        int reqId;
        Runnable runnable;
        int symbolsCount;

        private PendingPollTranslation() {
            this.messageIds = new ArrayList<>();
            this.messageTexts = new ArrayList<>();
            this.callbacks = new ArrayList<>();
            this.delay = 80;
            this.reqId = -1;
        }
    }

    private void pushPollToTranslate(MessageObject messageObject, String str, Utilities.Callback3<Integer, PollText, String> callback3) {
        final PendingPollTranslation pendingPollTranslation;
        if (messageObject == null || messageObject.getId() < 0 || callback3 == null) {
            return;
        }
        final long dialogId = messageObject.getDialogId();
        synchronized (this) {
            try {
                ArrayList<PendingPollTranslation> arrayList = this.pendingPollTranslations.get(Long.valueOf(dialogId));
                if (arrayList == null) {
                    HashMap<Long, ArrayList<PendingPollTranslation>> map = this.pendingPollTranslations;
                    Long lValueOf = Long.valueOf(dialogId);
                    ArrayList<PendingPollTranslation> arrayList2 = new ArrayList<>();
                    map.put(lValueOf, arrayList2);
                    arrayList = arrayList2;
                }
                if (arrayList.isEmpty()) {
                    pendingPollTranslation = new PendingPollTranslation();
                    arrayList.add(pendingPollTranslation);
                } else {
                    pendingPollTranslation = arrayList.get(arrayList.size() - 1);
                }
                if (pendingPollTranslation.messageIds.contains(Integer.valueOf(messageObject.getId()))) {
                    return;
                }
                TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
                if (media instanceof TLRPC.TL_messageMediaPoll) {
                    PollText pollTextFromPoll = PollText.fromPoll((TLRPC.TL_messageMediaPoll) media);
                    PollText pollText = messageObject.messageOwner.translatedPoll;
                    int length = pollTextFromPoll.length();
                    if (pendingPollTranslation.symbolsCount + length >= MAX_SYMBOLS_PER_REQUEST || pendingPollTranslation.messageIds.size() + 1 >= 20) {
                        AndroidUtilities.cancelRunOnUIThread(pendingPollTranslation.runnable);
                        AndroidUtilities.runOnUIThread(pendingPollTranslation.runnable);
                        pendingPollTranslation = new PendingPollTranslation();
                        arrayList.add(pendingPollTranslation);
                    }
                    Runnable runnable = pendingPollTranslation.runnable;
                    if (runnable != null) {
                        AndroidUtilities.cancelRunOnUIThread(runnable);
                    }
                    this.loadingTranslations.add(Integer.valueOf(messageObject.getId()));
                    pendingPollTranslation.messageIds.add(Integer.valueOf(messageObject.getId()));
                    FileLog.m1133d("pending translation +" + messageObject.getId() + " poll message");
                    pendingPollTranslation.messageTexts.add(new Pair<>(pollTextFromPoll, pollText));
                    pendingPollTranslation.callbacks.add(callback3);
                    pendingPollTranslation.language = str;
                    pendingPollTranslation.symbolsCount = pendingPollTranslation.symbolsCount + length;
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda19
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f$0.lambda$pushPollToTranslate$28(dialogId, pendingPollTranslation);
                        }
                    };
                    pendingPollTranslation.runnable = runnable2;
                    AndroidUtilities.runOnUIThread(runnable2, pendingPollTranslation.delay);
                    pendingPollTranslation.delay /= 2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushPollToTranslate$28(final long j, final PendingPollTranslation pendingPollTranslation) {
        synchronized (this) {
            try {
                ArrayList<PendingTranslation> arrayList = this.pendingTranslations.get(Long.valueOf(j));
                if (arrayList != null) {
                    arrayList.remove(pendingPollTranslation);
                    if (arrayList.isEmpty()) {
                        this.pendingTranslations.remove(Long.valueOf(j));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
        tL_messages_translateText.flags |= 2;
        ArrayList<Pair<PollText, PollText>> arrayList2 = pendingPollTranslation.messageTexts;
        int size = arrayList2.size();
        int i = 0;
        while (i < size) {
            Pair<PollText, PollText> pair = arrayList2.get(i);
            i++;
            Pair<PollText, PollText> pair2 = pair;
            PollText pollText = (PollText) pair2.first;
            PollText pollText2 = (PollText) pair2.second;
            TLRPC.TL_textWithEntities tL_textWithEntities = pollText.question;
            if (tL_textWithEntities != null && (pollText2 == null || pollText2.question == null)) {
                tL_messages_translateText.text.add(tL_textWithEntities);
            }
            if (pollText.answers.size() != (pollText2 == null ? 0 : pollText2.answers.size())) {
                ArrayList<TLRPC.PollAnswer> arrayList3 = pollText.answers;
                int size2 = arrayList3.size();
                int i2 = 0;
                while (i2 < size2) {
                    TLRPC.PollAnswer pollAnswer = arrayList3.get(i2);
                    i2++;
                    tL_messages_translateText.text.add(pollAnswer.text);
                }
            }
            TLRPC.TL_textWithEntities tL_textWithEntities2 = pollText.solution;
            if (tL_textWithEntities2 != null && (pollText2 == null || pollText2.solution == null)) {
                tL_messages_translateText.text.add(tL_textWithEntities2);
            }
        }
        tL_messages_translateText.to_lang = pendingPollTranslation.language;
        int iSendRequest = getConnectionsManager().sendRequest(tL_messages_translateText, new RequestDelegate() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda2
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$pushPollToTranslate$27(pendingPollTranslation, j, tLObject, tL_error);
            }
        });
        synchronized (this) {
            pendingPollTranslation.reqId = iSendRequest;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$pushPollToTranslate$27(final PendingPollTranslation pendingPollTranslation, final long j, final TLObject tLObject, final TLRPC.TL_error tL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$pushPollToTranslate$26(pendingPollTranslation, tLObject, tL_error, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$pushPollToTranslate$26(PendingPollTranslation pendingPollTranslation, TLObject tLObject, TLRPC.TL_error tL_error, long j) {
        ArrayList<Integer> arrayList;
        ArrayList<Utilities.Callback3<Integer, PollText, String>> arrayList2;
        ArrayList<Pair<PollText, PollText>> arrayList3;
        int i;
        TLRPC.TL_textWithEntities tL_textWithEntities;
        int i2;
        ArrayList<Pair<PollText, PollText>> arrayList4;
        TLRPC.TL_textWithEntities tL_textWithEntities2;
        TLRPC.TL_textWithEntities tL_textWithEntities3;
        int i3;
        TLRPC.TL_textWithEntities tL_textWithEntities4;
        TLRPC.TL_textWithEntities tL_textWithEntities5;
        synchronized (this) {
            arrayList = pendingPollTranslation.messageIds;
            arrayList2 = pendingPollTranslation.callbacks;
            arrayList3 = pendingPollTranslation.messageTexts;
        }
        if (tLObject instanceof TLRPC.TL_messages_translateResult) {
            ArrayList arrayList5 = ((TLRPC.TL_messages_translateResult) tLObject).result;
            ArrayList arrayList6 = new ArrayList();
            int size = arrayList3.size();
            int i4 = 0;
            int i5 = 0;
            while (i5 < size) {
                Pair<PollText, PollText> pair = arrayList3.get(i5);
                i5++;
                Pair<PollText, PollText> pair2 = pair;
                PollText pollText = (PollText) pair2.first;
                PollText pollText2 = (PollText) pair2.second;
                PollText pollText3 = new PollText();
                if (pollText2 != null && (tL_textWithEntities5 = pollText2.question) != null) {
                    pollText3.question = tL_textWithEntities5;
                } else if (pollText.question != null) {
                    if (i4 >= arrayList5.size()) {
                        tL_textWithEntities = new TLRPC.TL_textWithEntities();
                    } else {
                        tL_textWithEntities = (TLRPC.TL_textWithEntities) arrayList5.get(i4);
                        i4++;
                    }
                    pollText3.question = TranslateAlert2.preprocess(pollText.question, tL_textWithEntities);
                }
                if (pollText.answers.size() != (pollText2 == null ? 0 : pollText2.answers.size())) {
                    ArrayList<TLRPC.PollAnswer> arrayList7 = pollText.answers;
                    int size2 = arrayList7.size();
                    int i6 = 0;
                    while (i6 < size2) {
                        TLRPC.PollAnswer pollAnswer = arrayList7.get(i6);
                        i6++;
                        int i7 = size;
                        TLRPC.PollAnswer pollAnswer2 = pollAnswer;
                        ArrayList<Pair<PollText, PollText>> arrayList8 = arrayList3;
                        if (i4 >= arrayList5.size()) {
                            tL_textWithEntities4 = new TLRPC.TL_textWithEntities();
                            i3 = i4;
                        } else {
                            i3 = i4 + 1;
                            tL_textWithEntities4 = (TLRPC.TL_textWithEntities) arrayList5.get(i4);
                        }
                        TLRPC.TL_pollAnswer tL_pollAnswer = new TLRPC.TL_pollAnswer();
                        tL_pollAnswer.text = tL_textWithEntities4;
                        tL_pollAnswer.option = pollAnswer2.option;
                        pollText3.answers.add(tL_pollAnswer);
                        size = i7;
                        i4 = i3;
                        arrayList3 = arrayList8;
                    }
                    i2 = size;
                    arrayList4 = arrayList3;
                } else {
                    i2 = size;
                    arrayList4 = arrayList3;
                    if (pollText2 != null) {
                        pollText3.answers = pollText2.answers;
                    }
                }
                if (pollText2 != null && (tL_textWithEntities3 = pollText2.solution) != null) {
                    pollText3.solution = tL_textWithEntities3;
                } else if (pollText.solution != null) {
                    if (i4 >= arrayList5.size()) {
                        tL_textWithEntities2 = new TLRPC.TL_textWithEntities();
                    } else {
                        int i8 = i4 + 1;
                        TLRPC.TL_textWithEntities tL_textWithEntities6 = (TLRPC.TL_textWithEntities) arrayList5.get(i4);
                        i4 = i8;
                        tL_textWithEntities2 = tL_textWithEntities6;
                    }
                    pollText3.solution = TranslateAlert2.preprocess(pollText.solution, tL_textWithEntities2);
                }
                arrayList6.add(pollText3);
                size = i2;
                arrayList3 = arrayList4;
            }
            int iMin = Math.min(arrayList2.size(), arrayList6.size());
            for (int i9 = 0; i9 < iMin; i9++) {
                arrayList2.get(i9).run(arrayList.get(i9), (PollText) arrayList6.get(i9), pendingPollTranslation.language);
            }
        } else if (tL_error != null && "TO_LANG_INVALID".equals(tL_error.text)) {
            toggleTranslatingDialog(j, false);
            NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert2));
        } else {
            if (tL_error == null || !"QUOTA_EXCEEDED".equals(tL_error.text)) {
                i = 0;
            } else {
                i = 0;
                NotificationCenter.getGlobalInstance().lambda$postNotificationNameOnUIThread$1(NotificationCenter.showBulletin, 1, LocaleController.getString(C2888R.string.TranslationFailedAlert1));
            }
            for (int i10 = i; i10 < arrayList2.size(); i10++) {
                arrayList2.get(i10).run(arrayList.get(i10), null, pendingPollTranslation.language);
            }
            synchronized (this) {
                for (int i11 = i; i11 < arrayList.size(); i11++) {
                    try {
                        this.loadingTranslations.remove(arrayList.get(i11));
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return;
        }
        i = 0;
        synchronized (this) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isTranslating(MessageObject messageObject) {
        TLRPC.Message message;
        boolean z = true;
        if (messageObject != null && (message = messageObject.messageOwner) != null && message.summarizedOpen) {
            return this.loadingSummarizations.contains(Integer.valueOf(Objects.hash(Long.valueOf(messageObject.getDialogId()), Integer.valueOf(messageObject.getId()), Integer.valueOf(isTranslatingDialog(messageObject.getDialogId()) ? 1 : 0))));
        }
        synchronized (this) {
            if (messageObject != null) {
                try {
                    TLRPC.Message message2 = messageObject.messageOwner;
                    if (message2 == null) {
                        z = false;
                    } else {
                        if (!((message2.voiceTranscriptionOpen && message2.voiceTranscriptionFinal) ? this.loadingTranscriptionTranslations : this.loadingTranslations).contains(Integer.valueOf(messageObject.getId())) || !isTranslatingDialog(messageObject.getDialogId())) {
                        }
                    }
                } finally {
                }
            }
        }
        return z;
    }

    public boolean isTranslating(MessageObject messageObject, MessageObject.GroupedMessages groupedMessages) {
        if (messageObject == null || !isTranslatingDialog(messageObject.getDialogId())) {
            return false;
        }
        TLRPC.Message message = messageObject.messageOwner;
        boolean z = message != null && message.voiceTranscriptionOpen && message.voiceTranscriptionFinal;
        synchronized (this) {
            try {
                if ((z ? this.loadingTranscriptionTranslations : this.loadingTranslations).contains(Integer.valueOf(messageObject.getId()))) {
                    return true;
                }
                if (groupedMessages != null) {
                    ArrayList<MessageObject> arrayList = groupedMessages.messages;
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        MessageObject messageObject2 = arrayList.get(i);
                        i++;
                        if ((z ? this.loadingTranscriptionTranslations : this.loadingTranslations).contains(Integer.valueOf(messageObject2.getId()))) {
                            return true;
                        }
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cancelAllTranslations() {
        synchronized (this) {
            try {
                for (ArrayList<PendingTranslation> arrayList : this.pendingTranslations.values()) {
                    if (arrayList != null) {
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            PendingTranslation pendingTranslation = arrayList.get(i);
                            i++;
                            PendingTranslation pendingTranslation2 = pendingTranslation;
                            AndroidUtilities.cancelRunOnUIThread(pendingTranslation2.runnable);
                            if (pendingTranslation2.reqId != -1) {
                                getConnectionsManager().cancelRequest(pendingTranslation2.reqId, true);
                                ArrayList<Integer> arrayList2 = pendingTranslation2.messageIds;
                                int size2 = arrayList2.size();
                                int i2 = 0;
                                while (i2 < size2) {
                                    Integer num = arrayList2.get(i2);
                                    i2++;
                                    this.loadingTranslations.remove(num);
                                }
                            }
                        }
                    }
                }
                for (ArrayList<PendingTranslation> arrayList3 : this.pendingTranscriptionsTranslations.values()) {
                    if (arrayList3 != null) {
                        int size3 = arrayList3.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            PendingTranslation pendingTranslation3 = arrayList3.get(i3);
                            i3++;
                            PendingTranslation pendingTranslation4 = pendingTranslation3;
                            AndroidUtilities.cancelRunOnUIThread(pendingTranslation4.runnable);
                            if (pendingTranslation4.reqId != -1) {
                                getConnectionsManager().cancelRequest(pendingTranslation4.reqId, true);
                                ArrayList<Integer> arrayList4 = pendingTranslation4.messageIds;
                                int size4 = arrayList4.size();
                                int i4 = 0;
                                while (i4 < size4) {
                                    Integer num2 = arrayList4.get(i4);
                                    i4++;
                                    this.loadingTranscriptionTranslations.remove(num2);
                                }
                            }
                        }
                    }
                }
                for (ArrayList<PendingPollTranslation> arrayList5 : this.pendingPollTranslations.values()) {
                    if (arrayList5 != null) {
                        int size5 = arrayList5.size();
                        int i5 = 0;
                        while (i5 < size5) {
                            PendingPollTranslation pendingPollTranslation = arrayList5.get(i5);
                            i5++;
                            PendingPollTranslation pendingPollTranslation2 = pendingPollTranslation;
                            AndroidUtilities.cancelRunOnUIThread(pendingPollTranslation2.runnable);
                            if (pendingPollTranslation2.reqId != -1) {
                                getConnectionsManager().cancelRequest(pendingPollTranslation2.reqId, true);
                                ArrayList<Integer> arrayList6 = pendingPollTranslation2.messageIds;
                                int size6 = arrayList6.size();
                                int i6 = 0;
                                while (i6 < size6) {
                                    Integer num3 = arrayList6.get(i6);
                                    i6++;
                                    this.loadingTranslations.remove(num3);
                                }
                            }
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cancelTranslations(long j) {
        synchronized (this) {
            try {
                ArrayList<PendingTranslation> arrayList = this.pendingTranslations.get(Long.valueOf(j));
                if (arrayList != null) {
                    int size = arrayList.size();
                    int i = 0;
                    while (i < size) {
                        PendingTranslation pendingTranslation = arrayList.get(i);
                        i++;
                        PendingTranslation pendingTranslation2 = pendingTranslation;
                        AndroidUtilities.cancelRunOnUIThread(pendingTranslation2.runnable);
                        if (pendingTranslation2.reqId != -1) {
                            getConnectionsManager().cancelRequest(pendingTranslation2.reqId, true);
                            ArrayList<Integer> arrayList2 = pendingTranslation2.messageIds;
                            int size2 = arrayList2.size();
                            int i2 = 0;
                            while (i2 < size2) {
                                Integer num = arrayList2.get(i2);
                                i2++;
                                this.loadingTranslations.remove(num);
                            }
                        }
                    }
                    this.pendingTranslations.remove(Long.valueOf(j));
                }
                ArrayList<PendingTranslation> arrayList3 = this.pendingTranscriptionsTranslations.get(Long.valueOf(j));
                if (arrayList3 != null) {
                    int size3 = arrayList3.size();
                    int i3 = 0;
                    while (i3 < size3) {
                        PendingTranslation pendingTranslation3 = arrayList3.get(i3);
                        i3++;
                        PendingTranslation pendingTranslation4 = pendingTranslation3;
                        AndroidUtilities.cancelRunOnUIThread(pendingTranslation4.runnable);
                        if (pendingTranslation4.reqId != -1) {
                            getConnectionsManager().cancelRequest(pendingTranslation4.reqId, true);
                            ArrayList<Integer> arrayList4 = pendingTranslation4.messageIds;
                            int size4 = arrayList4.size();
                            int i4 = 0;
                            while (i4 < size4) {
                                Integer num2 = arrayList4.get(i4);
                                i4++;
                                this.loadingTranscriptionTranslations.remove(num2);
                            }
                        }
                    }
                    this.pendingTranscriptionsTranslations.remove(Long.valueOf(j));
                }
                ArrayList<PendingPollTranslation> arrayList5 = this.pendingPollTranslations.get(Long.valueOf(j));
                if (arrayList5 != null) {
                    int size5 = arrayList5.size();
                    int i5 = 0;
                    while (i5 < size5) {
                        PendingPollTranslation pendingPollTranslation = arrayList5.get(i5);
                        i5++;
                        PendingPollTranslation pendingPollTranslation2 = pendingPollTranslation;
                        AndroidUtilities.cancelRunOnUIThread(pendingPollTranslation2.runnable);
                        if (pendingPollTranslation2.reqId != -1) {
                            getConnectionsManager().cancelRequest(pendingPollTranslation2.reqId, true);
                            ArrayList<Integer> arrayList6 = pendingPollTranslation2.messageIds;
                            int size6 = arrayList6.size();
                            int i6 = 0;
                            while (i6 < size6) {
                                Integer num3 = arrayList6.get(i6);
                                i6++;
                                this.loadingTranslations.remove(num3);
                            }
                        }
                    }
                    this.pendingPollTranslations.remove(Long.valueOf(j));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void keepReplyMessage(MessageObject messageObject) {
        if (messageObject == null) {
            return;
        }
        HashMap<Integer, MessageObject> map = this.keptReplyMessageObjects.get(Long.valueOf(messageObject.getDialogId()));
        if (map == null) {
            HashMap<Long, HashMap<Integer, MessageObject>> map2 = this.keptReplyMessageObjects;
            Long lValueOf = Long.valueOf(messageObject.getDialogId());
            HashMap<Integer, MessageObject> map3 = new HashMap<>();
            map2.put(lValueOf, map3);
            map = map3;
        }
        map.put(Integer.valueOf(messageObject.getId()), messageObject);
    }

    public MessageObject findReplyMessageObject(long j, int i) {
        HashMap<Integer, MessageObject> map = this.keptReplyMessageObjects.get(Long.valueOf(j));
        if (map == null) {
            return null;
        }
        return map.get(Integer.valueOf(i));
    }

    private void clearAllKeptReplyMessages(long j) {
        this.keptReplyMessageObjects.remove(Long.valueOf(j));
    }

    private boolean isLanguageRestricted(String str) {
        return TranslatorUtils.isRestrictedLanguage(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadTranslatingDialogsCached() {
        boolean z;
        String string = this.messagesController.getMainSettings().getString("translating_dialog_languages2", null);
        if (string == null) {
            return;
        }
        for (String str : string.split(";")) {
            String[] strArrSplit = str.split("=");
            if (strArrSplit.length >= 2) {
                long j = Long.parseLong(strArrSplit[0]);
                String[] strArrSplit2 = strArrSplit[1].split(">");
                if (strArrSplit2.length == 2) {
                    String str2 = strArrSplit2[0];
                    String strSubstring = strArrSplit2[1];
                    if (strSubstring.length() <= 0 || strSubstring.charAt(strSubstring.length() - 1) != '!') {
                        z = false;
                    } else {
                        strSubstring = strSubstring.substring(0, strSubstring.length() - 1);
                        z = true;
                    }
                    if ("null".equals(str2)) {
                        str2 = null;
                    }
                    if ("null".equals(strSubstring)) {
                        strSubstring = null;
                    }
                    if (str2 != null) {
                        this.detectedDialogLanguage.put(Long.valueOf(j), str2);
                        if (!isLanguageRestricted(str2)) {
                            this.translatingDialogs.put(j, Boolean.valueOf(true ^ z));
                            this.translatableDialogs.add(Long.valueOf(j));
                        }
                        if (strSubstring != null) {
                            this.translateDialogLanguage.put(Long.valueOf(j), strSubstring);
                        }
                    }
                }
            }
        }
        Set<String> stringSet = this.messagesController.getMainSettings().getStringSet("hidden_translation_at", null);
        if (stringSet != null) {
            Iterator<String> it = stringSet.iterator();
            while (it.hasNext()) {
                try {
                    this.hideTranslateDialogs.add(Long.valueOf(Long.parseLong(it.next())));
                } catch (Exception e) {
                    FileLog.m1136e(e);
                }
            }
        }
    }

    private void saveTranslatingDialogsCache() {
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (int i = 0; i < this.translatingDialogs.size(); i++) {
            try {
                long jKeyAt = this.translatingDialogs.keyAt(i);
                if (!z) {
                    sb.append(";");
                }
                if (z) {
                    z = false;
                }
                String str = this.detectedDialogLanguage.get(Long.valueOf(jKeyAt));
                String str2 = "null";
                if (str == null) {
                    str = "null";
                }
                String dialogTranslateTo = getDialogTranslateTo(jKeyAt);
                if (dialogTranslateTo != null) {
                    str2 = dialogTranslateTo;
                }
                sb.append(jKeyAt);
                sb.append("=");
                sb.append(str);
                sb.append(">");
                sb.append(str2);
                if (!this.translatingDialogs.valueAt(i).booleanValue()) {
                    sb.append("!");
                }
            } catch (Exception unused) {
            }
        }
        HashSet hashSet = new HashSet();
        Iterator<Long> it = this.hideTranslateDialogs.iterator();
        while (it.hasNext()) {
            try {
                hashSet.add(_UrlKt.FRAGMENT_ENCODE_SET + it.next());
            } catch (Exception e) {
                FileLog.m1136e(e);
            }
        }
        MessagesController.getMainSettings(this.currentAccount).edit().putString("translating_dialog_languages2", sb.toString()).putStringSet("hidden_translation_at", hashSet).apply();
    }

    private void resetTranslatingDialogsCache() {
        MessagesController.getMainSettings(this.currentAccount).edit().remove("translating_dialog_languages2").remove("hidden_translation_at").apply();
    }

    public void detectStoryLanguage(final TL_stories.StoryItem storyItem) {
        String str;
        if (storyItem == null || storyItem.detectedLng != null || (str = storyItem.caption) == null || str.length() == 0 || !LanguageDetector.hasSupport()) {
            return;
        }
        final StoryKey storyKey = new StoryKey(storyItem);
        if (this.detectingStories.contains(storyKey)) {
            return;
        }
        this.detectingStories.add(storyKey);
        LanguageDetector.detectLanguage(storyItem.caption, new LanguageDetector.StringCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda42
            @Override // org.telegram.messenger.LanguageDetector.StringCallback
            public final void run(String str2) {
                this.f$0.lambda$detectStoryLanguage$30(storyItem, storyKey, str2);
            }
        }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda43
            @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
            public final void run(Exception exc) {
                this.f$0.lambda$detectStoryLanguage$32(storyItem, storyKey, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectStoryLanguage$30(final TL_stories.StoryItem storyItem, final StoryKey storyKey, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$detectStoryLanguage$29(storyItem, str, storyKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectStoryLanguage$29(TL_stories.StoryItem storyItem, String str, StoryKey storyKey) {
        storyItem.detectedLng = str;
        getMessagesController().getStoriesController().getStoriesStorage().putStoryInternal(storyItem.dialogId, storyItem);
        this.detectingStories.remove(storyKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectStoryLanguage$32(final TL_stories.StoryItem storyItem, final StoryKey storyKey, Exception exc) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$detectStoryLanguage$31(storyItem, storyKey);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectStoryLanguage$31(TL_stories.StoryItem storyItem, StoryKey storyKey) {
        storyItem.detectedLng = UNKNOWN_LANGUAGE;
        getMessagesController().getStoriesController().getStoriesStorage().putStoryInternal(storyItem.dialogId, storyItem);
        this.detectingStories.remove(storyKey);
    }

    public boolean canTranslateStory(TL_stories.StoryItem storyItem) {
        if (storyItem == null || TextUtils.isEmpty(storyItem.caption) || Emoji.fullyConsistsOfEmojis(storyItem.caption)) {
            return false;
        }
        if (storyItem.detectedLng == null && storyItem.translatedText != null && TextUtils.equals(storyItem.translatedLng, TranslateAlert2.getToLanguage())) {
            return true;
        }
        String str = storyItem.detectedLng;
        return (str == null || isLanguageRestricted(str)) ? false : true;
    }

    public void translateStory(final TL_stories.StoryItem storyItem, final Runnable runnable) {
        if (storyItem == null) {
            return;
        }
        final StoryKey storyKey = new StoryKey(storyItem);
        final String strNormalizeLanguageCode = TranslatorUtils.normalizeLanguageCode(TranslateAlert2.getToLanguage());
        if (storyItem.translatedText != null && TextUtils.equals(storyItem.translatedLng, strNormalizeLanguageCode)) {
            if (runnable != null) {
                runnable.run();
            }
        } else {
            if (this.translatingStories.contains(storyKey)) {
                if (runnable != null) {
                    runnable.run();
                    return;
                }
                return;
            }
            this.translatingStories.add(storyKey);
            TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
            tL_messages_translateText.flags |= 2;
            final TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
            tL_textWithEntities.text = storyItem.caption;
            tL_textWithEntities.entities = storyItem.entities;
            tL_messages_translateText.text.add(tL_textWithEntities);
            tL_messages_translateText.to_lang = strNormalizeLanguageCode;
            getConnectionsManager().sendRequest(tL_messages_translateText, new RequestDelegate() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda44
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                    this.f$0.lambda$translateStory$36(storyItem, strNormalizeLanguageCode, storyKey, runnable, tL_textWithEntities, tLObject, tL_error);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translateStory$36(final TL_stories.StoryItem storyItem, final String str, final StoryKey storyKey, final Runnable runnable, final TLRPC.TL_textWithEntities tL_textWithEntities, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_translateResult) {
            ArrayList arrayList = ((TLRPC.TL_messages_translateResult) tLObject).result;
            if (arrayList.size() <= 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda39
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$translateStory$33(storyItem, str, storyKey, runnable);
                    }
                });
                return;
            } else {
                final TLRPC.TL_textWithEntities tL_textWithEntities2 = (TLRPC.TL_textWithEntities) arrayList.get(0);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda40
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$translateStory$34(storyItem, str, tL_textWithEntities, tL_textWithEntities2, storyKey, runnable);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda41
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$translateStory$35(storyItem, str, storyKey, runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translateStory$33(TL_stories.StoryItem storyItem, String str, StoryKey storyKey, Runnable runnable) {
        storyItem.translatedLng = str;
        storyItem.translatedText = null;
        getMessagesController().getStoriesController().getStoriesStorage().putStoryInternal(storyItem.dialogId, storyItem);
        this.translatingStories.remove(storyKey);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translateStory$34(TL_stories.StoryItem storyItem, String str, TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_textWithEntities tL_textWithEntities2, StoryKey storyKey, Runnable runnable) {
        storyItem.translatedLng = str;
        storyItem.translatedText = TranslateAlert2.preprocess(tL_textWithEntities, tL_textWithEntities2);
        getMessagesController().getStoriesController().getStoriesStorage().putStoryInternal(storyItem.dialogId, storyItem);
        this.translatingStories.remove(storyKey);
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translateStory$35(TL_stories.StoryItem storyItem, String str, StoryKey storyKey, Runnable runnable) {
        storyItem.translatedLng = str;
        storyItem.translatedText = null;
        getMessagesController().getStoriesController().getStoriesStorage().putStoryInternal(storyItem.dialogId, storyItem);
        this.translatingStories.remove(storyKey);
        if (runnable != null) {
            runnable.run();
        }
    }

    public boolean isTranslatingStory(TL_stories.StoryItem storyItem) {
        if (storyItem == null) {
            return false;
        }
        return this.translatingStories.contains(new StoryKey(storyItem));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class StoryKey {
        public long dialogId;
        public int storyId;

        public StoryKey(TL_stories.StoryItem storyItem) {
            this.dialogId = storyItem.dialogId;
            this.storyId = storyItem.f1857id;
        }
    }

    public void detectPhotoLanguage(final MessageObject messageObject, final Utilities.Callback<String> callback) {
        if (messageObject == null || messageObject.messageOwner == null || !LanguageDetector.hasSupport() || TextUtils.isEmpty(messageObject.messageOwner.message)) {
            return;
        }
        if (!TextUtils.isEmpty(messageObject.messageOwner.originalLanguage)) {
            if (callback != null) {
                callback.run(messageObject.messageOwner.originalLanguage);
            }
        } else {
            final MessageKey messageKey = new MessageKey(messageObject);
            if (this.detectingPhotos.contains(messageKey)) {
                return;
            }
            this.detectingPhotos.add(messageKey);
            LanguageDetector.detectLanguage(messageObject.messageOwner.message, new LanguageDetector.StringCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda9
                @Override // org.telegram.messenger.LanguageDetector.StringCallback
                public final void run(String str) {
                    this.f$0.lambda$detectPhotoLanguage$38(messageObject, messageKey, callback, str);
                }
            }, new LanguageDetector.ExceptionCallback() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda10
                @Override // org.telegram.messenger.LanguageDetector.ExceptionCallback
                public final void run(Exception exc) {
                    this.f$0.lambda$detectPhotoLanguage$40(messageObject, messageKey, callback, exc);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectPhotoLanguage$38(final MessageObject messageObject, final MessageKey messageKey, final Utilities.Callback callback, final String str) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$detectPhotoLanguage$37(messageObject, str, messageKey, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectPhotoLanguage$37(MessageObject messageObject, String str, MessageKey messageKey, Utilities.Callback callback) {
        messageObject.messageOwner.originalLanguage = str;
        getMessagesStorage().updateMessageCustomParams(messageKey.dialogId, messageObject.messageOwner);
        this.detectingPhotos.remove(messageKey);
        if (callback != null) {
            callback.run(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectPhotoLanguage$40(final MessageObject messageObject, final MessageKey messageKey, final Utilities.Callback callback, Exception exc) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$detectPhotoLanguage$39(messageObject, messageKey, callback);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$detectPhotoLanguage$39(MessageObject messageObject, MessageKey messageKey, Utilities.Callback callback) {
        messageObject.messageOwner.originalLanguage = UNKNOWN_LANGUAGE;
        getMessagesStorage().updateMessageCustomParams(messageKey.dialogId, messageObject.messageOwner);
        this.detectingPhotos.remove(messageKey);
        if (callback != null) {
            callback.run(UNKNOWN_LANGUAGE);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean canTranslatePhoto(MessageObject messageObject, String str) {
        TLRPC.Message message;
        TLRPC.Message message2;
        String str2;
        if (messageObject != null && (message2 = messageObject.messageOwner) != null && (str2 = message2.originalLanguage) != null) {
            str = str2;
        }
        if (messageObject == null || (message = messageObject.messageOwner) == null || TextUtils.isEmpty(message.message)) {
            return false;
        }
        if (str == null) {
            TLRPC.Message message3 = messageObject.messageOwner;
            if (message3.translatedText == null || !TextUtils.equals(message3.translatedToLanguage, TranslateAlert2.getToLanguage())) {
                if (str == null || isLanguageRestricted(messageObject.messageOwner.originalLanguage)) {
                    return false;
                }
            }
        }
        return !messageObject.translated;
    }

    public void translatePhoto(final MessageObject messageObject, final Runnable runnable) {
        if (messageObject == null || messageObject.messageOwner == null) {
            return;
        }
        final MessageKey messageKey = new MessageKey(messageObject);
        final String toLanguage = TranslateAlert2.getToLanguage();
        TLRPC.Message message = messageObject.messageOwner;
        if (message.translatedText != null && TextUtils.equals(message.translatedToLanguage, toLanguage)) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        if (this.translatingPhotos.contains(messageKey)) {
            if (runnable != null) {
                runnable.run();
                return;
            }
            return;
        }
        this.translatingPhotos.add(messageKey);
        TLRPC.TL_messages_translateText tL_messages_translateText = new TLRPC.TL_messages_translateText();
        tL_messages_translateText.flags |= 2;
        final TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
        TLRPC.Message message2 = messageObject.messageOwner;
        tL_textWithEntities.text = message2.message;
        ArrayList arrayList = message2.entities;
        tL_textWithEntities.entities = arrayList;
        if (arrayList == null) {
            tL_textWithEntities.entities = new ArrayList();
        }
        tL_messages_translateText.text.add(tL_textWithEntities);
        tL_messages_translateText.to_lang = toLanguage;
        final long jCurrentTimeMillis = System.currentTimeMillis();
        getConnectionsManager().sendRequest(tL_messages_translateText, new RequestDelegate() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda38
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC.TL_error tL_error) {
                this.f$0.lambda$translatePhoto$44(messageObject, toLanguage, messageKey, runnable, jCurrentTimeMillis, tL_textWithEntities, tLObject, tL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translatePhoto$44(final MessageObject messageObject, final String str, final MessageKey messageKey, final Runnable runnable, final long j, final TLRPC.TL_textWithEntities tL_textWithEntities, TLObject tLObject, TLRPC.TL_error tL_error) {
        if (tLObject instanceof TLRPC.TL_messages_translateResult) {
            ArrayList arrayList = ((TLRPC.TL_messages_translateResult) tLObject).result;
            if (arrayList.size() <= 0) {
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda27
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$translatePhoto$41(messageObject, str, messageKey, runnable, j);
                    }
                });
                return;
            } else {
                final TLRPC.TL_textWithEntities tL_textWithEntities2 = (TLRPC.TL_textWithEntities) arrayList.get(0);
                AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda28
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f$0.lambda$translatePhoto$42(messageObject, str, tL_textWithEntities, tL_textWithEntities2, messageKey, runnable, j);
                    }
                });
                return;
            }
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.messenger.TranslateController$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.lambda$translatePhoto$43(messageObject, str, messageKey, runnable, j);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translatePhoto$41(MessageObject messageObject, String str, MessageKey messageKey, Runnable runnable, long j) {
        messageObject.messageOwner.translatedToLanguage = TranslatorUtils.normalizeLanguageCode(str);
        messageObject.messageOwner.translatedText = null;
        getMessagesStorage().updateMessageCustomParams(messageKey.dialogId, messageObject.messageOwner);
        this.translatingPhotos.remove(messageKey);
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 400 - (System.currentTimeMillis() - j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translatePhoto$42(MessageObject messageObject, String str, TLRPC.TL_textWithEntities tL_textWithEntities, TLRPC.TL_textWithEntities tL_textWithEntities2, MessageKey messageKey, Runnable runnable, long j) {
        messageObject.messageOwner.translatedToLanguage = TranslatorUtils.normalizeLanguageCode(str);
        messageObject.messageOwner.translatedText = TranslateAlert2.preprocess(tL_textWithEntities, tL_textWithEntities2);
        getMessagesStorage().updateMessageCustomParams(messageKey.dialogId, messageObject.messageOwner);
        this.translatingPhotos.remove(messageKey);
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 400 - (System.currentTimeMillis() - j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$translatePhoto$43(MessageObject messageObject, String str, MessageKey messageKey, Runnable runnable, long j) {
        messageObject.messageOwner.translatedToLanguage = TranslatorUtils.normalizeLanguageCode(str);
        messageObject.messageOwner.translatedText = null;
        getMessagesStorage().updateMessageCustomParams(messageKey.dialogId, messageObject.messageOwner);
        this.translatingPhotos.remove(messageKey);
        if (runnable != null) {
            AndroidUtilities.runOnUIThread(runnable, Math.max(0L, 400 - (System.currentTimeMillis() - j)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: loaded from: classes5.dex */
    static class MessageKey {
        public long dialogId;

        /* JADX INFO: renamed from: id */
        public int f1619id;

        public MessageKey(MessageObject messageObject) {
            this.dialogId = messageObject.getDialogId();
            this.f1619id = messageObject.getId();
        }
    }

    public static class PollText extends TLObject {
        public static final int constructor = 613759672;
        public ArrayList<TLRPC.PollAnswer> answers = new ArrayList<>();
        public TLRPC.TL_textWithEntities question;
        public TLRPC.TL_textWithEntities solution;

        public static PollText TLdeserialize(InputSerializedData inputSerializedData, int i, boolean z) {
            return (PollText) TLObject.TLdeserialize(PollText.class, 613759672 != i ? null : new PollText(), inputSerializedData, i, z);
        }

        @Override // org.telegram.tgnet.TLObject
        public void readParams(InputSerializedData inputSerializedData, boolean z) {
            int int32 = inputSerializedData.readInt32(z);
            if ((int32 & 1) != 0) {
                this.question = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
            if ((int32 & 2) != 0) {
                this.answers = Vector.deserialize(inputSerializedData, new TranslateController$PollText$$ExternalSyntheticLambda0(), z);
            }
            if ((int32 & 4) != 0) {
                this.solution = TLRPC.TL_textWithEntities.TLdeserialize(inputSerializedData, inputSerializedData.readInt32(z), z);
            }
        }

        @Override // org.telegram.tgnet.TLObject
        public void serializeToStream(OutputSerializedData outputSerializedData) {
            outputSerializedData.writeInt32(constructor);
            int i = this.question != null ? 1 : 0;
            ArrayList<TLRPC.PollAnswer> arrayList = this.answers;
            if (arrayList != null && !arrayList.isEmpty()) {
                i |= 2;
            }
            if (this.solution != null) {
                i |= 4;
            }
            outputSerializedData.writeInt32(i);
            if ((i & 1) != 0) {
                this.question.serializeToStream(outputSerializedData);
            }
            if ((i & 2) != 0) {
                Vector.serialize(outputSerializedData, this.answers);
            }
            if ((i & 4) != 0) {
                this.solution.serializeToStream(outputSerializedData);
            }
        }

        public int length() {
            TLRPC.TL_textWithEntities tL_textWithEntities = this.question;
            int length = tL_textWithEntities != null ? tL_textWithEntities.text.length() : 0;
            for (int i = 0; i < this.answers.size(); i++) {
                length += this.answers.get(i).text.text.length();
            }
            TLRPC.TL_textWithEntities tL_textWithEntities2 = this.solution;
            return tL_textWithEntities2 != null ? length + tL_textWithEntities2.text.length() : length;
        }

        public static PollText fromMessage(MessageObject messageObject) {
            TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
            if (media instanceof TLRPC.TL_messageMediaPoll) {
                return fromPoll((TLRPC.TL_messageMediaPoll) media);
            }
            return null;
        }

        public static PollText fromPoll(TLRPC.TL_messageMediaPoll tL_messageMediaPoll) {
            TLRPC.Poll poll = tL_messageMediaPoll.poll;
            PollText pollText = new PollText();
            pollText.question = poll.question;
            for (int i = 0; i < poll.answers.size(); i++) {
                TLRPC.PollAnswer pollAnswer = (TLRPC.PollAnswer) poll.answers.get(i);
                TLRPC.TL_pollAnswer tL_pollAnswer = new TLRPC.TL_pollAnswer();
                tL_pollAnswer.text = pollAnswer.text;
                tL_pollAnswer.option = pollAnswer.option;
                pollText.answers.add(tL_pollAnswer);
            }
            TLRPC.PollResults pollResults = tL_messageMediaPoll.results;
            if (pollResults != null && !TextUtils.isEmpty(pollResults.solution)) {
                TLRPC.TL_textWithEntities tL_textWithEntities = new TLRPC.TL_textWithEntities();
                pollText.solution = tL_textWithEntities;
                TLRPC.PollResults pollResults2 = tL_messageMediaPoll.results;
                tL_textWithEntities.text = pollResults2.solution;
                tL_textWithEntities.entities = pollResults2.solution_entities;
            }
            return pollText;
        }

        public static boolean isFullyTranslated(MessageObject messageObject, PollText pollText) {
            TLRPC.TL_messageMediaPoll tL_messageMediaPoll;
            TLRPC.Poll poll;
            TLRPC.MessageMedia media = MessageObject.getMedia(messageObject);
            if (!(media instanceof TLRPC.TL_messageMediaPoll) || (poll = (tL_messageMediaPoll = (TLRPC.TL_messageMediaPoll) media).poll) == null) {
                return true;
            }
            if ((poll.question != null) != (pollText.question != null)) {
                return false;
            }
            TLRPC.PollResults pollResults = tL_messageMediaPoll.results;
            return (pollResults != null && pollResults.solution != null) == (pollText.solution != null) && poll.answers.size() == pollText.answers.size();
        }
    }
}
