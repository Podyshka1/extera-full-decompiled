package com.exteragram.messenger.preferences;

import android.view.View;
import com.exteragram.messenger.ExteraConfig;
import com.exteragram.messenger.utils.p017ui.PopupUtils;
import com.exteragram.messenger.utils.text.LocaleUtils;
import com.exteragram.messenger.utils.text.TranslatorUtils;
import com.google.android.exoplayer2.util.Consumer;
import java.util.ArrayList;
import java.util.function.Function;
import java.util.function.Predicate;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C2888R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.p029ui.Components.Premium.PremiumFeatureBottomSheet;
import org.telegram.p029ui.Components.TranslateAlert2;
import org.telegram.p029ui.Components.UItem;
import org.telegram.p029ui.Components.UniversalAdapter;
import org.telegram.p029ui.RestrictedLanguagesSelectActivity;
import org.telegram.tgnet.ConnectionsManager;
import p022j$.util.Collection;
import p022j$.util.Objects;
import p022j$.util.function.Function$CC;
import p022j$.util.function.Predicate$CC;
import p022j$.util.stream.Collectors;

/* JADX INFO: loaded from: classes.dex */
public class GeneralPreferencesActivity extends BasePreferencesActivity {
    private final int fiveMinutesAgo = ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - 300;
    private CharSequence[] idOptions;
    private CharSequence[] translationFormalities;
    private CharSequence[] translationProviders;

    public enum GeneralItem {
        SHOW_TRANSLATE_BUTTON,
        SHOW_TRANSLATE_CHAT_BUTTON,
        TRANSLATION_PROVIDERS,
        TRANSLATION_FORMALITY,
        TRANSLATION_TARGET_LANGUAGE,
        DO_NOT_TRANSLATE_LANGUAGES,
        DISABLE_NUMBER_ROUNDING,
        FORMAT_TIME_WITH_SECONDS,
        RELATIVE_LAST_SEEN,
        IN_APP_VIBRATION,
        FILTER_ZALGO,
        YANDEX_MAPS,
        DOWNLOAD_SPEED_BOOST,
        UPLOAD_SPEED_BOOST,
        HIDE_PHONE_NUMBER,
        SHOW_ID_AND_DC,
        HIDE_ARCHIVE_FOLDER,
        ARCHIVE_ON_PULL,
        DISABLE_UNARCHIVE_SWIPE;

        public int getId() {
            return ordinal() + 1;
        }
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void initializeOptionStrings() {
        this.idOptions = new CharSequence[]{LocaleController.getString(C2888R.string.Hide), "Telegram API", "Bot API"};
        this.translationProviders = new CharSequence[]{"Telegram", "Google", "Yandex", "DeepL"};
        this.translationFormalities = new CharSequence[]{LocaleController.getString(C2888R.string.Default), LocaleController.getString(C2888R.string.TranslationFormalityLess), LocaleController.getString(C2888R.string.TranslationFormalityMore)};
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    public String getTitle() {
        return LocaleController.getString(C2888R.string.General);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void fillItems(ArrayList arrayList, UniversalAdapter universalAdapter) {
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.TranslateMessages)));
        arrayList.add(UItem.asCheck(GeneralItem.SHOW_TRANSLATE_BUTTON.getId(), LocaleController.getString(C2888R.string.ShowTranslateButton)).setChecked(getContextTranslateValue()).setSearchable(this).setLinkAlias("showTranslateButton", this));
        arrayList.add(UItem.asCheck(GeneralItem.SHOW_TRANSLATE_CHAT_BUTTON.getId(), LocaleController.getString(C2888R.string.ShowTranslateChatButton)).setCheckBoxIcon(!getUserConfig().isPremium() ? C2888R.drawable.permission_locked : 0).setChecked(getChatTranslateValue()).setSearchable(this).setLinkAlias("showTranslateChatButton", this));
        arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_PROVIDERS.getId(), LocaleController.getString(C2888R.string.TranslationProvider), this.translationProviders[ExteraConfig.translationProvider]).setSearchable(this).setLinkAlias("translationProvider", this));
        if (ExteraConfig.translationProvider == 3) {
            arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_FORMALITY.getId(), LocaleController.getString(C2888R.string.TranslationFormality), this.translationFormalities[ExteraConfig.translationFormality]).setSearchable(this).setLinkAlias("translationFormality", this));
        }
        arrayList.add(UItem.asButton(GeneralItem.TRANSLATION_TARGET_LANGUAGE.getId(), LocaleController.getString(C2888R.string.TranslationTarget), ExteraConfig.getCurrentLangName()).setSearchable(this).setLinkAlias("translationTargetLanguage", this));
        arrayList.add(UItem.asButton(GeneralItem.DO_NOT_TRANSLATE_LANGUAGES.getId(), LocaleController.getString(C2888R.string.DoNotTranslate), getDoNotTranslateValue()).setSearchable(this).setLinkAlias("doNotTranslateLanguages", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.TranslateMessagesInfo1)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.General)));
        arrayList.add(UItem.asCheck(GeneralItem.DISABLE_NUMBER_ROUNDING.getId(), LocaleController.getString(C2888R.string.DisableNumberRounding), "1.23K -> 1,234", false).setChecked(ExteraConfig.disableNumberRounding).setSearchable(this).setLinkAlias("disableNumberRounding", this));
        arrayList.add(UItem.asCheck(GeneralItem.FORMAT_TIME_WITH_SECONDS.getId(), LocaleController.getString(C2888R.string.FormatTimeWithSeconds), "12:34 -> 12:34:56", false).setChecked(ExteraConfig.formatTimeWithSeconds).setSearchable(this).setLinkAlias("formatTimeWithSeconds", this));
        arrayList.add(UItem.asCheck(GeneralItem.IN_APP_VIBRATION.getId(), LocaleController.getString(C2888R.string.InAppVibration)).setChecked(ExteraConfig.inAppVibration).setSearchable(this).setLinkAlias("inAppVibration", this));
        arrayList.add(UItem.asCheck(GeneralItem.FILTER_ZALGO.getId(), LocaleController.getString(C2888R.string.FilterZalgo)).setChecked(ExteraConfig.filterZalgo).setSearchable(this).setLinkAlias("filterZalgo", this));
        arrayList.add(UItem.asShadow(LocaleController.formatString(C2888R.string.FilterZalgoInfo, LocaleUtils.filter("Z̷͍͌ā̸̜l̸̞̂g̷͍̝o̶̩̓"))));
        if (ApplicationLoader.applicationLoaderInstance.allowToUseYandexMaps()) {
            arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Maps)));
            arrayList.add(UItem.asCheck(GeneralItem.YANDEX_MAPS.getId(), LocaleController.getString(C2888R.string.UseYandexMaps)).setChecked(ExteraConfig.useYandexMaps).setSearchable(this).setLinkAlias("useYandexMaps", this));
            arrayList.add(UItem.asShadow(LocaleUtils.formatWithHtmlURLs(LocaleUtils.fromHtml(LocaleController.getString(C2888R.string.TermsOfUseYandexMaps)))));
        }
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.DownloadSpeedBoost)));
        arrayList.add(UItem.asSlideView(GeneralItem.DOWNLOAD_SPEED_BOOST.getId(), new String[]{LocaleController.getString(C2888R.string.BlurOff), LocaleController.getString(C2888R.string.SpeedFast), LocaleController.getString(C2888R.string.Ultra)}, ExteraConfig.downloadSpeedBoost, new Utilities.Callback() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda0
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                this.f$0.lambda$fillItems$0((Integer) obj);
            }
        }).setLinkAlias("downloadSpeedBoost", this));
        arrayList.add(UItem.asCheck(GeneralItem.UPLOAD_SPEED_BOOST.getId(), LocaleController.getString(C2888R.string.UploadSpeedBoost)).setChecked(ExteraConfig.uploadSpeedBoost).setSearchable(this).setLinkAlias("uploadSpeedBoost", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.SpeedBoostInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.Profile)));
        arrayList.add(UItem.asCheck(GeneralItem.RELATIVE_LAST_SEEN.getId(), LocaleController.getString(C2888R.string.RelativeLastSeen), LocaleController.formatDateOnline(this.fiveMinutesAgo, null, new boolean[1]), false).setChecked(ExteraConfig.relativeLastSeen).setSearchable(this).setLinkAlias("relativeLastSeen", this));
        arrayList.add(UItem.asCheck(GeneralItem.HIDE_PHONE_NUMBER.getId(), LocaleController.getString(C2888R.string.HidePhoneNumber)).setChecked(ExteraConfig.hidePhoneNumber).setSearchable(this).setLinkAlias("hidePhoneNumber", this));
        arrayList.add(UItem.asButton(GeneralItem.SHOW_ID_AND_DC.getId(), LocaleController.getString(C2888R.string.ShowIdAndDc), this.idOptions[ExteraConfig.showIdAndDc]).setSearchable(this).setLinkAlias("showIdAndDc", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.ShowIdAndDcInfo)));
        arrayList.add(UItem.asHeader(LocaleController.getString(C2888R.string.ArchivedChats)));
        arrayList.add(UItem.asCheck(GeneralItem.HIDE_ARCHIVE_FOLDER.getId(), LocaleController.getString(C2888R.string.HideArchiveFolder)).setChecked(ExteraConfig.hideArchiveFolder).setSearchable(this).setLinkAlias("hideArchiveFolder", this));
        if (!ExteraConfig.hideArchiveFolder) {
            arrayList.add(UItem.asCheck(GeneralItem.ARCHIVE_ON_PULL.getId(), LocaleController.getString(C2888R.string.ArchiveOnPull)).setChecked(ExteraConfig.archiveOnPull).setSearchable(this).setLinkAlias("archiveOnPull", this));
        }
        arrayList.add(UItem.asCheck(GeneralItem.DISABLE_UNARCHIVE_SWIPE.getId(), LocaleController.getString(C2888R.string.DisableUnarchiveSwipe)).setChecked(ExteraConfig.disableUnarchiveSwipe).setSearchable(this).setLinkAlias("disableUnarchiveSwipe", this));
        arrayList.add(UItem.asShadow(LocaleController.getString(C2888R.string.DisableUnarchiveSwipeInfo)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$fillItems$0(Integer num) {
        int iIntValue = num.intValue();
        ExteraConfig.downloadSpeedBoost = iIntValue;
        changeIntSetting("downloadSpeedBoost", iIntValue);
    }

    @Override // com.exteragram.messenger.preferences.BasePreferencesActivity
    protected void onClick(UItem uItem, View view, int i, float f, float f2) {
        int i2 = uItem.f2105id;
        if (i2 <= 0 || i2 > GeneralItem.values().length) {
            return;
        }
        switch (GeneralItem.values()[uItem.f2105id - 1]) {
            case SHOW_TRANSLATE_BUTTON:
                toggleBooleanSettingAndRefresh("contextTranslateEnabled", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda1
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        this.f$0.lambda$onClick$1((Boolean) obj);
                    }
                });
                handleContextTranslateClick();
                break;
            case SHOW_TRANSLATE_CHAT_BUTTON:
                handleChatTranslateClick(uItem);
                break;
            case TRANSLATION_PROVIDERS:
                showListDialog(uItem, this.translationProviders, LocaleController.getString(C2888R.string.TranslationProvider), ExteraConfig.translationProvider, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda7
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$2(i3);
                    }
                });
                break;
            case TRANSLATION_FORMALITY:
                showListDialog(uItem, this.translationFormalities, LocaleController.getString(C2888R.string.TranslationFormality), ExteraConfig.translationFormality, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda8
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$3(i3);
                    }
                });
                break;
            case TRANSLATION_TARGET_LANGUAGE:
                presentFragment(new RestrictedLanguagesSelectActivity(1));
                break;
            case DO_NOT_TRANSLATE_LANGUAGES:
                presentFragment(new RestrictedLanguagesSelectActivity());
                break;
            case DISABLE_NUMBER_ROUNDING:
                toggleBooleanSettingAndRefresh("disableNumberRounding", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda9
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.disableNumberRounding = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case FORMAT_TIME_WITH_SECONDS:
                toggleBooleanSettingAndRefresh("formatTimeWithSeconds", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda10
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.formatTimeWithSeconds = ((Boolean) obj).booleanValue();
                    }
                });
                handleFormatTimeWithSecondsClick();
                break;
            case RELATIVE_LAST_SEEN:
                toggleBooleanSettingAndRefresh("relativeLastSeen", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda11
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.relativeLastSeen = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case IN_APP_VIBRATION:
                toggleBooleanSettingAndRefresh("inAppVibration", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda12
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.inAppVibration = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case FILTER_ZALGO:
                toggleBooleanSettingAndRefresh("filterZalgo", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda13
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.filterZalgo = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case YANDEX_MAPS:
                toggleBooleanSettingAndRefresh("useYandexMaps", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda14
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.useYandexMaps = ((Boolean) obj).booleanValue();
                    }
                });
                ApplicationLoader.updateMapsProvider();
                break;
            case UPLOAD_SPEED_BOOST:
                toggleBooleanSettingAndRefresh("uploadSpeedBoost", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda15
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.uploadSpeedBoost = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case HIDE_PHONE_NUMBER:
                toggleBooleanSettingAndRefresh("hidePhoneNumber", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda2
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hidePhoneNumber = ((Boolean) obj).booleanValue();
                    }
                });
                handleHidePhoneNumberClick();
                break;
            case SHOW_ID_AND_DC:
                showListDialog(uItem, this.idOptions, LocaleController.getString(C2888R.string.ShowIdAndDc), ExteraConfig.showIdAndDc, new PopupUtils.OnItemClickListener() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda3
                    @Override // com.exteragram.messenger.utils.ui.PopupUtils.OnItemClickListener
                    public final void onClick(int i3) {
                        this.f$0.lambda$onClick$12(i3);
                    }
                });
                break;
            case HIDE_ARCHIVE_FOLDER:
                toggleBooleanSettingAndRefresh("hideArchiveFolder", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda4
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.hideArchiveFolder = ((Boolean) obj).booleanValue();
                    }
                });
                MessagesController.getInstance(this.currentAccount).checkArchiveFolder();
                break;
            case ARCHIVE_ON_PULL:
                toggleBooleanSettingAndRefresh("archiveOnPull", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda5
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.archiveOnPull = ((Boolean) obj).booleanValue();
                    }
                });
                break;
            case DISABLE_UNARCHIVE_SWIPE:
                toggleBooleanSettingAndRefresh("disableUnarchiveSwipe", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda6
                    @Override // com.google.android.exoplayer2.util.Consumer
                    public final void accept(Object obj) {
                        ExteraConfig.disableUnarchiveSwipe = ((Boolean) obj).booleanValue();
                    }
                });
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$1(Boolean bool) {
        getMessagesController().getTranslateController().setContextTranslateEnabled(bool.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$2(int i) {
        ExteraConfig.translationProvider = i;
        changeIntSetting("translationProvider", i);
        TranslatorUtils.ensureTargetLanguageCompatibleWithProvider();
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$3(int i) {
        ExteraConfig.translationFormality = i;
        changeIntSetting("translationFormality", i);
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onClick$12(int i) {
        ExteraConfig.showIdAndDc = i;
        changeIntSetting("showIdAndDc", i);
        this.parentLayout.rebuildFragments(0);
    }

    private CharSequence getDoNotTranslateValue() {
        final boolean[] zArr = new boolean[1];
        return (CharSequence) Collection.EL.stream(RestrictedLanguagesSelectActivity.getRestrictedLanguages()).map(new Function() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda16
            public /* synthetic */ Function andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return TranslateAlert2.capitalFirst(TranslateAlert2.languageName((String) obj, zArr));
            }

            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        }).filter(new Predicate() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda17
            public /* synthetic */ Predicate and(Predicate predicate) {
                return Predicate$CC.$default$and(this, predicate);
            }

            public /* synthetic */ Predicate negate() {
                return Predicate$CC.$default$negate(this);
            }

            /* JADX INFO: renamed from: or */
            public /* synthetic */ Predicate m266or(Predicate predicate) {
                return Predicate$CC.$default$or(this, predicate);
            }

            @Override // java.util.function.Predicate
            public final boolean test(Object obj) {
                return Objects.nonNull((String) obj);
            }
        }).collect(Collectors.joining(", "));
    }

    private boolean getContextTranslateValue() {
        return getMessagesController().getTranslateController().isContextTranslateEnabled();
    }

    private void handleContextTranslateClick() {
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    private boolean getChatTranslateValue() {
        return getMessagesController().getTranslateController().isChatTranslateEnabled();
    }

    private void handleChatTranslateClick(UItem uItem) {
        if (!uItem.checked && !getUserConfig().isPremium()) {
            showDialog(new PremiumFeatureBottomSheet(this, 13, false));
            return;
        }
        toggleBooleanSettingAndRefresh("chatTranslateEnabled", uItem, new Consumer() { // from class: com.exteragram.messenger.preferences.GeneralPreferencesActivity$$ExternalSyntheticLambda18
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                this.f$0.lambda$handleChatTranslateClick$17((Boolean) obj);
            }
        });
        NotificationCenter.getInstance(this.currentAccount).lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateSearchSettings, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$handleChatTranslateClick$17(Boolean bool) {
        getMessagesController().getTranslateController().setChatTranslateEnabled(bool.booleanValue());
    }

    private void handleFormatTimeWithSecondsClick() {
        LocaleController.getInstance().recreateFormatters();
        this.parentLayout.rebuildFragments(0);
    }

    private void handleHidePhoneNumberClick() {
        getNotificationCenter().lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        this.parentLayout.rebuildFragments(0);
    }
}
