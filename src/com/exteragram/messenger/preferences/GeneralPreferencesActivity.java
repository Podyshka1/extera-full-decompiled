package com.exteragram.messenger.preferences;

import android.content.DialogInterface;
import android.text.Editable;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import androidx.core.util.Consumer;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.plugins.PluginsConstants;
import com.exteragram.messenger.translator.TranslationProviders;
import com.exteragram.messenger.translator.TranslatorUtils;
import com.exteragram.messenger.utils.ExtensionsKt;
import com.exteragram.messenger.utils.text.ZalgoFilter;
import com.exteragram.messenger.utils.ui.PopupUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.url._UrlKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C2807R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.ui.ActionBar.AlertDialog;
import org.telegram.ui.ActionBar.Theme;
import org.telegram.ui.Components.BulletinFactory;
import org.telegram.ui.Components.EditTextBoldCursor;
import org.telegram.ui.Components.LayoutHelper;
import org.telegram.ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.ui.Components.TranslateAlert2;
import org.telegram.ui.Components.UItem;
import org.telegram.ui.Components.UniversalAdapter;
import org.telegram.ui.RestrictedLanguagesSelectActivity;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0012\u0018\u0000 62\u00020\u0001:\u000256B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0010H\u0014J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\u001e\u0010\u0013\u001a\u00020\u00102\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u00152\u0006\u0010\u0017\u001a\u00020\u0018H\u0014J0\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fH\u0014J\b\u0010(\u001a\u00020\u0010H\u0002J\u0010\u0010,\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0016H\u0002J\b\u0010-\u001a\u00020\u0010H\u0002J\b\u0010.\u001a\u00020\u0010H\u0002J\b\u00104\u001a\u00020\u0010H\u0002R\u0016\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082.¢\u0006\u0004\n\u0002\u0010\u0007R\u001b\u0010\t\u001a\u00020\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010!\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0014\u0010$\u001a\u00020%8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010)\u001a\u00020%8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b*\u0010'R\u0014\u0010+\u001a\u00020%8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b+\u0010'R\u0014\u0010/\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0014\u00102\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b3\u00101¨\u00067"}, d2 = {"Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity;", "Lcom/exteragram/messenger/preferences/BasePreferencesActivity;", "<init>", "()V", "idOptions", _UrlKt.FRAGMENT_ENCODE_SET, _UrlKt.FRAGMENT_ENCODE_SET, "[Ljava/lang/CharSequence;", "translationProviders", "fiveMinutesAgo", _UrlKt.FRAGMENT_ENCODE_SET, "getFiveMinutesAgo", "()I", "fiveMinutesAgo$delegate", "Lkotlin/Lazy;", "initializeOptionStrings", _UrlKt.FRAGMENT_ENCODE_SET, "getTitle", _UrlKt.FRAGMENT_ENCODE_SET, "fillItems", PluginsConstants.Settings.ITEMS, "Ljava/util/ArrayList;", "Lorg/telegram/ui/Components/UItem;", "adapter", "Lorg/telegram/ui/Components/UniversalAdapter;", "onClick", PluginsConstants.Settings.ITEM, PluginsConstants.Settings.VIEW, "Landroid/view/View;", "position", "x", _UrlKt.FRAGMENT_ENCODE_SET, "y", "doNotTranslateValue", "getDoNotTranslateValue", "()Ljava/lang/CharSequence;", "contextTranslateValue", _UrlKt.FRAGMENT_ENCODE_SET, "getContextTranslateValue", "()Z", "handleContextTranslateClick", "chatTranslateValue", "getChatTranslateValue", "isChatTranslateLocked", "handleChatTranslateClick", "handleFormatTimeWithSecondsClick", "handleHidePhoneNumberClick", "customSavePathDisplayValue", "getCustomSavePathDisplayValue", "()Ljava/lang/String;", "customSavePathInfo", "getCustomSavePathInfo", "showCustomSavePathDialog", "GeneralItem", "Companion", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGeneralPreferencesActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GeneralPreferencesActivity.kt\ncom/exteragram/messenger/preferences/GeneralPreferencesActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,300:1\n1642#2,10:301\n1915#2:311\n1916#2:313\n1652#2:314\n1#3:312\n*S KotlinDebug\n*F\n+ 1 GeneralPreferencesActivity.kt\ncom/exteragram/messenger/preferences/GeneralPreferencesActivity\n*L\n191#1:301,10\n191#1:311\n191#1:313\n191#1:314\n191#1:312\n*E\n"})
public final class GeneralPreferencesActivity extends BasePreferencesActivity {
    private static final Pattern SAVE_PATH_PATTERN = Pattern.compile("^(?!\\.{1,2}$)[A-Za-z0-9._ -]{1,255}$");

    /* JADX INFO: renamed from: fiveMinutesAgo$delegate, reason: from kotlin metadata */
    private final Lazy fiveMinutesAgo = LazyKt.lazy(new Function0() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda0
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            return Integer.valueOf(GeneralPreferencesActivity.m3186$r8$lambda$U3axzru9WxR8DMYs4Fwp9CNRKA(this.f$0));
        }
    });
    private CharSequence[] idOptions;
    private CharSequence[] translationProviders;

    @Metadata(m910k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GeneralItem.values().length];
            try {
                iArr[GeneralItem.SHOW_TRANSLATE_BUTTON.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GeneralItem.SHOW_TRANSLATE_CHAT_BUTTON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GeneralItem.TRANSLATION_PROVIDERS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GeneralItem.TRANSLATION_TARGET_LANGUAGE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GeneralItem.DO_NOT_TRANSLATE_LANGUAGES.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[GeneralItem.DISABLE_NUMBER_ROUNDING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[GeneralItem.FORMAT_TIME_WITH_SECONDS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[GeneralItem.RELATIVE_LAST_SEEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[GeneralItem.IN_APP_VIBRATION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[GeneralItem.DISABLE_NOTIFICATION_DELAY.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[GeneralItem.FILTER_ZALGO.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[GeneralItem.UPLOAD_SPEED_BOOST.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr[GeneralItem.CUSTOM_SAVE_PATH.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr[GeneralItem.HIDE_PHONE_NUMBER.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                iArr[GeneralItem.SHOW_ID_AND_DC.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                iArr[GeneralItem.HIDE_ARCHIVE_FOLDER.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                iArr[GeneralItem.ARCHIVE_ON_PULL.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                iArr[GeneralItem.DISABLE_UNARCHIVE_SWIPE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0016\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0011\u0010\u0017\u001a\u00020\u0018¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aj\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u001b"}, d2 = {"Lcom/exteragram/messenger/preferences/GeneralPreferencesActivity$GeneralItem;", _UrlKt.FRAGMENT_ENCODE_SET, "<init>", "(Ljava/lang/String;I)V", "SHOW_TRANSLATE_BUTTON", "SHOW_TRANSLATE_CHAT_BUTTON", "TRANSLATION_PROVIDERS", "TRANSLATION_TARGET_LANGUAGE", "DO_NOT_TRANSLATE_LANGUAGES", "DISABLE_NUMBER_ROUNDING", "FORMAT_TIME_WITH_SECONDS", "RELATIVE_LAST_SEEN", "IN_APP_VIBRATION", "FILTER_ZALGO", "DOWNLOAD_SPEED_BOOST", "UPLOAD_SPEED_BOOST", "CUSTOM_SAVE_PATH", "HIDE_PHONE_NUMBER", "SHOW_ID_AND_DC", "HIDE_ARCHIVE_FOLDER", "ARCHIVE_ON_PULL", "DISABLE_UNARCHIVE_SWIPE", "DISABLE_NOTIFICATION_DELAY", "id", _UrlKt.FRAGMENT_ENCODE_SET, "getId", "()I", "TMessagesProj"}, m910k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class GeneralItem {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ GeneralItem[] $VALUES;
        private final int id = ordinal() + 1;
        public static final GeneralItem SHOW_TRANSLATE_BUTTON = new GeneralItem("SHOW_TRANSLATE_BUTTON", 0);
        public static final GeneralItem SHOW_TRANSLATE_CHAT_BUTTON = new GeneralItem("SHOW_TRANSLATE_CHAT_BUTTON", 1);
        public static final GeneralItem TRANSLATION_PROVIDERS = new GeneralItem("TRANSLATION_PROVIDERS", 2);
        public static final GeneralItem TRANSLATION_TARGET_LANGUAGE = new GeneralItem("TRANSLATION_TARGET_LANGUAGE", 3);
        public static final GeneralItem DO_NOT_TRANSLATE_LANGUAGES = new GeneralItem("DO_NOT_TRANSLATE_LANGUAGES", 4);
        public static final GeneralItem DISABLE_NUMBER_ROUNDING = new GeneralItem("DISABLE_NUMBER_ROUNDING", 5);
        public static final GeneralItem FORMAT_TIME_WITH_SECONDS = new GeneralItem("FORMAT_TIME_WITH_SECONDS", 6);
        public static final GeneralItem RELATIVE_LAST_SEEN = new GeneralItem("RELATIVE_LAST_SEEN", 7);
        public static final GeneralItem IN_APP_VIBRATION = new GeneralItem("IN_APP_VIBRATION", 8);
        public static final GeneralItem FILTER_ZALGO = new GeneralItem("FILTER_ZALGO", 9);
        public static final GeneralItem DOWNLOAD_SPEED_BOOST = new GeneralItem("DOWNLOAD_SPEED_BOOST", 10);
        public static final GeneralItem UPLOAD_SPEED_BOOST = new GeneralItem("UPLOAD_SPEED_BOOST", 11);
        public static final GeneralItem CUSTOM_SAVE_PATH = new GeneralItem("CUSTOM_SAVE_PATH", 12);
        public static final GeneralItem HIDE_PHONE_NUMBER = new GeneralItem("HIDE_PHONE_NUMBER", 13);
        public static final GeneralItem SHOW_ID_AND_DC = new GeneralItem("SHOW_ID_AND_DC", 14);
        public static final GeneralItem HIDE_ARCHIVE_FOLDER = new GeneralItem("HIDE_ARCHIVE_FOLDER", 15);
        public static final GeneralItem ARCHIVE_ON_PULL = new GeneralItem("ARCHIVE_ON_PULL", 16);
        public static final GeneralItem DISABLE_UNARCHIVE_SWIPE = new GeneralItem("DISABLE_UNARCHIVE_SWIPE", 17);
        public static final GeneralItem DISABLE_NOTIFICATION_DELAY = new GeneralItem("DISABLE_NOTIFICATION_DELAY", 18);

        private static final /* synthetic */ GeneralItem[] $values() {
            return new GeneralItem[]{SHOW_TRANSLATE_BUTTON, SHOW_TRANSLATE_CHAT_BUTTON, TRANSLATION_PROVIDERS, TRANSLATION_TARGET_LANGUAGE, DO_NOT_TRANSLATE_LANGUAGES, DISABLE_NUMBER_ROUNDING, FORMAT_TIME_WITH_SECONDS, RELATIVE_LAST_SEEN, IN_APP_VIBRATION, FILTER_ZALGO, DOWNLOAD_SPEED_BOOST, UPLOAD_SPEED_BOOST, CUSTOM_SAVE_PATH, HIDE_PHONE_NUMBER, SHOW_ID_AND_DC, HIDE_ARCHIVE_FOLDER, ARCHIVE_ON_PULL, DISABLE_UNARCHIVE_SWIPE, DISABLE_NOTIFICATION_DELAY};
        }

        public static EnumEntries<GeneralItem> getEntries() {
            return $ENTRIES;
        }

        public static GeneralItem valueOf(String str) {
            return (GeneralItem) Enum.valueOf(GeneralItem.class, str);
        }

        public static GeneralItem[] values() {
            return (GeneralItem[]) $VALUES.clone();
        }

        private GeneralItem(String str, int i) {
        }

        static {
            GeneralItem[] generalItemArr$values = $values();
            $VALUES = generalItemArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(generalItemArr$values);
        }

        public final int getId() {
            return this.id;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$U3axzru9WxR8DMYs4-Fwp9CNRKA, reason: not valid java name */
    public static int m3186$r8$lambda$U3axzru9WxR8DMYs4Fwp9CNRKA(GeneralPreferencesActivity generalPreferencesActivity) {
        return ConnectionsManager.getInstance(generalPreferencesActivity.currentAccount).getCurrentTime() - 300;
    }

    private final int getFiveMinutesAgo() {
        return ((Number) this.fiveMinutesAgo.getValue()).intValue();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void initializeOptionStrings() {
        this.idOptions = new CharSequence[]{LocaleController.getString(C2807R.string.Hide), "Telegram API", "Bot API"};
        this.translationProviders = TranslationProviders.names();
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2807R.string.General);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void fillItems(ArrayList<UItem> items, UniversalAdapter adapter) {
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.TranslateMessages)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.SHOW_TRANSLATE_BUTTON, (CharSequence) LocaleController.getString(C2807R.string.ShowTranslateButton), getContextTranslateValue(), (CharSequence) null, 0, false, "showTranslateButton", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.SHOW_TRANSLATE_CHAT_BUTTON, (CharSequence) LocaleController.getString(C2807R.string.ShowTranslateChatButton), getChatTranslateValue(), (CharSequence) null, isChatTranslateLocked() ? C2807R.drawable.permission_locked : 0, false, "showTranslateChatButton", false, 0, 424, (Object) null));
        GeneralItem generalItem = GeneralItem.TRANSLATION_PROVIDERS;
        String string = LocaleController.getString(C2807R.string.TranslationProvider);
        CharSequence[] charSequenceArr = this.translationProviders;
        if (charSequenceArr == null) {
            charSequenceArr = null;
        }
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) generalItem, (CharSequence) string, 0, charSequenceArr[ExteraConfig.getTranslationProvider()], (CharSequence) null, (Boolean) null, false, "translationProvider", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.TRANSLATION_TARGET_LANGUAGE, (CharSequence) LocaleController.getString(C2807R.string.TranslationTarget), 0, (CharSequence) ExteraConfig.getCurrentLangName(), (CharSequence) null, (Boolean) null, false, "translationTargetLanguage", false, false, (Boolean) null, 1908, (Object) null));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.DO_NOT_TRANSLATE_LANGUAGES, (CharSequence) LocaleController.getString(C2807R.string.DoNotTranslate), 0, getDoNotTranslateValue(), (CharSequence) null, (Boolean) null, false, "doNotTranslateLanguages", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.TranslateMessagesInfo1)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.General)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.DISABLE_NUMBER_ROUNDING, (CharSequence) LocaleController.getString(C2807R.string.DisableNumberRounding), ExteraConfig.getDisableNumberRounding(), (CharSequence) "1.23K -> 1,234", 0, false, "disableNumberRounding", false, 0, 304, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.FORMAT_TIME_WITH_SECONDS, (CharSequence) LocaleController.getString(C2807R.string.FormatTimeWithSeconds), ExteraConfig.getFormatTimeWithSeconds(), (CharSequence) "12:34 -> 12:34:56", 0, false, "formatTimeWithSeconds", false, 0, 304, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.IN_APP_VIBRATION, (CharSequence) LocaleController.getString(C2807R.string.InAppVibration), ExteraConfig.getInAppVibration(), (CharSequence) null, 0, false, "inAppVibration", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.DISABLE_NOTIFICATION_DELAY, (CharSequence) LocaleController.getString(C2807R.string.DisableNotificationDelay), ExteraConfig.getDisableNotificationDelay(), (CharSequence) null, 0, false, "disableNotificationDelay", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.FILTER_ZALGO, (CharSequence) LocaleController.getString(C2807R.string.FilterZalgo), ExteraConfig.getFilterZalgo(), (CharSequence) null, 0, false, "filterZalgo", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.formatString(C2807R.string.FilterZalgoInfo, ZalgoFilter.filter("Z̷͍͌ā̸̜l̸̞̂g̷͍̝o̶̩̓"))));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.DownloadSpeedBoost)));
        items.add(UItem.asSlideView(GeneralItem.DOWNLOAD_SPEED_BOOST.getId(), new String[]{LocaleController.getString(C2807R.string.BlurOff), LocaleController.getString(C2807R.string.SpeedFast), LocaleController.getString(C2807R.string.Ultra)}, ExteraConfig.getDownloadSpeedBoost(), new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda1
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                ExteraConfig.setDownloadSpeedBoost(((Integer) obj).intValue());
            }
        }).setLinkAlias("downloadSpeedBoost", this));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.UPLOAD_SPEED_BOOST, (CharSequence) LocaleController.getString(C2807R.string.UploadSpeedBoost), ExteraConfig.getUploadSpeedBoost(), (CharSequence) null, 0, false, "uploadSpeedBoost", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.SpeedBoostInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.StorageSettings)));
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.CUSTOM_SAVE_PATH, (CharSequence) LocaleController.getString(C2807R.string.CustomSavePath), 0, (CharSequence) getCustomSavePathDisplayValue(), (CharSequence) null, (Boolean) null, false, "customSavePath", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(getCustomSavePathInfo()));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.MainTabsProfile)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.RELATIVE_LAST_SEEN, (CharSequence) LocaleController.getString(C2807R.string.RelativeLastSeen), ExteraConfig.getRelativeLastSeen(), (CharSequence) LocaleController.formatDateOnline(getFiveMinutesAgo(), null, new boolean[1]), 0, false, "relativeLastSeen", false, 0, 304, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.HIDE_PHONE_NUMBER, (CharSequence) LocaleController.getString(C2807R.string.HidePhoneNumber), ExteraConfig.getHidePhoneNumber(), (CharSequence) null, 0, false, "hidePhoneNumber", false, 0, 440, (Object) null));
        GeneralItem generalItem2 = GeneralItem.SHOW_ID_AND_DC;
        String string2 = LocaleController.getString(C2807R.string.ShowIdAndDc);
        CharSequence[] charSequenceArr2 = this.idOptions;
        items.add(BasePreferencesActivity.uButton$TMessagesProj$default((BasePreferencesActivity) this, (Enum) generalItem2, (CharSequence) string2, 0, (charSequenceArr2 != null ? charSequenceArr2 : null)[ExteraConfig.getShowIdAndDc()], (CharSequence) null, (Boolean) null, false, "showIdAndDc", false, false, (Boolean) null, 1908, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.ShowIdAndDcInfo)));
        items.add(UItem.asHeader(LocaleController.getString(C2807R.string.ArchivedChats)));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.HIDE_ARCHIVE_FOLDER, (CharSequence) LocaleController.getString(C2807R.string.HideArchiveFolder), ExteraConfig.getHideArchiveFolder(), (CharSequence) null, 0, false, "hideArchiveFolder", false, 0, 440, (Object) null));
        ExtensionsKt.addIf(items, !ExteraConfig.getHideArchiveFolder(), BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.ARCHIVE_ON_PULL, (CharSequence) LocaleController.getString(C2807R.string.ArchiveOnPull), ExteraConfig.getArchiveOnPull(), (CharSequence) null, 0, false, "archiveOnPull", false, 0, 440, (Object) null));
        items.add(BasePreferencesActivity.uCheck$TMessagesProj$default((BasePreferencesActivity) this, (Enum) GeneralItem.DISABLE_UNARCHIVE_SWIPE, (CharSequence) LocaleController.getString(C2807R.string.DisableUnarchiveSwipe), ExteraConfig.getDisableUnarchiveSwipe(), (CharSequence) null, 0, false, "disableUnarchiveSwipe", false, 0, 440, (Object) null));
        items.add(UItem.asShadow(LocaleController.getString(C2807R.string.DisableUnarchiveSwipeInfo)));
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public void onClick(UItem item, View view, int position, float x, float y) {
        int i = item.id;
        if (i <= 0 || i > GeneralItem.getEntries().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[GeneralItem.getEntries().get(item.id - 1).ordinal()]) {
            case 1:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.getMessagesController().getTranslateController().setContextTranslateEnabled(((Boolean) obj).booleanValue());
                    }
                });
                handleContextTranslateClick();
                break;
            case 2:
                handleChatTranslateClick(item);
                break;
            case 3:
                CharSequence[] charSequenceArr = this.translationProviders;
                if (charSequenceArr == null) {
                    charSequenceArr = null;
                }
                showListDialog(item, charSequenceArr, LocaleController.getString(C2807R.string.TranslationProvider), ExteraConfig.getTranslationProvider(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda7
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        GeneralPreferencesActivity.m3189$r8$lambda$pnIgrcaoicP1fGeYl5KQLx5eEI(this.f$0, i2);
                    }
                });
                break;
            case 4:
                presentFragment(new RestrictedLanguagesSelectActivity(1));
                break;
            case 5:
                presentFragment(new RestrictedLanguagesSelectActivity());
                break;
            case 6:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda8
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableNumberRounding(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 7:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setFormatTimeWithSeconds(((Boolean) obj).booleanValue());
                    }
                });
                handleFormatTimeWithSecondsClick();
                break;
            case 8:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda10
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setRelativeLastSeen(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 9:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda11
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setInAppVibration(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 10:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableNotificationDelay(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 11:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda13
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setFilterZalgo(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 12:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda14
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setUploadSpeedBoost(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 13:
                showCustomSavePathDialog();
                break;
            case 14:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda15
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHidePhoneNumber(((Boolean) obj).booleanValue());
                    }
                });
                handleHidePhoneNumberClick();
                break;
            case 15:
                CharSequence[] charSequenceArr2 = this.idOptions;
                showListDialog(item, charSequenceArr2 == null ? null : charSequenceArr2, LocaleController.getString(C2807R.string.ShowIdAndDc), ExteraConfig.getShowIdAndDc(), new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i2) {
                        GeneralPreferencesActivity.$r8$lambda$KrWwAmRC7Guvl72AisMkEr5VwJU(this.f$0, i2);
                    }
                });
                break;
            case 16:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setHideArchiveFolder(((Boolean) obj).booleanValue());
                    }
                });
                MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
                break;
            case 17:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setArchiveOnPull(((Boolean) obj).booleanValue());
                    }
                });
                break;
            case 18:
                toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.setDisableUnarchiveSwipe(((Boolean) obj).booleanValue());
                    }
                });
                break;
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$pnIgrca-oicP1fGeYl5KQLx5eEI, reason: not valid java name */
    public static void m3189$r8$lambda$pnIgrcaoicP1fGeYl5KQLx5eEI(GeneralPreferencesActivity generalPreferencesActivity, int i) {
        ExteraConfig.setTranslationProvider(i);
        TranslatorUtils.ensureTargetLanguageCompatibleWithProvider();
        generalPreferencesActivity.parentLayout.rebuildFragments(0);
    }

    public static void $r8$lambda$KrWwAmRC7Guvl72AisMkEr5VwJU(GeneralPreferencesActivity generalPreferencesActivity, int i) {
        ExteraConfig.setShowIdAndDc(i);
        generalPreferencesActivity.parentLayout.rebuildFragments(0);
    }

    private final CharSequence getDoNotTranslateValue() {
        HashSet<String> restrictedLanguages = RestrictedLanguagesSelectActivity.getRestrictedLanguages();
        boolean[] zArr = new boolean[1];
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = restrictedLanguages.iterator();
        while (it.hasNext()) {
            String strCapitalFirst = TranslateAlert2.capitalFirst(TranslateAlert2.languageName((String) it.next(), zArr));
            if (strCapitalFirst != null) {
                arrayList.add(strCapitalFirst);
            }
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null);
    }

    private final boolean getContextTranslateValue() {
        return getMessagesController().getTranslateController().isContextTranslateEnabled();
    }

    private final void handleContextTranslateClick() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    private final boolean getChatTranslateValue() {
        return getMessagesController().getTranslateController().isChatTranslateEnabled();
    }

    private final boolean isChatTranslateLocked() {
        return (getUserConfig().isPremium() || TranslatorUtils.isAlternativeProvider()) ? false : true;
    }

    private final void handleChatTranslateClick(UItem item) {
        if (!item.checked && isChatTranslateLocked()) {
            BulletinFactory.of(this).createSimpleBulletin(C2807R.raw.msg_translate, LocaleController.getString(C2807R.string.ShowTranslateChatButtonLocked), LocaleController.getString(C2807R.string.MoreInfo), new Runnable() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda20
                @Override // java.lang.Runnable
                public final void run() {
                    GeneralPreferencesActivity generalPreferencesActivity = this.f$0;
                    generalPreferencesActivity.showDialog(new PremiumFeatureBottomSheet(generalPreferencesActivity, 13, false));
                }
            }).show();
            return;
        }
        toggleBooleanSettingAndRefresh$TMessagesProj(item, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda21
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                this.f$0.getMessagesController().getTranslateController().setChatTranslateEnabled(((Boolean) obj).booleanValue());
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    private final void handleFormatTimeWithSecondsClick() {
        LocaleController.getInstance().recreateFormatters();
        this.parentLayout.rebuildFragments(0);
    }

    private final void handleHidePhoneNumberClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    private final String getCustomSavePathDisplayValue() {
        return TextUtils.isEmpty(ExteraConfig.getCustomSavePath()) ? LocaleController.getString(C2807R.string.CustomSavePathDefault) : ExteraConfig.getCustomSavePath();
    }

    private final String getCustomSavePathInfo() {
        return TextUtils.isEmpty(ExteraConfig.getCustomSavePath()) ? LocaleController.getString(C2807R.string.CustomSavePathInfo) : LocaleController.formatString(C2807R.string.CustomSavePathInfoFolder, ExteraConfig.getCustomSavePath());
    }

    private final void showCustomSavePathDialog() {
        if (getContext() == null) {
            return;
        }
        final EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(getContext());
        editTextBoldCursor.lineYFix = true;
        editTextBoldCursor.setTextSize(1, 18.0f);
        editTextBoldCursor.setText(ExteraConfig.getCustomSavePath());
        editTextBoldCursor.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, this.resourceProvider));
        editTextBoldCursor.setHintColor(Theme.getColor(Theme.key_groupcreate_hintText, this.resourceProvider));
        editTextBoldCursor.setHintText(LocaleController.getString(C2807R.string.CustomSavePathHint));
        editTextBoldCursor.setFocusable(true);
        editTextBoldCursor.setSingleLine(true);
        editTextBoldCursor.setInputType(1);
        editTextBoldCursor.setBackground(null);
        int color = Theme.getColor(Theme.key_windowBackgroundWhiteInputField, this.resourceProvider);
        int i = Theme.key_windowBackgroundWhiteInputFieldActivated;
        editTextBoldCursor.setLineColors(color, Theme.getColor(i, this.resourceProvider), Theme.getColor(Theme.key_text_RedRegular, this.resourceProvider));
        editTextBoldCursor.setCursorColor(Theme.getColor(i, this.resourceProvider));
        editTextBoldCursor.setPadding(0, AndroidUtilities.dp(6.0f), 0, AndroidUtilities.dp(6.0f));
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        linearLayout.addView(editTextBoldCursor, LayoutHelper.createLinear(-1, -2, 24.0f, 0.0f, 24.0f, 10.0f));
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourceProvider);
        builder.setTitle(LocaleController.getString(C2807R.string.CustomSavePath));
        builder.makeCustomMaxHeight();
        builder.setView(linearLayout);
        builder.setWidth(AndroidUtilities.dp(292.0f));
        builder.setPositiveButton(LocaleController.getString(C2807R.string.Done), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda16
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                GeneralPreferencesActivity.$r8$lambda$TGgWqWciHfVoWWoSPJGiGkq3kAc(editTextBoldCursor, this, alertDialog, i2);
            }
        });
        builder.setNegativeButton(LocaleController.getString(C2807R.string.Cancel), new AlertDialog.OnButtonClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda17
            @Override // org.telegram.ui.ActionBar.AlertDialog.OnButtonClickListener
            public final void onClick(AlertDialog alertDialog, int i2) {
                alertDialog.dismiss();
            }
        });
        AlertDialog alertDialogCreate = builder.create();
        alertDialogCreate.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda18
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AndroidUtilities.hideKeyboard(editTextBoldCursor);
            }
        });
        alertDialogCreate.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda19
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                GeneralPreferencesActivity.m3187$r8$lambda$fkxN65LZaTfMEbFYf6yGJljFos(editTextBoldCursor, dialogInterface);
            }
        });
        alertDialogCreate.setDismissDialogByButtons(false);
        showDialog(alertDialogCreate);
    }

    public static void $r8$lambda$TGgWqWciHfVoWWoSPJGiGkq3kAc(EditTextBoldCursor editTextBoldCursor, GeneralPreferencesActivity generalPreferencesActivity, AlertDialog alertDialog, int i) {
        String string;
        String string2;
        Editable text = editTextBoldCursor.getText();
        if (text == null || (string2 = text.toString()) == null || (string = StringsKt.trim((CharSequence) string2).toString()) == null) {
            string = _UrlKt.FRAGMENT_ENCODE_SET;
        }
        if (string.length() > 0 && !SAVE_PATH_PATTERN.matcher(string).matches()) {
            AndroidUtilities.shakeView(editTextBoldCursor);
            return;
        }
        ExteraConfig.setCustomSavePath(string);
        generalPreferencesActivity.getListView$TMessagesProj().adapter.update(true);
        alertDialog.dismiss();
    }

    /* JADX INFO: renamed from: $r8$lambda$fkxN65LZaTfMEbFYf6y-GJljFos, reason: not valid java name */
    public static void m3187$r8$lambda$fkxN65LZaTfMEbFYf6yGJljFos(EditTextBoldCursor editTextBoldCursor, DialogInterface dialogInterface) {
        editTextBoldCursor.requestFocus();
        editTextBoldCursor.setSelection(editTextBoldCursor.length());
        AndroidUtilities.showKeyboard(editTextBoldCursor);
    }
}
